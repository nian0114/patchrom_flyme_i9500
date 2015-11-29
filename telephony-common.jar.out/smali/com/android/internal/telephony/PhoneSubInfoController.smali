.class public Lcom/android/internal/telephony/PhoneSubInfoController;
.super Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.source "PhoneSubInfoController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneSubInfoController"


# instance fields
.field private mPhone:[Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>([Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mPhone:[Lcom/android/internal/telephony/Phone;

    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "iphonesubinfo"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method private getDefaultSubscription()J
    .locals 2

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()J

    move-result-wide v0

    return-wide v0
.end method

.method private getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;
    .locals 9
    .param p1, "subId"    # J

    .prologue
    const/4 v4, 0x0

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(J)I

    move-result v1

    int-to-long v2, v1

    .local v2, "phoneId":J
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v2, v6

    if-ltz v1, :cond_1

    :cond_0
    const-wide/16 v2, 0x0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mPhone:[Lcom/android/internal/telephony/Phone;

    long-to-int v5, v2

    aget-object v1, v1, v5

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneSubInfoProxy()Lcom/android/internal/telephony/PhoneSubInfoProxy;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "PhoneSubInfoController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " For subId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v1, v4

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "PhoneSubInfoController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " For subId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    move-object v1, v4

    goto :goto_0
.end method


# virtual methods
.method public getBtid()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getBtid()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getCompleteVoiceMailNumberForSubscriber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompleteVoiceMailNumberForSubscriber(J)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "PhoneSubInfoController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCompleteVoiceMailNumber phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDeviceIdForSubscriber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdForSubscriber(J)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "PhoneSubInfoController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceId phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getDeviceSvn()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "PhoneSubInfoController"

    const-string v2, "getDeviceSvn phoneSubInfoProxy is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDrxValue()I
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getDrxValue()I

    move-result v1

    return v1
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getGroupIdLevel1ForSubscriber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupIdLevel1ForSubscriber(J)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "PhoneSubInfoController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGroupIdLevel1 phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getIccSerialNumberForSubscriber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSerialNumberForSubscriber(J)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "PhoneSubInfoController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIccSerialNumber phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccSimChallengeResponse(JILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # J
    .param p3, "appType"    # I
    .param p4, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIccSimChallengeResponse(JILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getImeiForSubscriber(J)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getImei()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "PhoneSubInfoController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceId phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImsRegisteredFeature()I
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getImsRegisteredFeature()I

    move-result v1

    return v1
.end method

.method public getIsimAid()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIsimAid()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "nonce"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIsimDomain()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIsimImpi()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIsimImpu()[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIsimIst()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIsimIst()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIsimPcscf()[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIsimPcscf()[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getKeyLifetime()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getKeyLifetime()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getLine1AlphaTagForSubscriber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTagForSubscriber(J)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "PhoneSubInfoController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLine1AlphaTag phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getLine1NumberForSubscriber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberForSubscriber(J)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "PhoneSubInfoController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLine1Number phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLine1NumberType(I)Ljava/lang/String;
    .locals 4
    .param p1, "SimType"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getLine1NumberType(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getMsisdnForSubscriber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdnForSubscriber(J)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "PhoneSubInfoController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMsisdn phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPsismsc()[B
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPsismsc()[B

    move-result-object v1

    return-object v1
.end method

.method public getRand()[B
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getRand()[B

    move-result-object v1

    return-object v1
.end method

.method public getReducedCycleTime()I
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getReducedCycleTime()I

    move-result v1

    return v1
.end method

.method public getSktImsiM()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getSktImsiM()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSktIrm()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getSktIrm()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSponImsi()[Ljava/lang/String;
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getSponImsi()[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getSubscriberIdForSubscriber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdForSubscriber(J)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "PhoneSubInfoController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSubscriberId phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubscriberIdType(I)Ljava/lang/String;
    .locals 4
    .param p1, "SimType"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getSubscriberIdType(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getVoiceMailAlphaTagForSubscriber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTagForSubscriber(J)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "PhoneSubInfoController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoiceMailAlphaTag phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getVoiceMailNumberForSubscriber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumberForSubscriber(J)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "PhoneSubInfoController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoiceMailNumber phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasCall(Ljava/lang/String;)Z
    .locals 4
    .param p1, "callType"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->hasCall(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public hasIsim()Z
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->hasIsim()Z

    move-result v1

    return v1
.end method

.method public isGbaSupported()Z
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->isGbaSupported()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "PhoneSubInfoController"

    const-string v2, "isGbaSupported phoneSubInfoProxy is null for default Subscription"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isImsRegistered()Z
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->isImsRegistered()Z

    move-result v1

    return v1
.end method

.method public isVolteRegistered()Z
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->isVolteRegistered()Z

    move-result v1

    return v1
.end method

.method public isWfcRegistered()Z
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->isWfcRegistered()Z

    move-result v1

    return v1
.end method

.method public setDrxMode(I)Z
    .locals 4
    .param p1, "drxMode"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->setDrxMode(I)Z

    move-result v1

    return v1
.end method

.method public setPcoValue(I)V
    .locals 4
    .param p1, "newPco"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->setPcoValue(I)V

    return-void
.end method

.method public setReducedCycleTime(I)Z
    .locals 4
    .param p1, "cycleTime"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->setReducedCycleTime(I)Z

    move-result v1

    return v1
.end method
