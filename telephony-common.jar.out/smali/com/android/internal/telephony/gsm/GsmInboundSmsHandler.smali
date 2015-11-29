.class public Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
.super Lcom/android/internal/telephony/InboundSmsHandler;
.source "GsmInboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GsmInboundSmsHandler"


# instance fields
.field private final mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

.field private mDuplicateFilter:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const-string v1, "GsmInboundSmsHandler"

    invoke-static {p1, p3}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CellBroadcastHandler;)V

    iget-object v0, p3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V

    new-instance v0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    iget-object v1, p3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;-><init>(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mDuplicateFilter:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;

    return-void
.end method

.method public static makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;)V

    .local v0, "handler":Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->start()V

    return-object v0
.end method

.method protected static resultToCause(I)I
    .locals 1
    .param p0, "rc"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0xff

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xd3

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xd6

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->resultToCause(I)I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    return-void
.end method

.method public clearDuplicatedCbMessages()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->clearDuplicatedCbMessages()V

    return-void
.end method

.method protected dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 12
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    if-nez p1, :cond_0

    const-string v1, "dispatchMessage: message is null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    const/4 v1, 0x2

    :goto_0
    return v1

    :cond_0
    move-object v9, p1

    check-cast v9, Lcom/android/internal/telephony/gsm/SmsMessage;

    .local v9, "sms":Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v10

    .local v10, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->isTypeZero()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Received short message type 0, Don\'t display or store it. Send Ack"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->isUsimDataDownload()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v11

    .local v11, "ust":Lcom/android/internal/telephony/uicc/UsimServiceTable;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    invoke-virtual {v1, v11, v9}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->handleUsimDataDownload(Lcom/android/internal/telephony/uicc/UsimServiceTable;Lcom/android/internal/telephony/gsm/SmsMessage;)I

    move-result v1

    goto :goto_0

    .end local v11    # "ust":Lcom/android/internal/telephony/uicc/UsimServiceTable;
    :cond_2
    const/4 v8, 0x0

    .local v8, "handled":Z
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v2, 0x1

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getNumOfVoicemails()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageWaiting(II)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getNumOfVoicemails()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneBase;->storeVoiceMailCount(I)V

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received voice mail indicator set SMS shouldStore="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v8, :cond_4

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    :cond_3
    :goto_2
    if-eqz v8, :cond_7

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageWaiting(II)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneBase;->storeVoiceMailCount(I)V

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received voice mail indicator clear SMS shouldStore="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v8, :cond_6

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq v1, v2, :cond_8

    const/4 v1, 0x3

    goto/16 :goto_0

    :cond_8
    if-eqz v10, :cond_9

    iget-object v1, v10, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v1, :cond_a

    :cond_9
    if-eqz v10, :cond_a

    iget-object v1, v10, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v1, :cond_a

    :cond_a
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/internal/telephony/WapPushOverSms;->setWpaPushAddressTimeStamp(Ljava/lang/String;J)V

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    .local v7, "edm":Landroid/sec/enterprise/EnterpriseDeviceManager;
    if-eqz v10, :cond_b

    iget-object v1, v10, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v1, :cond_b

    const/16 v1, 0xb84

    iget-object v2, v10, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    :goto_4
    if-nez v1, :cond_d

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0xa

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x0

    goto :goto_4

    :cond_c
    invoke-virtual {v7}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v0

    .local v0, "phoneRestriction":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    invoke-virtual {v0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->getEncoding()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    const/16 v1, 0xa

    goto/16 :goto_0

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    const-string v1, "fail to store blocked sms on mdm database"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_5

    .end local v0    # "phoneRestriction":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v1

    goto/16 :goto_0
.end method

.method protected getEncoding()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "3gpp"

    return-object v0
.end method

.method protected handleBlockedSms([BI)V
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "sendType"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->getEncoding()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchBlockedSms([BI)V

    :cond_0
    return-void
.end method

.method protected is3gpp2()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected isDuplicatedSms(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 1
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mDuplicateFilter:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->isDuplicated(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mDuplicateFilter:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->addMessage(Lcom/android/internal/telephony/SmsMessageBase;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmSms(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispose()V

    const-string v0, "unregistered for 3GPP SMS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->onQuitting()V

    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    const-string v0, "onUpdatePhoneObject: dispose of old CellBroadcastHandler and make a new one"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispose()V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    return-void
.end method
