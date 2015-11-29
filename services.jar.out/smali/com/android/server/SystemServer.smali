.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$FlymeInjector;
    }
.end annotation

# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final DIR_ENCRYPTION:Z

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final MSAP_WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.samsung.android.server.wifi.MsapWifiService"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final is3LMAllowed:Z

.field private static final isRLLAllowed:Z


# instance fields
.field private final isElasticEnabled:Z

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAlarmManagerService:Lcom/android/server/AlarmManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mInstaller:Lcom/android/server/pm/Installer;

.field private mLightsService:Lcom/android/server/lights/LightsService;

.field private mMultiWindowFacadeService:Lcom/android/server/am/MultiWindowFacadeService;

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 304
    const-string/jumbo v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SystemServer;->DIR_ENCRYPTION:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->isElasticEnabled:Z

    .line 320
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 321
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 234
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 457
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 458
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, #android:style@Theme.DeviceDefault.Light.DarkActionBar#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 315
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 316
    return-void
.end method

.method private static native nativeInit()V
.end method

.method private performPendingShutdown()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 440
    const-string/jumbo v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 443
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    move v1, v3

    .line 446
    .local v1, "reboot":Z
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 447
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "reason":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 454
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_1
    return-void

    .line 449
    .restart local v1    # "reboot":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 435
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 437
    return-void
.end method

.method private run()V
    .locals 9

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v8, 0x1

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 329
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 334
    :cond_0
    const-string v0, "SystemServer"

    const-string v1, "!@Boot: Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 338
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 347
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string/jumbo v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 350
    .local v6, "cryptState":Ljava/lang/String;
    const-string/jumbo v0, "trigger_restart_min_framework"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 360
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 362
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 363
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 372
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 376
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 380
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 384
    invoke-static {v8}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 387
    invoke-static {v8}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 394
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 395
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 398
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/android/server/SystemServer;->nativeInit()V

    .line 403
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 406
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 409
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 410
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 414
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 415
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 416
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 425
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_3
    const-string v0, "SystemServer"

    const-string v1, "!@Boot: Loop forever"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 431
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_4
    const-string/jumbo v0, "trigger_restart_min_framework"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    invoke-static {}, Lcom/android/server/pm/PackagePrefetcher;->getInstance()Lcom/android/server/pm/PackagePrefetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackagePrefetcher;->prefetchPermissions()V

    .line 356
    invoke-static {}, Lcom/android/server/pm/PackagePrefetcher;->getInstance()Lcom/android/server/pm/PackagePrefetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackagePrefetcher;->prefetchPackages()V

    goto/16 :goto_0

    .line 417
    :catch_0
    move-exception v7

    .line 418
    .local v7, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    throw v7
.end method

.method private startBootstrapServices()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 473
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/pm/Installer;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    iput-object v1, p0, Lcom/android/server/SystemServer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 476
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 478
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 484
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService;

    iput-object v1, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 488
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 492
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayManagerService;

    iput-object v1, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 495
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 498
    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v1, "trigger_restart_min_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 500
    const-string v1, "SystemServer"

    const-string v3, "Detected encryption in progress - only parsing core apps"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iput-boolean v2, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 515
    :cond_0
    :goto_0
    const-string v1, "SystemServer"

    const-string v3, "!@Boot: Start PackageManagerService"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mInstaller:Lcom/android/server/pm/Installer;

    iget v1, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iget-boolean v2, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v3, v4, v1, v2}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 518
    const-string v1, "SystemServer"

    const-string v2, "!@Boot: End PackageManagerService"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v1, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 520
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 522
    const-string v1, "SystemServer"

    const-string v2, "User Service"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const-string/jumbo v1, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 526
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 529
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 530
    return-void

    .line 502
    :cond_1
    const-string/jumbo v1, "trigger_restart_min_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    const-string v1, "SystemServer"

    const-string v3, "Device encrypted - only parsing core apps"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iput-boolean v2, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_0

    .line 516
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/lights/LightsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mLightsService:Lcom/android/server/lights/LightsService;

    .line 540
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 543
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 544
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 548
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 549
    return-void
.end method

.method private static final startDpmService(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2278
    const/4 v4, 0x0

    .line 2279
    .local v4, "dpmObj":Ljava/lang/Object;
    :try_start_0
    const-string/jumbo v6, "persist.dpm.feature"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2280
    .local v3, "dpmFeature":I
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DPM configuration set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    if-lez v3, :cond_0

    const/16 v6, 0x10

    if-ge v3, v6, :cond_0

    .line 2283
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/com.qti.dpmframework.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2286
    .local v1, "dpmClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.qti.dpm.DpmService"

    invoke-virtual {v1, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2287
    .local v0, "dpmClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 2289
    .local v2, "dpmConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 2291
    if-eqz v4, :cond_0

    :try_start_1
    instance-of v6, v4, Landroid/os/IBinder;

    if-eqz v6, :cond_0

    .line 2292
    const-string v6, "dpmservice"

    check-cast v4, Landroid/os/IBinder;

    .end local v4    # "dpmObj":Ljava/lang/Object;
    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2293
    const-string v6, "SystemServer"

    const-string v7, "Created DPM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2302
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    :cond_0
    :goto_0
    return-void

    .line 2295
    .restart local v0    # "dpmClass":Ljava/lang/Class;
    .restart local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .restart local v3    # "dpmFeature":I
    :catch_0
    move-exception v5

    .line 2296
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "SystemServer"

    const-string/jumbo v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2299
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 2300
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string/jumbo v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static final startEmergencyModeService(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2314
    return-void
.end method

.method private startOtherServices()V
    .locals 180

    .prologue
    .line 556
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 557
    .local v4, "context":Landroid/content/Context;
    const/16 v40, 0x0

    .line 558
    .local v40, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v72, 0x0

    .line 559
    .local v72, "contentService":Lcom/android/server/content/ContentService;
    const/16 v168, 0x0

    .line 560
    .local v168, "vibrator":Lcom/android/server/VibratorService;
    const/16 v42, 0x0

    .line 561
    .local v42, "alarm":Landroid/app/IAlarmManager;
    const/16 v132, 0x0

    .line 562
    .local v132, "mountService":Lcom/android/server/MountService;
    const/16 v147, 0x0

    .line 563
    .local v147, "sdpService":Lcom/android/server/SdpManagerService;
    const/4 v8, 0x0

    .line 564
    .local v8, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v7, 0x0

    .line 565
    .local v7, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v134, 0x0

    .line 566
    .local v134, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v64, 0x0

    .line 567
    .local v64, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v135, 0x0

    .line 568
    .local v135, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v151, 0x0

    .line 569
    .local v151, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v179, 0x0

    .line 570
    .local v179, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v50, 0x0

    .line 571
    .local v50, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v166, 0x0

    .line 572
    .local v166, "usb":Lcom/android/server/usb/UsbService;
    const/16 v149, 0x0

    .line 573
    .local v149, "serial":Lcom/android/server/SerialService;
    const/16 v138, 0x0

    .line 574
    .local v138, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v61, 0x0

    .line 575
    .local v61, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v107, 0x0

    .line 576
    .local v107, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v155, 0x0

    .line 577
    .local v155, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v70, 0x0

    .line 579
    .local v70, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v79, 0x0

    .line 581
    .local v79, "dEncService":Lcom/android/server/DirEncryptService;
    const/16 v118, 0x0

    .line 582
    .local v118, "mHMS":Lcom/android/server/HarmonyEASService;
    const/16 v47, 0x0

    .line 583
    .local v47, "audioService":Landroid/media/AudioService;
    const/16 v81, 0x0

    .line 584
    .local v81, "deviceManager":Lcom/android/server/DeviceManager3LMService;
    const/16 v101, 0x0

    .line 585
    .local v101, "extControlDevice":Lcom/sec/rll/ExtControlDeviceService;
    const/16 v129, 0x0

    .line 587
    .local v129, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v143, 0x0

    .line 589
    .local v143, "quickconnect":Lcom/android/server/QuickConnectService;
    const/16 v160, 0x0

    .line 590
    .local v160, "timaService":Lcom/android/server/TimaService;
    const/16 v158, 0x0

    .line 592
    .local v158, "timaObserver":Lcom/android/server/TimaObserver;
    const/16 v120, 0x0

    .line 593
    .local v120, "mPersonaService":Lcom/android/server/pm/PersonaManagerService;
    const/16 v122, 0x0

    .line 598
    .local v122, "mRCPManagerService":Lcom/android/server/RCPManagerService;
    const/16 v178, 0x0

    .line 608
    .local v178, "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    const-string v5, "config.disable_storage"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v92

    .line 609
    .local v92, "disableStorage":Z
    const-string v5, "config.disable_media"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v89

    .line 610
    .local v89, "disableMedia":Z
    const-string v5, "config.disable_bluetooth"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v87

    .line 611
    .local v87, "disableBluetooth":Z
    const-string v5, "config.disable_telephony"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v94

    .line 612
    .local v94, "disableTelephony":Z
    const-string v5, "config.disable_location"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v88

    .line 613
    .local v88, "disableLocation":Z
    const-string v5, "config.disable_systemui"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v93

    .line 614
    .local v93, "disableSystemUI":Z
    const-string v5, "config.disable_noncore"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v91

    .line 615
    .local v91, "disableNonCoreServices":Z
    const-string v5, "config.disable_network"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v90

    .line 616
    .local v90, "disableNetwork":Z
    const-string/jumbo v5, "ro.kernel.qemu"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v111

    .line 617
    .local v111, "isEmulator":Z
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, #android:bool@config_digitalPenCapable#t

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v82

    .line 619
    .local v82, "digitalPenCapable":Z
    const-string v5, "config.disable_atlas"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v86

    .line 622
    .local v86, "disableAtlas":Z
    :try_start_0
    const-string v5, "SystemServer"

    const-string v6, "Reading configuration..."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 625
    const-string v5, "SystemServer"

    const-string v6, "Scheduling Policy"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const-string/jumbo v5, "scheduling_policy"

    new-instance v6, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v6}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 628
    const-string v5, "SystemServer"

    const-string v6, "Telephony Registry"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    new-instance v156, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v156

    invoke-direct {v0, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6c

    .line 630
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v156, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string/jumbo v5, "telephony.registry"

    move-object/from16 v0, v156

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 632
    const-string v5, "SystemServer"

    const-string v6, "Entropy Mixer"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const-string v5, "entropy"

    new-instance v6, Lcom/android/server/EntropyMixer;

    invoke-direct {v6, v4}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 638
    :try_start_2
    const-string v5, "SystemServer"

    const-string v6, "SEAMS"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const-string v5, "SEAMService"

    new-instance v6, Lcom/android/server/SEAMService;

    invoke-direct {v6, v4}, Lcom/android/server/SEAMService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 648
    :goto_0
    :try_start_3
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v167

    .line 649
    .local v167, "versionInfo":Landroid/os/Bundle;
    const-string v5, "2.0"

    const-string/jumbo v6, "version"

    move-object/from16 v0, v167

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v5

    if-eqz v5, :cond_0

    .line 651
    :try_start_4
    const-string v5, "SystemServer"

    const-string v6, "Persona Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getInstance()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v120

    .line 653
    const-string/jumbo v5, "persona"

    move-object/from16 v0, v120

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 660
    :cond_0
    :goto_1
    :try_start_5
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 665
    :try_start_6
    const-string v5, "SystemServer"

    const-string v6, "Account Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    new-instance v41, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v41

    invoke-direct {v0, v4}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 667
    .end local v40    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v41, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_7
    const-string v5, "account"

    move-object/from16 v0, v41

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_75
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6d

    move-object/from16 v40, v41

    .line 673
    .end local v41    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v40    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_2
    :try_start_8
    const-string/jumbo v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v121

    .line 674
    .local v121, "mProductName":Ljava/lang/String;
    const-string v5, "ktt"

    move-object/from16 v0, v121

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    move-result v5

    if-nez v5, :cond_1

    .line 677
    :try_start_9
    const-string v5, "SystemServer"

    const-string v6, "KT UCA Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const-string v5, "ktuca"

    new-instance v6, Landroid/ktuca/KtUcaService;

    invoke-direct {v6, v4}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    .line 685
    :cond_1
    :goto_3
    :try_start_a
    const-string v5, "SystemServer"

    const-string v6, "Content Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3c

    const/4 v5, 0x1

    :goto_4
    invoke-static {v4, v5}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v72

    .line 691
    new-instance v80, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v80

    invoke-direct {v0, v4}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1

    .line 693
    .end local v79    # "dEncService":Lcom/android/server/DirEncryptService;
    .local v80, "dEncService":Lcom/android/server/DirEncryptService;
    :try_start_b
    sget-boolean v5, Lcom/android/server/SystemServer;->DIR_ENCRYPTION:Z

    if-eqz v5, :cond_2

    .line 694
    const-string v5, "DirEncryptService"

    move-object/from16 v0, v80

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_6e

    :cond_2
    move-object/from16 v79, v80

    .line 703
    .end local v80    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v79    # "dEncService":Lcom/android/server/DirEncryptService;
    :goto_5
    :try_start_c
    const-string v5, "SystemServer"

    const-string v6, "Reactive Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_1

    .line 705
    :try_start_d
    const-string v5, "ReactiveService"

    new-instance v6, Lcom/android/server/ReactiveService;

    invoke-direct {v6, v4}, Lcom/android/server/ReactiveService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1

    .line 712
    :goto_6
    :try_start_e
    const-string v5, "SystemServer"

    const-string v6, "System Content Providers"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1

    .line 715
    :try_start_f
    const-string/jumbo v5, "sedenial"

    new-instance v6, Lcom/android/server/SEDenialService;

    invoke-direct {v6, v4}, Lcom/android/server/SEDenialService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 716
    const-string v5, "SystemServer"

    const-string v6, "SEDenial service added"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_1

    .line 721
    :goto_7
    :try_start_10
    const-string v5, "SystemServer"

    const-string v6, "Vibrator Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    new-instance v169, Lcom/android/server/VibratorService;

    move-object/from16 v0, v169

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_1

    .line 723
    .end local v168    # "vibrator":Lcom/android/server/VibratorService;
    .local v169, "vibrator":Lcom/android/server/VibratorService;
    :try_start_11
    const-string/jumbo v5, "vibrator"

    move-object/from16 v0, v169

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 726
    sget-boolean v5, Lcom/samsung/android/toolbox/TwToolBoxService;->TOOLBOX_SUPPORT:Z

    if-eqz v5, :cond_3

    .line 727
    const-string v5, "SystemServer"

    const-string v6, "Tw ToolBox Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    new-instance v163, Lcom/samsung/android/toolbox/TwToolBoxService;

    move-object/from16 v0, v163

    invoke-direct {v0, v4}, Lcom/samsung/android/toolbox/TwToolBoxService;-><init>(Landroid/content/Context;)V

    .line 729
    .local v163, "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    const-string/jumbo v5, "tw_toolbox"

    move-object/from16 v0, v163

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 734
    .end local v163    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    :cond_3
    const-string v5, "1"

    const-string/jumbo v6, "ro.config.tima"

    const-string v9, "0"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_9

    move-result v157

    .line 735
    .local v157, "timaEnabled":Z
    if-eqz v157, :cond_4

    .line 737
    :try_start_12
    const-string v5, "SystemServer"

    const-string v6, "TIMA Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const/4 v5, -0x2

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 741
    new-instance v161, Lcom/android/server/TimaService;

    move-object/from16 v0, v161

    invoke-direct {v0, v4}, Lcom/android/server/TimaService;-><init>(Landroid/content/Context;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_9

    .line 742
    .end local v160    # "timaService":Lcom/android/server/TimaService;
    .local v161, "timaService":Lcom/android/server/TimaService;
    :try_start_13
    const-string/jumbo v5, "tima"

    move-object/from16 v0, v161

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_74
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_6f

    move-object/from16 v160, v161

    .end local v161    # "timaService":Lcom/android/server/TimaService;
    .restart local v160    # "timaService":Lcom/android/server/TimaService;
    :goto_8
    const/16 v5, -0x13

    :try_start_14
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_9

    :try_start_15
    const-string v5, "SystemServer"

    const-string v6, "TIMA Observer"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v159, Lcom/android/server/TimaObserver;

    move-object/from16 v0, v159

    invoke-direct {v0, v4}, Lcom/android/server/TimaObserver;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_9

    .end local v158    # "timaObserver":Lcom/android/server/TimaObserver;
    .local v159, "timaObserver":Lcom/android/server/TimaObserver;
    move-object/from16 v158, v159

    .end local v159    # "timaObserver":Lcom/android/server/TimaObserver;
    .restart local v158    # "timaObserver":Lcom/android/server/TimaObserver;
    :goto_9
    :try_start_16
    const-string v5, "3.0"

    const-string v6, "ro.config.timaversion"

    const-string v9, "0"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v162

    .local v162, "timaversion":Z
    if-eqz v162, :cond_4

    const-string v5, "com.sec.tima.TimaKeyStoreProvider"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v113

    .local v113, "keyStoreClass":Ljava/lang/Class;
    invoke-virtual/range {v113 .. v113}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/Provider;

    invoke-static {v5}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const-string v5, "SystemServer"

    const-string v6, "Added TimaKesytore provider"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_9

    .end local v113    # "keyStoreClass":Ljava/lang/Class;
    .end local v162    # "timaversion":Z
    :cond_4
    :goto_a
    const/16 v98, 0x1

    .local v98, "enabledMDM":Z
    const/4 v5, 0x1

    move/from16 v0, v98

    if-ne v5, v0, :cond_5

    const/16 v97, 0x1

    .local v97, "enabledCEP":Z
    const/4 v5, 0x1

    move/from16 v0, v97

    if-ne v5, v0, :cond_3d

    :try_start_17
    const-string v5, "SystemServer"

    const-string v6, "CEP Proxy KS Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "cepproxyks"

    new-instance v6, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    invoke-direct {v6, v4}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_9

    .end local v97    # "enabledCEP":Z
    :cond_5
    :goto_b
    :try_start_18
    const-string v5, "SystemServer"

    const-string v6, "SSRM Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_9

    :try_start_19
    new-instance v53, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/ssrm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .local v53, "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    const-string v5, "com.android.server.ssrm.CustomFrequencyManagerService"

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v52

    .local v52, "cfmsClass":Ljava/lang/Class;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    const/4 v6, 0x1

    const-class v9, Landroid/app/IActivityManager;

    aput-object v9, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v54

    .local v54, "cfmsConstructor":Ljava/lang/reflect/Constructor;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    aput-object v9, v5, v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v152

    check-cast v152, Landroid/os/IBinder;

    .local v152, "ssrmService":Landroid/os/IBinder;
    const-string v5, "CustomFrequencyManagerService"

    move-object/from16 v0, v152

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_9

    .end local v52    # "cfmsClass":Ljava/lang/Class;
    .end local v53    # "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    .end local v54    # "cfmsConstructor":Ljava/lang/reflect/Constructor;
    .end local v152    # "ssrmService":Landroid/os/IBinder;
    :goto_c
    :try_start_1a
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v55

    .local v55, "cl":Ljava/lang/ClassLoader;
    const-string v5, "com.samsung.android.smartface.SmartFaceManager"

    const/4 v6, 0x1

    move-object/from16 v0, v55

    invoke-static {v5, v6, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v58

    .local v58, "class_SmartFaceManager":Ljava/lang/Class;
    const-string v5, "SMARTFACE_SERVICE"

    move-object/from16 v0, v58

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v103

    .local v103, "field_SMARTFACE_SERVICE":Ljava/lang/reflect/Field;
    const-string v5, "com.samsung.android.smartface.SmartFaceService"

    const/4 v6, 0x1

    move-object/from16 v0, v55

    invoke-static {v5, v6, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v59

    .local v59, "class_SmartFaceService":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v59

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v69

    .local v69, "constructor_SmartFaceService":Ljava/lang/reflect/Constructor;
    const/4 v5, 0x0

    move-object/from16 v0, v103

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v6, v9

    move-object/from16 v0, v69

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    const-string v6, "SmartFaceService loaded!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_9

    .end local v55    # "cl":Ljava/lang/ClassLoader;
    .end local v58    # "class_SmartFaceManager":Ljava/lang/Class;
    .end local v59    # "class_SmartFaceService":Ljava/lang/Class;
    .end local v69    # "constructor_SmartFaceService":Ljava/lang/reflect/Constructor;
    .end local v103    # "field_SMARTFACE_SERVICE":Ljava/lang/reflect/Field;
    :goto_d
    :try_start_1b
    const-string v5, "SystemServer"

    const-string v6, "Consumer IR Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v71, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v71

    invoke-direct {v0, v4}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_9

    .end local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v71, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_1c
    const-string v5, "consumer_ir"

    move-object/from16 v0, v71

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/SystemServer;->mAlarmManagerService:Lcom/android/server/AlarmManagerService;

    const-string v5, "alarm"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v42

    const-string v5, "SystemServer"

    const-string v6, "Init Watchdog"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v174

    .local v174, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v174

    invoke-virtual {v0, v4, v5}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    const-string v5, "SystemServer"

    const-string v6, "Input Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v108, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v108

    invoke-direct {v0, v4}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_70

    .end local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v108, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_1d
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.sensorhub"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "SystemServer"

    const-string v6, "Context Aware Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "context_aware"

    new-instance v6, Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-direct {v6, v4}, Lcom/samsung/android/contextaware/manager/ContextAwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_6
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.sensorhub"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.scontext_lite"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    const-string v5, "SystemServer"

    const-string v6, "SContext Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "scontext"

    new-instance v6, Landroid/hardware/scontext/SContextService;

    invoke-direct {v6, v4}, Landroid/hardware/scontext/SContextService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "com.sec.feature.barcode_emulator"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_10

    move-result v5

    if-eqz v5, :cond_9

    :try_start_1e
    const-string v5, "SystemServer"

    const-string v6, "BarBeamService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v49, Landroid/app/BarBeamService;

    move-object/from16 v0, v49

    invoke-direct {v0, v4}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    .local v49, "barbeam":Landroid/app/BarBeamService;
    const-string v5, "barbeam"

    move-object/from16 v0, v49

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_10

    .end local v49    # "barbeam":Landroid/app/BarBeamService;
    :cond_9
    :goto_e
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MultiWindowFacadeService;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/SystemServer;->mMultiWindowFacadeService:Lcom/android/server/am/MultiWindowFacadeService;

    const-string v5, "SystemServer"

    const-string v6, "Window Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3e

    const/4 v5, 0x1

    move v6, v5

    :goto_f
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v5, :cond_3f

    const/4 v5, 0x1

    :goto_10
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move-object/from16 v0, v108

    invoke-static {v4, v0, v6, v5, v9}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v179

    const-string v5, "window"

    move-object/from16 v0, v179

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "input"

    move-object/from16 v0, v108

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v179

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mMultiWindowFacadeService:Lcom/android/server/am/MultiWindowFacadeService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/am/MultiWindowFacadeService;->setAcitivityManager(Lcom/android/server/am/ActivityManagerService;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mMultiWindowFacadeService:Lcom/android/server/am/MultiWindowFacadeService;

    move-object/from16 v0, v179

    invoke-virtual {v5, v0}, Lcom/android/server/am/MultiWindowFacadeService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual/range {v179 .. v179}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v5

    move-object/from16 v0, v108

    invoke-virtual {v0, v5}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    invoke-virtual/range {v108 .. v108}, Lcom/android/server/input/InputManagerService;->start()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    if-eqz v111, :cond_40

    const-string v5, "SystemServer"

    const-string v6, "No Bluetooh Service (emulator)"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    const-string v5, "SystemServer"

    const-string v6, "RCP Manager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_10

    :try_start_20
    new-instance v123, Lcom/android/server/RCPManagerService;

    move-object/from16 v0, v123

    invoke-direct {v0, v4}, Lcom/android/server/RCPManagerService;-><init>(Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_10

    .end local v122    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .local v123, "mRCPManagerService":Lcom/android/server/RCPManagerService;
    :try_start_21
    const-string v5, "rcp"

    move-object/from16 v0, v123

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_73
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_72

    move-object/from16 v122, v123

    .end local v123    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v122    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    :goto_12
    :try_start_22
    new-instance v5, Landroid/security/AndroidKeyStoreProvider;

    invoke-direct {v5}, Landroid/security/AndroidKeyStoreProvider;-><init>()V

    invoke-static {v5}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_10

    move-object/from16 v70, v71

    .end local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v107, v108

    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v168, v169

    .end local v98    # "enabledMDM":Z
    .end local v121    # "mProductName":Ljava/lang/String;
    .end local v157    # "timaEnabled":Z
    .end local v167    # "versionInfo":Landroid/os/Bundle;
    .end local v169    # "vibrator":Lcom/android/server/VibratorService;
    .end local v174    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v168    # "vibrator":Lcom/android/server/VibratorService;
    :goto_13
    const/16 v153, 0x0

    .local v153, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v140, 0x0

    .local v140, "notification":Landroid/app/INotificationManager;
    const/16 v105, 0x0

    .local v105, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v172, 0x0

    .local v172, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v114, 0x0

    .local v114, "location":Lcom/android/server/LocationManagerService;
    const/16 v145, 0x0

    .local v145, "sLocation":Landroid/os/IBinder;
    const/16 v73, 0x0

    .local v73, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v164, 0x0

    .local v164, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v116, 0x0

    .local v116, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v170, 0x0

    .local v170, "vrManager":Lcom/android/server/VRManagerService;
    const/16 v45, 0x0

    .local v45, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v126, 0x0

    .local v126, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/16 v99, 0x0

    .local v99, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v60, 0x0

    .local v60, "cocktailBar":Lcom/android/server/cocktailbar/CocktailBarManagerService;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_a

    :try_start_23
    const-string v5, "SystemServer"

    const-string v6, "Input Method Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v106, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v106

    move-object/from16 v1, v179

    invoke-direct {v0, v4, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_12

    .end local v105    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v106, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_24
    const-string v5, "input_method"

    move-object/from16 v0, v106

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_6b

    move-object/from16 v105, v106

    .end local v106    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v105    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_14
    :try_start_25
    const-string v5, "SystemServer"

    const-string v6, "Accessibility Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "accessibility"

    new-instance v6, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v6, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_13

    :cond_a
    :goto_15
    :try_start_26
    invoke-virtual/range {v179 .. v179}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_14

    :goto_16
    :try_start_27
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_15

    :goto_17
    :try_start_28
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, #android:string@android_upgrading_starting_apps#t

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v9, 0x0

    invoke-interface {v5, v6, v9}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_6a

    :goto_18
    :try_start_29
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v141

    .local v141, "pM":Landroid/content/pm/PackageManager;
    if-eqz v141, :cond_b

    const-string v5, "SystemServer"

    const-string v6, "PackageManager is not null!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "com.sec.feature.motionrecognition_service"

    move-object/from16 v0, v141

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    new-instance v131, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/motionrecognitionservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object/from16 v0, v131

    invoke-direct {v0, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .local v131, "motionClassLoader":Ldalvik/system/PathClassLoader;
    const-string v5, "com.samsung.android.motion.MotionRecognitionService"

    move-object/from16 v0, v131

    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v56

    .local v56, "class_MotionRecognitionService":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v67

    .local v67, "constructor_MotionRecognitionService":Ljava/lang/reflect/Constructor;
    const-string v6, "motion_recognition"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v5, v9

    move-object/from16 v0, v67

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    const-string v6, "MotionRecognitionService Service!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_16

    .end local v56    # "class_MotionRecognitionService":Ljava/lang/Class;
    .end local v67    # "constructor_MotionRecognitionService":Ljava/lang/reflect/Constructor;
    .end local v131    # "motionClassLoader":Ldalvik/system/PathClassLoader;
    .end local v141    # "pM":Landroid/content/pm/PackageManager;
    :cond_b
    :goto_19
    const/16 v75, 0x0

    .local v75, "coverService":Lcom/android/server/cover/CoverManagerService;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_d

    const-string v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v77

    .local v77, "cryptState":Ljava/lang/String;
    const-string v5, "trigger_restart_min_framework"

    move-object/from16 v0, v77

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "trigger_restart_min_framework"

    move-object/from16 v0, v77

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    :cond_c
    const-string v5, "SystemServer"

    const-string v6, "Detected encryption in progress - unable CoverManagerService"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v77    # "cryptState":Ljava/lang/String;
    :cond_d
    :goto_1a
    const-string v5, "0"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_e

    :try_start_2a
    const-string v5, "SystemServer"

    const-string v6, "Add FM_RADIO_SERVICE"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "FMPlayer"

    new-instance v6, Lcom/android/server/FMRadioService;

    invoke-direct {v6, v4}, Lcom/android/server/FMRadioService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    const-string v6, "FMRadio service added.."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_18

    :cond_e
    :goto_1b
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4d

    if-nez v92, :cond_f

    const-string v5, "0"

    const-string v6, "system_init.startmountservice"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    :try_start_2b
    const-string v5, "SystemServer"

    const-string v6, "Mount Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v133, Lcom/android/server/MountService;

    move-object/from16 v0, v133

    invoke-direct {v0, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_19

    .end local v132    # "mountService":Lcom/android/server/MountService;
    .local v133, "mountService":Lcom/android/server/MountService;
    :try_start_2c
    const-string v5, "mount"

    move-object/from16 v0, v133

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_68

    move-object/from16 v132, v133

    .end local v133    # "mountService":Lcom/android/server/MountService;
    .restart local v132    # "mountService":Lcom/android/server/MountService;
    :cond_f
    :goto_1c
    :try_start_2d
    const-string v5, "SystemServer"

    const-string v6, "DirEncryptSerrvice"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v79, :cond_10

    const-string v5, "SystemServer"

    const-string v6, "DirEncryptService.SystemReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v79 .. v79}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1a

    :cond_10
    :goto_1d
    if-nez v91, :cond_12

    :try_start_2e
    const-string v5, "SystemServer"

    const-string v6, "LockSettingsService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v117, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v117

    invoke-direct {v0, v4}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_1b

    .end local v116    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v117, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_2f
    const-string v5, "lock_settings"

    move-object/from16 v0, v117

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_67

    move-object/from16 v116, v117

    .end local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v116    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_1e
    const-string v5, "ro.frp.pst"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_12
    :try_start_30
    const-string v5, "SystemServer"

    const-string v6, "HarmonyEAS service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v119, Lcom/android/server/HarmonyEASService;

    move-object/from16 v0, v119

    invoke-direct {v0, v4}, Lcom/android/server/HarmonyEASService;-><init>(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1c

    .end local v118    # "mHMS":Lcom/android/server/HarmonyEASService;
    .local v119, "mHMS":Lcom/android/server/HarmonyEASService;
    :try_start_31
    const-string v5, "harmony_eas_service"

    move-object/from16 v0, v119

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    const-string v6, "Harmony EAS service created..."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_66

    move-object/from16 v118, v119

    .end local v119    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v118    # "mHMS":Lcom/android/server/HarmonyEASService;
    :goto_1f
    :try_start_32
    const-string v5, "SystemServer"

    const-string v6, "SdpManagerService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v148, Lcom/android/server/SdpManagerService;

    move-object/from16 v0, v148

    invoke-direct {v0, v4}, Lcom/android/server/SdpManagerService;-><init>(Landroid/content/Context;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1d

    .end local v147    # "sdpService":Lcom/android/server/SdpManagerService;
    .local v148, "sdpService":Lcom/android/server/SdpManagerService;
    :try_start_33
    const-string v5, "sdp"

    move-object/from16 v0, v148

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_65

    move-object/from16 v147, v148

    .end local v148    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v147    # "sdpService":Lcom/android/server/SdpManagerService;
    :goto_20
    if-nez v91, :cond_13

    :try_start_34
    const-string v5, "SystemServer"

    const-string v6, "Enterprise Policy"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v100, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const/4 v6, 0x0

    move-object/from16 v0, v100

    invoke-direct {v0, v4, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/app/admin/IDevicePolicyManager;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1e

    .end local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .local v100, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_start_35
    const-string v5, "enterprise_policy"

    move-object/from16 v0, v100

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    const-string v6, "Enterprise Policymanager service created..."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_64

    move-object/from16 v99, v100

    .end local v100    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :cond_13
    :goto_21
    if-nez v93, :cond_14

    :try_start_36
    const-string v5, "SystemServer"

    const-string v6, "Status Bar"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v154, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v154

    move-object/from16 v1, v179

    invoke-direct {v0, v4, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1f

    .end local v153    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v154, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_37
    const-string v5, "statusbar"

    move-object/from16 v0, v154

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_63

    move-object/from16 v153, v154

    .end local v154    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v153    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_14
    :goto_22
    if-nez v91, :cond_15

    :try_start_38
    const-string v5, "SystemServer"

    const-string v6, "Clipboard Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "clipboard"

    new-instance v6, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v6, v4}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_20

    :cond_15
    :goto_23
    if-nez v91, :cond_16

    :try_start_39
    const-string v5, "SystemServer"

    const-string v6, "ClipboardEx Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "clipboardEx"

    new-instance v6, Lcom/android/server/clipboardex/ClipboardExService;

    invoke-direct {v6, v4}, Lcom/android/server/clipboardex/ClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_21

    :cond_16
    :goto_24
    if-nez v90, :cond_17

    :try_start_3a
    const-string v5, "SystemServer"

    const-string v6, "NetworkManagement Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v8

    const-string v5, "network_management"

    invoke-static {v5, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_22

    :cond_17
    :goto_25
    const-string v5, "SystemServer"

    const-string v6, "SEC_PRODUCT_FEATURE_KNOX_SUPPORT_ABSOLUTE_ANTITHEFT=FALSE - true"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3b
    const-string v5, "SystemServer"

    const-string v6, "Absolute Persistence Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "ABTPersistenceService"

    new-instance v6, Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {v6, v4}, Lcom/absolute/android/persistservice/ABTPersistenceService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_23

    :goto_26
    if-nez v91, :cond_18

    :try_start_3c
    const-string v5, "SystemServer"

    const-string v6, "Text Service Manager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v165, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v165

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_24

    .end local v164    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v165, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_3d
    const-string v5, "textservices"

    move-object/from16 v0, v165

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_62

    move-object/from16 v164, v165

    .end local v165    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v164    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_18
    :goto_27
    if-nez v90, :cond_4c

    :try_start_3e
    const-string v5, "SystemServer"

    const-string v6, "Network Score Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v136, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v136

    invoke-direct {v0, v4}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_25

    .end local v135    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v136, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_3f
    const-string v5, "network_score"

    move-object/from16 v0, v136

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_61

    move-object/from16 v135, v136

    .end local v136    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v135    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_28
    :try_start_40
    const-string v5, "SystemServer"

    const-string v6, "NetworkStats Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v137, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v137

    move-object/from16 v1, v42

    invoke-direct {v0, v4, v8, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_26

    .end local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v137, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_41
    const-string v5, "netstats"

    move-object/from16 v0, v137

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_60

    move-object/from16 v7, v137

    .end local v137    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_29
    :try_start_42
    const-string v5, "SystemServer"

    const-string v6, "NetworkPolicy Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v6, "power"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    check-cast v6, Landroid/os/IPowerManager;

    invoke-direct/range {v3 .. v8}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_27

    .end local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v3, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_43
    const-string v5, "netpolicy"

    invoke-static {v5, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_5f

    :goto_2a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.WifiService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.samsung.android.server.wifi.MsapWifiService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.RttService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.ethernet"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_46

    :goto_2b
    :try_start_44
    const-string v5, "SystemServer"

    const-string v6, "Connectivity Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v65, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v65

    invoke-direct {v0, v4, v8, v7, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_28

    .end local v64    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v65, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_45
    const-string v5, "connectivity"

    move-object/from16 v0, v65

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, v65

    invoke-virtual {v7, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    move-object/from16 v0, v65

    invoke-virtual {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_5e

    move-object/from16 v64, v65

    .end local v65    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v64    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_2c
    :try_start_46
    const-string v5, "SystemServer"

    const-string v6, "SmartBonding Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v55

    .restart local v55    # "cl":Ljava/lang/ClassLoader;
    const-string v5, "com.samsung.android.smartbonding.SmartBondingService"

    const/4 v6, 0x1

    move-object/from16 v0, v55

    invoke-static {v5, v6, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v57

    .local v57, "class_SmartBondingService":Ljava/lang/Class;
    const-string v5, "SMARTBONDING_SERVICE"

    move-object/from16 v0, v57

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v102

    .local v102, "field_SMARTBONDING_SERVICE":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v57

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v68

    .local v68, "constructor_SmartBondingService":Ljava/lang/reflect/Constructor;
    const/4 v5, 0x0

    move-object/from16 v0, v102

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v6, v9

    move-object/from16 v0, v68

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    const-string v6, "SmartBonding loaded"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_29

    .end local v55    # "cl":Ljava/lang/ClassLoader;
    .end local v57    # "class_SmartBondingService":Ljava/lang/Class;
    .end local v68    # "constructor_SmartBondingService":Ljava/lang/reflect/Constructor;
    .end local v102    # "field_SMARTBONDING_SERVICE":Ljava/lang/reflect/Field;
    :goto_2d
    :try_start_47
    const-string v5, "SystemServer"

    const-string v6, "Network Service Discovery Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v151

    const-string v5, "servicediscovery"

    move-object/from16 v0, v151

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2a

    :goto_2e
    :try_start_48
    const-string v5, "SystemServer"

    const-string v6, "DPM Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/android/server/SystemServer;->startDpmService(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2b

    :goto_2f
    if-nez v91, :cond_19

    :try_start_49
    const-string v5, "SystemServer"

    const-string v6, "UpdateLock Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "updatelock"

    new-instance v6, Lcom/android/server/UpdateLockService;

    invoke-direct {v6, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2c

    :cond_19
    :goto_30
    if-eqz v132, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v5, :cond_1a

    const-string v5, "vold.decrypt"

    const-string v6, "null"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "trigger_restart_min_framework"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual/range {v132 .. v132}, Lcom/android/server/MountService;->waitForAsecScan()V

    :cond_1a
    if-eqz v40, :cond_1b

    :try_start_4a
    invoke-virtual/range {v40 .. v40}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2d

    :cond_1b
    :goto_31
    if-eqz v72, :cond_1c

    :try_start_4b
    invoke-virtual/range {v72 .. v72}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2e

    :cond_1c
    :goto_32
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-string v5, "notification"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v140

    move-object/from16 v0, v140

    invoke-virtual {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    if-nez v88, :cond_1d

    :try_start_4c
    const-string v5, "SystemServer"

    const-string v6, "Location Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v115, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v115

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2f

    .end local v114    # "location":Lcom/android/server/LocationManagerService;
    .local v115, "location":Lcom/android/server/LocationManagerService;
    :try_start_4d
    const-string v5, "location"

    move-object/from16 v0, v115

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_5d

    move-object/from16 v114, v115

    .end local v115    # "location":Lcom/android/server/LocationManagerService;
    .restart local v114    # "location":Lcom/android/server/LocationManagerService;
    :goto_33
    :try_start_4e
    const-string v5, "SystemServer"

    const-string v6, "Country Detector"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v74, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v74

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_30

    .end local v73    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v74, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_4f
    const-string v5, "country_detector"

    move-object/from16 v0, v74

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_5c

    move-object/from16 v73, v74

    .end local v74    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v73    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_1d
    :goto_34
    :try_start_50
    const-string v5, "SystemServer"

    const-string v6, "SLocation Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "com.samsung.location.SLocationLoader"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v146

    .local v146, "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getSLocationService"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v9

    move-object/from16 v0, v146

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v104

    .local v104, "getSLocationService":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v6, v9

    move-object/from16 v0, v104

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object/from16 v145, v0

    const-string v5, "sec_location"

    move-object/from16 v0, v145

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_31

    .end local v104    # "getSLocationService":Ljava/lang/reflect/Method;
    .end local v146    # "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_35
    if-nez v91, :cond_1e

    :try_start_51
    const-string v5, "SystemServer"

    const-string v6, "Search Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "search"

    new-instance v6, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v6, v4}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_32

    :cond_1e
    :goto_36
    :try_start_52
    const-string v5, "SystemServer"

    const-string v6, "DropBox Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "dropbox"

    new-instance v6, Lcom/android/server/DropBoxManagerService;

    new-instance v9, Ljava/io/File;

    const-string v10, "/data/system/dropbox"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v4, v9}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_33

    :goto_37
    if-nez v91, :cond_1f

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, #android:bool@config_enableWallpaperService#t

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    :try_start_53
    const-string v5, "SystemServer"

    const-string v6, "Wallpaper Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v173, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v173

    invoke-direct {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_34

    .end local v172    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v173, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_54
    const-string v5, "wallpaper"

    move-object/from16 v0, v173

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_5b

    move-object/from16 v172, v173

    .end local v173    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v172    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_1f
    :goto_38
    if-nez v89, :cond_20

    const-string v5, "0"

    const-string v6, "system_init.startaudioservice"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    :try_start_55
    const-string v5, "SystemServer"

    const-string v6, "Audio Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v48, Landroid/media/AudioService;

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_35

    .end local v47    # "audioService":Landroid/media/AudioService;
    .local v48, "audioService":Landroid/media/AudioService;
    :try_start_56
    const-string v5, "audio"

    move-object/from16 v0, v48

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_5a

    move-object/from16 v47, v48

    .end local v48    # "audioService":Landroid/media/AudioService;
    .restart local v47    # "audioService":Landroid/media/AudioService;
    :cond_20
    :goto_39
    if-nez v91, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/DockObserver;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_21
    if-nez v89, :cond_22

    :try_start_57
    const-string v5, "SystemServer"

    const-string v6, "Wired Accessory Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v107

    invoke-direct {v5, v4, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v107

    invoke-virtual {v0, v5}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_36

    :cond_22
    :goto_3a
    if-nez v91, :cond_25

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.usb.host"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.usb.accessory"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    :cond_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_24
    :try_start_58
    const-string v5, "SystemServer"

    const-string v6, "Serial Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v150, Lcom/android/server/SerialService;

    move-object/from16 v0, v150

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_37

    .end local v149    # "serial":Lcom/android/server/SerialService;
    .local v150, "serial":Lcom/android/server/SerialService;
    :try_start_59
    const-string v5, "serial"

    move-object/from16 v0, v150

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_59

    move-object/from16 v149, v150

    .end local v150    # "serial":Lcom/android/server/SerialService;
    .restart local v149    # "serial":Lcom/android/server/SerialService;
    :cond_25
    :goto_3b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_EnableSUA"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    :try_start_5a
    const-string v5, "SystemServer"

    const-string v6, "KiesUsb Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "kiesusb"

    new-instance v6, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {v6, v4}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_38

    :cond_26
    :goto_3c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    if-nez v91, :cond_29

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.backup"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_27
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.app_widgets"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_28
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.voice_recognizers"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_29
    const-string v5, "ro.SecEDS.enable"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .local v38, "SecEDSEnable":Ljava/lang/String;
    const-string v5, "SystemServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SecEDS Service ro.tvout.enable = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "false"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    :try_start_5b
    const-string v5, "SystemServer"

    const-string v6, "Starting SecEDSEnable Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v96, 0x0

    .local v96, "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "com.android.server.SecExternalDisplayService"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v96

    if-nez v96, :cond_47

    const-string v5, "SystemServer"

    const-string v6, "eds Service not exist"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_39

    .end local v96    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2a
    :goto_3d
    :try_start_5c
    const-string v5, "SystemServer"

    const-string v6, "DiskStats Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "diskstats"

    new-instance v6, Lcom/android/server/DiskStatsService;

    invoke-direct {v6, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_3a

    :goto_3e
    :try_start_5d
    const-string v5, "SystemServer"

    const-string v6, "mDNIe Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v124, 0x0

    .local v124, "mdnieClass":Ljava/lang/Class;
    const-string v5, "com.samsung.android.mdnie.MdnieManagerService"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v124

    if-nez v124, :cond_48

    const-string v5, "SystemServer"

    const-string v6, "Mdnie Service does not exist"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_3b

    .end local v124    # "mdnieClass":Ljava/lang/Class;
    :goto_3f
    :try_start_5e
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v141

    .restart local v141    # "pM":Landroid/content/pm/PackageManager;
    if-eqz v141, :cond_49

    const/16 v110, 0x1

    .local v110, "isAddService":Z
    if-eqz v110, :cond_2b

    const-string v5, "SystemServer"

    const-string v6, "Starting SpenGestureManagerService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "spengestureservice"

    new-instance v6, Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v0, v179

    invoke-direct {v6, v4, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_3c

    .end local v110    # "isAddService":Z
    .end local v141    # "pM":Landroid/content/pm/PackageManager;
    :cond_2b
    :goto_40
    :try_start_5f
    const-string v5, "SystemServer"

    const-string v6, "QuickConnect Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v144, Lcom/android/server/QuickConnectService;

    move-object/from16 v0, v144

    invoke-direct {v0, v4}, Lcom/android/server/QuickConnectService;-><init>(Landroid/content/Context;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_3d

    .end local v143    # "quickconnect":Lcom/android/server/QuickConnectService;
    .local v144, "quickconnect":Lcom/android/server/QuickConnectService;
    :try_start_60
    const-string v5, "quickconnect"

    move-object/from16 v0, v144

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_58

    move-object/from16 v143, v144

    .end local v144    # "quickconnect":Lcom/android/server/QuickConnectService;
    .restart local v143    # "quickconnect":Lcom/android/server/QuickConnectService;
    :goto_41
    :try_start_61
    const-string v5, "SystemServer"

    const-string v6, "SamplingProfiler Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "samplingprofiler"

    new-instance v6, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v6, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_3e

    :goto_42
    if-nez v90, :cond_2c

    :try_start_62
    const-string v5, "SystemServer"

    const-string v6, "NetworkTimeUpdateService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v139, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v139

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_3f

    .end local v138    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v139, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v138, v139

    .end local v139    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v138    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_2c
    :goto_43
    if-nez v89, :cond_2d

    :try_start_63
    const-string v5, "SystemServer"

    const-string v6, "CommonTimeManagementService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v62, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v62

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_40

    .end local v61    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v62, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_64
    const-string v5, "commontime_management"

    move-object/from16 v0, v62

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_57

    move-object/from16 v61, v62

    .end local v62    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v61    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_2d
    :goto_44
    if-nez v90, :cond_2e

    :try_start_65
    const-string v5, "SystemServer"

    const-string v6, "CertBlacklister"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/server/CertBlacklister;

    invoke-direct {v5, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_41

    :cond_2e
    :goto_45
    if-nez v91, :cond_2f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_2f
    if-nez v91, :cond_30

    if-nez v86, :cond_30

    :try_start_66
    const-string v5, "SystemServer"

    const-string v6, "Assets Atlas Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v46, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v46

    invoke-direct {v0, v4}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_42

    .end local v45    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v46, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_67
    const-string v5, "assetatlas"

    move-object/from16 v0, v46

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_56

    move-object/from16 v45, v46

    .end local v46    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v45    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_30
    :goto_46
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.print"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.print.PrintManagerService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_31
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.hdmi.cec"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_32
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.live_tv"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_33
    if-nez v91, :cond_34

    :try_start_68
    const-string v5, "SystemServer"

    const-string v6, "Media Router Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v127, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v127

    invoke-direct {v0, v4}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_43

    .end local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v127, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_69
    const-string v5, "media_router"

    move-object/from16 v0, v127

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_69} :catch_55

    move-object/from16 v126, v127

    .end local v127    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_47
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :try_start_6a
    const-string v5, "SystemServer"

    const-string v6, "BackgroundDexOptService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6a} :catch_44

    :cond_34
    :goto_48
    :try_start_6b
    const-string v5, "SystemServer"

    const-string v6, "BackgroundCompactionService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/android/server/os/BackgroundCompactionService;->schedule(Landroid/content/Context;I)V

    invoke-static {v4}, Lcom/android/server/os/BackgroundCompactionService;->initBGC(Landroid/content/Context;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_45

    :goto_49
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-string v5, "ro.bluetooth.wipower"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v112

    .local v112, "isWipowerEnabled":Z
    if-eqz v112, :cond_4a

    :try_start_6c
    const-string v39, "wbc_service"

    .local v39, "WBC_SERVICE_NAME":Ljava/lang/String;
    const-string v5, "SystemServer"

    const-string v6, "WipowerBatteryControl Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v176, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/com.quicinc.wbc.jar:/system/framework/com.quicinc.wbcservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object/from16 v0, v176

    invoke-direct {v0, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .local v176, "wbcClassLoader":Ldalvik/system/PathClassLoader;
    const-string v5, "com.quicinc.wbcservice.WbcService"

    move-object/from16 v0, v176

    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v175

    .local v175, "wbcClass":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v175

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v78

    .local v78, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v0, v78

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v177

    .local v177, "wbcObject":Ljava/lang/Object;
    const-string v5, "SystemServer"

    const-string v6, "Successfully loaded WbcService class"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "wbc_service"

    check-cast v177, Landroid/os/IBinder;

    .end local v177    # "wbcObject":Ljava/lang/Object;
    move-object/from16 v0, v177

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_46

    .end local v39    # "WBC_SERVICE_NAME":Ljava/lang/String;
    .end local v78    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v175    # "wbcClass":Ljava/lang/Class;
    .end local v176    # "wbcClassLoader":Ldalvik/system/PathClassLoader;
    :goto_4a
    if-eqz v82, :cond_35

    :try_start_6d
    const-string v5, "SystemServer"

    const-string v6, "Digital Pen Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v84, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/DigitalPenService.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object/from16 v0, v84

    invoke-direct {v0, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .local v84, "digitalPenClassLoader":Ldalvik/system/PathClassLoader;
    const-string v5, "com.qti.snapdragon.digitalpen.DigitalPenService"

    move-object/from16 v0, v84

    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v83

    .local v83, "digitalPenClass":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v83

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v78

    .restart local v78    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v0, v78

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v85

    .local v85, "digitalPenRemoteObject":Ljava/lang/Object;
    const-string v5, "SystemServer"

    const-string v6, "Successfully loaded DigitalPenService class"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "DigitalPen"

    check-cast v85, Landroid/os/IBinder;

    .end local v85    # "digitalPenRemoteObject":Ljava/lang/Object;
    move-object/from16 v0, v85

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6d} :catch_47

    .end local v78    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v83    # "digitalPenClass":Ljava/lang/Class;
    .end local v84    # "digitalPenClassLoader":Ldalvik/system/PathClassLoader;
    :cond_35
    :goto_4b
    :try_start_6e
    const-string v5, "SystemServer"

    const-string v6, "MiniModeAppManager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v109

    .local v109, "instructionSet":Ljava/lang/String;
    new-instance v55, Ldalvik/system/DexClassLoader;

    const-string v5, "/system/framework/minimode.jar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/dalvik-cache/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v109

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    move-object/from16 v0, v55

    invoke-direct {v0, v5, v6, v9, v10}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .restart local v55    # "cl":Ljava/lang/ClassLoader;
    const-string v5, "com.sec.minimode.manager.MiniModeAppManagerService"

    move-object/from16 v0, v55

    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v36

    .local v36, "MiniModeAppManagerServiceClass":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v37

    .local v37, "MiniModeAppManagerServiceContructor":Ljava/lang/reflect/Constructor;
    const-string v6, "mini_mode_app_manager"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v5, v9

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_6e} :catch_48

    .end local v36    # "MiniModeAppManagerServiceClass":Ljava/lang/Class;
    .end local v37    # "MiniModeAppManagerServiceContructor":Ljava/lang/reflect/Constructor;
    .end local v55    # "cl":Ljava/lang/ClassLoader;
    .end local v109    # "instructionSet":Ljava/lang/String;
    :goto_4c
    :try_start_6f
    const-string v5, "SystemServer"

    const-string v6, "VoIPInterfaceManager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "voip"

    new-instance v6, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v6, v4}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_6f} :catch_49

    .end local v38    # "SecEDSEnable":Ljava/lang/String;
    .end local v112    # "isWipowerEnabled":Z
    :goto_4d
    if-nez v91, :cond_36

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_36
    invoke-static {}, Lcom/samsung/appdisabler/AppDisablerService;->configurationFileExists()Z

    move-result v5

    if-eqz v5, :cond_37

    :try_start_70
    new-instance v43, Lcom/samsung/appdisabler/AppDisablerService;

    move-object/from16 v0, v43

    invoke-direct {v0, v4}, Lcom/samsung/appdisabler/AppDisablerService;-><init>(Landroid/content/Context;)V

    .local v43, "appDisablerService":Lcom/samsung/appdisabler/AppDisablerService;
    const-string v5, "SamsungAppDisabler"

    move-object/from16 v0, v43

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_70} :catch_4a

    .end local v43    # "appDisablerService":Lcom/samsung/appdisabler/AppDisablerService;
    :cond_37
    :goto_4e
    :try_start_71
    const-string v5, "SystemServer"

    const-string v6, "Lpnet Manager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "lpnet"

    new-instance v6, Lcom/android/server/LpnetManagerService;

    invoke-direct {v6, v4}, Lcom/android/server/LpnetManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_71} :catch_4b

    :goto_4f
    invoke-virtual/range {v179 .. v179}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v35

    .local v35, "safeMode":Z
    if-eqz v35, :cond_4b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    :goto_50
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v129

    .end local v129    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v129, Lcom/android/server/MmsServiceBroker;

    .restart local v129    # "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_72
    invoke-virtual/range {v168 .. v168}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_72} :catch_4c

    :goto_51
    if-eqz v116, :cond_38

    :try_start_73
    invoke-virtual/range {v116 .. v116}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_73} :catch_4d

    :cond_38
    :goto_52
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0x1e0

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0x1f4

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    if-eqz v99, :cond_39

    invoke-virtual/range {v99 .. v99}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    const-string v5, "SystemServer"

    const-string v6, "enterprisePolicy systemReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    :try_start_74
    invoke-virtual/range {v179 .. v179}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_74} :catch_4e

    :goto_53
    if-eqz v35, :cond_3a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    :cond_3a
    invoke-virtual/range {v179 .. v179}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v63

    .local v63, "config":Landroid/content/res/Configuration;
    new-instance v128, Landroid/util/DisplayMetrics;

    invoke-direct/range {v128 .. v128}, Landroid/util/DisplayMetrics;-><init>()V

    .local v128, "metrics":Landroid/util/DisplayMetrics;
    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v171

    check-cast v171, Landroid/view/WindowManager;

    .local v171, "w":Landroid/view/WindowManager;
    invoke-interface/range {v171 .. v171}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    move-object/from16 v0, v128

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, v63

    move-object/from16 v1, v128

    invoke-virtual {v5, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :try_start_75
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_75} :catch_4f

    :goto_54
    :try_start_76
    const-string v5, "SystemServer"

    const-string v6, "LightsService systemReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mLightsService:Lcom/android/server/lights/LightsService;

    invoke-virtual {v5}, Lcom/android/server/lights/LightsService;->systemReady()V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_76} :catch_50

    :goto_55
    :try_start_77
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_77} :catch_51

    :goto_56
    :try_start_78
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v35

    invoke-virtual {v5, v0, v6}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_78} :catch_52

    :goto_57
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v167

    .restart local v167    # "versionInfo":Landroid/os/Bundle;
    const-string v5, "2.0"

    const-string v6, "version"

    move-object/from16 v0, v167

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    :try_start_79
    invoke-virtual/range {v120 .. v120}, Lcom/android/server/pm/PersonaManagerService;->systemReady()V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_79} :catch_53

    :cond_3b
    :goto_58
    :try_start_7a
    invoke-virtual/range {v147 .. v147}, Lcom/android/server/SdpManagerService;->systemReady()V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7a} :catch_54

    :goto_59
    move-object/from16 v12, v132

    .local v12, "mountServiceF":Lcom/android/server/MountService;
    move-object v14, v8

    .local v14, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v15, v7

    .local v15, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v16, v3

    .local v16, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v17, v64

    .local v17, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v13, v135

    .local v13, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v19, v172

    .local v19, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v20, v105

    .local v20, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v22, v114

    .local v22, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v23, v145

    .local v23, "sLocationF":Landroid/os/IBinder;
    move-object/from16 v24, v73

    .local v24, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v25, v138

    .local v25, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v26, v61

    .local v26, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v27, v164

    .local v27, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v21, v153

    .local v21, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v28, v170

    .local v28, "vrManagerF":Ljava/lang/Object;
    move-object/from16 v29, v45

    .local v29, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v30, v107

    .local v30, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v31, v155

    .local v31, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v32, v126

    .local v32, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v18, v47

    .local v18, "audioServiceF":Landroid/media/AudioService;
    move-object/from16 v130, v129

    .local v130, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v33, v75

    .local v33, "coverServiceF":Lcom/android/server/cover/CoverManagerService;
    move-object/from16 v34, v60

    .local v34, "cocktailBarF":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v9, Lcom/android/server/SystemServer$2;

    move-object/from16 v10, p0

    move-object v11, v4

    invoke-direct/range {v9 .. v35}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Landroid/media/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/VRManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/cover/CoverManagerService;Lcom/android/server/cocktailbar/CocktailBarManagerService;Z)V

    invoke-virtual {v5, v9}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    return-void

    .end local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12    # "mountServiceF":Lcom/android/server/MountService;
    .end local v13    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v14    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v15    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v16    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v17    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v18    # "audioServiceF":Landroid/media/AudioService;
    .end local v19    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v20    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v21    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v22    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v23    # "sLocationF":Landroid/os/IBinder;
    .end local v24    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v25    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v26    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v27    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v28    # "vrManagerF":Ljava/lang/Object;
    .end local v29    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v30    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v31    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v32    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v33    # "coverServiceF":Lcom/android/server/cover/CoverManagerService;
    .end local v34    # "cocktailBarF":Ljava/lang/Object;
    .end local v35    # "safeMode":Z
    .end local v45    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v60    # "cocktailBar":Lcom/android/server/cocktailbar/CocktailBarManagerService;
    .end local v63    # "config":Landroid/content/res/Configuration;
    .end local v73    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v75    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .end local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v105    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v114    # "location":Lcom/android/server/LocationManagerService;
    .end local v116    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v128    # "metrics":Landroid/util/DisplayMetrics;
    .end local v130    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v140    # "notification":Landroid/app/INotificationManager;
    .end local v145    # "sLocation":Landroid/os/IBinder;
    .end local v153    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v164    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v167    # "versionInfo":Landroid/os/Bundle;
    .end local v170    # "vrManager":Lcom/android/server/VRManagerService;
    .end local v171    # "w":Landroid/view/WindowManager;
    .end local v172    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_0
    move-exception v95

    .local v95, "e":Ljava/lang/Throwable;
    :try_start_7b
    const-string v5, "SystemServer"

    const-string v6, "Failure starting SE Android Manager Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catch Ljava/lang/RuntimeException; {:try_start_7b .. :try_end_7b} :catch_1

    goto/16 :goto_0

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v95

    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v95, "e":Ljava/lang/RuntimeException;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_5a
    const-string v5, "System"

    const-string v6, "******************************************"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "System"

    const-string v6, "************ Failure starting core service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13

    .end local v95    # "e":Ljava/lang/RuntimeException;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v167    # "versionInfo":Landroid/os/Bundle;
    :catch_2
    move-exception v95

    .local v95, "e":Ljava/lang/Throwable;
    :try_start_7c
    const-string v5, "SystemServer"

    const-string v6, "Failure starting Persona Manager Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_5b
    const-string v5, "SystemServer"

    const-string v6, "Failure starting Account Manager"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v121    # "mProductName":Ljava/lang/String;
    :catch_4
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Failure starting KT UCA Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7c
    .catch Ljava/lang/RuntimeException; {:try_start_7c .. :try_end_7c} :catch_1

    goto/16 :goto_3

    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_3c
    const/4 v5, 0x0

    goto/16 :goto_4

    .end local v79    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v80    # "dEncService":Lcom/android/server/DirEncryptService;
    :catch_5
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    :try_start_7d
    const-string v5, "SystemServer"

    const-string v6, "Failure starting DirEncryptService"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7d
    .catch Ljava/lang/RuntimeException; {:try_start_7d .. :try_end_7d} :catch_6e

    const/16 v79, 0x0

    .end local v80    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v79    # "dEncService":Lcom/android/server/DirEncryptService;
    goto/16 :goto_5

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    :try_start_7e
    const-string v5, "SystemServer"

    const-string v6, "Failed to add Reactive Service."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Registration of denial service failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Ljava/lang/RuntimeException; {:try_start_7e .. :try_end_7e} :catch_1

    goto/16 :goto_7

    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v168    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v157    # "timaEnabled":Z
    .restart local v169    # "vibrator":Lcom/android/server/VibratorService;
    :catch_8
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_5c
    :try_start_7f
    const-string v5, "starting TimaService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v157    # "timaEnabled":Z
    :catch_9
    move-exception v95

    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v168, v169

    .end local v169    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v168    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_5a

    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v168    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "timaEnabled":Z
    .restart local v169    # "vibrator":Lcom/android/server/VibratorService;
    :catch_a
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "starting TimaObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v95

    .local v95, "e":Ljava/lang/Exception;
    const-string v5, "SystemServer"

    const-string v6, "Unable to add TimaKesytore provider"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v95 .. v95}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a

    .end local v95    # "e":Ljava/lang/Exception;
    .restart local v97    # "enabledCEP":Z
    .restart local v98    # "enabledMDM":Z
    :catch_c
    move-exception v95

    .local v95, "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Failure starting CEP Proxy Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_3d
    const-string v5, "SystemServer"

    const-string v6, "MDM is enabled, but CEP is not enabled"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .end local v97    # "enabledCEP":Z
    :catch_d
    move-exception v95

    .local v95, "e":Ljava/lang/Exception;
    const-string v5, "SystemServer"

    const-string v6, "ssrm.jar not found"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v95 .. v95}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    .end local v95    # "e":Ljava/lang/Exception;
    :catch_e
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Exception;
    const-string v5, "Fail to start SmartFaceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7f
    .catch Ljava/lang/RuntimeException; {:try_start_7f .. :try_end_7f} :catch_9

    goto/16 :goto_d

    .end local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v95    # "e":Ljava/lang/Exception;
    .end local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v174    # "watchdog":Lcom/android/server/Watchdog;
    :catch_f
    move-exception v95

    .local v95, "e":Ljava/lang/Throwable;
    :try_start_80
    const-string v5, "SystemServer"

    const-string v6, "Failure starting BarBeam Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v95

    move-object/from16 v70, v71

    .end local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v107, v108

    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v168, v169

    .end local v169    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v168    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_5a

    .end local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v168    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v169    # "vibrator":Lcom/android/server/VibratorService;
    :cond_3e
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_f

    :cond_3f
    const/4 v5, 0x0

    goto/16 :goto_10

    :cond_40
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_41

    const-string v5, "SystemServer"

    const-string v6, "No Bluetooth Service (factory test)"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_41
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.bluetooth"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_42

    const-string v5, "SystemServer"

    const-string v6, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_42
    if-eqz v87, :cond_43

    const-string v5, "SystemServer"

    const-string v6, "Bluetooth Service disabled by config"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_43
    const-string v5, "SystemServer"

    const-string v6, "Bluetooth Manager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v51, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v51

    invoke-direct {v0, v4}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_80
    .catch Ljava/lang/RuntimeException; {:try_start_80 .. :try_end_80} :catch_10

    .end local v50    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v51, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_81
    const-string v5, "bluetooth_manager"

    move-object/from16 v0, v51

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    const-string v6, "Bluetooth Secure Mode Manager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "bluetooth_secure_mode_manager"

    new-instance v6, Landroid/app/BluetoothSecureManagerService;

    invoke-direct {v6, v4}, Landroid/app/BluetoothSecureManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_81
    .catch Ljava/lang/RuntimeException; {:try_start_81 .. :try_end_81} :catch_71

    move-object/from16 v50, v51

    .end local v51    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v50    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_11

    :catch_11
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_5d
    :try_start_82
    const-string v5, "SystemServer"

    const-string v6, "Failure starting RCP Manager Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_82
    .catch Ljava/lang/RuntimeException; {:try_start_82 .. :try_end_82} :catch_10

    goto/16 :goto_12

    .end local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v98    # "enabledMDM":Z
    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v121    # "mProductName":Ljava/lang/String;
    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v157    # "timaEnabled":Z
    .end local v167    # "versionInfo":Landroid/os/Bundle;
    .end local v169    # "vibrator":Lcom/android/server/VibratorService;
    .end local v174    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v45    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v60    # "cocktailBar":Lcom/android/server/cocktailbar/CocktailBarManagerService;
    .restart local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v73    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v105    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v114    # "location":Lcom/android/server/LocationManagerService;
    .restart local v116    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v140    # "notification":Landroid/app/INotificationManager;
    .restart local v145    # "sLocation":Landroid/os/IBinder;
    .restart local v153    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v164    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v168    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v170    # "vrManager":Lcom/android/server/VRManagerService;
    .restart local v172    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_12
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_5e
    const-string v5, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v95

    .local v95, "e":Ljava/lang/Exception;
    const-string v5, "SystemServer"

    const-string v6, "Failure starting MotionRecognitionService"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_19

    .end local v95    # "e":Ljava/lang/Exception;
    .restart local v75    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v77    # "cryptState":Ljava/lang/String;
    :cond_44
    if-nez v91, :cond_d

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v142

    .local v142, "packageMgr":Landroid/content/pm/PackageManager;
    const-string v5, "com.sec.feature.cover.flip"

    move-object/from16 v0, v142

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_45

    const-string v5, "com.sec.feature.cover.sview"

    move-object/from16 v0, v142

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_45
    :try_start_83
    const-string v5, "SystemServer"

    const-string v6, "CoverManager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v76, Lcom/android/server/cover/CoverManagerService;

    move-object/from16 v0, v76

    move-object/from16 v1, v179

    move-object/from16 v2, v107

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/cover/CoverManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_83} :catch_17

    .end local v75    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .local v76, "coverService":Lcom/android/server/cover/CoverManagerService;
    :try_start_84
    const-string v5, "cover"

    move-object/from16 v0, v76

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_84} :catch_69

    move-object/from16 v75, v76

    .end local v76    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v75    # "coverService":Lcom/android/server/cover/CoverManagerService;
    goto/16 :goto_1a

    :catch_17
    move-exception v95

    .local v95, "e":Ljava/lang/Throwable;
    :goto_5f
    const-string v5, "SystemServer"

    const-string v6, "Failure starting CoverManager Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a

    .end local v77    # "cryptState":Ljava/lang/String;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v142    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_18
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "Failure starting FM Radio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_60
    const-string v5, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "starting DirEncryption service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_61
    const-string v5, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_62
    const-string v5, "SystemServer"

    const-string v6, "Failure starting Harmony EAS service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_63
    const-string v5, "unable to start SdpManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_64
    const-string v5, "SystemServer"

    const-string v6, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_65
    const-string v5, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "starting ClipboardEx Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Failure starting Absolute Persistence Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_66
    const-string v5, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_67
    const-string v5, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_68
    const-string v5, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v95

    move-object/from16 v3, v134

    .end local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_69
    const-string v5, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_46
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    goto/16 :goto_2b

    :catch_28
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_6a
    const-string v5, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "starting SmartBondingService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "starting DpmService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_6b
    const-string v5, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_6c
    const-string v5, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_31
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loading SLocation has been failed, error or not support"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v95 .. v95}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_32
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_33
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_34
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_6d
    const-string v5, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_35
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_6e
    const-string v5, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_36
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_37
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_6f
    const-string v5, "SystemServer"

    const-string v6, "Failure starting SerialService"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3b

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_38
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "Failue staring KiesUsbObserver Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v38    # "SecEDSEnable":Ljava/lang/String;
    .restart local v96    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_47
    :try_start_85
    const-string v5, "SystemServer"

    const-string v6, "edsclass Service exist"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/Class;

    move-object/from16 v44, v0

    .local v44, "arg":[Ljava/lang/Class;
    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v44, v5

    move-object/from16 v0, v96

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v66

    .local v66, "constructor":Ljava/lang/reflect/Constructor;
    const-string v6, "SecExternalDisplayService"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v5, v9

    move-object/from16 v0, v66

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_85} :catch_39

    goto/16 :goto_3d

    .end local v44    # "arg":[Ljava/lang/Class;
    .end local v66    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v96    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_39
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Failure starting eds Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3d

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_3a
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v124    # "mdnieClass":Ljava/lang/Class;
    :cond_48
    const/4 v5, 0x1

    :try_start_86
    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v124

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v66

    .restart local v66    # "constructor":Ljava/lang/reflect/Constructor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v0, v66

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v125

    check-cast v125, Landroid/os/IBinder;

    .local v125, "mdnieService":Landroid/os/IBinder;
    const-string v5, "mDNIe"

    move-object/from16 v0, v125

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_86} :catch_3b

    goto/16 :goto_3f

    .end local v66    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v124    # "mdnieClass":Ljava/lang/Class;
    .end local v125    # "mdnieService":Landroid/os/IBinder;
    :catch_3b
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "Failed To Start Mdnie Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v141    # "pM":Landroid/content/pm/PackageManager;
    :cond_49
    :try_start_87
    const-string v5, "SystemServer"

    const-string v6, "Failed to start SpenGestureManagerService : PackageManager is null!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_87} :catch_3c

    goto/16 :goto_40

    .end local v141    # "pM":Landroid/content/pm/PackageManager;
    :catch_3c
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "starting SpenGestureManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_3d
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_70
    const-string v5, "starting QuickConnect Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_3e
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_3f
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_40
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_71
    const-string v5, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_41
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_42
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_72
    const-string v5, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_43
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_73
    const-string v5, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_44
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_45
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "starting BackgroundCompactionService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v112    # "isWipowerEnabled":Z
    :catch_46
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "starting WipowerBatteryControl Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a

    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_4a
    const-string v5, "SystemServer"

    const-string v6, "Wipower not supported"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4a

    :catch_47
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "starting DigitalPenService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_48
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Failure starting MiniModeAppManager Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4c

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_49
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4d

    .end local v38    # "SecEDSEnable":Ljava/lang/String;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v112    # "isWipowerEnabled":Z
    :catch_4a
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "Failure starting SamsungAppDisablerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4e

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_4b
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Failure starting Lpnet Manager Service "

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4f

    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v35    # "safeMode":Z
    :cond_4b
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_50

    :catch_4c
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_51

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_4d
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_52

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_4e
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_53

    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v63    # "config":Landroid/content/res/Configuration;
    .restart local v128    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v171    # "w":Landroid/view/WindowManager;
    :catch_4f
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_54

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_50
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Lights Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_55

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_51
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_56

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_52
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_57

    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v167    # "versionInfo":Landroid/os/Bundle;
    :catch_53
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Persona Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_58

    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_54
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Sdp manager service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_59

    .end local v35    # "safeMode":Z
    .end local v63    # "config":Landroid/content/res/Configuration;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v128    # "metrics":Landroid/util/DisplayMetrics;
    .end local v167    # "versionInfo":Landroid/os/Bundle;
    .end local v171    # "w":Landroid/view/WindowManager;
    .restart local v38    # "SecEDSEnable":Ljava/lang/String;
    .restart local v127    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_55
    move-exception v95

    move-object/from16 v126, v127

    .end local v127    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_73

    .end local v45    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v46    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_56
    move-exception v95

    move-object/from16 v45, v46

    .end local v46    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v45    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_72

    .end local v61    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v62    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_57
    move-exception v95

    move-object/from16 v61, v62

    .end local v62    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v61    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_71

    .end local v143    # "quickconnect":Lcom/android/server/QuickConnectService;
    .restart local v144    # "quickconnect":Lcom/android/server/QuickConnectService;
    :catch_58
    move-exception v95

    move-object/from16 v143, v144

    .end local v144    # "quickconnect":Lcom/android/server/QuickConnectService;
    .restart local v143    # "quickconnect":Lcom/android/server/QuickConnectService;
    goto/16 :goto_70

    .end local v38    # "SecEDSEnable":Ljava/lang/String;
    .end local v149    # "serial":Lcom/android/server/SerialService;
    .restart local v150    # "serial":Lcom/android/server/SerialService;
    :catch_59
    move-exception v95

    move-object/from16 v149, v150

    .end local v150    # "serial":Lcom/android/server/SerialService;
    .restart local v149    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_6f

    .end local v47    # "audioService":Landroid/media/AudioService;
    .restart local v48    # "audioService":Landroid/media/AudioService;
    :catch_5a
    move-exception v95

    move-object/from16 v47, v48

    .end local v48    # "audioService":Landroid/media/AudioService;
    .restart local v47    # "audioService":Landroid/media/AudioService;
    goto/16 :goto_6e

    .end local v172    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v173    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_5b
    move-exception v95

    move-object/from16 v172, v173

    .end local v173    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v172    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_6d

    .end local v73    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v74    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_5c
    move-exception v95

    move-object/from16 v73, v74

    .end local v74    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v73    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_6c

    .end local v114    # "location":Lcom/android/server/LocationManagerService;
    .restart local v115    # "location":Lcom/android/server/LocationManagerService;
    :catch_5d
    move-exception v95

    move-object/from16 v114, v115

    .end local v115    # "location":Lcom/android/server/LocationManagerService;
    .restart local v114    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_6b

    .end local v64    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v65    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_5e
    move-exception v95

    move-object/from16 v64, v65

    .end local v65    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v64    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_6a

    :catch_5f
    move-exception v95

    goto/16 :goto_69

    .end local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v137    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_60
    move-exception v95

    move-object/from16 v7, v137

    .end local v137    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_68

    .end local v135    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v136    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_61
    move-exception v95

    move-object/from16 v135, v136

    .end local v136    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v135    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_67

    .end local v164    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v165    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_62
    move-exception v95

    move-object/from16 v164, v165

    .end local v165    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v164    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_66

    .end local v153    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v154    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_63
    move-exception v95

    move-object/from16 v153, v154

    .end local v154    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v153    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_65

    .end local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v100    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :catch_64
    move-exception v95

    move-object/from16 v99, v100

    .end local v100    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    goto/16 :goto_64

    .end local v147    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v148    # "sdpService":Lcom/android/server/SdpManagerService;
    :catch_65
    move-exception v95

    move-object/from16 v147, v148

    .end local v148    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v147    # "sdpService":Lcom/android/server/SdpManagerService;
    goto/16 :goto_63

    .end local v118    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v119    # "mHMS":Lcom/android/server/HarmonyEASService;
    :catch_66
    move-exception v95

    move-object/from16 v118, v119

    .end local v119    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v118    # "mHMS":Lcom/android/server/HarmonyEASService;
    goto/16 :goto_62

    .end local v116    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_67
    move-exception v95

    move-object/from16 v116, v117

    .end local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v116    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_61

    .end local v132    # "mountService":Lcom/android/server/MountService;
    .restart local v133    # "mountService":Lcom/android/server/MountService;
    :catch_68
    move-exception v95

    move-object/from16 v132, v133

    .end local v133    # "mountService":Lcom/android/server/MountService;
    .restart local v132    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_60

    .end local v75    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v76    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v77    # "cryptState":Ljava/lang/String;
    .restart local v142    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_69
    move-exception v95

    move-object/from16 v75, v76

    .end local v76    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v75    # "coverService":Lcom/android/server/cover/CoverManagerService;
    goto/16 :goto_5f

    .end local v75    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .end local v77    # "cryptState":Ljava/lang/String;
    .end local v142    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_6a
    move-exception v5

    goto/16 :goto_18

    .end local v105    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v106    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_6b
    move-exception v95

    move-object/from16 v105, v106

    .end local v106    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v105    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_5e

    .end local v45    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v60    # "cocktailBar":Lcom/android/server/cocktailbar/CocktailBarManagerService;
    .end local v73    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v105    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v114    # "location":Lcom/android/server/LocationManagerService;
    .end local v116    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v140    # "notification":Landroid/app/INotificationManager;
    .end local v145    # "sLocation":Landroid/os/IBinder;
    .end local v153    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v164    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v170    # "vrManager":Lcom/android/server/VRManagerService;
    .end local v172    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_6c
    move-exception v95

    goto/16 :goto_5a

    .end local v40    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v41    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v167    # "versionInfo":Landroid/os/Bundle;
    :catch_6d
    move-exception v95

    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v40, v41

    .end local v41    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v40    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_5a

    .end local v79    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v80    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v121    # "mProductName":Ljava/lang/String;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_6e
    move-exception v95

    move-object/from16 v79, v80

    .end local v80    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v79    # "dEncService":Lcom/android/server/DirEncryptService;
    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_5a

    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v160    # "timaService":Lcom/android/server/TimaService;
    .end local v168    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "timaEnabled":Z
    .restart local v161    # "timaService":Lcom/android/server/TimaService;
    .restart local v169    # "vibrator":Lcom/android/server/VibratorService;
    :catch_6f
    move-exception v95

    move-object/from16 v160, v161

    .line 747
    .end local v161    # "timaService":Lcom/android/server/TimaService;
    .restart local v160    # "timaService":Lcom/android/server/TimaService;
    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v168, v169

    .end local v169    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v168    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_5a

    .end local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v168    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v98    # "enabledMDM":Z
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v169    # "vibrator":Lcom/android/server/VibratorService;
    :catch_70
    move-exception v95

    move-object/from16 v70, v71

    .end local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v168, v169

    .end local v169    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v168    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_5a

    .end local v50    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v168    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v51    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v169    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v174    # "watchdog":Lcom/android/server/Watchdog;
    :catch_71
    move-exception v95

    move-object/from16 v70, v71

    .end local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v107, v108

    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v50, v51

    .end local v51    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v50    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v168, v169

    .end local v169    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v168    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_5a

    .end local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v122    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v168    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v123    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v169    # "vibrator":Lcom/android/server/VibratorService;
    :catch_72
    move-exception v95

    move-object/from16 v122, v123

    .end local v123    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v122    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    move-object/from16 v70, v71

    .end local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v107, v108

    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v168, v169

    .end local v169    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v168    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_5a

    .line 826
    .end local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v122    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v168    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v123    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v169    # "vibrator":Lcom/android/server/VibratorService;
    :catch_73
    move-exception v95

    move-object/from16 v122, v123

    .line 935
    .end local v123    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v122    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    goto/16 :goto_5d

    .end local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v98    # "enabledMDM":Z
    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v160    # "timaService":Lcom/android/server/TimaService;
    .end local v174    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v161    # "timaService":Lcom/android/server/TimaService;
    :catch_74
    move-exception v95

    move-object/from16 v160, v161

    .end local v161    # "timaService":Lcom/android/server/TimaService;
    .restart local v160    # "timaService":Lcom/android/server/TimaService;
    goto/16 :goto_5c

    .end local v40    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v121    # "mProductName":Ljava/lang/String;
    .end local v157    # "timaEnabled":Z
    .end local v169    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v41    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v168    # "vibrator":Lcom/android/server/VibratorService;
    :catch_75
    move-exception v95

    move-object/from16 v40, v41

    .end local v41    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v40    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_5b

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v167    # "versionInfo":Landroid/os/Bundle;
    .restart local v45    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v60    # "cocktailBar":Lcom/android/server/cocktailbar/CocktailBarManagerService;
    .restart local v73    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v75    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v105    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v114    # "location":Lcom/android/server/LocationManagerService;
    .restart local v116    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v140    # "notification":Landroid/app/INotificationManager;
    .restart local v145    # "sLocation":Landroid/os/IBinder;
    .restart local v153    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v164    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v170    # "vrManager":Lcom/android/server/VRManagerService;
    .restart local v172    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_4c
    move-object/from16 v3, v134

    .end local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_2f

    .end local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_4d
    move-object/from16 v3, v134

    .line 1252
    .end local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_4d
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2269
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2270
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2273
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2274
    return-void
.end method

.method getPackageManagerService()Lcom/android/server/pm/PackageManagerService;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method getSystemContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    return-object v0
.end method
