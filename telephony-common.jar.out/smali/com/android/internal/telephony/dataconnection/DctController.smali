.class public Lcom/android/internal/telephony/dataconnection/DctController;
.super Landroid/os/Handler;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_ALL_DATA_DISCONNECTED:I = 0x1

.field private static final EVENT_PHONE1_DETACH:I = 0x1

.field private static final EVENT_PHONE1_RADIO_OFF:I = 0x5

.field private static final EVENT_PHONE2_DETACH:I = 0x2

.field private static final EVENT_PHONE2_RADIO_OFF:I = 0x6

.field private static final EVENT_PHONE3_DETACH:I = 0x3

.field private static final EVENT_PHONE3_RADIO_OFF:I = 0x7

.field private static final EVENT_PHONE4_DETACH:I = 0x4

.field private static final EVENT_PHONE4_RADIO_OFF:I = 0x8

.field private static final EVENT_SET_DATA_ALLOW_DONE:I = 0x2

.field private static final EVENT_SET_DATA_ALLOW_FOR_MMS_DONE:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "DctController"

.field private static final PHONE_NONE:I = -0x1

.field private static sDctController:Lcom/android/internal/telephony/dataconnection/DctController;


# instance fields
.field private mActivePhone:Lcom/android/internal/telephony/Phone;

.field private mApnTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentDataPhone:I

.field private mDataStateChangedCallback:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

.field private mDataStateReceiver:Landroid/content/BroadcastReceiver;

.field private mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

.field private mDcSwitchState:[Lcom/android/internal/telephony/dataconnection/DcSwitchState;

.field private mDcSwitchStateHandler:[Landroid/os/Handler;

.field private mNotifyDataSwitchInfo:Landroid/os/RegistrantList;

.field private mPhoneNum:I

.field private mPhones:[Lcom/android/internal/telephony/PhoneProxy;

.field private mRequestedDataPhone:I

.field private mRspHander:Landroid/os/Handler;

.field private mServicePowerOffFlag:[Z

.field private mSubController:Lcom/android/internal/telephony/SubscriptionController;


# direct methods
.method private constructor <init>([Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 12
    .param p1, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    const/4 v7, -0x1

    const/4 v11, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v6, Landroid/os/RegistrantList;

    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNotifyDataSwitchInfo:Landroid/os/RegistrantList;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mApnTypes:Ljava/util/HashSet;

    iput v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    iput v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestedDataPhone:I

    new-instance v6, Lcom/android/internal/telephony/dataconnection/DctController$1;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/dataconnection/DctController$1;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;)V

    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHander:Landroid/os/Handler;

    new-instance v6, Lcom/android/internal/telephony/dataconnection/DctController$2;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/dataconnection/DctController$2;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;)V

    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDataStateChangedCallback:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

    if-eqz p1, :cond_0

    array-length v6, p1

    if-nez v6, :cond_2

    :cond_0
    if-nez p1, :cond_1

    const-string v6, "DctController(phones): UNEXPECTED phones=null, ignore"

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v6, "DctController(phones): UNEXPECTED phones.length=0, ignore"

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    array-length v6, p1

    iput v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v6, v6, [Z

    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v6, v6, [Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchState:[Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v6, v6, [Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v6, v6, [Landroid/os/Handler;

    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateHandler:[Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mActivePhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v1, v6, :cond_4

    move v4, v1

    .local v4, "phoneId":I
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z

    const/4 v7, 0x1

    aput-boolean v7, v6, v1

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchState:[Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    new-instance v7, Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v8, v8, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DcSwitchState-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)V

    aput-object v7, v6, v1

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchState:[Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->start()V

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    new-instance v7, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchState:[Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    aget-object v8, v8, v1

    invoke-direct {v7, v8, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;I)V

    aput-object v7, v6, v1

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateHandler:[Landroid/os/Handler;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    aput-object v7, v6, v1

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateHandler:[Landroid/os/Handler;

    aget-object v8, v8, v1

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchState:[Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v5

    .local v5, "status":I
    if-nez v5, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DctController(phones): Connect success: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchState:[Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHander:Landroid/os/Handler;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v6, v7, v8, v11}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->registerForIdle(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    .local v3, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    iget-object v6, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHander:Landroid/os/Handler;

    add-int/lit8 v8, v1, 0x5

    invoke-interface {v6, v7, v8, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .end local v3    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DctController(phones): Could not connect to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    goto :goto_2

    .end local v4    # "phoneId":I
    .end local v5    # "status":I
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v6, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;

    invoke-direct {v6, p0, v11}, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;Lcom/android/internal/telephony/dataconnection/DctController$1;)V

    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDataStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDataStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .local v2, "intent":Landroid/content/Intent;
    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/dataconnection/DctController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestedDataPhone:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/dataconnection/DctController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestedDataPhone:I

    return p1
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/dataconnection/DctController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/dataconnection/DctController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/dataconnection/DctController;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mApnTypes:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/dataconnection/DctController;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchState:[Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/dataconnection/DctController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->getDataConnectionFromSetting()I

    move-result v0

    return v0
.end method

.method private broadcastDefaultDataSubIdCallback(JZ)V
    .locals 5
    .param p1, "subId"    # J
    .param p3, "success"    # Z

    .prologue
    const/4 v0, 0x0

    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_0
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "subscription"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "DctController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[broadcastDefaultDataSubIdCallback] subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", success="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method private getDataConnectionFromSetting()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[J

    move-result-object v1

    .local v1, "subId":[J
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(J)I

    move-result v0

    .local v0, "phoneId":I
    return v0
.end method

.method private getIccCardState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/dataconnection/DctController;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DCTrackerController.getInstance can\'t be called before makeDCTController()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    return-object v0
.end method

.method private isValidApnType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "supl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hipri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fota"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ims"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cbs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidphoneId(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "DctController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DctController] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "DctController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DctController] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static logv(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "DctController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DctController] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static logw(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "DctController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DctController] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static makeDctController([Lcom/android/internal/telephony/PhoneProxy;)Lcom/android/internal/telephony/dataconnection/DctController;
    .locals 1
    .param p0, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DctController;-><init>([Lcom/android/internal/telephony/PhoneProxy;)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized disableApnType(JLjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # J
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(J)I

    move-result v0

    .local v0, "phoneId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->isValidphoneId(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "disableApnType(): with PHONE_NONE or Invalid PHONE ID"

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logw(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableApnType():type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",powerOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->disconnectSync(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .end local v0    # "phoneId":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized enableApnType(JLjava/lang/String;)I
    .locals 9
    .param p1, "subId"    # J
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v7, -0x1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(J)I

    move-result v3

    .local v3, "phoneId":I
    if-eq v3, v7, :cond_0

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DctController;->isValidphoneId(I)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const-string v5, "enableApnType(): with PHONE_NONE or Invalid PHONE ID"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->logw(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v4

    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableApnType():type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",phoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",powerOff="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z

    aget-boolean v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    const-string v5, "default"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v2, 0x0

    .local v2, "peerphoneId":I
    :goto_1
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v2, v5, :cond_5

    if-ne v3, v2, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    .local v0, "activeApnTypes":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v5, v0

    if-eqz v5, :cond_2

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v5, v0

    if-ge v1, v5, :cond_2

    const-string v5, "default"

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v5, v5, v2

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneProxy;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v5, v6, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableApnType:Peer Phone still have non-default active APN type:activeApnTypes["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .end local v0    # "activeApnTypes":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "peerphoneId":I
    .end local v3    # "phoneId":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v0    # "activeApnTypes":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "peerphoneId":I
    .restart local v3    # "phoneId":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "activeApnTypes":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "peerphoneId":I
    :cond_5
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableApnType(): CurrentDataPhone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", RequestedDataPhone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestedDataPhone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    if-ne v3, v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleOrDeactingSync()Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestedDataPhone:I

    const-string v4, "enableApnType(): mRequestedDataPhone equals request PHONE ID."

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v4, v4, v3

    invoke-virtual {v4, p3}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->connectSync(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_6
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    if-ne v4, v7, :cond_7

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestedDataPhone:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableApnType(): current PHONE is NONE or IDLE, mCurrentDataPhone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v4, v4, v3

    invoke-virtual {v4, p3}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->connectSync(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableApnType(): current PHONE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is active."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestedDataPhone:I

    if-eq v3, v4, :cond_8

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v4, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestedDataPhone:I

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchState:[Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->cleanupAllConnection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public getDataStateChangedCallback()Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDataStateChangedCallback:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .local v1, "ar":Landroid/os/AsyncResult;
    const-string v8, "DCGG"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "DGG"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "DCGS"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "DCGGS"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "ar":Landroid/os/AsyncResult;
    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1    # "ar":Landroid/os/AsyncResult;
    :cond_0
    const-string v8, "DctController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage msg="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    const-string v8, "DCGG"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "DGG"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "DCGS"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "DCGGS"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "ar":Landroid/os/AsyncResult;
    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1    # "ar":Landroid/os/AsyncResult;
    :cond_3
    iget-object v5, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .local v5, "phoneId":Ljava/lang/Integer;
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v9}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(J)I

    move-result v6

    .local v6, "prefPhoneId":I
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v8}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()J

    move-result-wide v8

    const-wide/16 v10, -0x3e8

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    const-string v8, "DctController"

    const-string v9, "default data sub is not initilized, try to set one "

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_8

    const/4 v6, 0x1

    :cond_4
    :goto_1
    const-string v8, "DctController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_ALL_DATA_DISCONNECTED phoneId :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v8, v8, v6

    invoke-virtual {v8, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    const-string v8, "DCGG"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "DGG"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "DCGS"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "DCGGS"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[J

    move-result-object v7

    .local v7, "subId":[J
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "multi_sim_data_call"

    const/4 v10, 0x0

    aget-wide v10, v7, v10

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "multi_sim_data_call_slot"

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .end local v7    # "subId":[J
    :cond_6
    const-string v8, "DCGG"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "DGG"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "DCGS"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "DCGGS"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_7
    const/4 v8, 0x2

    new-instance v9, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "alllowedDataDone":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    .end local v4    # "phone":Lcom/android/internal/telephony/Phone;
    iget-object v2, v4, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .local v2, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    const/4 v8, 0x1

    invoke-virtual {v2, v8, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataAllowed(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .end local v0    # "alllowedDataDone":Landroid/os/Message;
    .end local v2    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_1

    .end local v5    # "phoneId":Ljava/lang/Integer;
    .end local v6    # "prefPhoneId":I
    :cond_9
    :pswitch_1
    const-string v8, "DCGG"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "DGG"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "DCGS"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "DCGGS"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    :cond_a
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .restart local v5    # "phoneId":Ljava/lang/Integer;
    :goto_2
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[J

    move-result-object v7

    .restart local v7    # "subId":[J
    const-string v8, "DctController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_SET_DATA_ALLOWED_DONE  phoneId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", subId[0]="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-wide v10, v7, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "DCGG"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "DGG"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "DCGS"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "DCGGS"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    :cond_b
    const-string v8, "DctController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[broadcastDefaultDataSubIdChanged] subId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-wide v10, v7, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "intent":Landroid/content/Intent;
    const/high16 v8, 0x20000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v8, "subscription"

    const/4 v9, 0x0

    aget-wide v10, v7, v9

    invoke-virtual {v3, v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .end local v3    # "intent":Landroid/content/Intent;
    :cond_c
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNotifyDataSwitchInfo:Landroid/os/RegistrantList;

    new-instance v9, Landroid/os/AsyncResult;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-wide v12, v7, v11

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v8, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneProxy;->updateDataConnectionTracker()V

    goto/16 :goto_0

    .end local v5    # "phoneId":Ljava/lang/Integer;
    .end local v7    # "subId":[J
    :cond_d
    iget-object v5, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .restart local v5    # "phoneId":Ljava/lang/Integer;
    goto/16 :goto_2

    .end local v5    # "phoneId":Ljava/lang/Integer;
    :pswitch_2
    if-eqz v1, :cond_1

    iget-object v5, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .restart local v5    # "phoneId":Ljava/lang/Integer;
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[J

    move-result-object v7

    .restart local v7    # "subId":[J
    const-string v9, "DctController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_SET_DATA_ALLOW_FOR_MMS_DONE  phoneId="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", subId[0]="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v10, 0x0

    aget-wide v10, v7, v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", ar.result="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", (ar.exception == null)=>"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_f

    const/4 v8, 0x1

    :goto_3
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneProxy;->updateDataConnectionTracker()V

    const-string v8, "CG"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    const-string v8, "GG"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_e
    const/4 v8, 0x0

    aget-wide v10, v7, v8

    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_10

    const/4 v8, 0x1

    :goto_4
    invoke-direct {p0, v10, v11, v8}, Lcom/android/internal/telephony/dataconnection/DctController;->broadcastDefaultDataSubIdCallback(JZ)V

    goto/16 :goto_0

    :cond_f
    const/4 v8, 0x0

    goto :goto_3

    :cond_10
    const/4 v8, 0x0

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DctController;->isValidphoneId(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "isDataConnectivityPossible(): with PHONE_NONE or Invalid PHONE ID"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logw(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isIdleOrDeacting(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleOrDeactingSync()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerForDataSwitchInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNotifyDataSwitchInfo:Landroid/os/RegistrantList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNotifyDataSwitchInfo:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDataSubId(J)V
    .locals 13
    .param p1, "subId"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "DctController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setDataAllowed subId :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v8, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(J)I

    move-result v2

    .local v2, "phoneId":I
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v9}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(J)I

    move-result v3

    .local v3, "prefPhoneId":I
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v8}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()J

    move-result-wide v4

    .local v4, "prefSubId":J
    const-wide/16 v8, -0x3e8

    cmp-long v8, v4, v8

    if-nez v8, :cond_0

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    const-string v8, "DctController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setDataAllowed, default data sub is not initilized, try to set default data slot to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_2

    move v3, v6

    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    const-string v8, "DCGG"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "DGG"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "DCGS"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "DCGGS"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_1
    if-ne v2, v3, :cond_4

    const-string v6, "DctController"

    const-string v7, "setDataSubId() return"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :goto_1
    return-void

    :cond_2
    move v3, v7

    goto :goto_0

    :cond_3
    const-string v6, "DctController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDataSubId: ignore invalid subId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", phoneId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .restart local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_4
    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    iget-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataAllowed(ZLandroid/os/Message;)V

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v7, v7, v3

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, p0, v6, v8}, Lcom/android/internal/telephony/PhoneProxy;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public setDataSubIdForMMS(J)V
    .locals 9
    .param p1, "subId"    # J

    .prologue
    const/4 v8, -0x1

    const-string v5, "DctController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDataSubIdForMMS subId :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v5, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(J)I

    move-result v3

    .local v3, "phoneId":I
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(J)I

    move-result v4

    .local v4, "prefPhoneId":I
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    move-object v5, v2

    check-cast v5, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    .local v1, "gprsState":I
    const-string v5, "DctController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDataSubId subId :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", prefPhoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", gprsState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, v4, :cond_0

    const-string v5, "ril.datacross.slotid"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v5, "DctController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checking property, ril.datacross.slotid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ril.datacross.slotid"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "allowedMMSDone":Landroid/os/Message;
    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    iget-object v5, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v0}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    return-void

    .end local v0    # "allowedMMSDone":Landroid/os/Message;
    .restart local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    const-string v5, "ril.datacross.slotid"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
