.class public Lcom/android/server/SecExternalDisplayService;
.super Landroid/os/ISecExternalDisplayService$Stub;
.source "SecExternalDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SecExternalDisplayService$5;,
        Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;,
        Lcom/android/server/SecExternalDisplayService$EDSToast;,
        Lcom/android/server/SecExternalDisplayService$EDSBlank;
    }
.end annotation


# static fields
.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "SecExternalDisplayService_Java"

.field private static bIsLogEnabled:Z

.field private static mContext:Landroid/content/Context;

.field private static mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;


# instance fields
.field public CALL_CONNECT:Z

.field private bDreamsEnabledByDefaultConfig:Z

.field private bIsAlarmRecieved:Z

.field private bIsDayDreamEnabled:Z

.field private bIsHomeTheatreConnected:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDialogCheckBox:Landroid/widget/CheckBox;

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDockSurfaceParameter:I

.field private final mMHLHandler:Landroid/os/Handler;

.field private mMHLObserver:Landroid/os/UEventObserver;

.field public mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 215
    invoke-direct {p0}, Landroid/os/ISecExternalDisplayService$Stub;-><init>()V

    .line 85
    iput v0, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceParameter:I

    .line 86
    iput-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bIsHomeTheatreConnected:Z

    .line 87
    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 90
    iput-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->CALL_CONNECT:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    .line 96
    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mAlertDialog:Landroid/app/AlertDialog;

    .line 98
    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 99
    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 188
    new-instance v0, Lcom/android/server/SecExternalDisplayService$1;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$1;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mMHLObserver:Landroid/os/UEventObserver;

    .line 203
    new-instance v0, Lcom/android/server/SecExternalDisplayService$2;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$2;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mMHLHandler:Landroid/os/Handler;

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 219
    invoke-direct {p0}, Landroid/os/ISecExternalDisplayService$Stub;-><init>()V

    .line 85
    iput v4, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceParameter:I

    .line 86
    iput-boolean v4, p0, Lcom/android/server/SecExternalDisplayService;->bIsHomeTheatreConnected:Z

    .line 87
    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 90
    iput-boolean v4, p0, Lcom/android/server/SecExternalDisplayService;->CALL_CONNECT:Z

    .line 92
    iput-boolean v4, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    .line 96
    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mAlertDialog:Landroid/app/AlertDialog;

    .line 98
    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 99
    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 188
    new-instance v0, Lcom/android/server/SecExternalDisplayService$1;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$1;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mMHLObserver:Landroid/os/UEventObserver;

    .line 203
    new-instance v0, Lcom/android/server/SecExternalDisplayService$2;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$2;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mMHLHandler:Landroid/os/Handler;

    .line 221
    const-string/jumbo v0, "persist.sys.SecEDS.Logs"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    .line 222
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "SecExternalDisplayService +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sput-object p1, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    .line 224
    new-instance v0, Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-direct {v0}, Landroid/hardware/SecExternalDisplayJNIInterface;-><init>()V

    sput-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    .line 227
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 229
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mMHLObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/switch/mhl_event_switch"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayInitWakeMode(Landroid/content/Context;I)V

    .line 233
    invoke-static {p0}, Lcom/android/server/SecExternalDisplayIntents;->StartEDSIntents(Lcom/android/server/SecExternalDisplayService;)V

    .line 235
    invoke-direct {p0}, Lcom/android/server/SecExternalDisplayService;->getCameraAppVersionNumber()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 236
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_STATUS_CAMERA_ROTATION_SUPPORT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 241
    :goto_0
    return-void

    .line 238
    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_STATUS_CAMERA_ROTATION_SUPPORT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0, v4}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    goto :goto_0
.end method

.method private SecExternalDisplayInitWakeMode(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nMode"    # I

    .prologue
    .line 271
    const/4 v1, 0x0

    .line 272
    .local v1, "wakelockHeld":Z
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    .line 274
    sget-boolean v2, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v2, :cond_0

    .line 275
    const-string v2, "SecExternalDisplayService_Java"

    const-string/jumbo v3, "mWakeLock is not null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    const/4 v1, 0x1

    .line 279
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 281
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 284
    :cond_2
    sget-boolean v2, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v2, :cond_3

    .line 285
    const-string v2, "SecExternalDisplayService_Java"

    const-string v3, "SecExternalDisplayInitWakeMode is called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_3
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 288
    .local v0, "pm":Landroid/os/PowerManager;
    const/high16 v2, 0x20000000

    or-int/2addr v2, p2

    const-string v3, "SecExternalDisplayService_Java"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 290
    sget-boolean v2, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v2, :cond_4

    .line 291
    const-string v2, "SecExternalDisplayService_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecExternalDisplayInitWakeMode set the mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_4
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 295
    if-eqz v1, :cond_5

    .line 297
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 299
    :cond_5
    return-void
.end method

.method private SecExternalDisplaySetWakeLock(Z)V
    .locals 2
    .param p1, "bStatus"    # Z

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_4

    .line 311
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 313
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_0

    .line 314
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Acquire the lock for Wake status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 329
    :cond_1
    :goto_0
    return-void

    .line 317
    :cond_2
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_3

    .line 320
    const-string v0, "SecExternalDisplayService_Java"

    const-string/jumbo v1, "release the lock for Wake status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 326
    :cond_4
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_1

    .line 327
    const-string v0, "SecExternalDisplayService_Java"

    const-string/jumbo v1, "mWakeLock is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/SecExternalDisplayService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayService;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mMHLHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SecExternalDisplayService;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayService;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/SecExternalDisplayService;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayService;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mDialogCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private getCameraAppVersionNumber()F
    .locals 8

    .prologue
    .line 245
    const/4 v2, 0x0

    .line 246
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    const/4 v4, 0x0

    .line 248
    .local v4, "versionNumber":F
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SecExternalDisplayService;->getEDSContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.android.app.camera"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 249
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 250
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 251
    .local v3, "versionName":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 253
    const-string v5, "SecExternalDisplayService_Java"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCameraAppVersionNumber. Package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , versionNumber="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v3    # "versionName":Ljava/lang/String;
    :goto_0
    return v4

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "SecExternalDisplayService_Java"

    const-string v6, "com.sec.android.app.camera Package name not found"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public SecExternalDisplayAlertMsg(I)V
    .locals 10
    .param p1, "value"    # I

    .prologue
    const/4 v9, 0x1

    .line 724
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_0

    .line 725
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "SecExternalDisplayService available only from system UID."

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 727
    :cond_0
    const-string/jumbo v6, "persist.sys.SecEDS.Dialog"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 775
    :goto_0
    return-void

    .line 730
    :cond_1
    const/4 v5, 0x0

    .line 731
    .local v5, "strPopUp":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 740
    const-string v6, "SecExternalDisplayService_Java"

    const-string v7, " Received Wrong value from kernel "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 734
    :pswitch_0
    sget-object v6, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040730

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 744
    :goto_1
    const/4 v1, 0x0

    .line 745
    .local v1, "isLightTheme":Z
    const-string/jumbo v6, "ro.build.scafe.cream"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 746
    .local v4, "mThemeType":Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string/jumbo v6, "white"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 747
    const/4 v1, 0x1

    .line 749
    :cond_2
    const-string v6, "SecExternalDisplayService_Java"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isLightTheme => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    if-ne v1, v9, :cond_3

    const v2, 0x103048d

    .line 752
    .local v2, "mAlertTheme":I
    :goto_2
    if-ne v1, v9, :cond_4

    const/high16 v3, -0x1000000

    .line 754
    .local v3, "mCheckBoxColor":I
    :goto_3
    new-instance v6, Landroid/widget/CheckBox;

    sget-object v7, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/SecExternalDisplayService;->mDialogCheckBox:Landroid/widget/CheckBox;

    .line 755
    iget-object v6, p0, Lcom/android/server/SecExternalDisplayService;->mDialogCheckBox:Landroid/widget/CheckBox;

    sget-object v7, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040811

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 756
    iget-object v6, p0, Lcom/android/server/SecExternalDisplayService;->mDialogCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 757
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v6, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 758
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget-object v6, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104072f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 759
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 760
    iget-object v6, p0, Lcom/android/server/SecExternalDisplayService;->mDialogCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 761
    const-string v6, "OK"

    new-instance v7, Lcom/android/server/SecExternalDisplayService$4;

    invoke-direct {v7, p0}, Lcom/android/server/SecExternalDisplayService$4;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 771
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SecExternalDisplayService;->mAlertDialog:Landroid/app/AlertDialog;

    .line 772
    iget-object v6, p0, Lcom/android/server/SecExternalDisplayService;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 773
    iget-object v6, p0, Lcom/android/server/SecExternalDisplayService;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 737
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "isLightTheme":Z
    .end local v2    # "mAlertTheme":I
    .end local v3    # "mCheckBoxColor":I
    .end local v4    # "mThemeType":Ljava/lang/String;
    :pswitch_1
    sget-object v6, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040732

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 738
    goto/16 :goto_1

    .line 751
    .restart local v1    # "isLightTheme":Z
    .restart local v4    # "mThemeType":Ljava/lang/String;
    :cond_3
    const v2, 0x1030487

    goto :goto_2

    .line 752
    .restart local v2    # "mAlertTheme":I
    :cond_4
    const/4 v3, -0x1

    goto :goto_3

    .line 731
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public SecExternalDisplayBlankDisplay(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 612
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 613
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayBlankDisplay(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "surface"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 590
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 591
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 595
    :cond_1
    const/4 v0, 0x1

    .line 596
    :goto_0
    return v0

    :cond_2
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z

    move-result v0

    goto :goto_0
.end method

.method public SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "surface"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 601
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 602
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 606
    :cond_1
    const/4 v0, 0x1

    .line 607
    :goto_0
    return v0

    :cond_2
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z

    move-result v0

    goto :goto_0
.end method

.method public SecExternalDisplayGet3DMode()I
    .locals 2

    .prologue
    .line 572
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 573
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayGet3DMode()I

    move-result v0

    return v0
.end method

.method public SecExternalDisplayGetResolution()I
    .locals 2

    .prologue
    .line 553
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 554
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayGetResolution()I

    move-result v0

    return v0
.end method

.method public SecExternalDisplayGetStatus(I)Z
    .locals 2
    .param p1, "param"    # I

    .prologue
    .line 647
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 648
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayParameter()I
    .locals 6

    .prologue
    .line 697
    const/4 v2, 0x0

    .line 698
    .local v2, "parameter":I
    iget-object v4, p0, Lcom/android/server/SecExternalDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v4, :cond_2

    .line 700
    iget-object v4, p0, Lcom/android/server/SecExternalDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    .line 701
    .local v1, "mDisplay":[Landroid/view/Display;
    if-eqz v1, :cond_2

    .line 703
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_2

    .line 705
    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/view/Display;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 707
    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    aget-object v5, v1, v0

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_0

    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v2

    :goto_1
    move v3, v2

    .line 713
    .end local v0    # "i":I
    .end local v1    # "mDisplay":[Landroid/view/Display;
    .end local v2    # "parameter":I
    .local v3, "parameter":I
    :goto_2
    return v3

    .line 707
    .end local v3    # "parameter":I
    .restart local v0    # "i":I
    .restart local v1    # "mDisplay":[Landroid/view/Display;
    .restart local v2    # "parameter":I
    :cond_0
    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v2

    goto :goto_1

    .line 703
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "mDisplay":[Landroid/view/Display;
    :cond_2
    move v3, v2

    .line 713
    .end local v2    # "parameter":I
    .restart local v3    # "parameter":I
    goto :goto_2
.end method

.method public SecExternalDisplayRegisterEVF(Z)I
    .locals 2
    .param p1, "bStatus"    # Z

    .prologue
    .line 620
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 621
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayRegisterEVF(Z)I

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySet3DMode(I)I
    .locals 2
    .param p1, "nS3DMode"    # I

    .prologue
    .line 581
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 582
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySet3DMode(I)I

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetExternalUITransform(I)Z
    .locals 2
    .param p1, "transform"    # I

    .prologue
    .line 667
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 668
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetExternalUITransform(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetForceMirrorMode(Z)Z
    .locals 2
    .param p1, "bEnable"    # Z

    .prologue
    .line 657
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 658
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetForceMirrorMode(Z)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetGpuLock(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 686
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 687
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 691
    :cond_1
    const/4 v0, 0x1

    .line 692
    :goto_0
    return v0

    :cond_2
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetGpuLock(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public SecExternalDisplaySetOutputMode(I)Z
    .locals 2
    .param p1, "nOutputMode"    # I

    .prologue
    .line 562
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 563
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetOutputMode(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetPause(Z)Z
    .locals 2
    .param p1, "bStatus"    # Z

    .prologue
    .line 629
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 630
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetPause(Z)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetResolution(I)Z
    .locals 2
    .param p1, "nResolution"    # I

    .prologue
    .line 542
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 543
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_0
    if-nez p1, :cond_1

    .line 547
    const/4 v0, 0x1

    .line 548
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetResolution(I)Z

    move-result v0

    goto :goto_0
.end method

.method public SecExternalDisplaySetStatus(IZ)Z
    .locals 2
    .param p1, "param"    # I
    .param p2, "status"    # Z

    .prologue
    .line 638
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 639
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetStatus(IZ)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayToast(I)V
    .locals 4
    .param p1, "nIndex"    # I

    .prologue
    .line 340
    sget-boolean v1, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v1, :cond_0

    .line 341
    const-string v1, "SecExternalDisplayService_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " SecExternalDisplayToast : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_0
    const/4 v0, 0x0

    .line 345
    .local v0, "strDefault":Ljava/lang/String;
    sget-object v1, Lcom/android/server/SecExternalDisplayService$5;->$SwitchMap$com$android$server$SecExternalDisplayService$EDSToast:[I

    invoke-static {p1}, Lcom/android/server/SecExternalDisplayService$EDSToast;->toStatus(I)Lcom/android/server/SecExternalDisplayService$EDSToast;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayService$EDSToast;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 363
    :goto_0
    if-eqz v0, :cond_1

    .line 364
    sget-object v1, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 365
    :cond_1
    return-void

    .line 349
    :pswitch_0
    sget-object v1, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104072e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 350
    goto :goto_0

    .line 354
    :pswitch_1
    sget-object v1, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040731

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 355
    goto :goto_0

    .line 359
    :pswitch_2
    sget-object v1, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040733

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public SecExternalDisplayType(Z)Z
    .locals 2
    .param p1, "bIsTablet"    # Z

    .prologue
    .line 676
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 677
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayType(Z)Z

    move-result v0

    return v0
.end method

.method public getEDSContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public handleAlarm(Z)Z
    .locals 4
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x1

    .line 444
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_0

    .line 445
    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle Alarm : !! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    if-eqz p1, :cond_3

    .line 448
    iput-boolean v3, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    .line 449
    iget-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 450
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_1

    .line 451
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Destroy SmartDock Surface !!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_1
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    .line 465
    :cond_2
    :goto_0
    return v3

    .line 458
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 459
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_4

    .line 460
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Create SmartDock Surface !!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_4
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_OFF:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    goto :goto_0
.end method

.method public handleHDMIConnection(Z)Z
    .locals 5
    .param p1, "status"    # Z

    .prologue
    const/4 v4, 0x1

    .line 380
    sget-boolean v1, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v1, :cond_0

    .line 381
    const-string v1, "SecExternalDisplayService_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " handleHDMIConnection : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_0
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    .line 383
    .local v0, "cable_status":Z
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 384
    invoke-direct {p0, p1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetWakeLock(Z)V

    .line 385
    if-ne p1, v4, :cond_4

    .line 387
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 390
    :cond_1
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_WFD:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 391
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_WFD_DISCONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSToast;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayToast(I)V

    .line 398
    :goto_0
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 400
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_OFF:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    .line 416
    :cond_2
    :goto_1
    return v4

    .line 394
    :cond_3
    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, " HDMI Connected : "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_HDMI_CONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSToast;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayToast(I)V

    goto :goto_0

    .line 404
    :cond_4
    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, " HDMI DisConnected : "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 407
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    .line 410
    :cond_5
    if-ne v0, v4, :cond_2

    .line 412
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_HDMI_DISCONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSToast;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayToast(I)V

    goto :goto_1
.end method

.method public handleSmartDockConnection(I)Z
    .locals 6
    .param p1, "status"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 476
    const-string v1, "SecExternalDisplayService_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " handleSmartDockConnection status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Intent.EXTRA_USB_HID_STATE_ATTACHED value is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    if-ne v4, p1, :cond_4

    .line 479
    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, "Mouse  Connected  Smart Dock!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1, v4}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 482
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-ne v1, v4, :cond_0

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 485
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_OFF:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    .line 497
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 498
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_1

    .line 499
    sget-object v1, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 500
    :cond_1
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_3

    .line 502
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v1, :cond_2

    .line 503
    new-instance v1, Lcom/android/server/SecExternalDisplayService$3;

    invoke-direct {v1, p0}, Lcom/android/server/SecExternalDisplayService$3;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 520
    :cond_2
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :cond_3
    :goto_1
    return v4

    .line 488
    :cond_4
    if-nez p1, :cond_0

    .line 489
    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, "Mouse Disconnected from Smart Dock!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    .line 493
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1, v5}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    goto :goto_0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, "Phone window manager doesn\'t have the permssion READ_PHONE_STATE. please defines it via <uses-permssion> in AndroidManifest.xml."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 527
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_5
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_3

    .line 528
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1
.end method

.method public handleWFDConnection(I)Z
    .locals 4
    .param p1, "status"    # I

    .prologue
    const/4 v3, 0x1

    .line 426
    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllShare Cast Connected Status : !! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    if-ne p1, v3, :cond_0

    .line 429
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_WFD:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    move-result v0

    .line 431
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_WFD:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    move-result v0

    goto :goto_0
.end method
