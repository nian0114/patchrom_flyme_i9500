.class public Landroid/media/SamsungAudioService;
.super Ljava/lang/Object;
.source "SamsungAudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;,
        Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG_AUDIO:Z = true

.field private static final EARJACK_COUNT_PATH:Ljava/lang/String; = "/efs/FactoryApp/earjack_count"

.field private static final GLOBAL_EFFECT_ENABLED:Z

.field private static final MSG_CHECK_EARCARE_STATE:I = 0x1

.field private static final MSG_END_SOUND_MANNER_MODE:I = 0x5

.field private static final MSG_PERFORM_SOFT_RESET:I = 0x2

.field private static final MSG_PLAY_SOUND_MANNER_MODE:I = 0x3

.field private static final MSG_USB_CHECK_RELEASE:I = 0x0

.field private static final MSG_VIBRATE_MANNER_MODE:I = 0x4

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SETTING_ADAPTSOUND_CHECKED:Ljava/lang/String; = "hearing_musiccheck"

.field private static final SETTING_K2HD_CHECKED:Ljava/lang/String; = "k2hd_effect"

.field private static final SETTING_SOUNDALIVE_CHECKED:Ljava/lang/String; = "sound_alive_effect"

.field private static final SETTING_TUBEAMP_CHECKED:Ljava/lang/String; = "tube_amp_effect"

.field private static final SMART_DOCK_CONNECTED:Ljava/lang/String; = "10"

.field private static final TAG:Ljava/lang/String;

.field private static final TMS_ACTION_TYPE_START:I = 0x1

.field private static final TMS_ACTION_TYPE_STOP:I = 0x2


# instance fields
.field private emMgr:Lcom/sec/android/emergencymode/EmergencyManager;

.field private mAllSoundMute:I

.field private final mAudioService:Landroid/media/AudioService;

.field private mAutoHaptic:I

.field private mBackgroundMusicService:Landroid/media/BackgroundMusicService;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCpuCoreNumHelper:Landroid/os/DVFSHelper;

.field private mCpuHelper:Landroid/os/DVFSHelper;

.field private mDualMicMode:I

.field private mExternalUsbInfo:Ljava/lang/String;

.field private mFakeState:Z

.field private mIsEarCareEnabled:Z

.field private mIsEarCareSettingOn:Z

.field private mIsPlaySilentModeOff:Z

.field private mK2HDEnabled:I

.field private mMonoMode:I

.field private mMySoundEnabled:I

.field private mNaturalSound:I

.field private mOldIsSmartdock:Z

.field private mSamsungAudioServiceHandler:Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

.field mSamsungAudioServiceReceiver:Landroid/content/BroadcastReceiver;

.field private mSamsungAudioSettingsObserver:Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;

.field private mSilentModeOff:Z

.field private mSoundAliveEnabled:I

.field private mSoundBalance:I

.field private mStatusbarExpanded:Z

.field private mSystemReady:Z

.field private mTubeAmpEnabled:I

.field private final mUEventUsbConnectObserver:Landroid/os/UEventObserver;

.field private mUSBDetected:Z

.field private mUsbSupportedFormat:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-class v2, Landroid/media/SamsungAudioService;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v2, "persist.audio.globaleffect"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Landroid/media/SamsungAudioService;->GLOBAL_EFFECT_ENABLED:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/media/AudioService$VolumeController;Landroid/media/AudioService;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "cntxt"    # Landroid/content/Context;
    .param p3, "volumeCtrl"    # Landroid/media/AudioService$VolumeController;
    .param p4, "as"    # Landroid/media/AudioService;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Landroid/media/SamsungAudioService;->mSystemReady:Z

    iput-object v3, p0, Landroid/media/SamsungAudioService;->mCpuHelper:Landroid/os/DVFSHelper;

    iput-object v3, p0, Landroid/media/SamsungAudioService;->mCpuCoreNumHelper:Landroid/os/DVFSHelper;

    iput-boolean v2, p0, Landroid/media/SamsungAudioService;->mIsEarCareSettingOn:Z

    iput-boolean v2, p0, Landroid/media/SamsungAudioService;->mIsEarCareEnabled:Z

    iput-object v3, p0, Landroid/media/SamsungAudioService;->emMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    iput-boolean v2, p0, Landroid/media/SamsungAudioService;->mOldIsSmartdock:Z

    iput v2, p0, Landroid/media/SamsungAudioService;->mUsbSupportedFormat:I

    iput-object v3, p0, Landroid/media/SamsungAudioService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iput-boolean v2, p0, Landroid/media/SamsungAudioService;->mSilentModeOff:Z

    iput-boolean v2, p0, Landroid/media/SamsungAudioService;->mIsPlaySilentModeOff:Z

    iput-object v3, p0, Landroid/media/SamsungAudioService;->mBackgroundMusicService:Landroid/media/BackgroundMusicService;

    new-instance v1, Landroid/media/SamsungAudioService$1;

    invoke-direct {v1, p0}, Landroid/media/SamsungAudioService$1;-><init>(Landroid/media/SamsungAudioService;)V

    iput-object v1, p0, Landroid/media/SamsungAudioService;->mSamsungAudioServiceReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/media/SamsungAudioService$2;

    invoke-direct {v1, p0}, Landroid/media/SamsungAudioService$2;-><init>(Landroid/media/SamsungAudioService;)V

    iput-object v1, p0, Landroid/media/SamsungAudioService;->mUEventUsbConnectObserver:Landroid/os/UEventObserver;

    new-instance v1, Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

    invoke-direct {v1, p0, p1}, Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;-><init>(Landroid/media/SamsungAudioService;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/SamsungAudioService;->mSamsungAudioServiceHandler:Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

    iput-object p2, p0, Landroid/media/SamsungAudioService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p4, p0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    iput-boolean v2, p0, Landroid/media/SamsungAudioService;->mUSBDetected:Z

    iput-boolean v2, p0, Landroid/media/SamsungAudioService;->mFakeState:Z

    new-instance v1, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;

    invoke-direct {v1, p0}, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;-><init>(Landroid/media/SamsungAudioService;)V

    iput-object v1, p0, Landroid/media/SamsungAudioService;->mSamsungAudioSettingsObserver:Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;

    iget-object v1, p0, Landroid/media/SamsungAudioService;->mUEventUsbConnectObserver:Landroid/os/UEventObserver;

    const-string v2, "USB_CONNECTION"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.app.audio.epinforequest"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.tms.audio.server"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EXTERNAL_USB_HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.proximity_sensor"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.settings.MONO_AUDIO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.phone.NOISE_REDUCTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.phone.NATURAL_SOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.statusbar.ANIMATING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/SamsungAudioService;->mSamsungAudioServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Landroid/media/SamsungAudioService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    iput-object v1, p0, Landroid/media/SamsungAudioService;->emMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    iget-object v1, p0, Landroid/media/SamsungAudioService;->emMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    iget-object v1, p0, Landroid/media/SamsungAudioService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/SamsungAudioService;->emMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "emergency_mode=on"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_0
    iput-object v3, p0, Landroid/media/SamsungAudioService;->mExternalUsbInfo:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v1, p2}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/media/SamsungAudioService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Landroid/media/SamsungAudioService;->GLOBAL_EFFECT_ENABLED:Z

    return v0
.end method

.method static synthetic access$100(Landroid/media/SamsungAudioService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/media/SamsungAudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    iget-boolean v0, p0, Landroid/media/SamsungAudioService;->mFakeState:Z

    return v0
.end method

.method static synthetic access$1102(Landroid/media/SamsungAudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/media/SamsungAudioService;->mFakeState:Z

    return p1
.end method

.method static synthetic access$1200(Landroid/media/SamsungAudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    invoke-direct {p0}, Landroid/media/SamsungAudioService;->playSilentModeSound()V

    return-void
.end method

.method static synthetic access$1302(Landroid/media/SamsungAudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/media/SamsungAudioService;->mIsPlaySilentModeOff:Z

    return p1
.end method

.method static synthetic access$1402(Landroid/media/SamsungAudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/media/SamsungAudioService;->mIsEarCareSettingOn:Z

    return p1
.end method

.method static synthetic access$1500(Landroid/media/SamsungAudioService;)Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;
    .locals 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mSamsungAudioServiceHandler:Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Handler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .prologue
    invoke-static/range {p0 .. p6}, Landroid/media/SamsungAudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$1700(Landroid/media/SamsungAudioService;)Landroid/media/AudioService;
    .locals 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/media/SamsungAudioService;)Lcom/sec/android/emergencymode/EmergencyManager;
    .locals 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    iget-object v0, p0, Landroid/media/SamsungAudioService;->emMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/media/SamsungAudioService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mExternalUsbInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/media/SamsungAudioService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/media/SamsungAudioService;->mExternalUsbInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Landroid/media/SamsungAudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    iget v0, p0, Landroid/media/SamsungAudioService;->mMySoundEnabled:I

    return v0
.end method

.method static synthetic access$2000(Landroid/media/SamsungAudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    iget v0, p0, Landroid/media/SamsungAudioService;->mMonoMode:I

    return v0
.end method

.method static synthetic access$2002(Landroid/media/SamsungAudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/media/SamsungAudioService;->mMonoMode:I

    return p1
.end method

.method static synthetic access$202(Landroid/media/SamsungAudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/media/SamsungAudioService;->mMySoundEnabled:I

    return p1
.end method

.method static synthetic access$2100(Landroid/media/SamsungAudioService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/media/SamsungAudioService;->setMonoMode(I)V

    return-void
.end method

.method static synthetic access$2200(Landroid/media/SamsungAudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    iget v0, p0, Landroid/media/SamsungAudioService;->mDualMicMode:I

    return v0
.end method

.method static synthetic access$2202(Landroid/media/SamsungAudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/media/SamsungAudioService;->mDualMicMode:I

    return p1
.end method

.method static synthetic access$2300(Landroid/media/SamsungAudioService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/media/SamsungAudioService;->setDualMicMode(I)V

    return-void
.end method

.method static synthetic access$2400(Landroid/media/SamsungAudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    iget v0, p0, Landroid/media/SamsungAudioService;->mNaturalSound:I

    return v0
.end method

.method static synthetic access$2402(Landroid/media/SamsungAudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/media/SamsungAudioService;->mNaturalSound:I

    return p1
.end method

.method static synthetic access$2500(Landroid/media/SamsungAudioService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/media/SamsungAudioService;->setNaturalSoundMode(I)V

    return-void
.end method

.method static synthetic access$2602(Landroid/media/SamsungAudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/media/SamsungAudioService;->mAllSoundMute:I

    return p1
.end method

.method static synthetic access$2702(Landroid/media/SamsungAudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/media/SamsungAudioService;->mStatusbarExpanded:Z

    return p1
.end method

.method static synthetic access$2800(Landroid/media/SamsungAudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    iget-boolean v0, p0, Landroid/media/SamsungAudioService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$2900(Landroid/media/SamsungAudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    invoke-direct {p0}, Landroid/media/SamsungAudioService;->isUSBCheckStreamActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/media/SamsungAudioService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/media/SamsungAudioService;->setGlobalMySound(I)V

    return-void
.end method

.method static synthetic access$3000(Landroid/media/SamsungAudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    iget-boolean v0, p0, Landroid/media/SamsungAudioService;->mUSBDetected:Z

    return v0
.end method

.method static synthetic access$3002(Landroid/media/SamsungAudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/media/SamsungAudioService;->mUSBDetected:Z

    return p1
.end method

.method static synthetic access$400(Landroid/media/SamsungAudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    iget v0, p0, Landroid/media/SamsungAudioService;->mSoundAliveEnabled:I

    return v0
.end method

.method static synthetic access$402(Landroid/media/SamsungAudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/media/SamsungAudioService;->mSoundAliveEnabled:I

    return p1
.end method

.method static synthetic access$500(Landroid/media/SamsungAudioService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/media/SamsungAudioService;->setGlobalSoundAlive(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/media/SamsungAudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    iget v0, p0, Landroid/media/SamsungAudioService;->mK2HDEnabled:I

    return v0
.end method

.method static synthetic access$602(Landroid/media/SamsungAudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/media/SamsungAudioService;->mK2HDEnabled:I

    return p1
.end method

.method static synthetic access$700(Landroid/media/SamsungAudioService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/media/SamsungAudioService;->setGlobalK2HD(I)V

    return-void
.end method

.method static synthetic access$800(Landroid/media/SamsungAudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    iget v0, p0, Landroid/media/SamsungAudioService;->mTubeAmpEnabled:I

    return v0
.end method

.method static synthetic access$802(Landroid/media/SamsungAudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/media/SamsungAudioService;->mTubeAmpEnabled:I

    return p1
.end method

.method static synthetic access$900(Landroid/media/SamsungAudioService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/media/SamsungAudioService;->setGlobalTubeAmp(I)V

    return-void
.end method

.method private getActiveStreamCount()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "nReturn":I
    const/4 v1, 0x0

    .local v1, "nStreamNum":I
    :goto_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected static getFactoryMode()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, "userMode":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/FactoryApp/factorymode"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    return v2

    :catch_0
    move-exception v0

    .local v0, "e1":Ljava/io/IOException;
    const-string v1, "OFF"

    sget-object v2, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v3, "cannot open file : /efs/FactoryApp/factorymode "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e1":Ljava/io/IOException;
    :cond_0
    sget-object v2, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v3, "Current mode is Factorymode, So Popup UI will not be apear"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isSmartDockConnected()Z
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0x64

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-array v1, v13, [C

    .local v1, "buffer":[C
    const-string v0, "sys/class/sec/switch/adc"

    .local v0, "SmartDName":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "file":Ljava/io/FileReader;
    const/4 v2, 0x0

    .local v2, "deviceValue":Ljava/lang/String;
    :try_start_1
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v5    # "file":Ljava/io/FileReader;
    .local v6, "file":Ljava/io/FileReader;
    const/4 v10, 0x0

    const/16 v11, 0x8

    :try_start_2
    invoke-virtual {v6, v1, v10, v11}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    .local v7, "len":I
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    if-le v7, v8, :cond_1

    new-instance v3, Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v11, v7, -0x1

    invoke-direct {v3, v1, v10, v11}, Ljava/lang/String;-><init>([CII)V

    .end local v2    # "deviceValue":Ljava/lang/String;
    .local v3, "deviceValue":Ljava/lang/String;
    move-object v2, v3

    .end local v3    # "deviceValue":Ljava/lang/String;
    .restart local v2    # "deviceValue":Ljava/lang/String;
    :goto_1
    const-string v10, "10"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v6, :cond_0

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    :goto_2
    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .end local v7    # "len":I
    .restart local v5    # "file":Ljava/io/FileReader;
    :goto_3
    return v8

    .end local v0    # "SmartDName":Ljava/lang/String;
    .end local v1    # "buffer":[C
    .end local v2    # "deviceValue":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/FileReader;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    sget-object v10, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error in Thread.sleep() : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "SmartDName":Ljava/lang/String;
    .restart local v1    # "buffer":[C
    .restart local v2    # "deviceValue":Ljava/lang/String;
    .restart local v6    # "file":Ljava/io/FileReader;
    .restart local v7    # "len":I
    :cond_1
    :try_start_4
    new-instance v3, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v3, v1, v10, v7}, Ljava/lang/String;-><init>([CII)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v2    # "deviceValue":Ljava/lang/String;
    .restart local v3    # "deviceValue":Ljava/lang/String;
    move-object v2, v3

    .end local v3    # "deviceValue":Ljava/lang/String;
    .restart local v2    # "deviceValue":Ljava/lang/String;
    goto :goto_1

    :catch_1
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    if-eqz v6, :cond_3

    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .end local v7    # "len":I
    .restart local v5    # "file":Ljava/io/FileReader;
    :cond_4
    :goto_4
    move v8, v9

    goto :goto_3

    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    .restart local v7    # "len":I
    :catch_2
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto :goto_4

    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "len":I
    :catch_3
    move-exception v4

    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_6
    sget-object v8, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v10, "checkSmartDock This kernel does not have wired headset support "

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v5, :cond_4

    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    :catch_4
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .end local v4    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_8
    sget-object v8, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v10, ""

    invoke-static {v8, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v5, :cond_4

    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_4

    :catch_6
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_7
    if-eqz v5, :cond_5

    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_5
    :goto_8
    throw v8

    :catch_7
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto :goto_7

    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    :catch_8
    move-exception v4

    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto :goto_6

    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    :catch_9
    move-exception v4

    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto :goto_5
.end method

.method private isUSBCheckStreamActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x5

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private playSilentModeSound()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_effects_enabled"

    const/4 v4, -0x2

    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v1, "Settings.System.getIntForUser FALSE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/media/SamsungAudioService;->mSilentModeOff:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v1, "mSilentModeOff TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Landroid/media/SamsungAudioService;->mIsPlaySilentModeOff:Z

    iget-object v0, p0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/media/AudioService;->playSoundEffect(I)V

    iget-object v0, p0, Landroid/media/SamsungAudioService;->mSamsungAudioServiceHandler:Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

    const/4 v1, 0x5

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v4, v3

    invoke-static/range {v0 .. v6}, Landroid/media/SamsungAudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 4
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p6

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private setAutoHaptic(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    return-void
.end method

.method private setDualMicMode(I)V
    .locals 1
    .param p1, "dualmicMode"    # I

    .prologue
    if-lez p1, :cond_0

    const-string v0, "dualmic_enabled=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "dualmic_enabled=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setGlobalK2HD(I)V
    .locals 1
    .param p1, "isEnable"    # I

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "k2hd=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "k2hd=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setGlobalMySound(I)V
    .locals 2
    .param p1, "globalMySound"    # I

    .prologue
    sget-boolean v0, Landroid/media/SamsungAudioService;->GLOBAL_EFFECT_ENABLED:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioEffectParam;setGlobalMSEffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private setGlobalSoundAlive(I)V
    .locals 2
    .param p1, "isEnable"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioEffectParam;setGlobalSoundAliveEffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method private setGlobalTubeAmp(I)V
    .locals 2
    .param p1, "isEnable"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioEffectParam;setGlobalTubeAmpffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method private setMonoMode(I)V
    .locals 2
    .param p1, "monoMode"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toMono="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method private setNaturalSoundMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    sget-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNaturalSoundMode() - mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_0

    const-string v0, "bwe=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "bwe=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSoundBalance()V
    .locals 5

    .prologue
    iget-object v1, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "sound_balance"

    const/16 v3, 0x32

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .local v0, "soundBalance":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sound_balance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected ChangeDefaultVolume()V
    .locals 0

    .prologue
    return-void
.end method

.method protected checkAndSendEarCareInfo()V
    .locals 14

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/media/SamsungAudioService;->mSystemReady:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.samsung.android.app.audio.epinforesponse"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v7, "broadcast":Landroid/content/Intent;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .local v8, "extras":Landroid/os/Bundle;
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/media/AudioService;->isDeviceConnected(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Landroid/media/AudioService;->isDeviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v9, v1

    .local v9, "isDeviceConnected":Z
    :goto_1
    iget-boolean v0, p0, Landroid/media/SamsungAudioService;->mIsEarCareSettingOn:Z

    if-eqz v0, :cond_6

    if-eqz v9, :cond_6

    const/4 v11, 0x0

    .local v11, "nState":I
    invoke-direct {p0}, Landroid/media/SamsungAudioService;->getActiveStreamCount()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "earcare=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    const/4 v11, 0x1

    :goto_2
    const-string v0, "earcare_percent"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "strState":Ljava/lang/String;
    if-eqz v13, :cond_3

    const-string v0, ""

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v12, "earcare_percent="

    .local v12, "strKey":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .local v10, "nPercent":I
    sget-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v2, "checkAndSendEarCareInfo() - send intent"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "state"

    invoke-virtual {v8, v0, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "percent"

    invoke-virtual {v8, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v7, v2}, Landroid/media/AudioService;->sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndSendEarCareInfo() state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " percent: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v10    # "nPercent":I
    .end local v12    # "strKey":Ljava/lang/String;
    :cond_3
    sget-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v2, "checkAndSendEarCareInfo() - Loop"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/SamsungAudioService;->mSamsungAudioServiceHandler:Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

    const/4 v5, 0x0

    const v6, 0xea60

    move v2, v1

    move v4, v3

    invoke-static/range {v0 .. v6}, Landroid/media/SamsungAudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_0

    .end local v9    # "isDeviceConnected":Z
    .end local v11    # "nState":I
    .end local v13    # "strState":Ljava/lang/String;
    :cond_4
    move v9, v3

    goto/16 :goto_1

    .restart local v9    # "isDeviceConnected":Z
    .restart local v11    # "nState":I
    :cond_5
    const-string v0, "earcare=noActive"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_2

    .end local v11    # "nState":I
    :cond_6
    sget-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v2, "checkAndSendEarCareInfo() - send off"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "earcare=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    const-string v0, "state"

    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v7, v2}, Landroid/media/AudioService;->sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v0, p0, Landroid/media/SamsungAudioService;->mSamsungAudioServiceHandler:Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

    invoke-virtual {v0, v1}, Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;->removeMessages(I)V

    goto/16 :goto_0
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const-string v0, "\nSamsungAudioService dump:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected getAllSoundMute()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/SamsungAudioService;->mAllSoundMute:I

    return v0
.end method

.method protected getCurOutDevice()I
    .locals 3

    .prologue
    const-string v1, "audioParam;outDevice"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v2, "getCurOutDevice : Can\'t get outDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method protected increaseEARCount()V
    .locals 8

    .prologue
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/efs/FactoryApp/earjack_count"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "strEARCount":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, ""

    if-eq v1, v4, :cond_0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long v2, v4, v6

    .local v2, "earjack_count":J
    const-string v4, "/efs/FactoryApp/earjack_count"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "strEARCount":Ljava/lang/String;
    .end local v2    # "earjack_count":J
    :goto_0
    return-void

    .restart local v1    # "strEARCount":Ljava/lang/String;
    :cond_0
    const-string v4, "/efs/FactoryApp/earjack_count"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v1    # "strEARCount":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NumberFormatException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected initCPUBoost()V
    .locals 0

    .prologue
    return-void
.end method

.method protected isCoverOpen()Z
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/media/SamsungAudioService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected isFactorySim()Z
    .locals 7

    .prologue
    :try_start_0
    iget-object v4, p0, Landroid/media/SamsungAudioService;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .local v3, "tm":Landroid/telephony/TelephonyManager;
    const-string v0, "999999999999999"

    .local v0, "IMSI":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .local v2, "imsi":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, "999999999999999"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v5, "Factory SIM is used now, So Popup UI will not be apear"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    .end local v0    # "IMSI":Ljava/lang/String;
    .end local v2    # "imsi":Ljava/lang/String;
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return v4

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error checking factory SIM: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected isPlaySilentModeOff()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/media/SamsungAudioService;->mIsPlaySilentModeOff:Z

    return v0
.end method

.method protected isStatusbarExpanded()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/media/SamsungAudioService;->mStatusbarExpanded:Z

    return v0
.end method

.method protected mediaServerDied()V
    .locals 4

    .prologue
    iget v2, p0, Landroid/media/SamsungAudioService;->mMonoMode:I

    invoke-direct {p0, v2}, Landroid/media/SamsungAudioService;->setMonoMode(I)V

    sget-boolean v2, Landroid/media/SamsungAudioService;->GLOBAL_EFFECT_ENABLED:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/media/SamsungAudioService;->mMySoundEnabled:I

    invoke-direct {p0, v2}, Landroid/media/SamsungAudioService;->setGlobalMySound(I)V

    iget v2, p0, Landroid/media/SamsungAudioService;->mSoundAliveEnabled:I

    invoke-direct {p0, v2}, Landroid/media/SamsungAudioService;->setGlobalSoundAlive(I)V

    iget v2, p0, Landroid/media/SamsungAudioService;->mK2HDEnabled:I

    invoke-direct {p0, v2}, Landroid/media/SamsungAudioService;->setGlobalK2HD(I)V

    iget v2, p0, Landroid/media/SamsungAudioService;->mTubeAmpEnabled:I

    invoke-direct {p0, v2}, Landroid/media/SamsungAudioService;->setGlobalTubeAmp(I)V

    :cond_0
    iget v2, p0, Landroid/media/SamsungAudioService;->mDualMicMode:I

    invoke-direct {p0, v2}, Landroid/media/SamsungAudioService;->setDualMicMode(I)V

    invoke-virtual {p0}, Landroid/media/SamsungAudioService;->setAllSoundMute()V

    iget v2, p0, Landroid/media/SamsungAudioService;->mNaturalSound:I

    invoke-direct {p0, v2}, Landroid/media/SamsungAudioService;->setNaturalSoundMode(I)V

    iget v2, p0, Landroid/media/SamsungAudioService;->mAutoHaptic:I

    invoke-direct {p0, v2}, Landroid/media/SamsungAudioService;->setAutoHaptic(I)V

    invoke-direct {p0}, Landroid/media/SamsungAudioService;->setSoundBalance()V

    const-string v2, "persist.audio.voicetrig"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "voicetrig":Ljava/lang/String;
    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "voice_trig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_1
    const-string v2, "persist.audio.voicewakeup"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "voicewakeup":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "voice_wakeup_mic="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method protected onAudioService()V
    .locals 2

    .prologue
    iget v0, p0, Landroid/media/SamsungAudioService;->mMonoMode:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setMonoMode(I)V

    sget-boolean v0, Landroid/media/SamsungAudioService;->GLOBAL_EFFECT_ENABLED:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/SamsungAudioService;->mMySoundEnabled:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setGlobalMySound(I)V

    iget v0, p0, Landroid/media/SamsungAudioService;->mSoundAliveEnabled:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setGlobalSoundAlive(I)V

    iget v0, p0, Landroid/media/SamsungAudioService;->mK2HDEnabled:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setGlobalK2HD(I)V

    iget v0, p0, Landroid/media/SamsungAudioService;->mTubeAmpEnabled:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setGlobalTubeAmp(I)V

    :cond_0
    iget v0, p0, Landroid/media/SamsungAudioService;->mDualMicMode:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setDualMicMode(I)V

    iget v0, p0, Landroid/media/SamsungAudioService;->mAllSoundMute:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/media/SamsungAudioService;->setAllSoundMute()V

    :cond_1
    iget v0, p0, Landroid/media/SamsungAudioService;->mNaturalSound:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setNaturalSoundMode(I)V

    iget v0, p0, Landroid/media/SamsungAudioService;->mAutoHaptic:I

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/media/SamsungAudioService;->mAutoHaptic:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setAutoHaptic(I)V

    :cond_2
    invoke-direct {p0}, Landroid/media/SamsungAudioService;->setSoundBalance()V

    return-void
.end method

.method protected performSoftReset()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/SamsungAudioService;->mMonoMode:I

    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "mono_audio_db"

    iget v2, p0, Landroid/media/SamsungAudioService;->mMonoMode:I

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget v0, p0, Landroid/media/SamsungAudioService;->mMonoMode:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setMonoMode(I)V

    sget-boolean v0, Landroid/media/SamsungAudioService;->GLOBAL_EFFECT_ENABLED:Z

    if-eqz v0, :cond_0

    iput v3, p0, Landroid/media/SamsungAudioService;->mMySoundEnabled:I

    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "hearing_musiccheck"

    iget v2, p0, Landroid/media/SamsungAudioService;->mMySoundEnabled:I

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget v0, p0, Landroid/media/SamsungAudioService;->mMySoundEnabled:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setGlobalMySound(I)V

    iput v3, p0, Landroid/media/SamsungAudioService;->mSoundAliveEnabled:I

    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "sound_alive_effect"

    iget v2, p0, Landroid/media/SamsungAudioService;->mSoundAliveEnabled:I

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget v0, p0, Landroid/media/SamsungAudioService;->mSoundAliveEnabled:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setGlobalSoundAlive(I)V

    iput v3, p0, Landroid/media/SamsungAudioService;->mK2HDEnabled:I

    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "k2hd_effect"

    iget v2, p0, Landroid/media/SamsungAudioService;->mK2HDEnabled:I

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget v0, p0, Landroid/media/SamsungAudioService;->mK2HDEnabled:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setGlobalK2HD(I)V

    iput v3, p0, Landroid/media/SamsungAudioService;->mTubeAmpEnabled:I

    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "tube_amp_effect"

    iget v2, p0, Landroid/media/SamsungAudioService;->mTubeAmpEnabled:I

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget v0, p0, Landroid/media/SamsungAudioService;->mTubeAmpEnabled:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setGlobalTubeAmp(I)V

    :cond_0
    iput v3, p0, Landroid/media/SamsungAudioService;->mDualMicMode:I

    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "call_noise_reduction"

    iget v2, p0, Landroid/media/SamsungAudioService;->mDualMicMode:I

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget v0, p0, Landroid/media/SamsungAudioService;->mDualMicMode:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setDualMicMode(I)V

    iput v3, p0, Landroid/media/SamsungAudioService;->mAllSoundMute:I

    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "all_sound_off"

    iget v2, p0, Landroid/media/SamsungAudioService;->mAllSoundMute:I

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Landroid/media/SamsungAudioService;->setAllSoundMute()V

    iput v3, p0, Landroid/media/SamsungAudioService;->mNaturalSound:I

    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "call_natural_sound"

    iget v2, p0, Landroid/media/SamsungAudioService;->mNaturalSound:I

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget v0, p0, Landroid/media/SamsungAudioService;->mNaturalSound:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setNaturalSoundMode(I)V

    iput v3, p0, Landroid/media/SamsungAudioService;->mAutoHaptic:I

    return-void
.end method

.method public playBackgroundMusic(II)Z
    .locals 3
    .param p1, "music_id"    # I
    .param p2, "delay"    # I

    .prologue
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mBackgroundMusicService:Landroid/media/BackgroundMusicService;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/BackgroundMusicService;

    iget-object v1, p0, Landroid/media/SamsungAudioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    invoke-direct {v0, v1, v2}, Landroid/media/BackgroundMusicService;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/SamsungAudioService;->mBackgroundMusicService:Landroid/media/BackgroundMusicService;

    iget-object v0, p0, Landroid/media/SamsungAudioService;->mBackgroundMusicService:Landroid/media/BackgroundMusicService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/SamsungAudioService;->mBackgroundMusicService:Landroid/media/BackgroundMusicService;

    invoke-virtual {v0, p1, p2}, Landroid/media/BackgroundMusicService;->play(II)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected porcessUsbAudioDevicePlug(Landroid/content/Intent;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .local v9, "outDevice":I
    const/4 v7, 0x0

    .local v7, "inDevice":I
    const-string v12, "state"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .local v11, "state":I
    const-string v12, "card"

    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, "alsaCard":I
    const-string v12, "device"

    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .local v2, "alsaDevice":I
    const-string v12, "hasPlayback"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .local v6, "hasPlayback":Z
    const-string v12, "hasCapture"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .local v4, "hasCapture":Z
    const-string v12, "hasMIDI"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .local v5, "hasMIDI":Z
    const/4 v12, -0x1

    if-ne v1, v12, :cond_1

    const/4 v12, -0x1

    if-ne v2, v12, :cond_1

    const-string v10, ""

    .local v10, "params":Ljava/lang/String;
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/media/SamsungAudioService;->isSmartDockConnected()Z

    move-result v8

    .local v8, "isSmartdock":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v13, "cradle_enable"

    const/4 v14, 0x0

    const/4 v15, -0x2

    invoke-static {v12, v13, v14, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .local v3, "cradleEnabled":I
    if-eqz v8, :cond_4

    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/media/SamsungAudioService;->mOldIsSmartdock:Z

    if-eq v8, v12, :cond_0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Landroid/media/SamsungAudioService;->mOldIsSmartdock:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    move-object v12, v10

    :goto_1
    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/media/SamsungAudioService;->mExternalUsbInfo:Ljava/lang/String;

    const/4 v12, 0x1

    if-ne v3, v12, :cond_3

    sget-object v12, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cradleEnabled change path, state : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0x4000

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v12, v9, v11, v10}, Landroid/media/AudioService;->setWiredDeviceConnectionStateWithoutIntent(IILjava/lang/String;)V

    :cond_0
    :goto_2
    return-void

    .end local v3    # "cradleEnabled":I
    .end local v8    # "isSmartdock":Z
    .end local v10    # "params":Ljava/lang/String;
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "card="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";device="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .restart local v3    # "cradleEnabled":I
    .restart local v8    # "isSmartdock":Z
    .restart local v10    # "params":Ljava/lang/String;
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    :cond_3
    sget-object v12, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v13, "cradle disabled no any action"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/media/SamsungAudioService;->mOldIsSmartdock:Z

    if-eqz v6, :cond_5

    const/16 v9, 0x4000

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v12, v9, v11, v10}, Landroid/media/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    :cond_5
    if-eqz v4, :cond_0

    const v7, -0x7ffff000

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v12, v7, v11, v10}, Landroid/media/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    goto :goto_2
.end method

.method protected readPersistedSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "mono_audio_db"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/SamsungAudioService;->mMonoMode:I

    sget-boolean v1, Landroid/media/SamsungAudioService;->GLOBAL_EFFECT_ENABLED:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "hearing_musiccheck"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/SamsungAudioService;->mMySoundEnabled:I

    iget-object v1, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "sound_alive_effect"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/SamsungAudioService;->mSoundAliveEnabled:I

    iget-object v1, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "k2hd_effect"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/SamsungAudioService;->mK2HDEnabled:I

    iget-object v1, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "tube_amp_effect"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/SamsungAudioService;->mTubeAmpEnabled:I

    :cond_0
    const-string v1, "call_noise_reduction"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/SamsungAudioService;->mDualMicMode:I

    const-string v1, "all_sound_off"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/SamsungAudioService;->mAllSoundMute:I

    const-string v1, "call_natural_sound"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/SamsungAudioService;->mNaturalSound:I

    iput v4, p0, Landroid/media/SamsungAudioService;->mAutoHaptic:I

    return-void
.end method

.method protected setAllSoundMute()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioParam;allsoundmute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/SamsungAudioService;->mAllSoundMute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    const-string v0, "persist.audio.allsoundmute"

    iget v1, p0, Landroid/media/SamsungAudioService;->mAllSoundMute:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setRingerMode(I)V
    .locals 7
    .param p1, "ringerMode"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v1, "Ringer mode : silent & set driving mode off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Landroid/media/SamsungAudioService;->mSilentModeOff:Z

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v1, "Ringer mode : vibrate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Landroid/media/SamsungAudioService;->mSilentModeOff:Z

    iget-object v0, p0, Landroid/media/SamsungAudioService;->mSamsungAudioServiceHandler:Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

    const/4 v1, 0x4

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/SamsungAudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v1, "Ringer mode : normal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/SamsungAudioService;->mSamsungAudioServiceHandler:Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

    const/4 v1, 0x3

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/SamsungAudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setSilentModeOff(Z)V
    .locals 0
    .param p1, "onOff"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/media/SamsungAudioService;->mSilentModeOff:Z

    return-void
.end method

.method protected setSystemReady(Z)V
    .locals 1
    .param p1, "bEable"    # Z

    .prologue
    iget-boolean v0, p0, Landroid/media/SamsungAudioService;->mSystemReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "system_ready=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Landroid/media/SamsungAudioService;->mSystemReady:Z

    return-void
.end method

.method protected startCPUBoost()V
    .locals 0

    .prologue
    return-void
.end method

.method public stopBackgroundMusic()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mBackgroundMusicService:Landroid/media/BackgroundMusicService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/SamsungAudioService;->mBackgroundMusicService:Landroid/media/BackgroundMusicService;

    invoke-virtual {v0}, Landroid/media/BackgroundMusicService;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/SamsungAudioService;->mBackgroundMusicService:Landroid/media/BackgroundMusicService;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected stopCPUBoost()V
    .locals 0

    .prologue
    return-void
.end method

.method protected vibrateCall()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v2, p0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/SamsungAudioService;->mContext:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemVibrator;

    .local v1, "vibrator":Landroid/os/SystemVibrator;
    const/16 v2, 0xc

    sget-object v3, Landroid/os/SystemVibrator$MagnitudeType;->CallMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v1, v2, v3}, Landroid/os/SystemVibrator;->vibrateImmVibe(ILandroid/os/SystemVibrator$MagnitudeType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "vibrator":Landroid/os/SystemVibrator;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v3, "Vibrator error"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
