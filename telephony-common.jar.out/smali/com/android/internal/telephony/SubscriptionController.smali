.class public Lcom/android/internal/telephony/SubscriptionController;
.super Lcom/android/internal/telephony/ISub$Stub;
.source "SubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field private static final DUMMY_SUB_ID:I = -0x1

.field protected static final ENABLE_DATA_SWITCH_DELAY:I = 0xbb8

.field private static final EVENT_BROADCAST_SUBSCRIPTION_CHANGE_RESULT:I = 0x3

.field private static final EVENT_SUBSCRIPTION_CHANGE_COMPLETED:I = 0x2

.field private static final EVENT_WRITE_MSISDN_DONE:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "SubController"

.field static final MAX_LOCAL_LOG_LINES:I = 0x1f4

.field private static final MODEL_H:Z

.field private static final MODEL_J:Z

.field private static final MODEL_K:Z

.field private static final MODEL_T:Z

.field private static final RES_TYPE_BACKGROUND_DARK:I = 0x0

.field private static final RES_TYPE_BACKGROUND_LIGHT:I = 0x1

.field public static final SHIP_BUILD:Z

.field static final VDBG:Z

.field private static mActiveSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static mAllSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static mDefaultPhoneId:I

.field private static mDefaultVoiceSubId:J

.field private static mSimInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/internal/telephony/SubscriptionController;

.field protected static sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

.field private static final sSimBackgroundDarkRes:[I

.field private static final sSimBackgroundLightRes:[I


# instance fields
.field protected mCM:Lcom/android/internal/telephony/CallManager;

.field private mCalledSetDataAllowed:Z

.field private mCalledSetDataSubBySlot:Z

.field private mCalledUpdateUserPrefs:Z

.field protected mContext:Landroid/content/Context;

.field private mDefaultDataSubIdObserver:Landroid/database/ContentObserver;

.field private mDefaultVoiceSubIdObserver:Landroid/database/ContentObserver;

.field protected mHandler:Landroid/os/Handler;

.field private mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

.field protected final mLock:Ljava/lang/Object;

.field protected mSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "true"

    const-string v1, "ro.product_ship"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionController;->SHIP_BUILD:Z

    sput-object v3, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionController;->setSimResource(I)[I

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SubscriptionController;->sSimBackgroundDarkRes:[I

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionController;->setSimResource(I)[I

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SubscriptionController;->sSimBackgroundLightRes:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SubscriptionController;->mSimInfo:Ljava/util/HashMap;

    const-wide v0, 0x7fffffffffffffffL

    sput-wide v0, Lcom/android/internal/telephony/SubscriptionController;->mDefaultVoiceSubId:J

    sput v4, Lcom/android/internal/telephony/SubscriptionController;->mDefaultPhoneId:I

    sput-object v3, Lcom/android/internal/telephony/SubscriptionController;->mAllSubInfoList:Ljava/util/List;

    sput-object v3, Lcom/android/internal/telephony/SubscriptionController;->mActiveSubInfoList:Ljava/util/List;

    const-string v0, "ro.product.device"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ja3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionController;->MODEL_J:Z

    const-string v0, "ro.product.device"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionController;->MODEL_H:Z

    const-string v0, "ro.product.device"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "klte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionController;->MODEL_K:Z

    const-string v0, "ro.product.device"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "trlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionController;->MODEL_T:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/ISub$Stub;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLock:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mCalledSetDataSubBySlot:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mCalledSetDataAllowed:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mCalledUpdateUserPrefs:Z

    new-instance v0, Lcom/android/internal/telephony/SubscriptionController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SubscriptionController$1;-><init>(Lcom/android/internal/telephony/SubscriptionController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/internal/telephony/SubscriptionController$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/SubscriptionController$2;-><init>(Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mDefaultVoiceSubIdObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/internal/telephony/SubscriptionController$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/SubscriptionController$3;-><init>(Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mDefaultDataSubIdObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mCM:Lcom/android/internal/telephony/CallManager;

    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "isub"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->refreshSubInfo()V

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_voice_call"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mDefaultVoiceSubIdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_data_call"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mDefaultDataSubIdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v0, "[SubscriptionController] init by Context"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/ISub$Stub;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLock:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mCalledSetDataSubBySlot:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mCalledSetDataAllowed:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mCalledUpdateUserPrefs:Z

    new-instance v0, Lcom/android/internal/telephony/SubscriptionController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SubscriptionController$1;-><init>(Lcom/android/internal/telephony/SubscriptionController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/internal/telephony/SubscriptionController$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/SubscriptionController$2;-><init>(Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mDefaultVoiceSubIdObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/internal/telephony/SubscriptionController$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/SubscriptionController$3;-><init>(Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mDefaultDataSubIdObserver:Landroid/database/ContentObserver;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mCM:Lcom/android/internal/telephony/CallManager;

    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "isub"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->refreshSubInfo()V

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_voice_call"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mDefaultVoiceSubIdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_data_call"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mDefaultDataSubIdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v0, "[SubscriptionController] init by Phone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/SubscriptionController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSlotId(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/SubscriptionController;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p1, "x1"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->broadcastDefaultDataSubIdChanged(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/SubscriptionController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionController;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->updateAllDataConnectionTrackers()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/SubscriptionController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSlotId(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/SubscriptionController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionController;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSlotId()I

    move-result v0

    return v0
.end method

.method private broadcastDefaultDataSubIdChangeStarted(J)V
    .locals 3
    .param p1, "subId"    # J

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[broadcastDefaultDataSubIdChangeStarted] subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "subscription"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private broadcastDefaultDataSubIdChanged(J)V
    .locals 3
    .param p1, "subId"    # J

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[broadcastDefaultDataSubIdChanged] subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "subscription"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private broadcastDefaultSmsSubIdChanged(J)V
    .locals 3
    .param p1, "subId"    # J

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[broadcastDefaultSmsSubIdChanged] subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "subscription"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private broadcastDefaultVoiceSubIdChanged(J)V
    .locals 3
    .param p1, "subId"    # J

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[broadcastDefaultVoiceSubIdChanged] subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "subscription"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private broadcastSimInfoContentChanged(JLjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "subId"    # J
    .param p3, "columnName"    # Ljava/lang/String;
    .param p4, "intContent"    # I
    .param p5, "stringContent"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->refreshSubInfo()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "columnName"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "intContent"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "stringContent"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, -0x64

    if-eq p4, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[broadcastSimInfoContentChanged] subId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " changed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[broadcastSimInfoContentChanged] subId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " changed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enforceSubscriptionPermission()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getDefaultDataSlotId()I
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_data_call_slot"

    const/16 v3, -0x3e8

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "slotId":I
    return v0
.end method

.method private getDefaultVoiceSlotId()I
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_voice_call_slot"

    const/16 v3, -0x3e8

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "slotId":I
    return v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/SubscriptionController;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    if-nez v0, :cond_0

    const-string v0, "SubController"

    const-string v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    return-object v0
.end method

.method private getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
    .locals 10
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "queryKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    const/4 v4, 0x0

    .local v4, "selectionArgs":[Ljava/lang/String;
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    .local v8, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    move-object v9, v8

    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .local v9, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoRecord(Landroid/database/Cursor;)Landroid/telephony/SubInfoRecord;

    move-result-object v7

    .local v7, "subInfo":Landroid/telephony/SubInfoRecord;
    if-eqz v7, :cond_5

    if-nez v9, :cond_4

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    :goto_1
    :try_start_1
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object v9, v8

    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    goto :goto_0

    .end local v7    # "subInfo":Landroid/telephony/SubInfoRecord;
    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    :cond_1
    const-string v0, "Query fail"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_3
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v8

    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    :catchall_0
    move-exception v0

    move-object v8, v9

    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    :goto_4
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v7    # "subInfo":Landroid/telephony/SubInfoRecord;
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    :cond_4
    move-object v8, v9

    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    goto :goto_1

    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    :cond_5
    move-object v8, v9

    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    goto :goto_2

    .end local v7    # "subInfo":Landroid/telephony/SubInfoRecord;
    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    :cond_6
    move-object v8, v9

    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    goto :goto_3
.end method

.method private getSubInfoRecord(Landroid/database/Cursor;)Landroid/telephony/SubInfoRecord;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    new-instance v0, Landroid/telephony/SubInfoRecord;

    invoke-direct {v0}, Landroid/telephony/SubInfoRecord;-><init>()V

    .local v0, "info":Landroid/telephony/SubInfoRecord;
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/telephony/SubInfoRecord;->subId:J

    const-string v2, "icc_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/telephony/SubInfoRecord;->iccId:Ljava/lang/String;

    const-string v2, "sim_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/telephony/SubInfoRecord;->slotId:I

    const-string v2, "display_name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    const-string v2, "name_source"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/telephony/SubInfoRecord;->nameSource:I

    const-string v2, "color"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/telephony/SubInfoRecord;->color:I

    const-string v2, "number"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/telephony/SubInfoRecord;->number:Ljava/lang/String;

    const-string v2, "display_number_format"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/telephony/SubInfoRecord;->displayNumberFormat:I

    const-string v2, "data_roaming"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/telephony/SubInfoRecord;->dataRoaming:I

    sget-object v2, Lcom/android/internal/telephony/SubscriptionController;->sSimBackgroundDarkRes:[I

    array-length v1, v2

    .local v1, "size":I
    iget v2, v0, Landroid/telephony/SubInfoRecord;->color:I

    if-ltz v2, :cond_0

    iget v2, v0, Landroid/telephony/SubInfoRecord;->color:I

    if-ge v2, v1, :cond_0

    iget-object v2, v0, Landroid/telephony/SubInfoRecord;->simIconRes:[I

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/telephony/SubscriptionController;->sSimBackgroundDarkRes:[I

    iget v5, v0, Landroid/telephony/SubInfoRecord;->color:I

    aget v4, v4, v5

    aput v4, v2, v3

    iget-object v2, v0, Landroid/telephony/SubInfoRecord;->simIconRes:[I

    const/4 v3, 0x1

    sget-object v4, Lcom/android/internal/telephony/SubscriptionController;->sSimBackgroundLightRes:[I

    iget v5, v0, Landroid/telephony/SubInfoRecord;->color:I

    aget v4, v4, v5

    aput v4, v2, v3

    :cond_0
    const-string v2, "mcc"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/telephony/SubInfoRecord;->mcc:I

    const-string v2, "mnc"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/telephony/SubInfoRecord;->mnc:I

    const/4 v2, -0x1

    iput v2, v0, Landroid/telephony/SubInfoRecord;->mNwMode:I

    sget-boolean v2, Lcom/android/internal/telephony/SubscriptionController;->SHIP_BUILD:Z

    if-eqz v2, :cond_1

    const-string v2, "[getSubInfoRecord] SubId: XXX iccid: XXX slotId: XXX displayName: XXX color: XXX mcc/mnc: XXX subStatus: XXX Nwmode: XXX"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSubInfoRecord] SubId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Landroid/telephony/SubInfoRecord;->subId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " iccid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/telephony/SubInfoRecord;->iccId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/telephony/SubInfoRecord;->slotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " displayName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " color:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/telephony/SubInfoRecord;->color:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mcc/mnc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/telephony/SubInfoRecord;->mcc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/telephony/SubInfoRecord;->mnc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/telephony/SubInfoRecord;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Nwmode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/telephony/SubInfoRecord;->mNwMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const-class v1, Lcom/android/internal/telephony/SubscriptionController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/SubscriptionController;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SubscriptionController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    :goto_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    monitor-exit v1

    return-object v0

    :cond_0
    const-string v0, "SubController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static init(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 4
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const-class v1, Lcom/android/internal/telephony/SubscriptionController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/SubscriptionController;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SubscriptionController;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    :goto_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    monitor-exit v1

    return-object v0

    :cond_0
    const-string v0, "SubController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isSubInfoReady()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->mSimInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "SubController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logdl(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "SubController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logel(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "SubController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logvl(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logv(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static printStackTrace(Ljava/lang/String;)V
    .locals 9
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    .local v4, "re":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StackTrace - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionController;->slogd(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .local v5, "st":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x1

    .local v1, "first":Z
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .local v6, "ste":Ljava/lang/StackTraceElement;
    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionController;->slogd(Ljava/lang/String;)V

    goto :goto_1

    .end local v6    # "ste":Ljava/lang/StackTraceElement;
    :cond_1
    return-void
.end method

.method private setDefaultDataSlotId(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_data_call_slot"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setDefaultDataSubIdUsingSlotId(I)V
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()J

    move-result-wide v0

    .local v0, "defaultSubId":J
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)J

    move-result-wide v2

    .local v2, "subId":J
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setDefaultDataSubIdUsingSlotId] defaultSubId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ subId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", slotId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setDefaultDataSubIdUsingSlotId] subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", slotId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / defaultSubId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(J)V

    goto :goto_0
.end method

.method private setDefaultVoiceSlotId(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_voice_call_slot"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setDefaultVoiceSubIdUsingSlotId(I)V
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()J

    move-result-wide v0

    .local v0, "defaultSubId":J
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)J

    move-result-wide v2

    .local v2, "subId":J
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setDefaultVoiceSubIdUsingSlotId] defaultSubId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ subId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", slotId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setDefaultVoiceSubIdUsingSlotId] subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", slotId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / defaultSubId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(J)V

    goto :goto_0
.end method

.method private static setSimResource(I)[I
    .locals 2
    .param p0, "type"    # I

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x0

    .local v0, "simResource":[I
    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-array v0, v1, [I

    .end local v0    # "simResource":[I
    fill-array-data v0, :array_0

    .restart local v0    # "simResource":[I
    goto :goto_0

    :pswitch_1
    new-array v0, v1, [I

    .end local v0    # "simResource":[I
    fill-array-data v0, :array_1

    .restart local v0    # "simResource":[I
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x1080788
        0x108078a
        0x1080789
        0x108078b
    .end array-data

    :array_1
    .array-data 4
        0x108078c
        0x108078e
        0x108078d
        0x108078f
    .end array-data
.end method

.method private shouldDefaultBeCleared(Ljava/util/List;J)Z
    .locals 8
    .param p2, "subId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[shouldDefaultBeCleared: subId] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[shouldDefaultBeCleared] return true no records subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    const-wide/16 v4, -0x3e9

    cmp-long v4, p2, v4

    if-nez v4, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[shouldDefaultBeCleared] return false only one subId, subId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubInfoRecord;

    .local v1, "record":Landroid/telephony/SubInfoRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[shouldDefaultBeCleared] Record.subId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Landroid/telephony/SubInfoRecord;->subId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    iget-wide v4, v1, Landroid/telephony/SubInfoRecord;->subId:J

    cmp-long v4, v4, p2

    if-nez v4, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[shouldDefaultBeCleared] return false subId is active, subId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    move v2, v3

    goto :goto_0

    .end local v1    # "record":Landroid/telephony/SubInfoRecord;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[shouldDefaultBeCleared] return true not active subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static slogd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "SubController"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateAllDataConnectionTrackers()V
    .locals 4

    .prologue
    sget-object v2, Lcom/android/internal/telephony/SubscriptionController;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v0, v2

    .local v0, "len":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateAllDataConnectionTrackers] sProxyPhones.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "phoneId":I
    :goto_0
    if-ge v1, v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateAllDataConnectionTrackers] phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/SubscriptionController;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->updateDataConnectionTracker()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private validateSubId(J)V
    .locals 3
    .param p1, "subId"    # J

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "validateSubId subId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid sub id passed as parameter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Default sub id passed as parameter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public activateSubId(J)V
    .locals 3
    .param p1, "subId"    # J

    .prologue
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(J)I

    move-result v1

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activateSubId: subscription already active, subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(J)I

    move-result v0

    .local v0, "slotId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "[activateSubId]- invalid slotId"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SubscriptionHelper;->setUiccSubscription(II)V

    goto :goto_0
.end method

.method public addSubInfoRecord(Ljava/lang/String;I)I
    .locals 29
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    sget-boolean v5, Lcom/android/internal/telephony/SubscriptionController;->SHIP_BUILD:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[addSubInfoRecord]+ iccId: XXX slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionController;->enforceSubscriptionPermission()V

    if-nez p1, :cond_0

    const-string v5, "[addSubInfoRecord]- null iccId"

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[J

    move-result-object v23

    .local v23, "subIds":[J
    if-eqz v23, :cond_1

    move-object/from16 v0, v23

    array-length v5, v0

    if-nez v5, :cond_3

    :cond_1
    const-string v5, "[addSubInfoRecord]- getSubId fail"

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_1
    return v5

    .end local v23    # "subIds":[J
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[addSubInfoRecord]+ iccId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    goto :goto_0

    .restart local v23    # "subIds":[J
    :cond_3
    new-instance v17, Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/uicc/SpnOverride;-><init>()V

    .local v17, "mSpnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    const/4 v6, 0x0

    aget-wide v6, v23, v6

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->getSimOperator(J)Ljava/lang/String;

    move-result-object v10

    .local v10, "CarrierName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[addSubInfoRecord] CarrierName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/internal/telephony/SubscriptionController;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v6, v6, p2

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v6}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .local v19, "nameToSet":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[addSubInfoRecord] Found, name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .local v4, "resolver":Landroid/content/ContentResolver;
    sget-object v5, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "sim_id"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "name_source"

    aput-object v8, v6, v7

    const-string v7, "icc_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .local v13, "cursor":Landroid/database/Cursor;
    if-eqz v13, :cond_4

    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_a

    :cond_4
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .local v27, "value":Landroid/content/ContentValues;
    const-string v5, "icc_id"

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "color"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "sim_id"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "display_name"

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v26

    .local v26, "uri":Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[addSubInfoRecord]- New record created: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v26    # "uri":Landroid/net/Uri;
    :goto_3
    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_5
    sget-object v5, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "sim_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_14

    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_14

    :cond_6
    const-string v5, "_id"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .local v24, "subId":J
    sget-object v5, Lcom/android/internal/telephony/SubscriptionController;->mSimInfo:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .local v12, "currentSubId":Ljava/lang/Long;
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v5

    if-nez v5, :cond_16

    :cond_7
    sget-object v5, Lcom/android/internal/telephony/SubscriptionController;->mSimInfo:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v21

    .local v21, "simCount":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_10

    const/4 v11, 0x0

    .local v11, "count":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_4
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_f

    const-string v5, "0"

    const-string v6, "ril.ICC_TYPE"

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[J

    move-result-object v7

    const/4 v8, 0x0

    aget-wide v8, v7, v8

    const-string v7, "0"

    invoke-static {v6, v8, v9, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_8

    add-int/lit8 v11, v11, 0x1

    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v11    # "count":I
    .end local v12    # "currentSubId":Ljava/lang/Long;
    .end local v13    # "cursor":Landroid/database/Cursor;
    .end local v16    # "i":I
    .end local v19    # "nameToSet":Ljava/lang/String;
    .end local v21    # "simCount":I
    .end local v24    # "subId":J
    .end local v27    # "value":Landroid/content/ContentValues;
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SUB 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "nameToSet":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[addSubInfoRecord] Not found, name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    goto/16 :goto_2

    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    .restart local v13    # "cursor":Landroid/database/Cursor;
    :cond_a
    const/4 v5, 0x0

    :try_start_2
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .restart local v24    # "subId":J
    const/4 v5, 0x1

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .local v20, "oldSimInfoId":I
    const/4 v5, 0x2

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .local v18, "nameSource":I
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .restart local v27    # "value":Landroid/content/ContentValues;
    move/from16 v0, p2

    move/from16 v1, v20

    if-eq v0, v1, :cond_b

    const-string v5, "sim_id"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_b
    const/4 v5, 0x2

    move/from16 v0, v18

    if-eq v0, v5, :cond_c

    const-string v5, "display_name"

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-virtual/range {v27 .. v27}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-lez v5, :cond_d

    sget-object v5, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_d
    const-string v5, "[addSubInfoRecord]- Record already exist"

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .end local v18    # "nameSource":I
    .end local v20    # "oldSimInfoId":I
    .end local v24    # "subId":J
    .end local v27    # "value":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    if-eqz v13, :cond_e

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v5

    .restart local v11    # "count":I
    .restart local v12    # "currentSubId":Ljava/lang/Long;
    .restart local v16    # "i":I
    .restart local v21    # "simCount":I
    .restart local v24    # "subId":J
    .restart local v27    # "value":Landroid/content/ContentValues;
    :cond_f
    move/from16 v21, v11

    .end local v11    # "count":I
    .end local v16    # "i":I
    :cond_10
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()J

    move-result-wide v14

    .local v14, "defaultSubId":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[addSubInfoRecord] mSimInfo.size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/SubscriptionController;->mSimInfo:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " slotId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " subId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " defaultSubId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " simCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    invoke-static {v14, v15}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v5, 0x1

    move/from16 v0, v21

    if-ne v0, v5, :cond_12

    :cond_11
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSubId(J)V

    :cond_12
    const/4 v5, 0x1

    move/from16 v0, v21

    if-ne v0, v5, :cond_13

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[addSubInfoRecord] one sim set defaults to subId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(J)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(J)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(J)V

    .end local v14    # "defaultSubId":J
    .end local v21    # "simCount":I
    :cond_13
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[addSubInfoRecord]- hashmap("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v5

    if-nez v5, :cond_6

    .end local v12    # "currentSubId":Ljava/lang/Long;
    .end local v24    # "subId":J
    :cond_14
    if-eqz v13, :cond_15

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_15
    sget-object v5, Lcom/android/internal/telephony/SubscriptionController;->mSimInfo:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v22

    .local v22, "size":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[addSubInfoRecord]- info size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionController;->updateAllDataConnectionTrackers()V

    const/4 v5, 0x1

    goto/16 :goto_1

    .end local v22    # "size":I
    .restart local v12    # "currentSubId":Ljava/lang/Long;
    .restart local v24    # "subId":J
    :cond_16
    :try_start_4
    const-string v5, "[addSubInfoRecord] currentSubId != null && currentSubId is valid, IGNORE"

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    .end local v12    # "currentSubId":Ljava/lang/Long;
    .end local v24    # "subId":J
    :catchall_1
    move-exception v5

    if-eqz v13, :cond_17

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_17
    throw v5
.end method

.method public clearDefaultsForInactiveSubIds()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x3e8

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v0

    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[clearDefaultsForInactiveSubIds] records: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->shouldDefaultBeCleared(Ljava/util/List;J)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "[clearDefaultsForInactiveSubIds] clearing default data sub id"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->shouldDefaultBeCleared(Ljava/util/List;J)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "[clearDefaultsForInactiveSubIds] clearing default sms sub id"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(J)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->shouldDefaultBeCleared(Ljava/util/List;J)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "[clearDefaultsForInactiveSubIds] clearing default voice sub id"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(J)V

    :cond_2
    return-void
.end method

.method public clearSubInfo()I
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->enforceSubscriptionPermission()V

    const-string v1, "[clearSubInfo]+"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/telephony/SubscriptionController;->mSimInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    .local v0, "size":I
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[clearSubInfo]- no simInfo size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    const/4 v0, 0x0

    .end local v0    # "size":I
    :goto_0
    return v0

    .restart local v0    # "size":I
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/SubscriptionController;->mSimInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[clearSubInfo]- clear size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deactivateSubId(J)V
    .locals 3
    .param p1, "subId"    # J

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(J)I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activateSubId: subscription already deactivated, subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(J)I

    move-result v0

    .local v0, "slotId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "[deactivateSubId]- invalid slotId"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SubscriptionHelper;->setUiccSubscription(II)V

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    const-string v6, "Requires DUMP"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "SubscriptionController:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " defaultSubId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " defaultDataSubId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " defaultVoiceSubId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " defaultSmsSubId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " defaultDataPhoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " defaultVoicePhoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " defaultSmsPhoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsPhoneId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    sget-object v4, Lcom/android/internal/telephony/SubscriptionController;->mSimInfo:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mSimInfo["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v4, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v3

    .local v3, "sirl":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    if-eqz v3, :cond_1

    const-string v4, " ActiveSubInfoList:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubInfoRecord;

    .local v0, "entry":Landroid/telephony/SubInfoRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/telephony/SubInfoRecord;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "entry":Landroid/telephony/SubInfoRecord;
    :cond_1
    const-string v4, " ActiveSubInfoList: is null"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v4, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getAllSubInfoList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, " AllSubInfoList:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubInfoRecord;

    .restart local v0    # "entry":Landroid/telephony/SubInfoRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/telephony/SubInfoRecord;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "entry":Landroid/telephony/SubInfoRecord;
    :cond_3
    const-string v4, " AllSubInfoList: is null"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v4, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v4, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public getActiveSubIdList()[J
    .locals 9

    .prologue
    sget-object v7, Lcom/android/internal/telephony/SubscriptionController;->mSimInfo:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .local v3, "simInfoSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getActiveSubIdList] simInfoSet="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v7

    new-array v6, v7, [J

    .local v6, "subIdArr":[J
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .local v4, "sub":J
    aput-wide v4, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v4    # "sub":J
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getActiveSubIdList] X subIdArr.length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    return-object v6
.end method

.method public getActiveSubInfoCount()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v0

    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    if-nez v0, :cond_0

    const-string v1, "[getActiveSubInfoCount] records null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getActiveSubInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->enforceSubscriptionPermission()V

    const/4 v0, 0x0

    .local v0, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->isSubInfoReady()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "[getActiveSubInfoList] Sub Controller not ready"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    move-object v1, v0

    .end local v0    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    .local v1, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :goto_0
    return-object v1

    .end local v1    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    .restart local v0    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->mActiveSubInfoList:Ljava/util/List;

    if-nez v0, :cond_1

    const-string v2, "sim_id!=-1000"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SubscriptionController;->mActiveSubInfoList:Ljava/util/List;

    :cond_1
    if-eqz v0, :cond_2

    :goto_1
    move-object v1, v0

    .end local v0    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    .restart local v1    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    goto :goto_0

    .end local v1    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    .restart local v0    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :cond_2
    const-string v2, "[getActiveSubInfoList]- no info return"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAllSubInfoCount()I
    .locals 9

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->enforceSubscriptionPermission()V

    sget-object v8, Lcom/android/internal/telephony/SubscriptionController;->mAllSubInfoList:Ljava/util/List;

    .local v8, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "count":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getAllSubInfoCount]- count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .end local v6    # "count":I
    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .restart local v6    # "count":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getAllSubInfoCount]- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SUB(s) in DB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v6    # "count":I
    :cond_2
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    const-string v0, "[getAllSubInfoCount]- no SUB in DB"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getAllSubInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->enforceSubscriptionPermission()V

    const/4 v0, 0x0

    .local v0, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->mAllSubInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-direct {p0, v1, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SubscriptionController;->mAllSubInfoList:Ljava/util/List;

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getAllSubInfoList]- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " infos return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    const-string v1, "[getAllSubInfoList]- no info return"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDefaultDataSubId()J
    .locals 10

    .prologue
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "multi_sim_data_call"

    const-wide/16 v8, -0x3e8

    invoke-static {v3, v6, v8, v9}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .local v4, "subId":J
    const-string v3, "DCGG"

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DCGS"

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DGG"

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DCGGS"

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    sget-boolean v3, Lcom/android/internal/telephony/SubscriptionController;->MODEL_J:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/internal/telephony/SubscriptionController;->MODEL_H:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/internal/telephony/SubscriptionController;->MODEL_K:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/internal/telephony/SubscriptionController;->MODEL_T:Z

    if-eqz v3, :cond_3

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSlotId()I

    move-result v2

    .local v2, "slot":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)J

    move-result-wide v0

    .local v0, "prefSub":J
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v3

    if-eqz v3, :cond_3

    cmp-long v3, v4, v0

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/internal/telephony/SubscriptionController;->mSimInfo:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/SubscriptionController;->mSimInfo:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the previous card is not in its slot, previous subid = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", new sub id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "multi_sim_data_call"

    invoke-static {v3, v6, v0, v1}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    :cond_2
    move-wide v4, v0

    .end local v0    # "prefSub":J
    .end local v2    # "slot":I
    :cond_3
    return-wide v4
.end method

.method public getDefaultSmsSubId()J
    .locals 6

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_sms"

    const-wide/16 v4, -0x3e8

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .local v0, "subId":J
    return-wide v0
.end method

.method public getDefaultSubId()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    sget-wide v0, Lcom/android/internal/telephony/SubscriptionController;->mDefaultVoiceSubId:J

    .local v0, "subId":J
    return-wide v0
.end method

.method public getDefaultVoiceSubId()J
    .locals 6

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_voice_call"

    const-wide/16 v4, -0x3e8

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .local v0, "subId":J
    return-wide v0
.end method

.method public getNwMode(J)I
    .locals 3
    .param p1, "subId"    # J

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;

    move-result-object v0

    .local v0, "subInfo":Landroid/telephony/SubInfoRecord;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/telephony/SubInfoRecord;->mNwMode:I

    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubState: invalid subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPhoneId(J)I
    .locals 11
    .param p1, "subId"    # J

    .prologue
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v5, p1, v8

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()J

    move-result-wide p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getPhoneId] asked for default subId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "[getPhoneId]- invalid subId return=-1000"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    const/16 v2, -0x3e8

    :goto_0
    return v2

    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v5, p1, v8

    if-gez v5, :cond_2

    const-wide/16 v8, -0x1

    sub-long/2addr v8, p1

    long-to-int v2, v8

    .local v2, "phoneId":I
    goto :goto_0

    .end local v2    # "phoneId":I
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/SubscriptionController;->mSimInfo:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v4

    .local v4, "size":I
    if-nez v4, :cond_3

    sget v2, Lcom/android/internal/telephony/SubscriptionController;->mDefaultPhoneId:I

    .restart local v2    # "phoneId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getPhoneId]- no sims, returning default phoneId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "phoneId":I
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/SubscriptionController;->mSimInfo:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, "sim":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .local v6, "sub":J
    cmp-long v5, p1, v6

    if-nez v5, :cond_4

    move v2, v3

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v3    # "sim":I
    .end local v6    # "sub":J
    :cond_5
    sget v2, Lcom/android/internal/telephony/SubscriptionController;->mDefaultPhoneId:I

    .restart local v2    # "phoneId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getPhoneId]- subId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " not found return default phoneId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSlotId(J)I
    .locals 11
    .param p1, "subId"    # J

    .prologue
    const/16 v7, -0x3e8

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, p1, v8

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()J

    move-result-wide p1

    :cond_0
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "[getSlotId]- subId invalid"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    move v2, v7

    :goto_0
    return v2

    :cond_1
    sget-object v6, Lcom/android/internal/telephony/SubscriptionController;->mSimInfo:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v3

    .local v3, "size":I
    if-nez v3, :cond_2

    const-string v6, "[getSlotId]- size == 0, return SIM_NOT_INSERTED instead"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_0

    :cond_2
    sget-object v6, Lcom/android/internal/telephony/SubscriptionController;->mSimInfo:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "sim":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .local v4, "sub":J
    cmp-long v6, p1, v4

    if-nez v6, :cond_3

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v2    # "sim":I
    .end local v4    # "sub":J
    :cond_4
    const-string v6, "[getSlotId]- return fail"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    move v2, v7

    goto :goto_0
.end method

.method public getSubId(I)[J
    .locals 14
    .param p1, "slotId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const v11, 0x7fffffff

    if-ne p1, v11, :cond_0

    const-string v11, "[getSubId]- default slotId"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()J

    move-result-wide v12

    invoke-virtual {p0, v12, v13}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(J)I

    move-result p1

    :cond_0
    const/4 v11, 0x2

    new-array v0, v11, [J

    const/4 v11, 0x0

    rsub-int/lit8 v12, p1, -0x1

    int-to-long v12, v12

    aput-wide v12, v0, v11

    const/4 v11, 0x1

    rsub-int/lit8 v12, p1, -0x1

    int-to-long v12, v12

    aput-wide v12, v0, v11

    .local v0, "DUMMY_VALUES":[J
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "[getSubId]- invalid slotId"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .end local v0    # "DUMMY_VALUES":[J
    :cond_1
    :goto_0
    return-object v0

    .restart local v0    # "DUMMY_VALUES":[J
    :cond_2
    if-gez p1, :cond_3

    const-string v11, "[getSubId]- slotId < 0, return dummy instead"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v11, Lcom/android/internal/telephony/SubscriptionController;->mSimInfo:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v5

    .local v5, "size":I
    if-eqz v5, :cond_1

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .local v10, "subIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v11, Lcom/android/internal/telephony/SubscriptionController;->mSimInfo:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .local v6, "slot":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .local v8, "sub":J
    if-ne p1, v6, :cond_4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v6    # "slot":I
    .end local v8    # "sub":J
    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "numSubIds":I
    if-nez v4, :cond_6

    const-string v11, "[getSubId]- numSubIds == 0, return dummy instead"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    new-array v7, v4, [J

    .local v7, "subIdArr":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v4, :cond_7

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    aput-wide v12, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    move-object v0, v7

    goto :goto_0
.end method

.method public getSubIdUsingPhoneId(I)J
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[J

    move-result-object v0

    .local v0, "subIds":[J
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    const-wide/16 v2, -0x3e8

    :goto_0
    return-wide v2

    :cond_1
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    goto :goto_0
.end method

.method public getSubIdUsingSlotId(I)[J
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[J

    move-result-object v0

    return-object v0
.end method

.method public getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;
    .locals 9
    .param p1, "subId"    # J

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->enforceSubscriptionPermission()V

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()J

    move-result-wide p1

    :cond_0
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->isSubInfoReady()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSubInfoForSubscriberx]- invalid subId or not ready, subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v2

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "[getSubInfoForSubscriberx]- Info detail:"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoRecord(Landroid/database/Cursor;)Landroid/telephony/SubInfoRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    const-string v0, "[getSubInfoForSubscriber]- null info return"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public getSubInfoUsingIccId(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "iccId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionController;->SHIP_BUILD:Z

    if-eqz v0, :cond_2

    const-string v0, "[getSubInfoUsingIccId]+ iccId: XXX"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->enforceSubscriptionPermission()V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->isSubInfoReady()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const-string v0, "[getSubInfoUsingIccId]- null iccid or not ready"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    move-object v8, v2

    :cond_1
    :goto_1
    return-object v8

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSubInfoUsingIccId]+ iccId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "icc_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .local v8, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    if-eqz v6, :cond_4

    move-object v9, v8

    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .local v9, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    :goto_2
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoRecord(Landroid/database/Cursor;)Landroid/telephony/SubInfoRecord;

    move-result-object v7

    .local v7, "subInfo":Landroid/telephony/SubInfoRecord;
    if-eqz v7, :cond_7

    if-nez v9, :cond_6

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    :goto_3
    :try_start_1
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    move-object v9, v8

    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    goto :goto_2

    .end local v7    # "subInfo":Landroid/telephony/SubInfoRecord;
    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    :cond_4
    const-string v0, "Query fail"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_5
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    :catchall_0
    move-exception v0

    move-object v8, v9

    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    :goto_6
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_6

    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v7    # "subInfo":Landroid/telephony/SubInfoRecord;
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    :cond_6
    move-object v8, v9

    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    goto :goto_3

    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    :cond_7
    move-object v8, v9

    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    goto :goto_4

    .end local v7    # "subInfo":Landroid/telephony/SubInfoRecord;
    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    :cond_8
    move-object v8, v9

    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    goto :goto_5
.end method

.method public getSubInfoUsingSlotId(I)Ljava/util/List;
    .locals 1
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoUsingSlotIdWithCheck(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSubInfoUsingSlotIdWithCheck(IZ)Ljava/util/List;
    .locals 11
    .param p1, "slotId"    # I
    .param p2, "needCheck"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSubInfoUsingSlotIdWithCheck]+ slotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->enforceSubscriptionPermission()V

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(J)I

    move-result p1

    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[getSubInfoUsingSlotIdWithCheck]- invalid slotId"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->isSubInfoReady()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "[getSubInfoUsingSlotIdWithCheck]- not ready"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "sim_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .local v8, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    if-eqz v6, :cond_4

    move-object v9, v8

    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .local v9, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoRecord(Landroid/database/Cursor;)Landroid/telephony/SubInfoRecord;

    move-result-object v7

    .local v7, "subInfo":Landroid/telephony/SubInfoRecord;
    if-eqz v7, :cond_8

    if-nez v9, :cond_7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    :goto_2
    :try_start_1
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_3
    move-object v9, v8

    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    goto :goto_1

    .end local v7    # "subInfo":Landroid/telephony/SubInfoRecord;
    :cond_3
    move-object v8, v9

    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    :cond_4
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    const-string v0, "[getSubInfoUsingSlotId]- null info return"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    move-object v2, v8

    goto :goto_0

    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    :catchall_0
    move-exception v0

    move-object v8, v9

    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    :goto_4
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .restart local v7    # "subInfo":Landroid/telephony/SubInfoRecord;
    :catchall_1
    move-exception v0

    goto :goto_4

    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    :cond_7
    move-object v8, v9

    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    goto :goto_2

    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    :cond_8
    move-object v8, v9

    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubInfoRecord;>;"
    goto :goto_3
.end method

.method public getSubState(J)I
    .locals 3
    .param p1, "subId"    # J

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;

    move-result-object v0

    .local v0, "subInfo":Landroid/telephony/SubInfoRecord;
    const/4 v1, 0x0

    .local v1, "subStatus":I
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/telephony/SubInfoRecord;->slotId:I

    if-ltz v2, :cond_0

    iget v1, v0, Landroid/telephony/SubInfoRecord;->mStatus:I

    :cond_0
    return v1
.end method

.method public isSMSPromptEnabled()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, "prompt":Z
    const/4 v2, 0x0

    .local v2, "value":I
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_sim_sms_prompt"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :catch_0
    move-exception v1

    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "Settings Exception Reading Dual Sim SMS Prompt Values"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public isVoicePromptEnabled()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, "prompt":Z
    const/4 v2, 0x0

    .local v2, "value":I
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_sim_voice_prompt"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :catch_0
    move-exception v1

    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "Settings Exception Reading Dual Sim Voice Prompt Values"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public refreshSubInfo()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[refreshSubInfo]+ defaultSubId system:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " voice:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " data:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " sms:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " / defaultSlotId voice:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSlotId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " data:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSlotId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/telephony/SubscriptionController;->mAllSubInfoList:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/SubscriptionController;->mAllSubInfoList:Ljava/util/List;

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/SubscriptionController;->mActiveSubInfoList:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/SubscriptionController;->mActiveSubInfoList:Ljava/util/List;

    :cond_1
    invoke-direct {p0, v6, v6}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/SubscriptionController;->mAllSubInfoList:Ljava/util/List;

    const-string v1, "sim_id!=-1000"

    invoke-direct {p0, v1, v6}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/SubscriptionController;->mActiveSubInfoList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->isSubInfoReady()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v7, :cond_3

    sget-boolean v1, Lcom/android/internal/telephony/SubscriptionController;->MODEL_J:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/internal/telephony/SubscriptionController;->MODEL_H:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/internal/telephony/SubscriptionController;->MODEL_K:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/internal/telephony/SubscriptionController;->MODEL_T:Z

    if-eqz v1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSlotId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubIdUsingSlotId(I)V

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSlotId()I

    move-result v0

    .local v0, "slot":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/internal/telephony/SubscriptionController;->mSimInfo:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/internal/telephony/SubscriptionController;->mSimInfo:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mCalledSetDataSubBySlot:Z

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubIdUsingSlotId(I)V

    iput-boolean v7, p0, Lcom/android/internal/telephony/SubscriptionController;->mCalledSetDataSubBySlot:Z

    .end local v0    # "slot":I
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mCalledUpdateUserPrefs:Z

    if-nez v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->updateUserPrefs(Z)V

    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mCalledSetDataAllowed:Z

    if-nez v1, :cond_5

    const-string v1, "DCGG"

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "DCGS"

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "DGG"

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "DCGGS"

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()J

    move-result-wide v2

    .local v2, "subId":J
    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(J)V

    .end local v2    # "subId":J
    :cond_5
    return-void
.end method

.method public setColor(IJ)I
    .locals 10
    .param p1, "color"    # I
    .param p2, "subId"    # J

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setColor]+ color:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->enforceSubscriptionPermission()V

    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/SubscriptionController;->validateSubId(J)V

    sget-object v1, Lcom/android/internal/telephony/SubscriptionController;->sSimBackgroundDarkRes:[I

    array-length v7, v1

    .local v7, "size":I
    if-ltz p1, :cond_0

    if-lt p1, v7, :cond_1

    :cond_0
    const-string v1, "[setColor]- fail"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    new-instance v8, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Landroid/content/ContentValues;-><init>(I)V

    .local v8, "value":Landroid/content/ContentValues;
    const-string v1, "color"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setColor]- color:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .local v0, "result":I
    const-string v4, "color"

    const-string v6, "N/A"

    move-object v1, p0

    move-wide v2, p2

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/SubscriptionController;->broadcastSimInfoContentChanged(JLjava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setDataRoaming(IJ)I
    .locals 8
    .param p1, "roaming"    # I
    .param p2, "subId"    # J

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDataRoaming]+ roaming:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->enforceSubscriptionPermission()V

    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/SubscriptionController;->validateSubId(J)V

    if-gez p1, :cond_0

    const-string v1, "[setDataRoaming]- fail"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    new-instance v7, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v7, v1}, Landroid/content/ContentValues;-><init>(I)V

    .local v7, "value":Landroid/content/ContentValues;
    const-string v1, "data_roaming"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDataRoaming]- roaming:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v7, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .local v0, "result":I
    const-string v4, "data_roaming"

    const-string v6, "N/A"

    move-object v1, p0

    move-wide v2, p2

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/SubscriptionController;->broadcastSimInfoContentChanged(JLjava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setDefaultDataSubId(J)V
    .locals 11
    .param p1, "subId"    # J

    .prologue
    const/high16 v10, 0x20000000

    const/4 v9, 0x1

    const/4 v8, -0x1

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v6, p1, v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "setDefaultDataSubId called with DEFAULT_SUB_ID"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setDefaultDataSubId] subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    const-string v6, "CG"

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "GG"

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_1
    const-string v6, "ril.datacross.slotid"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "ril.datacross.slotid"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .local v0, "datacross":I
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionController;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setDefaultDataSubId] mCM.getState()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", datacross="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionController;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v6, v7, :cond_3

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.net.conn.SwitchDataNetworkDuringVoiceCall"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v6, "subscription"

    invoke-virtual {v2, v6, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v6, "setDefaultDataSubId(), Broadcast SwitchDataNetworkDuringVoiceCall"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .end local v0    # "datacross":I
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .restart local v0    # "datacross":I
    :cond_3
    if-eq v0, v8, :cond_4

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.net.conn.SwitchDataNetworkDuringMMS"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v6, "subscription"

    invoke-virtual {v2, v6, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v6, "setDefaultDataSubId(), Broadcast SwitchDataNetworkDuringMMS"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "datacross":I
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    iput-boolean v9, p0, Lcom/android/internal/telephony/SubscriptionController;->mCalledSetDataAllowed:Z

    const-string v6, "DCGG"

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "DGG"

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "DCGS"

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "DCGGS"

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    .local v1, "dctController":Lcom/android/internal/telephony/dataconnection/DctController;
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/dataconnection/DctController;->setDataSubId(J)V

    goto :goto_0

    .end local v1    # "dctController":Lcom/android/internal/telephony/dataconnection/DctController;
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(J)I

    move-result v5

    .local v5, "phoneId":I
    sget-object v6, Lcom/android/internal/telephony/SubscriptionController;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    const-string v6, "CG"

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionController;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .local v3, "onCompleted":Landroid/os/Message;
    long-to-int v6, p1

    iput v6, v3, Landroid/os/Message;->arg1:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v3, Landroid/os/Message;->arg2:I

    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    .end local v4    # "phone":Lcom/android/internal/telephony/Phone;
    iget-object v6, v4, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6, v9, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataAllowed(ZLandroid/os/Message;)V

    .end local v3    # "onCompleted":Landroid/os/Message;
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "multi_sim_data_call"

    invoke-static {v6, v7, p1, p2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(J)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSlotId(I)V

    const-string v6, "CG"

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->broadcastDefaultDataSubIdChangeStarted(J)V

    goto/16 :goto_0

    .restart local v4    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_7
    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    .end local v4    # "phone":Lcom/android/internal/telephony/Phone;
    iget-object v6, v4, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v7, 0x0

    invoke-virtual {v6, v9, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataAllowed(ZLandroid/os/Message;)V

    goto :goto_1

    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->broadcastDefaultDataSubIdChanged(J)V

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->updateAllDataConnectionTrackers()V

    goto/16 :goto_0
.end method

.method public setDefaultDataSubIdForMMS(J)V
    .locals 3
    .param p1, "subId"    # J

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultDataSubIdForMMS: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FIXME NOP right now"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v0

    .local v0, "dctController":Lcom/android/internal/telephony/dataconnection/DctController;
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DctController;->setDataSubIdForMMS(J)V

    return-void
.end method

.method public setDefaultSmsSubId(J)V
    .locals 3
    .param p1, "subId"    # J

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setDefaultSmsSubId called with DEFAULT_SUB_ID"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setDefaultSmsSubId] subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_sms"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->broadcastDefaultSmsSubIdChanged(J)V

    return-void
.end method

.method public setDefaultSubId(J)V
    .locals 7
    .param p1, "subId"    # J

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v3, p1, v4

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "setDefaultSubId called with DEFAULT_SUB_ID"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDefaultSubId] subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(J)I

    move-result v2

    .local v2, "phoneId":I
    if-ltz v2, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDefaultSubId] set mDefaultVoiceSubId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    sput-wide p1, Lcom/android/internal/telephony/SubscriptionController;->mDefaultVoiceSubId:J

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getSimOperator(J)Ljava/lang/String;

    move-result-object v0

    .local v0, "defaultMccMnc":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v1, v2, p1, p2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;IJ)V

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .end local v0    # "defaultMccMnc":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "phoneId":I
    :cond_2
    return-void
.end method

.method public setDefaultVoiceSubId(J)V
    .locals 3
    .param p1, "subId"    # J

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setDefaultVoiceSubId called with DEFAULT_SUB_ID"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setDefaultVoiceSubId] subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_voice_call"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionController;->MODEL_J:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionController;->MODEL_H:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionController;->MODEL_K:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionController;->MODEL_T:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(J)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSlotId(I)V

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->broadcastDefaultVoiceSubIdChanged(J)V

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;J)I
    .locals 6
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # J

    .prologue
    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SubscriptionController;->setDisplayNameUsingSrc(Ljava/lang/String;JJ)I

    move-result v0

    return v0
.end method

.method public setDisplayNameUsingSrc(Ljava/lang/String;JJ)I
    .locals 8
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # J
    .param p4, "nameSource"    # J

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDisplayName]+  displayName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nameSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->enforceSubscriptionPermission()V

    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/SubscriptionController;->validateSubId(J)V

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const v2, 0x104000e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "nameToSet":Ljava/lang/String;
    :goto_0
    new-instance v7, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v7, v1}, Landroid/content/ContentValues;-><init>(I)V

    .local v7, "value":Landroid/content/ContentValues;
    const-string v1, "display_name"

    invoke-virtual {v7, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-ltz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set nameSource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    const-string v1, "name_source"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDisplayName]- mDisplayName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v7, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .local v0, "result":I
    const-string v4, "display_name"

    const/16 v5, -0x64

    move-object v1, p0

    move-wide v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/SubscriptionController;->broadcastSimInfoContentChanged(JLjava/lang/String;ILjava/lang/String;)V

    return v0

    .end local v0    # "result":I
    .end local v6    # "nameToSet":Ljava/lang/String;
    .end local v7    # "value":Landroid/content/ContentValues;
    :cond_1
    move-object v6, p1

    .restart local v6    # "nameToSet":Ljava/lang/String;
    goto :goto_0
.end method

.method public setDisplayNumber(Ljava/lang/String;J)I
    .locals 18
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subId"    # J

    .prologue
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setDisplayNumber]+ number:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " subId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionController;->enforceSubscriptionPermission()V

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->validateSubId(J)V

    const/4 v15, 0x0

    .local v15, "result":I
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(J)I

    move-result v13

    .local v13, "phoneId":I
    if-eqz p1, :cond_0

    if-ltz v13, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-lt v13, v5, :cond_1

    :cond_0
    const-string v5, "[setDispalyNumber]- fail"

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    const/4 v5, -0x1

    :goto_0
    return v5

    :cond_1
    new-instance v16, Landroid/content/ContentValues;

    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    .local v16, "value":Landroid/content/ContentValues;
    const-string v5, "number"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setDisplayNumber]- number:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " set"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    sget-object v5, Lcom/android/internal/telephony/SubscriptionController;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v12, v5, v13

    .local v12, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Landroid/telephony/TelephonyManager;->getLine1AlphaTagForSubscriber(J)Ljava/lang/String;

    move-result-object v4

    .local v4, "alphaTag":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/SubscriptionController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/SubscriptionController;->mSuccess:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SubscriptionController;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .local v14, "response":Landroid/os/Message;
    move-object/from16 v0, p1

    invoke-interface {v12, v4, v0, v14}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SubscriptionController;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/SubscriptionController;->mSuccess:Z

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setDisplayNumber]- update result :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    const-string v8, "number"

    const/16 v9, -0x64

    move-object/from16 v5, p0

    move-wide/from16 v6, p2

    move-object/from16 v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/SubscriptionController;->broadcastSimInfoContentChanged(JLjava/lang/String;ILjava/lang/String;)V

    :cond_2
    move v5, v15

    goto/16 :goto_0

    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v5, "interrupted while trying to write MSISDN"

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    goto :goto_1

    .end local v11    # "e":Ljava/lang/InterruptedException;
    .end local v14    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method public setDisplayNumberFormat(IJ)I
    .locals 8
    .param p1, "format"    # I
    .param p2, "subId"    # J

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDisplayNumberFormat]+ format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->enforceSubscriptionPermission()V

    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/SubscriptionController;->validateSubId(J)V

    if-gez p1, :cond_0

    const-string v1, "[setDisplayNumberFormat]- fail, return -1"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    new-instance v7, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v7, v1}, Landroid/content/ContentValues;-><init>(I)V

    .local v7, "value":Landroid/content/ContentValues;
    const-string v1, "display_number_format"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDisplayNumberFormat]- format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v7, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .local v0, "result":I
    const-string v4, "display_number_format"

    const-string v6, "N/A"

    move-object v1, p0

    move-wide v2, p2

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/SubscriptionController;->broadcastSimInfoContentChanged(JLjava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setMccMnc(Ljava/lang/String;J)I
    .locals 10
    .param p1, "mccMnc"    # Ljava/lang/String;
    .param p2, "subId"    # J

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .local v5, "mcc":I
    const/4 v7, 0x0

    .local v7, "mnc":I
    const/4 v1, 0x0

    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setMccMnc]+ mcc/mnc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    new-instance v9, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v9, v1}, Landroid/content/ContentValues;-><init>(I)V

    .local v9, "value":Landroid/content/ContentValues;
    const-string v1, "mcc"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "mnc"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v9, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .local v8, "result":I
    const-string v4, "mcc"

    move-object v1, p0

    move-wide v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/SubscriptionController;->broadcastSimInfoContentChanged(JLjava/lang/String;ILjava/lang/String;)V

    return v8

    .end local v8    # "result":I
    .end local v9    # "value":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setMccMnc] - couldn\'t parse mcc/mnc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setNwMode(JI)V
    .locals 5
    .param p1, "subId"    # J
    .param p3, "nwMode"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNwMode, nwMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .local v0, "value":Landroid/content/ContentValues;
    const-string v1, "network_mode"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public setSMSPromptEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .local v0, "value":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_sms_prompt"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSMSPromptOption to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    return-void

    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSubState(JI)I
    .locals 9
    .param p1, "subId"    # J
    .param p3, "subStatus"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "result":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSubState, subStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    new-instance v7, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v7, v1}, Landroid/content/ContentValues;-><init>(I)V

    .local v7, "value":Landroid/content/ContentValues;
    const-string v1, "sub_state"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v7, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v4, "sub_state"

    const-string v6, "N/A"

    move-object v1, p0

    move-wide v2, p1

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/SubscriptionController;->broadcastSimInfoContentChanged(JLjava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method public setVoicePromptEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .local v0, "value":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_voice_prompt"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoicePromptOption to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    return-void

    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updatePhonesAvailability([Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 0
    .param p1, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    sput-object p1, Lcom/android/internal/telephony/SubscriptionController;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    return-void
.end method

.method public updateUserPrefs(Z)V
    .locals 14
    .param p1, "setDds"    # Z

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v7

    .local v7, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    const/4 v4, 0x0

    .local v4, "mActCount":I
    const/4 v5, 0x0

    .local v5, "mNextActivatedSub":Landroid/telephony/SubInfoRecord;
    if-nez v7, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateUserPrefs: subscription are not avaiable dds = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " voice = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " sms = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " setDDs = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubInfoRecord;

    .local v6, "subInfo":Landroid/telephony/SubInfoRecord;
    iget-wide v8, v6, Landroid/telephony/SubInfoRecord;->subId:J

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(J)I

    move-result v8

    if-ne v8, v13, :cond_2

    add-int/lit8 v4, v4, 0x1

    if-nez v5, :cond_2

    move-object v5, v6

    goto :goto_1

    .end local v6    # "subInfo":Landroid/telephony/SubInfoRecord;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateUserPrefs: active sub count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " dds = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " voice = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " sms = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " setDDs = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    const/4 v8, 0x2

    if-ge v4, v8, :cond_4

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/SubscriptionController;->setSMSPromptEnabled(Z)V

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/SubscriptionController;->setVoicePromptEnabled(Z)V

    :cond_4
    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()J

    move-result-wide v0

    .local v0, "ddsSubId":J
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(J)I

    move-result v2

    .local v2, "ddsSubState":I
    if-nez p1, :cond_5

    if-nez v2, :cond_7

    :cond_5
    if-nez v2, :cond_6

    iget-wide v0, v5, Landroid/telephony/SubInfoRecord;->subId:J

    :cond_6
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(J)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(J)I

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->isVoicePromptEnabled()Z

    move-result v8

    if-nez v8, :cond_8

    iget-wide v8, v5, Landroid/telephony/SubInfoRecord;->subId:J

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(J)V

    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(J)I

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->isSMSPromptEnabled()Z

    move-result v8

    if-nez v8, :cond_9

    iget-wide v8, v5, Landroid/telephony/SubInfoRecord;->subId:J

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(J)V

    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateUserPrefs: after currentDds = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " voice = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " sms = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " newDds = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    iput-boolean v13, p0, Lcom/android/internal/telephony/SubscriptionController;->mCalledUpdateUserPrefs:Z

    goto/16 :goto_0
.end method
