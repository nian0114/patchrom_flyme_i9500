.class public Lcom/android/internal/policy/impl/sec/CombinationKeyManager;
.super Ljava/lang/Object;
.source "CombinationKeyManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field private static final QUICKSHOT_CHORD_DEBOUNDCE_DELAY_MLLIS:J = 0x15eL

.field private static final QUICKSHOT_CHORD_KEY_INTERVEAL_TIME_MILLIS:J = 0x96L

.field private static final SAFETYASSURANCE_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0xfaL

.field private static final SAFE_DEBUG:Z

.field static final SCREENCAPTURE_ORIGINAL:I = 0x1

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "CombinationKeyManager"


# instance fields
.field private final mAccessControlChordLongPress:Ljava/lang/Runnable;

.field private mBackKeyConsumed:Z

.field private mBackKeyTime:J

.field private mBackKeyTriggered:Z

.field private mCameraKeyConsumed:Z

.field private mCameraKeyTime:J

.field private mCameraKeyTriggered:Z

.field private mCameraRecordKeyConsumed:Z

.field private mCameraRecordKeyTime:J

.field private mCameraRecordKeyTriggered:Z

.field mContext:Landroid/content/Context;

.field private final mFactoryTestChordLongPress:Ljava/lang/Runnable;

.field private mFlashKeyConsumed:Z

.field private mFlashKeyTime:J

.field private mFlashKeyTriggered:Z

.field mHandler:Landroid/os/Handler;

.field private mHasPermanentMenuKey:Z

.field private mHomeKeyConsumed:Z

.field private mHomeKeyTime:J

.field private mHomeKeyTriggered:Z

.field private mIsSupportManualScreenPinning:Z

.field private mMenuConsumed:Z

.field private mMenuTime:J

.field private mMenuTriggered:Z

.field mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mPowerKeyConsumed:Z

.field private mPowerKeyTime:J

.field private mPowerKeyTriggered:Z

.field mPowerManager:Landroid/os/PowerManager;

.field private final mQuickShotChordLongPress:Ljava/lang/Runnable;

.field private mRecentKeyConsumed:Z

.field private mRecentKeyTime:J

.field private mRecentKeyTriggered:Z

.field mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

.field private final mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

.field mSafetyAssuranceTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

.field mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mScreenshotChordLongPress:Ljava/lang/Runnable;

.field private final mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

.field private mVolumeDownKeyConsumed:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeUpKeyConsumed:Z

.field private mVolumeUpKeyTime:J

.field private mVolumeUpKeyTriggered:Z

.field private mWiFiProtectedSetupKeyConsumed:Z

.field private mWiFiProtectedSetupKeyTime:J

.field private mWiFiProtectedSetupKeyTriggered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 73
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p3, "samsungPhoneWindowManager"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    const/4 v2, 0x1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    .line 573
    new-instance v0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$1;-><init>(Lcom/android/internal/policy/impl/sec/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    .line 605
    new-instance v0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$2;-><init>(Lcom/android/internal/policy/impl/sec/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    .line 634
    new-instance v0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$3;-><init>(Lcom/android/internal/policy/impl/sec/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    .line 690
    new-instance v0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$4;-><init>(Lcom/android/internal/policy/impl/sec/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFactoryTestChordLongPress:Ljava/lang/Runnable;

    .line 725
    new-instance v0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$5;-><init>(Lcom/android/internal/policy/impl/sec/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mQuickShotChordLongPress:Ljava/lang/Runnable;

    .line 772
    new-instance v0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$6;-><init>(Lcom/android/internal/policy/impl/sec/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

    .line 136
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 138
    iput-object p3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .line 139
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerManager:Landroid/os/PowerManager;

    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mSafetyAssuranceWakeLock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mSafetyAssuranceTimeoutWakeLock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSafetyAssuranceTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 145
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->SAFE_DEBUG:Z

    return v0
.end method

.method private cancelPendingChordAction()V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 518
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 519
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 520
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFactoryTestChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 521
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mQuickShotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 522
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 523
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 524
    :cond_0
    return-void
.end method

.method private getChordLongPressDelay()J
    .locals 2

    .prologue
    .line 527
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method private interceptAccessControlChord()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    const/4 v4, 0x1

    .line 582
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isUseAccessControl()Z

    move-result v2

    if-nez v2, :cond_1

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-nez v2, :cond_2

    .line 584
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 585
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 587
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyConsumed:Z

    .line 588
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    .line 589
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    .line 590
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 592
    .end local v0    # "now":J
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    .line 593
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 594
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraRecordKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 596
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyConsumed:Z

    .line 597
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraRecordKeyConsumed:Z

    .line 598
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 599
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    .line 600
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private interceptFactoryTestChord()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    const/4 v4, 0x1

    .line 676
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-nez v2, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 677
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    .line 678
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 679
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 681
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyConsumed:Z

    .line 682
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyConsumed:Z

    .line 683
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 684
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    .line 685
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFactoryTestChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private interceptQuickShotChord()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x15e

    const/4 v6, 0x1

    .line 706
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportCameraQuickShot()Z

    move-result v2

    if-nez v2, :cond_1

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 708
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-nez v2, :cond_0

    .line 709
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 710
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTime:J

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraKeyTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x96

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 719
    :cond_2
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CombinationKeyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptQuickShotChord - fail : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mVolumeUpKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mCameraKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 710
    :cond_3
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 713
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "CombinationKeyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptQuickShotChord - success and waiting long press : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mVolumeUpKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mCameraKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_4
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraKeyConsumed:Z

    .line 715
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyConsumed:Z

    .line 716
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mQuickShotChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private interceptSafetyAssuranceChord()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 618
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSafetyAssuranceEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-nez v0, :cond_0

    .line 622
    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTime:J

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 623
    const-string v0, "CombinationKeyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interceptSafetyAssuranceChord - success and waiting long press : mVolumeDownKeyTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mVolumeUpKeyTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    .line 625
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyConsumed:Z

    .line 626
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 627
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    .line 628
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 629
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private interceptScreenshotChord()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    const/4 v4, 0x1

    .line 532
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 535
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_2

    .line 536
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 537
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 539
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    .line 540
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyConsumed:Z

    .line 541
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 542
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    .line 543
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 546
    .end local v0    # "now":J
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFlashKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    .line 547
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 548
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFlashKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 550
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFlashKeyConsumed:Z

    .line 551
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyConsumed:Z

    .line 552
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 553
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    .line 554
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 558
    .end local v0    # "now":J
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_0

    .line 559
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 560
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 562
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyConsumed:Z

    .line 563
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyConsumed:Z

    .line 564
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 565
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    .line 566
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private interceptStopLockTaskModeChord()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x96

    const/4 v6, 0x1

    .line 737
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mIsSupportManualScreenPinning:Z

    if-eqz v2, :cond_0

    .line 738
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHasPermanentMenuKey:Z

    if-eqz v2, :cond_3

    .line 740
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuTriggered:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyTriggered:Z

    if-eqz v2, :cond_3

    .line 741
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 742
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 744
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuConsumed:Z

    .line 745
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyConsumed:Z

    .line 746
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    .line 747
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 751
    :cond_2
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "CombinationKeyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptStopLockTaskModeChord - fail : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mMenuKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mBackKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    .end local v0    # "now":J
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mRecentKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyTriggered:Z

    if-eqz v2, :cond_0

    .line 756
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 757
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mRecentKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    .line 759
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mRecentKeyConsumed:Z

    .line 760
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyConsumed:Z

    .line 761
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    .line 762
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 766
    :cond_4
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CombinationKeyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptStopLockTaskModeChord - fail : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mHomeKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mBackKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 787
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPowerKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 788
    const-string v0, " mHomeKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 789
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mVolumeDownKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 790
    const-string v0, " mVolumeUpKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 791
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCameraKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 792
    const-string v0, " mCameraRecordKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 793
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFlashKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFlashKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 794
    const-string v0, " mWiFiProtectedSetupKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 795
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBackKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 796
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRecentKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mRecentKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 797
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mMenuKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 798
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHasPermanentMenuKey="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHasPermanentMenuKey:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 799
    return-void
.end method

.method public getTimeoutTimeOfKeyCombination(I)J
    .locals 6
    .param p1, "flags"    # I

    .prologue
    const-wide/16 v0, 0x0

    const-wide/16 v4, 0x96

    .line 377
    and-int/lit16 v2, p1, 0x400

    if-eqz v2, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-wide v0

    .line 378
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 379
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-nez v2, :cond_2

    .line 380
    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTime:J

    add-long/2addr v0, v4

    goto :goto_0

    .line 381
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFlashKeyTriggered:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-nez v2, :cond_3

    .line 382
    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFlashKeyTime:J

    add-long/2addr v0, v4

    goto :goto_0

    .line 385
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSafetyAssuranceEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 387
    :cond_4
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_5

    .line 388
    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTime:J

    add-long/2addr v0, v4

    goto :goto_0

    .line 391
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isUseAccessControl()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 392
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-nez v2, :cond_6

    .line 393
    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTime:J

    add-long/2addr v0, v4

    goto :goto_0

    .line 394
    :cond_6
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-nez v2, :cond_7

    .line 395
    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraRecordKeyTime:J

    add-long/2addr v0, v4

    goto :goto_0

    .line 398
    :cond_7
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-nez v2, :cond_0

    .line 400
    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTime:J

    add-long/2addr v0, v4

    goto :goto_0
.end method

.method public interceptKeyCombinationBeforeQueueing(Landroid/view/KeyEvent;I)V
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 155
    const/high16 v6, 0x20000000

    and-int/2addr v6, p2

    if-eqz v6, :cond_1

    move v2, v4

    .line 156
    .local v2, "interactive":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_2

    move v1, v4

    .line 157
    .local v1, "down":Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    .line 158
    .local v0, "canceled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 160
    .local v3, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_3

    .line 374
    :cond_0
    :goto_2
    return-void

    .end local v0    # "canceled":Z
    .end local v1    # "down":Z
    .end local v2    # "interactive":Z
    .end local v3    # "keyCode":I
    :cond_1
    move v2, v5

    .line 155
    goto :goto_0

    .restart local v2    # "interactive":Z
    :cond_2
    move v1, v5

    .line 156
    goto :goto_1

    .line 161
    .restart local v0    # "canceled":Z
    .restart local v1    # "down":Z
    .restart local v3    # "keyCode":I
    :cond_3
    sparse-switch v3, :sswitch_data_0

    goto :goto_2

    .line 224
    :sswitch_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v6

    if-nez v6, :cond_0

    .line 225
    if-eqz v1, :cond_9

    .line 226
    if-eqz v2, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-nez v6, :cond_0

    .line 227
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    .line 228
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyTime:J

    .line 229
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyConsumed:Z

    .line 230
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 231
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptScreenshotChord()V

    .line 232
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptAccessControlChord()V

    goto :goto_2

    .line 164
    :sswitch_1
    if-eqz v1, :cond_5

    .line 165
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-nez v6, :cond_0

    .line 166
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    .line 167
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTime:J

    .line 168
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    .line 169
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 170
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptSafetyAssuranceChord()V

    .line 171
    if-eqz v2, :cond_4

    .line 172
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptScreenshotChord()V

    .line 173
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptAccessControlChord()V

    goto :goto_2

    .line 175
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptQuickShotChord()V

    goto :goto_2

    .line 179
    :cond_5
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    .line 180
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto :goto_2

    .line 186
    :sswitch_2
    if-eqz v1, :cond_6

    .line 187
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-nez v6, :cond_0

    .line 188
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    .line 189
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTime:J

    .line 190
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyConsumed:Z

    .line 191
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 192
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptSafetyAssuranceChord()V

    .line 193
    if-nez v2, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptQuickShotChord()V

    goto :goto_2

    .line 198
    :cond_6
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    .line 199
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto :goto_2

    .line 204
    :sswitch_3
    if-eqz v1, :cond_8

    .line 205
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-nez v6, :cond_0

    .line 206
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    .line 207
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTime:J

    .line 208
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyConsumed:Z

    .line 209
    if-eqz v2, :cond_7

    .line 210
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptScreenshotChord()V

    .line 211
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptAccessControlChord()V

    .line 212
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptFactoryTestChord()V

    goto/16 :goto_2

    .line 214
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptQuickShotChord()V

    goto/16 :goto_2

    .line 218
    :cond_8
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    .line 219
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 235
    :cond_9
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    .line 236
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 242
    :sswitch_4
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 244
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 245
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "CombinationKeyManager"

    const-string v5, "Camera key is blocked by policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 248
    :cond_a
    if-eqz v1, :cond_b

    .line 249
    if-nez v2, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraKeyTriggered:Z

    if-nez v6, :cond_0

    .line 250
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraKeyTriggered:Z

    .line 251
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraKeyTime:J

    .line 252
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraKeyConsumed:Z

    .line 253
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 254
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptQuickShotChord()V

    goto/16 :goto_2

    .line 257
    :cond_b
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraKeyTriggered:Z

    .line 258
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 264
    :sswitch_5
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 265
    if-eqz v1, :cond_c

    .line 266
    if-eqz v2, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFlashKeyTriggered:Z

    if-nez v6, :cond_0

    .line 267
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFlashKeyTriggered:Z

    .line 268
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFlashKeyTime:J

    .line 269
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFlashKeyConsumed:Z

    .line 270
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 271
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptScreenshotChord()V

    goto/16 :goto_2

    .line 274
    :cond_c
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFlashKeyTriggered:Z

    .line 275
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 281
    :sswitch_6
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 282
    if-eqz v1, :cond_d

    .line 283
    if-eqz v2, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    if-nez v6, :cond_0

    .line 284
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    .line 285
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraRecordKeyTime:J

    .line 286
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraRecordKeyConsumed:Z

    .line 287
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 288
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptAccessControlChord()V

    goto/16 :goto_2

    .line 291
    :cond_d
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    .line 292
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 298
    :sswitch_7
    if-eqz v1, :cond_e

    .line 299
    if-eqz v2, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-nez v6, :cond_0

    .line 300
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    .line 301
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTime:J

    .line 302
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyConsumed:Z

    .line 303
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptFactoryTestChord()V

    goto/16 :goto_2

    .line 306
    :cond_e
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    .line 307
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 312
    :sswitch_8
    if-eqz v1, :cond_f

    .line 313
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 314
    if-eqz v2, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyTriggered:Z

    if-nez v6, :cond_0

    .line 315
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyTriggered:Z

    .line 316
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyTime:J

    .line 317
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyConsumed:Z

    .line 319
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mIsSupportManualScreenPinning:Z

    if-eqz v4, :cond_0

    .line 320
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptStopLockTaskModeChord()V

    goto/16 :goto_2

    .line 325
    :cond_f
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyTriggered:Z

    if-eqz v4, :cond_0

    .line 326
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyTriggered:Z

    .line 327
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 333
    :sswitch_9
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mIsSupportManualScreenPinning:Z

    if-eqz v6, :cond_0

    .line 334
    if-eqz v1, :cond_10

    .line 335
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 336
    if-eqz v2, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mRecentKeyTriggered:Z

    if-nez v6, :cond_0

    .line 337
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mRecentKeyTriggered:Z

    .line 338
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mRecentKeyTime:J

    .line 339
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mRecentKeyConsumed:Z

    .line 340
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptStopLockTaskModeChord()V

    goto/16 :goto_2

    .line 343
    :cond_10
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mRecentKeyTriggered:Z

    if-eqz v4, :cond_0

    .line 344
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mRecentKeyTriggered:Z

    .line 345
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 353
    :sswitch_a
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mIsSupportManualScreenPinning:Z

    if-eqz v6, :cond_0

    .line 354
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHasPermanentMenuKey:Z

    if-eqz v6, :cond_0

    .line 355
    if-eqz v1, :cond_11

    .line 356
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 357
    if-eqz v2, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuTriggered:Z

    if-nez v6, :cond_0

    .line 358
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuTriggered:Z

    .line 359
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuTime:J

    .line 360
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuConsumed:Z

    .line 361
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptStopLockTaskModeChord()V

    goto/16 :goto_2

    .line 364
    :cond_11
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuTriggered:Z

    if-eqz v4, :cond_0

    .line 365
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuTriggered:Z

    .line 366
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 161
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_8
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
        0x1a -> :sswitch_3
        0x1b -> :sswitch_4
        0x52 -> :sswitch_a
        0xa8 -> :sswitch_2
        0xa9 -> :sswitch_1
        0xbb -> :sswitch_9
        0x11a -> :sswitch_6
        0x120 -> :sswitch_5
        0x12e -> :sswitch_7
    .end sparse-switch
.end method

.method public isCombinationKeyTriggered()Z
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFlashKeyTriggered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-eqz v0, :cond_2

    .line 510
    :cond_1
    const/4 v0, 0x1

    .line 512
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConsumedKeyCombination(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 407
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 408
    .local v1, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 410
    .local v0, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_2

    move v2, v3

    .line 503
    :cond_0
    :goto_1
    return v2

    .end local v0    # "down":Z
    :cond_1
    move v0, v3

    .line 408
    goto :goto_0

    .line 411
    .restart local v0    # "down":Z
    :cond_2
    sparse-switch v1, :sswitch_data_0

    :cond_3
    move v2, v3

    .line 503
    goto :goto_1

    .line 414
    :sswitch_0
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    if-eqz v4, :cond_3

    .line 415
    if-nez v0, :cond_0

    .line 416
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    goto :goto_1

    .line 423
    :sswitch_1
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyConsumed:Z

    if-eqz v4, :cond_3

    .line 424
    if-nez v0, :cond_0

    .line 425
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyConsumed:Z

    goto :goto_1

    .line 431
    :sswitch_2
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyConsumed:Z

    if-eqz v4, :cond_3

    .line 432
    if-nez v0, :cond_0

    .line 433
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyConsumed:Z

    goto :goto_1

    .line 439
    :sswitch_3
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyConsumed:Z

    if-eqz v4, :cond_3

    .line 440
    if-nez v0, :cond_0

    .line 441
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyConsumed:Z

    goto :goto_1

    .line 447
    :sswitch_4
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraKeyConsumed:Z

    if-eqz v4, :cond_3

    .line 448
    if-nez v0, :cond_0

    .line 449
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraKeyConsumed:Z

    goto :goto_1

    .line 455
    :sswitch_5
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFlashKeyConsumed:Z

    if-eqz v4, :cond_3

    .line 456
    if-nez v0, :cond_0

    .line 457
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFlashKeyConsumed:Z

    goto :goto_1

    .line 463
    :sswitch_6
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraRecordKeyConsumed:Z

    if-eqz v4, :cond_3

    .line 464
    if-nez v0, :cond_0

    .line 465
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraRecordKeyConsumed:Z

    goto :goto_1

    .line 471
    :sswitch_7
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyConsumed:Z

    if-eqz v4, :cond_3

    .line 472
    if-nez v0, :cond_0

    .line 473
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyConsumed:Z

    goto :goto_1

    .line 479
    :sswitch_8
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyConsumed:Z

    if-eqz v4, :cond_3

    .line 480
    if-nez v0, :cond_0

    .line 481
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyConsumed:Z

    goto :goto_1

    .line 487
    :sswitch_9
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mRecentKeyConsumed:Z

    if-eqz v4, :cond_3

    .line 488
    if-nez v0, :cond_0

    .line 489
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mRecentKeyConsumed:Z

    goto :goto_1

    .line 495
    :sswitch_a
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuConsumed:Z

    if-eqz v4, :cond_3

    .line 496
    if-nez v0, :cond_0

    .line 497
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuConsumed:Z

    goto :goto_1

    .line 411
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_8
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0x1a -> :sswitch_2
        0x1b -> :sswitch_4
        0x52 -> :sswitch_a
        0xa8 -> :sswitch_1
        0xa9 -> :sswitch_0
        0xbb -> :sswitch_9
        0x11a -> :sswitch_6
        0x120 -> :sswitch_5
        0x12e -> :sswitch_7
    .end sparse-switch
.end method

.method public onSystemReady()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHasPermanentMenuKey:Z

    .line 150
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mIsSupportManualScreenPinning:Z

    .line 152
    return-void
.end method
