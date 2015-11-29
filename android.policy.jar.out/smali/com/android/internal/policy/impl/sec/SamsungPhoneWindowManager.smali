.class public Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenShotForEffect;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_DEVICE_WAKEUP:Ljava/lang/String; = "Device_wakeup"

.field private static final ACTION_REFRESH_HWKEY:Ljava/lang/String; = "com.android.server.enterprise.kioskmode.REFRESH_HWKEY_CACHE"

.field private static BOOSTING_TIMEOUT:I = 0x0

.field static final DEBUG:Z = false

.field private static final FINGERPRINT_KEY_IGNORE_DURATION:I = 0x3e8

.field private static final MENU_LONG_POLICY_LAUNCH_SFINDER:Ljava/lang/String; = "SFINDER"

.field static final SAFE_DEBUG:Z

.field static final SCREENCAPTURE_ORIGINAL:I = 0x1

.field static final SCREENCAPTURE_SWEEP_LEFT:I = 0x2

.field static final SCREENCAPTURE_SWEEP_RIGHT:I = 0x3

.field static final TAG:Ljava/lang/String; = "SamsungWindowManager"

.field public static final TORCH_FILE:Ljava/lang/String; = "/sys/class/camera/flash/rear_flash"

.field private static cpuBooster:Landroid/os/DVFSHelper;

.field static final localLOGV:Z

.field private static mCoreNumLockHelper:Landroid/os/DVFSHelper;

.field private static mCpuBooster:Landroid/os/DVFSHelper;

.field private static mCurrentUser:I

.field static mFocusedWindowPkgName:Ljava/lang/String;

.field private static mIsTablet:Z


# instance fields
.field private final EnableLinuxCOMMONAPI4:Ljava/lang/String;

.field final MAX_SCREENSHOT_CONNECTION:I

.field private final UVS_ORIENTATION_PROVIDER:Ljava/lang/String;

.field private final UVS_ORIENTATION_REQUEST:Ljava/lang/String;

.field WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

.field mAlwaysComponet:Landroid/content/ComponentName;

.field mAlwaysIntent:Landroid/content/Intent;

.field mAudioManager:Landroid/media/AudioManager;

.field mAvailableVoiceCommand:Z

.field private mBackKeyConsumed:Z

.field mBlockKeyForDrivingMode:Z

.field private mBlockedHwKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

.field mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field mBootCompleted:Z

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field mClearCoverComponent:Landroid/content/ComponentName;

.field mCombinationKeyManager:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

.field mContext:Landroid/content/Context;

.field mCoverNoteEnabled:Z

.field mDoubleTapOnHomeBehavior:I

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mFingerPrintIntent:Landroid/content/Intent;

.field mFingerPrintPending:Z

.field private final mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

.field mFlashAnnotateComponent:Landroid/content/ComponentName;

.field mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

.field mFlipFolderOpenedIntent:Landroid/content/Intent;

.field mHMTComsumed:Z

.field mHMTPressed:Z

.field mHandler:Landroid/os/Handler;

.field mHasDaynotePackage:Z

.field mHasFlashAnnotateComponent:Z

.field private mHasPermanentMenuKey:Z

.field mIsCheckDrivingMode:Z

.field mIsDockHomeEnabled:Z

.field mIsEasyModeEnabled:Z

.field mIsEnabledAccessControl:Z

.field mIsKidsModeEnabled:Z

.field private final mIsLiveDemo:Z

.field private mIsRingingOrOffhook:Z

.field mIsSafetyAssuranceEnabled:Z

.field private mIsSupportManualScreenPinning:Z

.field mIsUseAccessControl:Z

.field private mKeyEventInjectionThread:Ljava/lang/Thread;

.field mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

.field private mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

.field final mLock:Ljava/lang/Object;

.field private mMenuConsumed:Z

.field mNetworkSelectionLongPress:Z

.field mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

.field mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field mPenInsertedIntent:Landroid/content/Intent;

.field mPenInsertedIntentUserSwitch:Landroid/content/Intent;

.field mPenNotifyVibrationChecked:Z

.field mPenState:I

.field mPerformEditAfterScreenCapture:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mPowerDoubleBehavior:Z

.field mPowerManager:Landroid/os/PowerManager;

.field private mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private mRecentConsumed:Z

.field mRingtone:Landroid/media/Ringtone;

.field private mSFinderLaunchPolicy:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

.field final mScreenshotLock:Ljava/lang/Object;

.field private mSealedModeReEnableVolumeUpKey:Z

.field private mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

.field final mServiceAquireLock:Ljava/lang/Object;

.field mServiceConnectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ServiceConnection;",
            "Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;",
            ">;"
        }
    .end annotation
.end field

.field mSettingsObserver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;

.field mSideSyncSourcePresentationActived:Z

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mSweepDirection:I

.field mSweepReceiver:Landroid/content/BroadcastReceiver;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mTorchlightEnabled:Z

.field mTorchlightOn:Z

.field mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

.field mTripleTapOnHomeBehavior:I

.field private final mTurnOffTorchlight:Ljava/lang/Runnable;

.field mUserSetupComplete:Z

.field mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private mUvsOrientation:I

.field mUvsReceiver:Landroid/content/BroadcastReceiver;

.field mVibrator:Landroid/os/SystemVibrator;

.field mVoiceCommandIntent:Landroid/content/Intent;

.field mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mVolumeUpLongPress:Ljava/lang/Runnable;

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsTablet:Z

    const-string v0, "ro.build.characteristics"

    const-string v2, "phone"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "tablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsTablet:Z

    const-string v0, "UNKNOWN"

    sput-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFocusedWindowPkgName:Ljava/lang/String;

    sput v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCurrentUser:I

    sput-object v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;

    sput-object v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    sput-object v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    const/16 v0, 0x3e8

    sput v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->BOOSTING_TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBootCompleted:Z

    iput v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    iput v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    iput v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerDoubleBehavior:Z

    iput v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSweepDirection:I

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoverNoteEnabled:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHMTPressed:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHMTComsumed:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mNetworkSelectionLongPress:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    iput v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableLinuxCommonApi4"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;

    const-string v0, "com.lguplus.uvs.REQUEST_ORIENTATION"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->UVS_ORIENTATION_REQUEST:Ljava/lang/String;

    const-string v0, "LGT"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->UVS_ORIENTATION_PROVIDER:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUserSetupComplete:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSweepReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mMenuConsumed:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRecentConsumed:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->MAX_SCREENSHOT_CONNECTION:I

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSealedModeReEnableVolumeUpKey:Z

    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$10;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$12;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$13;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableLiveDemo"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsLiveDemo:Z

    return-void
.end method

.method private TorchModeFlashSet(I)V
    .locals 8
    .param p1, "torchTime"    # I

    .prologue
    const/4 v7, 0x0

    sget-boolean v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Torch Time Out ==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .local v1, "input":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "out":Ljava/io/FileWriter;
    if-lez p1, :cond_3

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    int-to-long v6, p1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v1, "1"

    :goto_0
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/sys/class/camera/flash/rear_flash"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "out":Ljava/io/FileWriter;
    .local v3, "out":Ljava/io/FileWriter;
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    :cond_2
    :goto_2
    return-void

    :cond_3
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v1, "0"

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v4, "SamsungWindowManager"

    const-string v5, "exception occurred. /sys/class/camera/flash/rear_flash"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_5
    throw v4

    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catch_2
    move-exception v4

    goto :goto_1

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    :catch_3
    move-exception v5

    goto :goto_5

    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    goto :goto_4

    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    goto :goto_3
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateWacomOffset(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->TorchModeFlashSet(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setUvsOrieatation(I)V

    return-void
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method static getTelephonyService2()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .local v0, "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_0

    const-string v1, "SamsungWindowManager"

    const-string v2, "Unable to find ITelephony2 interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public static getVoIPInterfaceService()Landroid/os/IVoIPInterface;
    .locals 3

    .prologue
    const-string v1, "voip"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    .local v0, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-nez v0, :cond_0

    const-string v1, "SamsungWindowManager"

    const-string v2, "Unable to find IVoIPInterface interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private injectionKeyEvent(I)V
    .locals 2
    .param p1, "key"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$9;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private isDefaultLauncher(Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "preferredActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1, v3, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    const-string v7, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isDefaultLauncher :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    :goto_1
    return v5

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1
.end method

.method private isHardwareKeyAllowed(IZ)Z
    .locals 5
    .param p1, "hwKeyId"    # I
    .param p2, "showMsg"    # Z

    .prologue
    const/4 v0, 0x1

    .local v0, "allowed":Z
    :try_start_0
    const-string v3, "kioskmode"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v2

    .local v2, "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1, p2}, Landroid/app/enterprise/kioskmode/IKioskMode;->isHardwareKeyAllowed(Landroid/app/enterprise/ContextInfo;IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .end local v2    # "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "Exception while getting kiosk mode service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isKnoxKeyguardShowing()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .local v0, "mPm":Landroid/os/PersonaManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PersonaManager;->getKeyguardShowState()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SamsungWindowManager"

    const-string v2, "KnoxKeyguard is showing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMirrorLinkEnabled()Z
    .locals 2

    .prologue
    const-string v0, "1"

    const-string v1, "net.mirrorlink.on"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isScreenCaptureEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .local v0, "isScreenCaptureEnabled":Z
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/enterprise/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SamsungWindowManager"

    const-string v2, "mEDM.getRestrictionPolicy().isScreenCaptureEnabled() return false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method private playSound(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .local v3, "soundUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->stop()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .local v2, "masterStreamVolume":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4, v7}, Landroid/media/Ringtone;->setStreamType(I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->play()V

    .end local v2    # "masterStreamVolume":I
    :goto_1
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to stop Ringtone - already done : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "masterStreamVolume":I
    :cond_1
    const-string v4, "SamsungWindowManager"

    const-string v5, "There are no ringtones"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2    # "masterStreamVolume":I
    :cond_2
    const-string v4, "SamsungWindowManager"

    const-string v5, "AudioManager loading fail"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private playSoundEffect()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "SamsungWindowManager"

    const-string v2, "keyguard - disable key sound"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "SamsungWindowManager"

    const-string v2, "Couldn\'t get audio manager"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setUvsOrieatation(I)V
    .locals 1
    .param p1, "request"    # I

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    :cond_0
    iput p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    goto :goto_0
.end method

.method private startCustomApp()Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-nez v9, :cond_1

    const-string v8, "SamsungWindowManager"

    const-string v9, "mKnoxCustomManager null"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v9}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getRecentLongPressMode()I

    move-result v3

    .local v3, "mode":I
    if-eqz v3, :cond_0

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .local v5, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v9, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .local v6, "taskName":Ljava/lang/String;
    if-ne v3, v8, :cond_2

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDefaultLauncher(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Foreground taskName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "mode":I
    .end local v5    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v6    # "taskName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startCustomApp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v3    # "mode":I
    .restart local v5    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v6    # "taskName":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v9}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getRecentLongPressActivity()Ljava/lang/String;

    move-result-object v1

    .local v1, "appToStart":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    const-string v8, "SamsungWindowManager"

    const-string v9, "appToStart null"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v9, "SamsungWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "starting custom app : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .local v4, "regularIntent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v7, v8

    goto/16 :goto_0
.end method

.method private startSGA(Ljava/lang/String;)V
    .locals 5
    .param p1, "gamePkg"    # Ljava/lang/String;

    .prologue
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "SGA is not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "no Launch intent of SGA"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateWacomOffset(I)V
    .locals 5
    .param p1, "rotation"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/sec_epen/epen_rotation"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    add-int/lit8 v3, p1, 0x30

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    :cond_1
    :goto_0
    return-void

    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    :goto_1
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :cond_2
    :goto_4
    throw v3

    :catch_5
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_3

    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_1
.end method


# virtual methods
.method public callAccessibilityScreenCurtain()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SamsungWindowManager"

    const-string v3, "callAccessibilityScreenCurtain() is called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .local v1, "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_0
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->setScreenCurtain()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :goto_0
    return-void

    .restart local v1    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :cond_0
    const-string v2, "SamsungWindowManager"

    const-string v3, "sendBroadcastForAccessibility() is not called, because it is not provisioned"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public callAccessibilityTalkbackMode()V
    .locals 4

    .prologue
    const-string v2, "SamsungWindowManager"

    const-string v3, "callAccessibilityTalkbackMode() is called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .local v1, "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_0
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->setTalkbackMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public downloadForSGA(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgUri"    # Ljava/lang/String;

    .prologue
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungWindowManager"

    const-string v3, "try download SGA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v2, 0x30000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "SamsungWindowManager"

    const-string v3, "Samsung apps is not installed. so you are moving to Samsung apps download page."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->downloadForSamsungApps()V

    goto :goto_0
.end method

.method public downloadForSamsungApps()V
    .locals 5

    .prologue
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "try download SamsungApps"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "http://apps.samsung.com/mw/apk_en.as"

    .local v2, "url":Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x30000020

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "There is not browsable apps for samsungapps download"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPenState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPerformEditAfterScreenCapture="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasFlashAnnotateComponent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsSafetyAssuranceEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mIsUseAccessControl="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mIsEnabledAccessControl="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsKidsModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mIsEasyModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mIsDockHomeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDoubleTapOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mAvailableVoiceCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mTripleTapOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsRingingOrOffhook="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSideSyncSourcePresentationActived="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public endCallByGamekey()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "hungUp":Z
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v3

    .local v3, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isVoIPRinging()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    or-int/2addr v1, v4

    :cond_1
    :goto_1
    return v1

    .end local v3    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "SamsungWindowManager"

    const-string v5, "ITelephony threw RemoteException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v3    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_1
    move-exception v0

    .restart local v0    # "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "SamsungWindowManager"

    const-string v5, "ITelephony2 threw RemoteException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getKnoxCustomManager()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    return-object v0
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public getTimeoutTimeOfKeyCombination(I)J
    .locals 2
    .param p1, "flags"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->getTimeoutTimeOfKeyCombination(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUvsOrientation()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    return v0
.end method

.method public goingToSleep(I)V
    .locals 1
    .param p1, "why"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;->disable()V

    :cond_0
    return-void
.end method

.method public handleHomeKeyInRinging()I
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isAnyKeyMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SamsungWindowManager"

    const-string v2, "ringing: Accept the call!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public handleLongPressOnBack()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isEasyOneHandEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->getEasyOneHandPkgVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateEasyOneHandState(ZZ)V

    :cond_0
    return-void
.end method

.method public handleLongPressOnHome()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v4}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isVzwSetupRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "SamsungWindowManager"

    const-string v5, "Home longpress block when Verizon Setup Wizard Running"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .local v2, "phoneServ":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .end local v2    # "phoneServ":Lcom/android/internal/telephony/ITelephony;
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isVoIPRinging()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "SamsungWindowManager"

    const-string v5, "Home longpress block in emergency & upsm mode"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    const-string v4, "SamsungWindowManager"

    const-string v5, "RemoteException from getTelephonyService()"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isKidsModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "SamsungWindowManager"

    const-string v5, "Home longpress block in kidsmode"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEnableAccessControl()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "SamsungWindowManager"

    const-string v5, "Home longpress blocked by Interaction control"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public handleLongPressOnMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSupportManualScreenPinning:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasPermanentMenuKey:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungWindowManager"

    const-string v3, "Menu longpress used in Lock task mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, "activityManager":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "Unable to reach activity manager"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v2}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mMenuConsumed:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    goto :goto_0
.end method

.method public handleLongPressOnRecent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSupportManualScreenPinning:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasPermanentMenuKey:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungWindowManager"

    const-string v3, "Recent longpress used in Lock task mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, "activityManager":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "Unable to reach activity manager"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isEasyOneHandEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->getEasyOneHandPkgVersion(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRecentConsumed:Z

    invoke-virtual {p0, v4, v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateEasyOneHandState(ZZ)V

    goto :goto_0

    :cond_2
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRecentConsumed:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v5, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    const/16 v2, 0x52

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->injectionKeyEvent(I)V

    goto :goto_0
.end method

.method public handleWakingUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;->enable()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, v1, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->processTorchlight(IZZ)V

    :cond_1
    return-void
.end method

.method public hideRecentApps(Z)Z
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isShowOrHideRecentAppsAllowedByKNOX()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ignorePowerKeyInEncrypting()Z
    .locals 6

    .prologue
    const-string v3, "vold.encrypt_progress"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "state":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x0

    .local v1, "progress":I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    const/16 v3, 0x64

    if-ge v1, v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "Ignore Power Off Key!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    .end local v1    # "progress":I
    :goto_1
    return v3

    .restart local v1    # "progress":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing progress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "progress":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public init(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p3, "windowManager"    # Landroid/view/IWindowManager;
    .param p4, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object p3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    iput-object p4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {v0, p1, v1, p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;->observe()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "SamsungPhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v0, v8, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mTorchlightWakeLock"

    invoke-virtual {v0, v8, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.samsung.android.motion.SWEEP_LEFT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.motion.SWEEP_RIGHT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.motion.SWEEP_DOWN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSweepReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "com.android.server.enterprise.kioskmode.REFRESH_HWKEY_CACHE"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v6, "kioskFilter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.action.SVOICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string v1, "isThisComeFromHomeKeyDoubleClickConcept"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string v1, "CHECK_SCHEDULE_ENABLED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.pen.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.pen.INSERT.USER_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntentUserSwitch:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.always.action.LAUNCH_ALWAYS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAlwaysIntent:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.flipfolder.OPEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlipFolderOpenedIntent:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.secretmode.action.REQ_SHOW_VISUAL_CUE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.secretmode.service"

    const-string v5, "com.samsung.android.secretmode.service.SecretModeService"

    invoke-direct {v1, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.app.always"

    const-string v2, "com.samsung.android.app.always.ui.MainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAlwaysComponet:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.spen.flashannotate"

    const-string v2, "com.sec.spen.flashannotate.FlashAnnotateActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashAnnotateComponent:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.spen.flashannotatesvc"

    const-string v2, "com.sec.spen.flashannotatesvc.flashannotateservice"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashAnnotateComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    const-string v0, "com.sec.android.daynote"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mVoiceWakeUpWakeLock"

    invoke-virtual {v0, v8, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    :cond_0
    const-string v0, "LGT"

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .local v7, "mUvsFilter":Landroid/content/IntentFilter;
    const-string v0, "com.lguplus.uvs.REQUEST_ORIENTATION"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "android.permission.SET_ORIENTATION"

    invoke-virtual {v0, v1, v7, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .end local v7    # "mUvsFilter":Landroid/content/IntentFilter;
    :cond_1
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_2
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/KeyEvent;)Z
    .locals 34
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v22

    .local v22, "keyguardOn":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v20

    .local v20, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v26

    .local v26, "repeatCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v13

    .local v13, "flags":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v30

    if-nez v30, :cond_2

    const/4 v10, 0x1

    .local v10, "down":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    .local v6, "canceled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v30

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_5

    const/4 v15, 0x1

    .local v15, "isAllowed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v30

    if-nez v30, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v30

    if-nez v30, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v30

    if-eqz v30, :cond_3

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v15

    const/16 v30, 0x18

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSealedModeReEnableVolumeUpKey:Z

    move/from16 v30, v0

    if-eqz v30, :cond_0

    const/4 v15, 0x1

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSealedModeReEnableVolumeUpKey:Z

    :cond_0
    :goto_1
    if-nez v15, :cond_5

    const/16 v21, 0x1

    .end local v15    # "isAllowed":Z
    :cond_1
    :goto_2
    return v21

    .end local v6    # "canceled":Z
    .end local v10    # "down":Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .restart local v6    # "canceled":Z
    .restart local v10    # "down":Z
    .restart local v15    # "isAllowed":Z
    :cond_3
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v15

    goto :goto_1

    :cond_4
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v15

    goto :goto_1

    .end local v15    # "isAllowed":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->isConsumedKeyCombination(Landroid/view/KeyEvent;)Z

    move-result v30

    if-eqz v30, :cond_6

    const/16 v21, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v30

    if-eqz v30, :cond_8

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z

    move-result v30

    if-eqz v30, :cond_8

    sget-boolean v30, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v30, :cond_7

    const-string v30, "SamsungWindowManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "interceptKeyTi : Key was blocked by sidesync. keycode="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", repeatCount="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/16 v21, 0x1

    goto :goto_2

    :cond_8
    const/16 v30, 0x3

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v30

    if-eqz v30, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v23

    .local v23, "lRestPolicy":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v23, :cond_a

    const/4 v15, 0x1

    .restart local v15    # "isAllowed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v30

    if-nez v30, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v30

    if-nez v30, :cond_9

    const/16 v30, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v15

    :goto_3
    if-nez v15, :cond_a

    const-string v30, "SamsungWindowManager"

    const-string v31, "home key disabled by edm"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    goto/16 :goto_2

    :cond_9
    const/16 v30, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v15

    goto :goto_3

    .end local v15    # "isAllowed":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v30

    if-gtz v30, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/enterprise/SecurityPolicy;->isDodBannerVisible()Z

    move-result v30

    if-eqz v30, :cond_c

    :cond_b
    const-string v30, "SamsungWindowManager"

    const-string v31, "home key disabled by either pwd policy OR DoD Banner"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    goto/16 :goto_2

    .end local v23    # "lRestPolicy":Landroid/app/enterprise/RestrictionPolicy;
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isKnoxKeyguardShowing()Z

    move-result v30

    if-eqz v30, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOn()Z

    move-result v30

    if-eqz v30, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v30

    if-nez v30, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    new-instance v31, Landroid/content/Intent;

    const-string v32, "com.sec.knox.containeragent2.ui.keyguard.KnoxKeyguardRecevier.KnoxKeyguardHomeButton"

    invoke-direct/range {v31 .. v32}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v32, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v30 .. v32}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/16 v21, 0x1

    goto/16 :goto_2

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v30

    if-eqz v30, :cond_f

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z

    move-result v30

    if-eqz v30, :cond_f

    sget-boolean v30, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v30, :cond_e

    const-string v30, "SamsungWindowManager"

    const-string v31, "Home key is send to SideSync"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/16 v21, 0x1

    goto/16 :goto_2

    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v30

    if-eqz v30, :cond_10

    const-string v30, "SamsungWindowManager"

    const-string v31, "isMirrorLinkEnabled() true"

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    move/from16 v30, v0

    if-eqz v30, :cond_11

    const-string v30, "SamsungWindowManager"

    const-string v31, "carmode true"

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    goto/16 :goto_2

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_12

    const-string v30, "SamsungWindowManager"

    const-string v31, "Home key is blocked by policy"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    goto/16 :goto_2

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isVoIPRinging()Z

    move-result v19

    .local v19, "isVoIPRinging":Z
    const/16 v16, 0x0

    .local v16, "isAnyKeyMode":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "anykey_mode"

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_13

    const/16 v16, 0x0

    :goto_4
    if-eqz v19, :cond_15

    if-eqz v16, :cond_15

    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v29

    .local v29, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v29, :cond_14

    invoke-interface/range {v29 .. v29}, Landroid/os/IVoIPInterface;->answerVoIPCall()Z

    const-string v30, "SamsungWindowManager"

    const-string v31, "HOME; while ringing: Answer the VoIPcall!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    goto/16 :goto_2

    .end local v29    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_13
    const/16 v16, 0x1

    goto :goto_4

    .restart local v29    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_14
    const-string v30, "SamsungWindowManager"

    const-string v31, "Unable to find IVoIPInterface interface"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v16    # "isAnyKeyMode":Z
    .end local v19    # "isVoIPRinging":Z
    .end local v29    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_15
    :goto_5
    const/16 v21, 0x0

    goto/16 :goto_2

    .restart local v16    # "isAnyKeyMode":Z
    .restart local v19    # "isVoIPRinging":Z
    :catch_0
    move-exception v12

    .local v12, "ex":Landroid/os/RemoteException;
    const-string v30, "SamsungWindowManager"

    const-string v31, "RemoteException from getVoIPInterfaceService()"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .end local v12    # "ex":Landroid/os/RemoteException;
    .end local v16    # "isAnyKeyMode":Z
    .end local v19    # "isVoIPRinging":Z
    :cond_16
    const/16 v30, 0x52

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_18

    if-eqz v10, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSFinderLaunchable()Z

    move-result v30

    if-eqz v30, :cond_15

    const/16 v30, 0x7

    move/from16 v0, v26

    move/from16 v1, v30

    if-ne v0, v1, :cond_15

    if-nez v6, :cond_15

    const/16 v25, 0x0

    .local v25, "multiWindowDisabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTopFullscreenOpaqueWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v30

    if-eqz v30, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTopFullscreenOpaqueWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v24

    .local v24, "lpApp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v24, :cond_17

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x2

    if-eqz v30, :cond_17

    const/16 v25, 0x1

    .end local v24    # "lpApp":Landroid/view/WindowManager$LayoutParams;
    :cond_17
    if-nez v25, :cond_15

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->launchSFinderIfPossible()Z

    move-result v30

    if-eqz v30, :cond_15

    const/16 v21, 0x1

    goto/16 :goto_2

    .end local v25    # "multiWindowDisabled":Z
    :cond_18
    const/16 v30, 0xbb

    move/from16 v0, v20

    move/from16 v1, v30

    if-eq v0, v1, :cond_19

    const/16 v30, 0x105

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_20

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v30

    if-eqz v30, :cond_1a

    const/16 v21, 0x1

    goto/16 :goto_2

    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v30

    if-eqz v30, :cond_1c

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v30

    if-gtz v30, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/enterprise/SecurityPolicy;->isDodBannerVisible()Z

    move-result v30

    if-eqz v30, :cond_1c

    :cond_1b
    const-string v30, "SamsungWindowManager"

    const-string v31, "recent apps key disabled by either pwd policy OR DoD Banner"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    goto/16 :goto_2

    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isKnoxKeyguardShowing()Z

    move-result v30

    if-eqz v30, :cond_1d

    const/16 v21, 0x1

    goto/16 :goto_2

    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v30

    if-eqz v30, :cond_1e

    const-string v30, "SamsungWindowManager"

    const-string v31, "isMirrorLinkEnabled() true"

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    goto/16 :goto_2

    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1f

    const-string v30, "SamsungWindowManager"

    const-string v31, "carmode true"

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    goto/16 :goto_2

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_15

    const-string v30, "SamsungWindowManager"

    const-string v31, "Home key is blocked by policy"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    goto/16 :goto_2

    :cond_20
    const/16 v30, 0x131

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_22

    if-eqz v10, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v31, v0

    const-wide/16 v32, 0x3e8

    invoke-virtual/range {v30 .. v33}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_21
    const/16 v21, 0x1

    goto/16 :goto_2

    :cond_22
    const/16 v30, 0x132

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_24

    if-nez v10, :cond_23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    move/from16 v30, v0

    if-eqz v30, :cond_23

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->launchFingerPrint()V

    :cond_23
    const/16 v21, 0x1

    goto/16 :goto_2

    :cond_24
    const/16 v30, 0x115

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_2d

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v30

    if-eqz v30, :cond_15

    const-string v30, "service.media.dmb"

    invoke-static/range {v30 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "dmb_running":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "dmb_antenna_auto_start"

    const/16 v32, 0x0

    const/16 v33, -0x2

    invoke-static/range {v30 .. v33}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2a

    const/16 v17, 0x1

    .local v17, "isDmbAutoStarton":Z
    :goto_6
    const/4 v5, 0x0

    .local v5, "b_dmb_running":Z
    const/16 v18, 0x0

    .local v18, "isSecureKeyguard":Z
    if-eqz v7, :cond_25

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_25

    const-string v30, "1"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2b

    const/4 v5, 0x1

    :cond_25
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v18

    :cond_26
    const-string v30, "SamsungWindowManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "KEYCODE_DMB_ANT_OPEN dmb_running="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", isSecureKeyguard="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", isDmbAutoStarton="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v10, :cond_28

    if-nez v26, :cond_28

    :try_start_1
    const-string v4, "/efs/FactoryApp/tdmb_det_count"

    .local v4, "TDMB_DET_PATH":Ljava/lang/String;
    new-instance v30, Ljava/io/File;

    move-object/from16 v0, v30

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .local v28, "strDMBCount":Ljava/lang/String;
    const-string v30, "SamsungWindowManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "TDMB_DET_COUNT : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v28, :cond_2c

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_2c

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    const-wide/16 v32, 0x1

    add-long v8, v30, v32

    .local v8, "dmb_det_count":J
    const-wide/32 v30, 0xf423f

    cmp-long v30, v8, v30

    if-lez v30, :cond_27

    const-wide/16 v8, 0x1

    :cond_27
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v4    # "TDMB_DET_PATH":Ljava/lang/String;
    .end local v8    # "dmb_det_count":J
    .end local v28    # "strDMBCount":Ljava/lang/String;
    :cond_28
    :goto_8
    if-nez v10, :cond_15

    if-nez v26, :cond_15

    if-nez v5, :cond_15

    if-nez v18, :cond_15

    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v31, v0

    invoke-static/range {v30 .. v31}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v30

    if-nez v30, :cond_15

    const-string v30, "SamsungWindowManager"

    const-string v31, "KEYCODE_DMB_ANT_OPEN"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v30, Landroid/content/ComponentName;

    const-string v31, "com.sec.android.app.dmb"

    const-string v32, "com.sec.android.app.dmb.activity.DMBFullScreenView"

    invoke-direct/range {v30 .. v32}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v30 .. v30}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v14

    .local v14, "intent":Landroid/content/Intent;
    const-string v30, "com.sec.android.action.DMB_ANT_OPEN"

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v30, 0x10000000

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v30

    if-eqz v30, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v30, v0

    new-instance v31, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$7;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    invoke-virtual/range {v30 .. v31}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_29
    const/16 v21, 0x1

    goto/16 :goto_2

    .end local v5    # "b_dmb_running":Z
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v17    # "isDmbAutoStarton":Z
    .end local v18    # "isSecureKeyguard":Z
    :cond_2a
    const/16 v17, 0x0

    goto/16 :goto_6

    .restart local v5    # "b_dmb_running":Z
    .restart local v17    # "isDmbAutoStarton":Z
    .restart local v18    # "isSecureKeyguard":Z
    :cond_2b
    const-string v30, "0"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_25

    const/4 v5, 0x0

    goto/16 :goto_7

    .restart local v4    # "TDMB_DET_PATH":Ljava/lang/String;
    .restart local v28    # "strDMBCount":Ljava/lang/String;
    :cond_2c
    :try_start_2
    const-string v30, "0"

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_8

    .end local v4    # "TDMB_DET_PATH":Ljava/lang/String;
    .end local v28    # "strDMBCount":Ljava/lang/String;
    :catch_1
    move-exception v11

    .local v11, "e":Ljava/io/IOException;
    const-string v30, "SamsungWindowManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "IOException : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .end local v11    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v11

    .local v11, "e":Ljava/lang/NumberFormatException;
    const-string v30, "SamsungWindowManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "NumberFormatException : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .end local v5    # "b_dmb_running":Z
    .end local v7    # "dmb_running":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .end local v17    # "isDmbAutoStarton":Z
    .end local v18    # "isSecureKeyguard":Z
    :cond_2d
    const/16 v30, 0x116

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_2e

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v30

    if-eqz v30, :cond_15

    if-nez v10, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v31, v0

    invoke-static/range {v30 .. v31}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v30

    if-nez v30, :cond_15

    const-string v30, "SamsungWindowManager"

    const-string v31, "KEYCODE_DMB_ANT_CLOSE"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v30, "com.sec.android.action.DMB_ANT_CLOSE"

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    sget-object v31, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/16 v21, 0x1

    goto/16 :goto_2

    .end local v14    # "intent":Landroid/content/Intent;
    :cond_2e
    const/16 v30, 0x107

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_30

    if-eqz v10, :cond_15

    if-nez v22, :cond_15

    if-nez v26, :cond_15

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v27

    .local v27, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v27, :cond_2f

    invoke-interface/range {v27 .. v27}, Lcom/android/internal/statusbar/IStatusBarService;->toggleNotificationPanel()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v27    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_2f
    :goto_9
    const/16 v21, 0x1

    goto/16 :goto_2

    :catch_3
    move-exception v12

    .restart local v12    # "ex":Landroid/os/RemoteException;
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_9

    .end local v12    # "ex":Landroid/os/RemoteException;
    :cond_30
    const/16 v30, 0x144

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_32

    if-nez v10, :cond_31

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->launchSFinderIfPossible()Z

    :cond_31
    const/16 v21, 0x1

    goto/16 :goto_2

    :cond_32
    const/16 v30, 0x108

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_33

    if-nez v10, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v30

    if-eqz v30, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOn()Z

    move-result v30

    if-eqz v30, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isScreenCaptureEnabled()Z

    move-result v30

    if-eqz v30, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v30, v0

    new-instance v31, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$8;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    invoke-virtual/range {v30 .. v31}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    :cond_33
    const/16 v30, 0x141

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_35

    if-nez v10, :cond_34

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v30

    if-eqz v30, :cond_34

    if-nez v22, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/policy/impl/PhoneWindowManager;->closeMultiWindowTrayBar(Z)Z

    move-result v30

    if-nez v30, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleMultiWindowTray()Z

    :cond_34
    const/16 v21, 0x1

    goto/16 :goto_2

    :cond_35
    const/16 v30, 0x136

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_36

    const/16 v21, 0x1

    .local v21, "keyIntercept":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isHMTSupportAndConnected()Z

    move-result v30

    if-nez v30, :cond_1

    if-nez v10, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v30

    if-nez v30, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->launchingGamekey(Z)Z

    move-result v21

    goto/16 :goto_2

    .end local v21    # "keyIntercept":Z
    :cond_36
    const/16 v30, 0x1a

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v30

    if-eqz v30, :cond_15

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z

    move-result v30

    if-eqz v30, :cond_15

    const/16 v21, 0x1

    goto/16 :goto_2
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)Z
    .locals 12
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/high16 v9, 0x20000000

    and-int/2addr v9, p2

    if-eqz v9, :cond_2

    move v4, v7

    .local v4, "interactive":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_3

    move v2, v7

    .local v2, "down":Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .local v6, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    const/4 v5, 0x1

    .local v5, "isAllowed":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v9}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-direct {p0, v6, v8}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v5

    const/16 v9, 0x18

    if-ne v6, v9, :cond_0

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSealedModeReEnableVolumeUpKey:Z

    if-eqz v9, :cond_0

    const/4 v5, 0x1

    :cond_0
    :goto_2
    if-nez v5, :cond_6

    .end local v5    # "isAllowed":Z
    :cond_1
    :goto_3
    return v7

    .end local v2    # "down":Z
    .end local v4    # "interactive":Z
    .end local v6    # "keyCode":I
    :cond_2
    move v4, v8

    goto :goto_0

    .restart local v4    # "interactive":Z
    :cond_3
    move v2, v8

    goto :goto_1

    .restart local v2    # "down":Z
    .restart local v5    # "isAllowed":Z
    .restart local v6    # "keyCode":I
    :cond_4
    invoke-direct {p0, v6, v7}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v5

    goto :goto_2

    :cond_5
    invoke-direct {p0, v6, v8}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v5

    goto :goto_2

    .end local v5    # "isAllowed":Z
    :cond_6
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    invoke-virtual {v9, p1, p2}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptKeyCombinationBeforeQueueing(Landroid/view/KeyEvent;I)V

    invoke-virtual {p0, v6, v2, v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->processTorchlight(IZZ)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEnableAccessControl()Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x3

    if-eq v6, v9, :cond_7

    sget-boolean v8, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "SamsungWindowManager"

    const-string v9, "interceptKeyTq : Key was blocked by access control"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    const/16 v9, 0x1a

    if-ne v6, v9, :cond_8

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v9

    if-eqz v9, :cond_e

    const-string v8, "SamsungWindowManager"

    const-string v9, "isMirrorLinkEnabled() true"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    const/16 v9, 0x143

    if-ne v6, v9, :cond_a

    if-nez v2, :cond_1

    const-string v8, "SamsungWindowManager"

    const-string v9, "launch voice LPSD"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_9
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v10, 0x1388

    invoke-virtual {v8, v10, v11}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    const-string v1, "com.samsung.android.app.sounddetector.VOICE_WAKEUP"

    .local v1, "SOUND_DETECTOR_WAKEUP":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_3

    .end local v1    # "SOUND_DETECTOR_WAKEUP":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_a
    const/16 v9, 0x142

    if-ne v6, v9, :cond_e

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_c

    :cond_b
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v8, "com.sec.android.intent.action.VOICE_WAKEUP_KEY"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v10, "com.sec.android.permission.HANDLE_VOICE_WAKEUP_KEY"

    invoke-virtual {v8, v3, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_3

    .end local v3    # "intent":Landroid/content/Intent;
    :cond_c
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    if-eqz v8, :cond_d

    const-string v8, "SamsungWindowManager"

    const-string v9, "launch drivelink"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v8, "com.sec.android.automotive.drivelink.ACTION_VOICE_WAKEUP"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_3

    .end local v3    # "intent":Landroid/content/Intent;
    :cond_d
    const-string v8, "SamsungWindowManager"

    const-string v9, "launch voice command"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.alwaysmicon.alwaysmiconservice.ACTION_VOICE_WAKEUP"

    .local v0, "LAUNCH_SVOICE_WAKEUP":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_3

    .end local v0    # "LAUNCH_SVOICE_WAKEUP":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_f
    move v7, v8

    goto/16 :goto_3
.end method

.method public isActivitiesAvailable(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    const/high16 v2, 0x10000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAnyKeyMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, "isAnyKeyMode":Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anykey_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isBackKeyConsumed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .local v2, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    .local v1, "flags":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_0

    move v0, v3

    .local v0, "down":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    const/16 v5, 0x1a

    if-eq v2, v5, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v5

    if-nez v5, :cond_1

    :goto_1
    return v3

    .end local v0    # "down":Z
    :cond_0
    move v0, v4

    goto :goto_0

    .restart local v0    # "down":Z
    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public isBlockedPowerKeyByKeyTest(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    invoke-static {}, Landroid/os/FactoryTest;->needBlockingPowerKey()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.factory.app.ui.UIHardKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.OneJigBinary.testitem.KeyTest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.simplefunctiontest.KeypadTest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.factory.app.spcselftest.SpcSelfTestMain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.latin.tdfnotifier"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SamsungWindowManager"

    const-string v1, "Skip power key behavior by FactoryTest application"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCombinationKeyTriggered()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->isCombinationKeyTriggered()Z

    move-result v0

    return v0
.end method

.method public isComponentAvailable(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDockHomeEnabled(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .local v0, "resDeskHomeEnabled":Z
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsTablet:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    const-string v2, "android.intent.category.DESK_DOCK"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    :cond_0
    return v0
.end method

.method public isDoubleTapOnHomeEnabled()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDoubleTapOnPowerEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerDoubleBehavior:Z

    return v0
.end method

.method public isEasyModeEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    return v0
.end method

.method public isEnableAccessControl()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    return v0
.end method

.method public isHMTSupportAndConnected()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isKidsModeEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    return v0
.end method

.method public isLiveDemo()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsLiveDemo:Z

    return v0
.end method

.method public isMenuConsumed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mMenuConsumed:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mMenuConsumed:Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isOneTouchReportEnabled()Z
    .locals 17

    .prologue
    const-string v15, "go.police.report"

    .local v15, "oneTouchReportPackageName":Ljava/lang/String;
    const-string v14, "com.android.vending"

    .local v14, "oneTouchReportInstaller":Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "installerPackage":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "enabled":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .local v16, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "go.police.report"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "com.android.vending"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .end local v11    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v9, "content://go.police.provider.report"

    .local v9, "customerAgreementPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, "cr":Landroid/content/ContentResolver;
    if-eqz v1, :cond_3

    const-string v2, "content://go.police.provider.report"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "customer_agreement"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .local v8, "customerAgreementColumn":I
    const/4 v2, -0x1

    if-eq v8, v2, :cond_2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .local v10, "customerAgreementValue":I
    const/4 v2, 0x1

    if-ne v2, v10, :cond_4

    const/4 v12, 0x1

    .end local v8    # "customerAgreementColumn":I
    .end local v10    # "customerAgreementValue":I
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7    # "c":Landroid/database/Cursor;
    :cond_3
    :goto_2
    move v2, v12

    goto :goto_0

    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v8    # "customerAgreementColumn":I
    .restart local v10    # "customerAgreementValue":I
    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .end local v8    # "customerAgreementColumn":I
    .end local v10    # "customerAgreementValue":I
    :catch_1
    move-exception v11

    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method

.method public isPackageAvailable(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public isRecentConsumed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRecentConsumed:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRecentConsumed:Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isRingingOrOffhook()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    return v0
.end method

.method public isSFinderLaunchable()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->isLaunchable()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->access$900(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Z

    move-result v0

    return v0
.end method

.method public isSafetyAssuranceEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    return v0
.end method

.method public isShowOrHideRecentAppsAllowedByKNOX()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    .local v0, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .end local v0    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public isSideSyncPresentationRunning()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    return v0
.end method

.method public isTphoneRelaxMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSktTphoneEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "skt_phone20_relax_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isTripleTapOnHomeEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isVzwSetupWizardRunning(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SamsungWindowManager"

    const-string v2, "Home Triple Tap block when Verizon Setup Wizard Running"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTripleTapOnPowerEnabled()Z
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSafetyCare()Z

    move-result v0

    return v0
.end method

.method public isUseAccessControl()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    return v0
.end method

.method public isUserSetupComplete()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUserSetupComplete:Z

    return v0
.end method

.method public isUvsOrientationRequested()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string v1, "LGT"

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method isVoIPRinging()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, "isVoIPRinging":Z
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v2

    .local v2, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z

    move-result v1

    .end local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :goto_0
    return v1

    .restart local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_0
    const-string v3, "SamsungWindowManager"

    const-string v4, "Unable to find IVoIPInterface interface"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public launchFingerPrint()V
    .locals 4

    .prologue
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportFingerPrint()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SamsungWindowManager"

    const-string v2, "launch fingerprint"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "SamsungWindowManager"

    const-string v2, "No activity to handle fingerprint."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    const-string v1, "SamsungWindowManager"

    const-string v2, "Device is not supported, not launch fingerprint"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public launchHomeDuringVzwSetup()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isVzwSetupRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "persist.sys.enablehomekey"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .local v0, "isHomeKeyEnabled":Z
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Verizon Setup Wizard Running, launch home key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "isHomeKeyEnabled":Z
    :cond_0
    return v0
.end method

.method public launchSFinderIfPossible()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->launch()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->access$1000(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Z

    move-result v0

    return v0
.end method

.method public launchVoiceCommand()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    if-eqz v3, :cond_2

    const-string v3, "SamsungWindowManager"

    const-string v4, "launch voicecommand"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v4, "homekey"

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->closeSystemWindows(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v1

    .local v1, "isSecureLock":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string v4, "isSecure"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string v4, "AUTO_LISTEN"

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "isSecureLock":Z
    :goto_1
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    .restart local v1    # "isSecureLock":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "No activity to launch voicecommand."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "isSecureLock":Z
    :cond_2
    const-string v2, "SamsungWindowManager"

    const-string v3, "Device is not provisioned or not available voice command."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public launchingGamekey(Z)Z
    .locals 9
    .param p1, "keyguardOn"    # Z

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->endCallByGamekey()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    :cond_0
    :goto_0
    return v5

    :cond_1
    if-nez p1, :cond_0

    const-string v1, "com.sec.game.sga"

    .local v1, "gamePkg":Ljava/lang/String;
    const-string v4, "com.sec.android.app.samsungapps"

    .local v4, "samsungAppsPkg":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "samsungapps://ProductDetail/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "pkgUri":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->startSGA(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "SamsungWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not exist. so try to download the SGA apps."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :cond_4
    :goto_2
    if-eqz v2, :cond_6

    sget-boolean v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "SamsungWindowManager"

    const-string v7, "SGA is not installed. so you are moving to Samsung apps."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->downloadForSGA(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "SamsungWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not exist. so try to download the SGA apps."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    sget-boolean v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_7

    const-string v6, "SamsungWindowManager"

    const-string v7, "Samsung apps is not installed. so you are moving to Samsung apps download page."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->downloadForSamsungApps()V

    goto/16 :goto_0
.end method

.method public notifyCoverSwitchChanged(JZ)V
    .locals 5
    .param p1, "whenNanos"    # J
    .param p3, "coverOpen"    # Z

    .prologue
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoverNoteEnabled:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    if-nez p3, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.daynote"

    const-string v2, "com.sec.android.daynote.DayNoteActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public notifyPenSwitchChanged(JZ)V
    .locals 15
    .param p1, "whenNanos"    # J
    .param p3, "penInsert"    # Z

    .prologue
    if-eqz p3, :cond_1

    const/4 v4, 0x1

    .local v4, "newPenState":I
    :goto_0
    const/4 v5, 0x1

    .local v5, "playSound":Z
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOn()Z

    move-result v6

    .local v6, "screenOn":Z
    sget-boolean v9, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "SamsungWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "newPenState : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mPenState : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    if-ne v4, v9, :cond_2

    :goto_1
    return-void

    .end local v4    # "newPenState":I
    .end local v5    # "playSound":Z
    .end local v6    # "screenOn":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .restart local v4    # "newPenState":I
    .restart local v5    # "playSound":Z
    .restart local v6    # "screenOn":Z
    :cond_2
    iget v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    const/4 v5, 0x0

    :cond_3
    sget-boolean v9, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v9, :cond_4

    const-string v9, "SamsungWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "playSound : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", screenOn : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    const/16 v9, 0x2c

    new-array v2, v9, [B

    fill-array-data v2, :array_0

    .local v2, "attach_noti_ivt":[B
    const/16 v9, 0x12

    new-array v3, v9, [B

    fill-array-data v3, :array_1

    .local v3, "detach_noti_ivt":[B
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "pen_detachment_notification"

    const/4 v11, -0x2

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .local v7, "sound":Ljava/lang/String;
    if-eqz v7, :cond_8

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .local v8, "soundPath":[Ljava/lang/String;
    :goto_2
    if-eqz p3, :cond_9

    if-eqz v5, :cond_5

    if-eqz v7, :cond_5

    :try_start_0
    array-length v9, v8

    const/4 v10, 0x1

    if-le v9, v10, :cond_5

    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->playSound(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_5
    :goto_3
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v10}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v10

    invoke-virtual {v9, v2, v10}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    :cond_6
    :goto_4
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v10, "penInsert"

    move/from16 v0, p3

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v10, "isScreenOn"

    invoke-virtual {v9, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v10, "isKeyguardLocked"

    iget-object v11, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v11, "isBoot"

    const-wide/16 v12, 0x0

    cmp-long v9, p1, v12

    if-nez v9, :cond_d

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {v10, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-boolean v9, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v9, :cond_7

    const-string v9, "SamsungWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pen = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , broadcasted."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .end local v8    # "soundPath":[Ljava/lang/String;
    :cond_8
    const/4 v8, 0x0

    goto :goto_2

    .restart local v8    # "soundPath":[Ljava/lang/String;
    :cond_9
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v12, 0x4

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/PowerManager;->wakeUp(JI)V

    :goto_6
    if-eqz v5, :cond_a

    if-eqz v7, :cond_a

    :try_start_1
    array-length v9, v8

    const/4 v10, 0x1

    if-le v9, v10, :cond_a

    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->playSound(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_a
    :goto_7
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v10}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v10

    invoke-virtual {v9, v3, v10}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    goto/16 :goto_4

    :cond_b
    if-eqz v6, :cond_c

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_6

    :cond_c
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v12, 0x4

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/PowerManager;->wakeUp(JI)V

    goto :goto_6

    :cond_d
    const/4 v9, 0x0

    goto :goto_5

    :catch_0
    move-exception v9

    goto :goto_7

    :catch_1
    move-exception v9

    goto/16 :goto_3

    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x3t
        0x0t
        0x24t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0x0t
        0x15t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0xft
        -0x20t
        0x2t
        -0x1et
        0x0t
        -0x38t
        -0x1t
        0x20t
        0x1t
        0x0t
        0x0t
        0x5ft
        0x0t
        0x0t
        0x42t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x1et
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x3t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x71t
    .end array-data
.end method

.method public onSystemReady(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V
    .locals 2
    .param p1, "keyguardDelegate"    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasPermanentMenuKey:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSupportManualScreenPinning:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->onSystemReady()V

    return-void
.end method

.method public performCPUBoost()V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "WAKEUP_BOOSTER"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v1, "Device_wakeup"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    sget v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "WAKEUP_CORE_BOOSTER"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v6

    .local v6, "coreNumTable":[I
    if-eqz v6, :cond_2

    array-length v0, v6

    if-lez v0, :cond_2

    const/4 v0, 0x0

    aget v0, v6, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .end local v6    # "coreNumTable":[I
    :cond_2
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    :try_start_1
    const-string v0, "SamsungWindowManager"

    const-string v1, "mCoreNumLockHelper.acquire"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    sget v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "SamsungWindowManager"

    const-string v1, "mCpuBooster.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v0, "SamsungWindowManager"

    const-string v1, "mCoreNumLockHelper.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 12
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v8}, Landroid/os/SystemVibrator;->hasVibrator()Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_0
    const/4 v2, 0x0

    .local v2, "hapticsDisabledByPowerSavingMode":Z
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "haptic_feedback_enabled"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-nez v8, :cond_6

    const/4 v1, 0x1

    .local v1, "hapticsDisabled":Z
    :goto_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isPowerSavingMode()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "psm_switch"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "powersaving_switch"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    const/4 v6, 0x1

    .local v6, "powerSavingModeEnabled":Z
    :goto_2
    if-eqz v6, :cond_2

    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "psm_haptic_feedback"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    const/4 v7, 0x1

    .local v7, "turnOffHapticFeedbackEnabled":Z
    :goto_3
    if-eqz v7, :cond_2

    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "psm_auto_turn_on"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    const/4 v5, 0x1

    .local v5, "powerSavingAutoModeEnabled":Z
    :goto_4
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "isLowLevel"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    const/4 v3, 0x1

    .local v3, "isLowLevelBattery":Z
    :goto_5
    sget-boolean v8, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Check haptic disabled policy : powerSavingAutoModeEnabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isLowLevelBattery = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v5, :cond_d

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .end local v3    # "isLowLevelBattery":Z
    .end local v5    # "powerSavingAutoModeEnabled":Z
    .end local v7    # "turnOffHapticFeedbackEnabled":Z
    :cond_2
    :goto_6
    const/4 v0, 0x0

    .local v0, "emergencyModeEnabled":Z
    if-nez p3, :cond_e

    if-eqz v6, :cond_3

    if-nez v2, :cond_4

    :cond_3
    if-nez v1, :cond_4

    if-nez v0, :cond_4

    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v8

    if-eqz v8, :cond_e

    :cond_4
    sget-boolean v8, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v8, :cond_5

    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "haptic disabled by policy : hapticsDisabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " EmergencyModeEnabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " PowerSavingModeEnabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " TurnOffHapticFeedbackEnabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_0

    .end local v0    # "emergencyModeEnabled":Z
    .end local v1    # "hapticsDisabled":Z
    .end local v6    # "powerSavingModeEnabled":Z
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_1

    .restart local v1    # "hapticsDisabled":Z
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_8
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "psm_switch"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    const/4 v6, 0x1

    .restart local v6    # "powerSavingModeEnabled":Z
    :goto_7
    goto/16 :goto_2

    .end local v6    # "powerSavingModeEnabled":Z
    :cond_9
    const/4 v6, 0x0

    goto :goto_7

    .restart local v6    # "powerSavingModeEnabled":Z
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_3

    .restart local v7    # "turnOffHapticFeedbackEnabled":Z
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_4

    .restart local v5    # "powerSavingAutoModeEnabled":Z
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_5

    .restart local v3    # "isLowLevelBattery":Z
    :cond_d
    const/4 v2, 0x1

    goto :goto_6

    .end local v3    # "isLowLevelBattery":Z
    .end local v5    # "powerSavingAutoModeEnabled":Z
    .end local v7    # "turnOffHapticFeedbackEnabled":Z
    .restart local v0    # "emergencyModeEnabled":Z
    :cond_e
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v8

    if-eqz v8, :cond_10

    sparse-switch p2, :sswitch_data_0

    const/16 v8, 0x9

    if-lt p2, v8, :cond_f

    const/16 v8, 0x16

    if-gt p2, v8, :cond_f

    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v9, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v8, p2, v9}, Landroid/os/SystemVibrator;->vibrateImmVibe(ILandroid/os/SystemVibrator$MagnitudeType;)V

    const/4 v8, 0x1

    goto/16 :goto_0

    :sswitch_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    const/16 v9, 0x9

    sget-object v10, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v8, v9, v10}, Landroid/os/SystemVibrator;->vibrateImmVibe(ILandroid/os/SystemVibrator$MagnitudeType;)V

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_10
    const/4 v8, 0x1

    new-array v4, v8, [J

    .local v4, "pattern":[J
    sparse-switch p2, :sswitch_data_1

    const/4 v8, 0x0

    goto/16 :goto_0

    :sswitch_1
    const/4 v8, 0x0

    const-wide/16 v10, 0x32

    aput-wide v10, v4, v8

    :goto_8
    array-length v8, v4

    const/4 v9, 0x1

    if-ne v8, v9, :cond_11

    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    const/4 v9, 0x0

    aget-wide v10, v4, v9

    invoke-virtual {v8, v10, v11}, Landroid/os/SystemVibrator;->vibrate(J)V

    :goto_9
    const/4 v8, 0x1

    goto/16 :goto_0

    :sswitch_2
    const/4 v8, 0x0

    const-wide/16 v10, 0x32

    aput-wide v10, v4, v8

    goto :goto_8

    :sswitch_3
    const/4 v8, 0x0

    const-wide/16 v10, 0x64

    aput-wide v10, v4, v8

    goto :goto_8

    :sswitch_4
    const/4 v8, 0x0

    const-wide/16 v10, 0x1f4

    aput-wide v10, v4, v8

    goto :goto_8

    :sswitch_5
    const/4 v8, 0x0

    const-wide/16 v10, 0x5dc

    aput-wide v10, v4, v8

    goto :goto_8

    :sswitch_6
    const/4 v8, 0x0

    const-wide/16 v10, 0x32

    aput-wide v10, v4, v8

    goto :goto_8

    :cond_11
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    const/4 v9, -0x1

    invoke-virtual {v8, v4, v9}, Landroid/os/SystemVibrator;->vibrate([JI)V

    goto :goto_9

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x2710 -> :sswitch_0
        0x2711 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_1
        0x3 -> :sswitch_1
        0x9 -> :sswitch_2
        0xa -> :sswitch_3
        0xc -> :sswitch_4
        0xd -> :sswitch_5
        0xe -> :sswitch_6
        0x10 -> :sswitch_5
        0x11 -> :sswitch_5
        0x12 -> :sswitch_5
        0x2710 -> :sswitch_1
        0x2711 -> :sswitch_1
    .end sparse-switch
.end method

.method public performSystemKeyFeedback(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xe

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "SPC_Remote_Controller"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasHardMenuBackKey()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isHMTSupportAndConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v4, v3, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasQwertyKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v4, v3, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_1
        0xbb -> :sswitch_0
    .end sparse-switch
.end method

.method public processTorchlight(IZZ)V
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z
    .param p3, "interactive"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->TorchModeFlashSet(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public sendBroadcastForAccessibility()V
    .locals 4

    .prologue
    const-string v1, "SamsungWindowManager"

    const-string v2, "sendBroadcastForAccessibility() is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.HOME_TRIPLE_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "com.samsung.permission.HOME_TRIPLE_CLICK"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public sendBroadcastForSafetyAssurance()V
    .locals 3

    .prologue
    const-string v1, "SamsungWindowManager"

    const-string v2, "sendBroadcastForSafetyAssurance() is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSafetyAssuranceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SAFETY_MESSAGE_TRIGGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "safetyMessage":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v1, "SamsungWindowManager"

    const-string v2, "Safety mesage broadcasted"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "safetyMessage":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System key send to sidesync.source keycode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.sidesync.source"

    const-string v2, "com.sec.android.sidesync.source.WimpService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.android.intent.action.SYSTEM_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "KEYCODE"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ACTION"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v1, 0x1

    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    sput p1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCurrentUser:I

    return-void
.end method

.method public setFingerPrintPending()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    return-void
.end method

.method public setRotationLw(I)V
    .locals 6
    .param p1, "rotation"    # I

    .prologue
    const-string v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRotationLw() : rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateWacomOffset(I)V

    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "ROTATION_BOOSTER"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;

    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;

    const-string v1, "PhoneWindowManager_rotation"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;

    sget v1, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "ROTATION_BOOSTER"

    invoke-virtual {v0, v1, v2}, Landroid/os/DVFSHelper;->onWindowRotationEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setSealedModeReEnableVolumeUpKey(Z)V
    .locals 0
    .param p1, "sealedModeReEnableVolumeUpKey"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSealedModeReEnableVolumeUpKey:Z

    return-void
.end method

.method public showBottomKeyPanel(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.easybottompanel"

    const-string v4, "com.sec.android.easybottompanel.EasyBottomPanelService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.action.EASYBOTTOMPANEL_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    const-string v3, "Show"

    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v3, "Hide"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SamsungWindowManager"

    const-string v4, "Exception showBottomKeyPanelState: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public showRecentApps(Z)Z
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isShowOrHideRecentAppsAllowedByKNOX()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public systemBooted()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    if-nez v2, :cond_0

    :try_start_0
    const-string v2, "kioskmode"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v1

    .local v1, "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/app/enterprise/kioskmode/IKioskMode;->getBlockedHwKeysCache()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    const-string v2, "SamsungWindowManager"

    const-string v3, "Blocked hw keys cache is being refreshed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "Exception while getting kiosk mode service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public takeScreenshot(I)V
    .locals 18
    .param p1, "event"    # I

    .prologue
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isScreenCaptureEnabled()Z

    move-result v13

    if-nez v13, :cond_1

    sget-boolean v13, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v13, :cond_0

    const-string v13, "SamsungWindowManager"

    const-string v14, "can not takescreenshot"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    sget-boolean v13, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v13, :cond_2

    const-string v13, "SamsungWindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "takeScreenshot : event = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mPerformEditAfterScreenCapture = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    if-eqz v13, :cond_4

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .local v7, "intent":Landroid/content/Intent;
    const/high16 v13, 0x10000000

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v7, v15}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    :cond_3
    :goto_1
    monitor-exit v14

    goto :goto_0

    .end local v7    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v13

    const/4 v15, 0x3

    if-lt v13, v15, :cond_5

    monitor-exit v14

    goto :goto_0

    :cond_5
    new-instance v2, Landroid/content/ComponentName;

    const-string v13, "com.android.systemui"

    const-string v15, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v2, v13, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v2, "cn":Landroid/content/ComponentName;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .restart local v7    # "intent":Landroid/content/Intent;
    invoke-virtual {v7, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V

    .local v3, "conn":Landroid/content/ServiceConnection;
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .local v4, "curr":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v12

    .local v12, "versionInfo":Landroid/os/Bundle;
    const-string v13, "2.0"

    const-string v15, "version"

    invoke-virtual {v12, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v15, "persona"

    invoke-virtual {v13, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PersonaManager;

    .local v9, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v9}, Landroid/os/PersonaManager;->getForegroundUser()I

    move-result v6

    .local v6, "currUser":I
    const-string v13, "SamsungWindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "screenshot: current active user is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v15, "user"

    invoke-virtual {v13, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserManager;

    .local v11, "um":Landroid/os/UserManager;
    invoke-virtual {v11, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .local v5, "currInfo":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v13

    if-eqz v13, :cond_6

    new-instance v4, Landroid/os/UserHandle;

    .end local v4    # "curr":Landroid/os/UserHandle;
    invoke-direct {v4, v6}, Landroid/os/UserHandle;-><init>(I)V

    .restart local v4    # "curr":Landroid/os/UserHandle;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v8

    .local v8, "isKioskContainer":Z
    if-eqz v8, :cond_7

    if-nez v6, :cond_7

    monitor-exit v14

    goto/16 :goto_0

    .end local v5    # "currInfo":Landroid/content/pm/UserInfo;
    .end local v6    # "currUser":I
    .end local v8    # "isKioskContainer":Z
    .end local v9    # "pm":Landroid/os/PersonaManager;
    .end local v11    # "um":Landroid/os/UserManager;
    :cond_7
    const-string v13, "SamsungWindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " screenshot is taken for user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    invoke-virtual {v13, v7, v3, v15, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v13

    if-eqz v13, :cond_3

    new-instance v10, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/content/ServiceConnection;)V

    .local v10, "runnable":Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v13, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v16, 0x2710

    move-wide/from16 v0, v16

    invoke-virtual {v13, v10, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public updateBottomKeyPanelState(ZZ)V
    .locals 5
    .param p1, "init"    # Z
    .param p2, "maximize"    # Z

    .prologue
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.easybottompanel"

    const-string v4, "com.sec.android.easybottompanel.EasyBottomPanelService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.action.EASYBOTTOMPANEL_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    const-string v3, "Softkey"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_0
    if-eqz p2, :cond_1

    const-string v3, "Maximize"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SamsungWindowManager"

    const-string v4, "Exception updateEasyBottomPanelState: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :try_start_1
    const-string v3, "Minimize"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public updateEasyOneHandState(ZZ)V
    .locals 7
    .param p1, "isLeftHand"    # Z
    .param p2, "isShow"    # Z

    .prologue
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCoverStateSwitch()Z

    move-result v3

    .local v3, "isCoverOpen":Z
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateEasyOneHandState() isLeftHand="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isShow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isCoverOpen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.easyonehand"

    const-string v5, "com.sec.android.easyonehand.EasyOneHandService"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.action.EASYONEHAND_SERVICE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .local v2, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_1

    const-string v4, "LeftHandMode"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "SamsungWindowManager"

    const-string v5, "Exception updateEasyOneHandService: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :try_start_1
    const-string v4, "ForceHide"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public updateSettings()V
    .locals 26

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .local v18, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_0
    const-string v21, "double_tab_launch"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .local v5, "doubleTapOnHomeBehavior":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    move/from16 v21, v0

    if-eqz v21, :cond_10

    .end local v5    # "doubleTapOnHomeBehavior":I
    :goto_0
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v23, "direct_access"

    const/16 v24, 0x0

    const/16 v25, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v19

    .local v19, "tripleTapOnHomeBehavior":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    :cond_1
    const-string v21, "lcd_curtain"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    const-string v21, "accessibility_enabled"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    const/16 v21, 0x1

    :goto_1
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerDoubleBehavior:Z

    const-string v21, "edit_after_screen_capture"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_12

    const/16 v17, 0x1

    .local v17, "performEditAfterScreenCapture":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    :cond_2
    const-string v21, "send_emergency_message"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_13

    const/4 v13, 0x1

    .local v13, "isSafetyAssuranceEnabled":Z
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v13, :cond_3

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    :cond_3
    const-string v21, "access_control_use"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_14

    const/16 v16, 0x1

    .local v16, "isUseAccessControl":Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v16

    if-eq v0, v1, :cond_4

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    :cond_4
    const-string v21, "access_control_enabled"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_15

    const/4 v10, 0x1

    .local v10, "isEnabledAccessControl":Z
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v10, :cond_5

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    :cond_5
    const-string v21, "kids_home_mode"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_16

    const/4 v11, 0x1

    .local v11, "isKidsMode":Z
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v11, :cond_6

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    :cond_6
    const-string v21, "easy_mode_switch"

    const/16 v23, 0x1

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-nez v21, :cond_17

    const/4 v9, 0x1

    .local v9, "isEasyMode":Z
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v9, :cond_7

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    :cond_7
    const-string v21, "desk_home_screen_display"

    const/16 v23, 0x1

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_18

    const/4 v8, 0x1

    .local v8, "isDockHomeEnabled":Z
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v8, :cond_8

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    :cond_8
    const-string v21, "torchlight_enable"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_19

    const/4 v15, 0x1

    .local v15, "isTorchlightEnabled":Z
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v15, :cond_9

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    :cond_9
    const-string v21, "car_mode_on"

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_1a

    const/4 v6, 0x1

    .local v6, "isCheckDrivingMode":Z
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v6, :cond_a

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    :cond_a
    const-string v21, "car_mode_blocking_system_key"

    const/16 v23, 0x0

    const/16 v24, -0x3

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_1b

    const/4 v4, 0x1

    .local v4, "blockKeyForDrivingMode":Z
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v4, :cond_b

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    :cond_b
    const-string v21, "sidesync_source_presentation"

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_1c

    const/4 v14, 0x1

    .local v14, "isSideSyncSourcePresentationActived":Z
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v14, :cond_c

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    :cond_c
    const-string v21, "user_setup_complete"

    const/16 v23, 0x1

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_1d

    const/16 v20, 0x1

    .local v20, "userSetupComplete":Z
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUserSetupComplete:Z

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_d

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUserSetupComplete:Z

    :cond_d
    const-string v21, "pen_attach_detach_vibration"

    const/16 v23, 0x1

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_1e

    const/4 v12, 0x1

    .local v12, "isPenNotifyVibrationChecked":Z
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v12, :cond_e

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f

    const-string v21, "cover_note"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_1f

    const/4 v7, 0x1

    .local v7, "isCoverNote":Z
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoverNoteEnabled:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v7, :cond_f

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoverNoteEnabled:Z

    .end local v7    # "isCoverNote":Z
    :cond_f
    monitor-exit v22

    return-void

    .end local v4    # "blockKeyForDrivingMode":Z
    .end local v6    # "isCheckDrivingMode":Z
    .end local v8    # "isDockHomeEnabled":Z
    .end local v9    # "isEasyMode":Z
    .end local v10    # "isEnabledAccessControl":Z
    .end local v11    # "isKidsMode":Z
    .end local v12    # "isPenNotifyVibrationChecked":Z
    .end local v13    # "isSafetyAssuranceEnabled":Z
    .end local v14    # "isSideSyncSourcePresentationActived":Z
    .end local v15    # "isTorchlightEnabled":Z
    .end local v16    # "isUseAccessControl":Z
    .end local v17    # "performEditAfterScreenCapture":Z
    .end local v19    # "tripleTapOnHomeBehavior":I
    .end local v20    # "userSetupComplete":Z
    .restart local v5    # "doubleTapOnHomeBehavior":I
    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_0

    .end local v5    # "doubleTapOnHomeBehavior":I
    .restart local v19    # "tripleTapOnHomeBehavior":I
    :cond_11
    const/16 v21, 0x0

    goto/16 :goto_1

    :cond_12
    const/16 v17, 0x0

    goto/16 :goto_2

    .restart local v17    # "performEditAfterScreenCapture":Z
    :cond_13
    const/4 v13, 0x0

    goto/16 :goto_3

    .restart local v13    # "isSafetyAssuranceEnabled":Z
    :cond_14
    const/16 v16, 0x0

    goto/16 :goto_4

    .restart local v16    # "isUseAccessControl":Z
    :cond_15
    const/4 v10, 0x0

    goto/16 :goto_5

    .restart local v10    # "isEnabledAccessControl":Z
    :cond_16
    const/4 v11, 0x0

    goto/16 :goto_6

    .restart local v11    # "isKidsMode":Z
    :cond_17
    const/4 v9, 0x0

    goto/16 :goto_7

    .restart local v9    # "isEasyMode":Z
    :cond_18
    const/4 v8, 0x0

    goto/16 :goto_8

    .restart local v8    # "isDockHomeEnabled":Z
    :cond_19
    const/4 v15, 0x0

    goto/16 :goto_9

    .restart local v15    # "isTorchlightEnabled":Z
    :cond_1a
    const/4 v6, 0x0

    goto/16 :goto_a

    .restart local v6    # "isCheckDrivingMode":Z
    :cond_1b
    const/4 v4, 0x0

    goto/16 :goto_b

    .restart local v4    # "blockKeyForDrivingMode":Z
    :cond_1c
    const/4 v14, 0x0

    goto/16 :goto_c

    .restart local v14    # "isSideSyncSourcePresentationActived":Z
    :cond_1d
    const/16 v20, 0x0

    goto/16 :goto_d

    .restart local v20    # "userSetupComplete":Z
    :cond_1e
    const/4 v12, 0x0

    goto :goto_e

    .restart local v12    # "isPenNotifyVibrationChecked":Z
    :cond_1f
    const/4 v7, 0x0

    goto :goto_f

    .end local v4    # "blockKeyForDrivingMode":Z
    .end local v6    # "isCheckDrivingMode":Z
    .end local v8    # "isDockHomeEnabled":Z
    .end local v9    # "isEasyMode":Z
    .end local v10    # "isEnabledAccessControl":Z
    .end local v11    # "isKidsMode":Z
    .end local v12    # "isPenNotifyVibrationChecked":Z
    .end local v13    # "isSafetyAssuranceEnabled":Z
    .end local v14    # "isSideSyncSourcePresentationActived":Z
    .end local v15    # "isTorchlightEnabled":Z
    .end local v16    # "isUseAccessControl":Z
    .end local v17    # "performEditAfterScreenCapture":Z
    .end local v19    # "tripleTapOnHomeBehavior":I
    .end local v20    # "userSetupComplete":Z
    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v21
.end method

.method public updateSideKeyPanelState(Z)V
    .locals 5
    .param p1, "isShow"    # Z

    .prologue
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.easysidepanel"

    const-string v4, "com.sec.android.easysidepanel.EasySidePanelService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.action.EASYSIDEPANEL_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    const-string v3, "Softkey"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v3, "ForceHide"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SamsungWindowManager"

    const-string v4, "Exception updateEasySidePanelState: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
