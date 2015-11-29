.class public Lcom/movial/ipphone/IPPhoneProxy;
.super Lcom/android/internal/telephony/PhoneProxy;
.source "IPPhoneProxy.java"


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0x2710

.field private static final DELAY_BROADCAST_OPERATORNAME:I = 0x3e8

.field private static final DELAY_REBIND_IPSERVICE:I = 0x1388

.field private static final EVENT_BIND_TO_IPSERVICE:I = 0x5

.field private static final EVENT_BROADCAST_OPERATORNAME:I = 0x6

.field public static final EVENT_EMERGENCY_PREF_CHANGED:I = 0x7

.field private static final EVENT_RADIO_ON:I = 0x2

.field private static final EVENT_REQUEST_VOICE_RADIO_TECH_DONE:I = 0x3

.field private static final EVENT_RIL_CONNECTED:I = 0x4

.field private static final EVENT_UPDATE_PHONE_OBJECT:I = 0x8

.field private static final EVENT_VOICE_RADIO_TECH_CHANGED:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "IPPhoneProxy"

.field private static final TAG:Ljava/lang/String; = "IPPhoneProxy"

.field public static final lockForRadioTechnologyChange:Ljava/lang/Object;

.field private static mRegistered:Z


# instance fields
.field private final binded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

.field private forceEmergency:Z

.field private mActivePhone:Lcom/android/internal/telephony/Phone;

.field private mBackgroundCall:Lcom/android/internal/telephony/Call;

.field private mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

.field private mForegroundCall:Lcom/android/internal/telephony/Call;

.field private mIPPhone:Lcom/movial/ipphone/IPPhone;

.field private mIPRegistry:Lcom/movial/ipphone/IIPRegistry;

.field private mIPSMSDispatcher:Lcom/movial/ipphone/IPSMSDispatcher;

.field private mIPStateListener:Lcom/movial/ipphone/IPStateListener;

.field private mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

.field private mObserver:Landroid/database/ContentObserver;

.field private mOperatorName:Ljava/lang/String;

.field private mOperatorName_metropcs:Ljava/lang/String;

.field private mOutgoingPhone:Ljava/lang/String;

.field private mPhoneId:I

.field private mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

.field private mRealName:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetModemOnRadioTechnologyChange:Z

.field private mRilVersion:I

.field private mRingingCall:Lcom/android/internal/telephony/Call;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/movial/ipphone/IPPhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    .line 181
    const/4 v0, 0x0

    sput-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "iccSmsInterfaceManager"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .prologue
    const/4 v4, 0x0

    .line 188
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 157
    iput-boolean v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    .line 169
    const-string v0, "1,T-Mobile,1,T-Mobile"

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mOperatorName:Ljava/lang/String;

    .line 170
    const-string v0, "1,MetroPCS,1,MetroPCS"

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mOperatorName_metropcs:Ljava/lang/String;

    .line 173
    iput v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mPhoneId:I

    .line 184
    iput-boolean v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->forceEmergency:Z

    .line 466
    new-instance v0, Lcom/movial/ipphone/IPPhoneProxy$1;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/IPPhoneProxy$1;-><init>(Lcom/movial/ipphone/IPPhoneProxy;)V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 496
    new-instance v0, Lcom/movial/ipphone/IPPhoneProxy$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/movial/ipphone/IPPhoneProxy$2;-><init>(Lcom/movial/ipphone/IPPhoneProxy;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mObserver:Landroid/database/ContentObserver;

    .line 507
    new-instance v0, Lcom/movial/ipphone/IPPhoneProxy$3;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/IPPhoneProxy$3;-><init>(Lcom/movial/ipphone/IPPhoneProxy;)V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPStateListener:Lcom/movial/ipphone/IPStateListener;

    .line 536
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 537
    new-instance v0, Ljava/util/concurrent/CyclicBarrier;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CyclicBarrier;-><init>(I)V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    .line 538
    new-instance v0, Lcom/movial/ipphone/IPPhoneProxy$4;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/IPPhoneProxy$4;-><init>(Lcom/movial/ipphone/IPPhoneProxy;)V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mConnection:Landroid/content/ServiceConnection;

    .line 189
    const-string v0, "IPPhoneProxy"

    invoke-static {v0}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 191
    iput-object p1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 192
    const-string v0, "persist.radio.reset_on_switch"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    .line 194
    new-instance v0, Lcom/movial/ipphone/IPPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/movial/ipphone/IPPhone;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    .line 195
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 197
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    invoke-direct {p0, v0}, Lcom/movial/ipphone/IPPhoneProxy;->setCall(Z)V

    .line 199
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CELL_ONLY"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->bindService()V

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/movial/ipphone/IPPhoneSettings;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "CELL_ONLY"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 205
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "GBA_INIT"

    invoke-static {v0, v1, v4}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 215
    iput-object p4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 217
    new-instance v1, Lcom/movial/ipphone/IPSMSDispatcher;

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    iget-object v3, v0, Lcom/movial/ipphone/IPPhone;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    iget-object v4, v0, Lcom/movial/ipphone/IPPhone;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSMSDispatcher()Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/movial/ipphone/IPSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPSMSDispatcher:Lcom/movial/ipphone/IPSMSDispatcher;

    .line 219
    new-instance v0, Lcom/movial/ipphone/EmergencyCallController;

    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, p0, v1}, Lcom/movial/ipphone/EmergencyCallController;-><init>(Lcom/movial/ipphone/IPPhoneProxy;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    .line 221
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mPhoneId:I

    .line 223
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 224
    .local v6, "intentfilter":Landroid/content/IntentFilter;
    const-string v0, "com.movial.gba_initialized"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    const-string v0, "com.movial.ACTION_TERMINATE_STACK"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    const-string v0, "com.movial.ACTION_REREAD_ISIM"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 229
    return-void
.end method

.method static synthetic access$000(Lcom/movial/ipphone/IPPhoneProxy;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPPhoneProxy;->unbindService(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/movial/ipphone/IPPhoneProxy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPPhoneProxy;->updateNetworkName(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/movial/ipphone/IPPhoneProxy;)Lcom/movial/ipphone/IIPRegistry;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPRegistry:Lcom/movial/ipphone/IIPRegistry;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/movial/ipphone/IPPhoneProxy;Lcom/movial/ipphone/IIPRegistry;)Lcom/movial/ipphone/IIPRegistry;
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;
    .param p1, "x1"    # Lcom/movial/ipphone/IIPRegistry;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPRegistry:Lcom/movial/ipphone/IIPRegistry;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/movial/ipphone/IPPhoneProxy;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/movial/ipphone/IPPhoneProxy;)Ljava/util/concurrent/CyclicBarrier;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/movial/ipphone/IPPhoneProxy;)Lcom/movial/ipphone/IPStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPStateListener:Lcom/movial/ipphone/IPStateListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/movial/ipphone/IPPhoneProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->bindToIPRegistry()V

    return-void
.end method

.method static synthetic access$200(Lcom/movial/ipphone/IPPhoneProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->bindService()V

    return-void
.end method

.method static synthetic access$300(Lcom/movial/ipphone/IPPhoneProxy;)Lcom/movial/ipphone/IPPhone;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/movial/ipphone/IPPhoneProxy;)Lcom/movial/ipphone/EmergencyCallController;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/movial/ipphone/IPPhoneProxy;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPPhoneProxy;->setIPSMSDispatcher(Z)V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 137
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 137
    sput-boolean p0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    return p0
.end method

.method static synthetic access$700(Lcom/movial/ipphone/IPPhoneProxy;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPPhoneProxy;->setCall(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/movial/ipphone/IPPhoneProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->broadcastOperatorName()V

    return-void
.end method

.method static synthetic access$900(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-static {p0}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private bindService()V
    .locals 4

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "CELL_ONLY"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 614
    :goto_0
    return-void

    .line 608
    :cond_0
    new-instance v0, Lcom/movial/ipphone/IPPhoneProxy$5;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/IPPhoneProxy$5;-><init>(Lcom/movial/ipphone/IPPhoneProxy;)V

    .line 613
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private bindToIPRegistry()V
    .locals 6

    .prologue
    .line 579
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 580
    :try_start_0
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 581
    const-string v2, "IPPhoneProxy"

    const-string v4, "bindToIPRegistry"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    invoke-virtual {v2}, Ljava/util/concurrent/CyclicBarrier;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/movial/ipphone/IIPRegistry;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 585
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.movial.ipservice"

    const-string v4, "com.movial.ipservice.IPService"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 587
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->waitConnectionResponse()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 593
    return-void

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "IPPhoneProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindService FAILED. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 592
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private broadcastOperatorName()V
    .locals 0

    .prologue
    .line 1084
    return-void
.end method

.method private deleteAndCreatePhone(I)V
    .locals 5
    .param p1, "newVoiceRadioTech"    # I

    .prologue
    .line 386
    const-string v2, "Unknown"

    .line 387
    .local v2, "outgoingPhoneName":Ljava/lang/String;
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 388
    .local v1, "oldPhone":Lcom/android/internal/telephony/Phone;
    const/4 v0, 0x0

    .line 390
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v1, :cond_0

    move-object v3, v1

    .line 391
    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    .line 394
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Switching Voice Phone : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " >>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "GSM"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 398
    invoke-static {p1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 399
    iget v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mPhoneId:I

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 404
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 405
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->relinquishOwnershipOfImsPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    .line 408
    :cond_2
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_3

    .line 409
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 410
    if-eqz v0, :cond_3

    .line 411
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v0}, Lcom/android/internal/telephony/Phone;->acquireOwnershipOfImsPhone(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 415
    :cond_3
    if-eqz v1, :cond_4

    .line 416
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 417
    const-string v3, "Disposing old phone.."

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 418
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->dispose()V

    .line 424
    :cond_4
    const/4 v1, 0x0

    .line 425
    return-void

    .line 394
    :cond_5
    const-string v3, "CDMA"

    goto :goto_0

    .line 400
    :cond_6
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 401
    iget v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mPhoneId:I

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    goto :goto_1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 287
    const-string v0, "IPPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 295
    const-string v0, "IPPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 291
    const-string v0, "IPPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method

.method private phoneObjectUpdater(I)V
    .locals 8
    .param p1, "newVoiceRadioTech"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneObjectUpdater: newVoiceRadioTech="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 301
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_3

    .line 303
    const/16 v3, 0xe

    if-eq p1, v3, :cond_0

    if-nez p1, :cond_1

    .line 305
    :cond_0
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e005a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 307
    .local v2, "volteReplacementRat":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneObjectUpdater: volteReplacementRat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 308
    if-eqz v2, :cond_1

    .line 309
    move p1, v2

    .line 313
    .end local v2    # "volteReplacementRat":I
    :cond_1
    iget v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRilVersion:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getLteOnCdmaMode()I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 318
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneObjectUpdater: LTE ON CDMA property is set. Use CDMA Phone newVoiceRadioTech="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mActivePhone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 382
    :goto_0
    return-void

    .line 324
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneObjectUpdater: LTE ON CDMA property is set. Switch to CDMALTEPhone newVoiceRadioTech="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mActivePhone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 327
    const/4 p1, 0x6

    .line 343
    :cond_3
    if-nez p1, :cond_7

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneObjectUpdater: Unknown rat ignore,  newVoiceRadioTech=Unknown. mActivePhone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_4
    invoke-static {p1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-eq v3, v7, :cond_6

    :cond_5
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 335
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneObjectUpdater: No change ignore, newVoiceRadioTech="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mActivePhone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 351
    :cond_7
    const/4 v1, 0x0

    .line 352
    .local v1, "oldPowerState":Z
    iget-boolean v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    if-eqz v3, :cond_8

    .line 353
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 354
    const/4 v1, 0x1

    .line 355
    const-string v3, "phoneObjectUpdater: Setting Radio Power to Off"

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 356
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 360
    :cond_8
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPPhoneProxy;->deleteAndCreatePhone(I)V

    .line 362
    iget-boolean v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    if-eqz v3, :cond_9

    if-eqz v1, :cond_9

    .line 363
    const-string v3, "phoneObjectUpdater: Resetting Radio"

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 364
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 368
    :cond_9
    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 370
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v4}, Lcom/movial/ipphone/IPPhone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->setmPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;)V

    .line 372
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 373
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setVoiceRadioTech(I)V

    .line 376
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 378
    const-string v3, "phoneName"

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    iget v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mPhoneId:I

    invoke-static {v0, v3}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 380
    const/4 v3, -0x1

    invoke-static {v0, v5, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private setCall(Z)V
    .locals 7
    .param p1, "result"    # Z

    .prologue
    .line 429
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 430
    .local v0, "f":Lcom/android/internal/telephony/Call;
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 431
    .local v1, "g":Lcom/android/internal/telephony/Call;
    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRingingCall:Lcom/android/internal/telephony/Call;

    .line 434
    .local v4, "r":Lcom/android/internal/telephony/Call;
    if-eqz p1, :cond_0

    .line 435
    iget-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v5}, Lcom/movial/ipphone/IPPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    iput-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 436
    iget-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v5}, Lcom/movial/ipphone/IPPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    iput-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 437
    iget-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v5}, Lcom/movial/ipphone/IPPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    iput-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRingingCall:Lcom/android/internal/telephony/Call;

    .line 438
    const-string v3, "IP_WFC"

    .line 446
    .local v3, "phoneName":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    .line 447
    const/4 v1, 0x0

    .line 448
    const/4 v4, 0x0

    .line 451
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 452
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x20000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 453
    const-string v5, "phoneName"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-static {v2, v5, v6}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 455
    return-void

    .line 440
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "phoneName":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    iput-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 441
    iget-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    iput-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 442
    iget-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    iput-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRingingCall:Lcom/android/internal/telephony/Call;

    .line 443
    iget-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "phoneName":Ljava/lang/String;
    goto :goto_0
.end method

.method private setIPSMSDispatcher(Z)V
    .locals 3
    .param p1, "result"    # Z

    .prologue
    .line 458
    const-string v0, "IPPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIPSMSDispatcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    if-eqz p1, :cond_0

    .line 460
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPSMSDispatcher:Lcom/movial/ipphone/IPSMSDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setIPSMSDispatcher(Lcom/android/internal/telephony/SMSDispatcher;)V

    .line 464
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setIPSMSDispatcher(Lcom/android/internal/telephony/SMSDispatcher;)V

    goto :goto_0
.end method

.method private unbindService(Z)V
    .locals 4
    .param p1, "restart"    # Z

    .prologue
    const/4 v3, 0x0

    .line 617
    const-string v0, "IPPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindService. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 621
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPRegistry:Lcom/movial/ipphone/IIPRegistry;

    .line 622
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 624
    sput-boolean v3, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    .line 625
    invoke-direct {p0, v3}, Lcom/movial/ipphone/IPPhoneProxy;->setCall(Z)V

    .line 628
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->unbindService()V

    .line 630
    if-eqz p1, :cond_1

    .line 631
    const/4 v0, 0x5

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/movial/ipphone/IPPhoneProxy;->sendEmptyMessageDelayed(IJ)Z

    .line 632
    :cond_1
    return-void
.end method

.method private updateNetworkName(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 1045
    const-string v5, "showSpn"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1046
    .local v3, "showSpn":Z
    const-string v5, "spn"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1047
    .local v4, "spn":Ljava/lang/String;
    const-string v5, "showPlmn"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1048
    .local v2, "showPlmn":Z
    const-string v5, "plmn"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1050
    .local v1, "plmn":Ljava/lang/String;
    const-string v5, "com.movial.IMS_WIFICALL"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1051
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_6

    const-string v5, "1"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "null"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_8

    const-string v5, "1"

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "null"

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRealName:Ljava/lang/String;

    .line 1054
    :cond_0
    const-string v0, ""

    .line 1055
    .local v0, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1056
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_a

    const-string v5, "1"

    :goto_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v4, "null"

    .end local v4    # "spn":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_b

    const-string v5, "1"

    :goto_5
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v1, "null"

    .end local v1    # "plmn":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1059
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 1060
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/movial/ipphone/IPPhoneProxy;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1061
    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mOperatorName:Ljava/lang/String;

    .line 1064
    :cond_5
    :goto_6
    return-void

    .line 1051
    .end local v0    # "name":Ljava/lang/String;
    .restart local v1    # "plmn":Ljava/lang/String;
    .restart local v4    # "spn":Ljava/lang/String;
    :cond_6
    const-string v5, "0"

    goto/16 :goto_0

    :cond_7
    move-object v5, v4

    goto/16 :goto_1

    :cond_8
    const-string v5, "0"

    goto/16 :goto_2

    :cond_9
    move-object v5, v1

    goto :goto_3

    .line 1056
    .restart local v0    # "name":Ljava/lang/String;
    :cond_a
    const-string v5, "0"

    goto :goto_4

    .end local v4    # "spn":Ljava/lang/String;
    :cond_b
    const-string v5, "0"

    goto :goto_5

    .line 1062
    .end local v1    # "plmn":Ljava/lang/String;
    :cond_c
    const-string v5, "com.movial.IMS_WIFICALL"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1063
    const/4 v5, 0x6

    const-wide/16 v6, 0x3e8

    invoke-virtual {p0, v5, v6, v7}, Lcom/movial/ipphone/IPPhoneProxy;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6
.end method

.method private waitConnectionResponse()V
    .locals 5

    .prologue
    .line 597
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    const-wide/16 v2, 0x2710

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CyclicBarrier;->await(JLjava/util/concurrent/TimeUnit;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :goto_0
    return-void

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IPPhoneProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitConnectionResponse FAILED. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPPhoneProxy;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public acceptCall(I)V
    .locals 1
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 801
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->acceptCall(I)V

    .line 803
    :goto_0
    return-void

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->acceptCall(I)V

    goto :goto_0
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 825
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->canConference()Z

    move-result v0

    .line 826
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    goto :goto_0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 837
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->canTransfer()Z

    move-result v0

    .line 838
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v0

    goto :goto_0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1163
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/movial/ipphone/IPPhone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    .line 1164
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "newPwdAgain"    # Ljava/lang/String;
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1172
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/movial/ipphone/IPPhone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    .line 1173
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->clearDisconnected()V

    .line 850
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 851
    return-void
.end method

.method public conference()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 831
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->conference()V

    .line 833
    :goto_0
    return-void

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 901
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/movial/ipphone/IPPhoneProxy;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;III[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .param p3, "CallType"    # I
    .param p4, "CallDomain"    # I
    .param p5, "extras"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 907
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/movial/ipphone/IPPhoneProxy;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 883
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    .line 884
    .local v0, "isEmergencyCall":Z
    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->forceEmergency:Z

    if-eqz v1, :cond_1

    .line 885
    :cond_0
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v1, p1}, Lcom/movial/ipphone/EmergencyCallController;->transitToDialingState(Ljava/lang/String;)V

    .line 888
    :cond_1
    sget-boolean v1, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v1, :cond_2

    .line 889
    const-string v1, "IPPhoneProxy"

    const-string v2, "ims call"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v1, p1, p3}, Lcom/movial/ipphone/IPPhone;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 894
    :goto_0
    return-object v1

    .line 893
    :cond_2
    const-string v1, "IPPhoneProxy"

    const-string v2, "gsm call"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, p3}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;III[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "videoState"    # I
    .param p4, "CallType"    # I
    .param p5, "CallDomain"    # I
    .param p6, "extras"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 913
    invoke-virtual {p0, p1, p2, p3}, Lcom/movial/ipphone/IPPhoneProxy;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 1029
    const-string v0, "dispose"

    invoke-static {v0}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 1030
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 1031
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceRadioTechChanged(Landroid/os/Handler;)V

    .line 1032
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRilConnected(Landroid/os/Handler;)V

    .line 1035
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1

    .prologue
    .line 1011
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    .line 1013
    :goto_0
    return-void

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->exitEmergencyCallbackMode()V

    goto :goto_0
.end method

.method public explicitCallTransfer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 843
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->explicitCallTransfer()V

    .line 845
    :goto_0
    return-void

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    goto :goto_0
.end method

.method public getActivePhone()Lcom/android/internal/telephony/Phone;
    .locals 3

    .prologue
    .line 663
    const-string v0, "IPPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActivePhone(), mRegistered = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method public getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1123
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2}, Lcom/movial/ipphone/IPPhone;->getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V

    .line 1125
    return-void
.end method

.method public getCallBarringOption(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1133
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/movial/ipphone/IPPhone;->getCallBarringOption(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 1135
    return-void
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 937
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2}, Lcom/movial/ipphone/IPPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 939
    :goto_0
    return-void

    .line 938
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public getCallForwardingOption(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "dialingNumber"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 947
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/movial/ipphone/IPPhone;->getCallForwardingOption(ILjava/lang/String;ILandroid/os/Message;)V

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILjava/lang/String;ILandroid/os/Message;)V

    .line 949
    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 976
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->getCallWaiting(Landroid/os/Message;)V

    .line 978
    :goto_0
    return-void

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getEmergencyCallPowerState()Z
    .locals 1

    .prologue
    .line 1099
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getDesiredPowerState()Z

    move-result v0

    .line 1102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getEmergencyPreference()I
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v0}, Lcom/movial/ipphone/EmergencyCallController;->getEmergencyPreference()I

    move-result v0

    return v0
.end method

.method public getEmergencyState()Lcom/movial/ipphone/IPUtils$EmergencyState;
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v0}, Lcom/movial/ipphone/EmergencyCallController;->getEmergencyState()Lcom/movial/ipphone/IPUtils$EmergencyState;

    move-result-object v0

    return-object v0
.end method

.method public getForceEmergencyMode()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->forceEmergency:Z

    return v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mForegroundCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    return-object v0
.end method

.method public getImsBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getImsForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getImsRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 1000
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getMute()Z

    move-result v0

    .line 1001
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    goto :goto_0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 962
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 964
    :goto_0
    return-void

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 753
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    .line 754
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRingingCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 637
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 638
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 3

    .prologue
    .line 653
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 654
    .local v0, "mGsm":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v2}, Lcom/movial/ipphone/IPPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    .line 656
    .local v1, "mIP":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_1

    :cond_0
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 658
    :goto_0
    return-object v2

    .line 657
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_3

    :cond_2
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 658
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 253
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 254
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error! This handler was not registered for this message type. Message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPPhoneProxy;->loge(Ljava/lang/String;)V

    .line 283
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneProxy;->handleMessage(Landroid/os/Message;)V

    .line 284
    return-void

    .line 264
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 265
    .local v1, "emergencyCallPref":I
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v2, v1}, Lcom/movial/ipphone/EmergencyCallController;->setEmergencyPreference(I)V

    .line 266
    const-string v2, "IPPhoneProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update mEmergencyCallPref to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    .end local v1    # "emergencyCallPref":I
    :pswitch_2
    const-string v2, "IPPhoneProxy"

    const-string v3, "EVENT_BIND_TO_IPSERVICE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->bindService()V

    goto :goto_0

    .line 275
    :pswitch_3
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->broadcastOperatorName()V

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public holdCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 819
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->switchHoldingAndActive()V

    .line 821
    :goto_0
    return-void

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_0
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 717
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 718
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 719
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 777
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 778
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 779
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 705
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 706
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 707
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 741
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 742
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 743
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 729
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 730
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 731
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 693
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 694
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 695
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 681
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 682
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 683
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 789
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 790
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 791
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 765
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 766
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 767
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 669
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 670
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 671
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 807
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->rejectCall()V

    .line 809
    :goto_0
    return-void

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    goto :goto_0
.end method

.method public removeReferences()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1039
    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 1040
    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    .line 1041
    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 1042
    return-void
.end method

.method public sendDtmf(C)V
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 918
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->sendDtmf(C)V

    .line 920
    :goto_0
    return-void

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    goto :goto_0
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 1
    .param p1, "ussdMessge"    # Ljava/lang/String;

    .prologue
    .line 759
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->sendUssdResponse(Ljava/lang/String;)V

    .line 761
    :goto_0
    return-void

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z
    .locals 6
    .param p1, "cbAction"    # Z
    .param p2, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1154
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/movial/ipphone/IPPhone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z

    move-result v0

    .line 1155
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "cbAction"    # Z
    .param p2, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1143
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/movial/ipphone/IPPhone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    .line 1144
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "commandInterfaceCFAction"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 956
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/movial/ipphone/IPPhone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 958
    :goto_0
    return-void

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 982
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2}, Lcom/movial/ipphone/IPPhone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 984
    :goto_0
    return-void

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method public setEmergencyState(Lcom/movial/ipphone/IPUtils$EmergencyState;)V
    .locals 1
    .param p1, "state"    # Lcom/movial/ipphone/IPUtils$EmergencyState;

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/EmergencyCallController;->setEmergencyState(Lcom/movial/ipphone/IPUtils$EmergencyState;)V

    .line 1096
    return-void
.end method

.method public setForceEmergencyMode(Z)V
    .locals 6
    .param p1, "force"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 232
    const-string v1, "IPPhoneProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setForceEmergencyMode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "CELL_ONLY"

    invoke-static {v1, v4, v2}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    if-nez p1, :cond_2

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    .line 235
    if-nez p1, :cond_3

    :goto_1
    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPPhoneProxy;->setCall(Z)V

    .line 238
    :cond_0
    iget-boolean v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->forceEmergency:Z

    if-eq p1, v1, :cond_1

    .line 239
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.movial.force_emergency_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "force"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 241
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 242
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v1, p1}, Lcom/movial/ipphone/EmergencyCallController;->notifyForceEmergencyModeChanged(Z)V

    .line 244
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iput-boolean p1, p0, Lcom/movial/ipphone/IPPhoneProxy;->forceEmergency:Z

    .line 245
    return-void

    :cond_2
    move v1, v3

    .line 234
    goto :goto_0

    :cond_3
    move v2, v3

    .line 235
    goto :goto_1
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 994
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->setMute(Z)V

    .line 996
    :goto_0
    return-void

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    goto :goto_0
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1018
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1019
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 988
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 989
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 990
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 969
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2}, Lcom/movial/ipphone/IPPhone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 972
    :goto_0
    return-void

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setTransmitPower(ILandroid/os/Message;)V
    .locals 1
    .param p1, "powerLevel"    # I
    .param p2, "onCompleted"    # Landroid/os/Message;

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setTransmitPower(ILandroid/os/Message;)V

    .line 1108
    return-void
.end method

.method public startDtmf(C)V
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 924
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->startDtmf(C)V

    .line 926
    :goto_0
    return-void

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 1

    .prologue
    .line 930
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->stopDtmf()V

    .line 932
    :goto_0
    return-void

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    goto :goto_0
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 813
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->switchHoldingAndActive()V

    .line 815
    :goto_0
    return-void

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_0
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 723
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 724
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 725
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 783
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 784
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 785
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 711
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 712
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 713
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 747
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 748
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 749
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 735
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 736
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 737
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 699
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 700
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 701
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 687
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 688
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 689
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 795
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 796
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 797
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 771
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 772
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 773
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 675
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 676
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 677
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 1024
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 1025
    return-void
.end method

.method public updatePhoneObject(I)V
    .locals 3
    .param p1, "voiceRadioTech"    # I

    .prologue
    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneObject: radioTechnology="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 648
    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/movial/ipphone/IPPhoneProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/IPPhoneProxy;->sendMessage(Landroid/os/Message;)Z

    .line 649
    return-void
.end method
