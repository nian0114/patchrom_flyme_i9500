.class public Lcom/android/server/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsService$LockSettingsObserver;,
        Lcom/android/server/LockSettingsService$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final COLUMNS_FOR_QUERY:[Ljava/lang/String;

.field private static final COLUMN_KEY:Ljava/lang/String; = "name"

.field private static final COLUMN_USERID:Ljava/lang/String; = "user"

.field private static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field private static final HAS_LOCK_BACKUP_PIN_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockBackupPinCacheKey"

.field private static final HAS_LOCK_CARRIER_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockCarrierPasswordCacheKey"

.field private static final HAS_LOCK_FMM_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockFMMPasswordCacheKey"

.field private static final HAS_LOCK_PARENTCONTROL_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockParentControlPasswordCacheKey"

.field private static final HAS_LOCK_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPasswordCacheKey"

.field private static final HAS_LOCK_PATTERN_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPatternCacheKey"

.field private static final IS_CARRIER_LOCK_ENABLED_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.IsCarrierLockPlusEnabledCacheKey"

.field public static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field private static final LOCK_BACKUPPIN_FILE:Ljava/lang/String; = "sparepassword.key"

.field private static final LOCK_FINGERPRINT_PASSWORD_FILE:Ljava/lang/String; = "fingerprintpassword.key"

.field private static final LOCK_FMM_FILE:Ljava/lang/String; = "fmmpassword.key"

.field private static final LOCK_PARENT_CONTROL_PASSWORD_FILE:Ljava/lang/String; = "parentcontrol.key"

.field private static final LOCK_PASSWORD_FILE:Ljava/lang/String; = "password.key"

.field private static final LOCK_PATTERN_FILE:Ljava/lang/String; = "gesture.key"

.field private static final LOCK_SIGNATURE_BACKUPPIN_FILE:Ljava/lang/String; = "signaturebackuppin.key"

.field private static final LOCK_SIGNATURE_FILE:Ljava/lang/String; = "signature.key"

.field private static final LOCK_SKT_FILE:Ljava/lang/String; = "sktpassword.key"

.field private static final PATH_PERMANENT_MEM_LOCK_INFO:Ljava/lang/String; = "/efs/sktdm_mem/lawlock.txt"

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final PERSONAL_FINGER_PRINT_PASSWORD_FILE:Ljava/lang/String; = "personalfingerprintpassword.key"

.field private static final PERSONAL_LOCK_BACKUP_PIN_FILE:Ljava/lang/String; = "personalbackuppin.key"

.field private static final PERSONAL_LOCK_PASSWORD_FILE:Ljava/lang/String; = "personalpassword.key"

.field private static final PERSONAL_LOCK_PATTERN_FILE:Ljava/lang/String; = "personalpattern.key"

.field private static final PERSONAL_LOCK_PIN_FILE:Ljava/lang/String; = "personalpin.key"

.field private static final READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final SIGNATURE_SETTINGS_ADDED_INDEX:I = 0x9

.field private static final SIGNATURE_SETTINGS_CURRENT:I = 0x16

.field private static final SIGNATURE_SETTINGS_OLD:I = 0x15

.field private static final SYSTEM_DEBUGGABLE:Ljava/lang/String; = "ro.debuggable"

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TABLE:Ljava/lang/String; = "locksettings"

.field private static final TAG:Ljava/lang/String; = "LockSettingsService"

.field private static final VALID_SETTINGS:[Ljava/lang/String;

.field private static maxRetry:I = 0x0

.field private static final nullPassword:Ljava/lang/String; = "_nullPassword012"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mFirstCallToVold:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LockSettingsService$LockSettingsObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "value"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/LockSettingsService;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    const/16 v0, 0x14

    sput v0, Lcom/android/server/LockSettingsService;->maxRetry:I

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "lockscreen.lockedoutpermanently"

    aput-object v1, v0, v3

    const-string v1, "lockscreen.lockoutattemptdeadline"

    aput-object v1, v0, v4

    const-string v1, "lockscreen.patterneverchosen"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "lockscreen.password_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lockscreen.password_type_alternate"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "lockscreen.password_salt"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lockscreen.disabled"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lockscreen.options"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "lockscreen.biometric_weak_fallback"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lockscreen.biometricweakeverchosen"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lockscreen.power_button_instantly_locks"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lockscreen.passwordhistory"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "lockscreen.signatureregistered"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "lock_pattern_autolock"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "lock_biometric_weak_flags"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "lock_pattern_visible_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "lock_pattern_tactile_feedback_enabled"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "lock_screen_owner_info_enabled"

    aput-object v1, v0, v3

    const-string v1, "lock_screen_owner_info"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/LockSettingsService;->READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mObservers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/LockSettingsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/LockSettingsService$1;-><init>(Lcom/android/server/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/LockSettingsService$DatabaseHelper;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/LockSettingsService$DatabaseHelper;-><init>(Lcom/android/server/LockSettingsService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LockSettingsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/LockSettingsService;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/LockSettingsService;->writeToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/LockSettingsService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mObservers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkFingerprintPasswordForKeystore(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_null_checkFinger_isMdfSupported, userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string v1, "_nullPassword012"

    invoke-virtual {v0, v1, p1}, Landroid/security/KeyStore;->checkPassword(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_null_checkFinger_updateKeystore, userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->resetHard(I)Z

    const-string v0, "_nullPassword012"

    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsService;->updateKeystore(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_null_checkFinger_maybeUpdateKeystore, userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v0, "_nullPassword012"

    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private final checkPasswordReadPermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsRead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .locals 6
    .param p1, "requestedKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PROFILE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " needs permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.permission.READ_PROFILE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private final checkWritePermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private extractPasswordFromGrabage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 17
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v10

    .local v10, "pms":Lcom/android/server/pm/PersonaManagerService;
    const/4 v9, 0x0

    .local v9, "pInfo":Landroid/content/pm/PersonaInfo;
    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v9

    const/4 v8, 0x0

    .local v8, "matched":Z
    invoke-virtual {v10}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v9, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const/4 v14, 0x1

    iget v15, v9, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    if-le v14, v15, :cond_0

    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " in FOTA migration removing garbage from password!!! "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v5, v14, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v14, v15, v0}, Landroid/security/KeyStore;->checkPassword(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "MDPP in FOTA migration removed all garbage from password!!! "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .end local v5    # "i":I
    :cond_0
    :goto_1
    return-object p1

    .restart local v5    # "i":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v5    # "i":I
    :cond_2
    const/4 v11, 0x0

    .local v11, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v12, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "r"

    invoke-direct {v12, v14, v15}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .local v12, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v14

    long-to-int v14, v14

    new-array v13, v14, [B

    .local v13, "stored":[B
    const/4 v14, 0x0

    array-length v15, v13

    invoke-virtual {v12, v13, v14, v15}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    .local v3, "got":I
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    const/4 v5, 0x1

    .restart local v5    # "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v5, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v14, v15, v0}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    .local v4, "hash":[B
    invoke-static {v13, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FOTA migration removed all garbage from password!!! "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object p1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v5    # "i":I
    .end local v12    # "raf":Ljava/io/RandomAccessFile;
    .end local v13    # "stored":[B
    .restart local v11    # "raf":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v2

    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :goto_3
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot read file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    .local v6, "ioe":Ljava/io/IOException;
    :goto_4
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot read file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_0

    :try_start_2
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v7

    .local v7, "ioeClose":Ljava/io/IOException;
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot close file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v6    # "ioe":Ljava/io/IOException;
    .end local v7    # "ioeClose":Ljava/io/IOException;
    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .restart local v12    # "raf":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v6

    move-object v11, v12

    .end local v12    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .restart local v12    # "raf":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v2

    move-object v11, v12

    .end local v12    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_3
.end method

.method private getLockBackupPinFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sparepassword.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "sparepassword.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLockCarrierPasswordFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sktpassword.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "sktpassword.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLockFMMPasswordFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fmmpassword.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "fmmpassword.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLockFingerprintPasswordFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fingerprintpassword.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "fingerprintpassword.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLockParentControlPasswordFilename(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "parentcontrol.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "parentcontrol.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLockPasswordFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getUserParentOrSelfId(I)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "password.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "password.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLockPatternFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "dataSystemDirectory":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getUserParentOrSelfId(I)I

    move-result p1

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gesture.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "gesture.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPersonalModeBackupPinFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "personalbackuppin.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "personalbackuppin.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getPersonalModeFingerprintPasswordFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "personalfingerprintpassword.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "personalfingerprintpassword.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getPersonalModePasswordFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "personalpassword.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "personalpassword.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getPersonalModePatternFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "personalpattern.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "personalpattern.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getPersonalModePinFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "personalpin.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "personalpin.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getProfiles(I)Ljava/util/List;
    .locals 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v8, "user"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .local v5, "um":Landroid/os/UserManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v6

    .local v6, "versionInfo":Landroid/os/Bundle;
    if-eqz v6, :cond_3

    const-string v7, "2.0"

    const-string v8, "version"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .local v4, "uinfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v4    # "uinfo":Landroid/content/pm/UserInfo;
    :cond_0
    :goto_0
    return-object v2

    .restart local v4    # "uinfo":Landroid/content/pm/UserInfo;
    :cond_1
    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    .local v3, "profilesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .local v1, "pi":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pi":Landroid/content/pm/UserInfo;
    .end local v3    # "profilesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "uinfo":Landroid/content/pm/UserInfo;
    :cond_3
    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method private getSignatureBackupPinFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "signaturebackuppin.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "signaturebackuppin.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getSignatureFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "signature.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "signature.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getUserParentOrSelfId(I)I
    .locals 5
    .param p1, "userId"    # I

    .prologue
    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    .local v2, "versionInfo":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    const-string v3, "2.0"

    const-string v4, "version"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x64

    if-lt p1, v3, :cond_1

    .end local v2    # "versionInfo":Landroid/os/Bundle;
    .end local p1    # "userId":I
    :cond_0
    :goto_0
    return p1

    .restart local v2    # "versionInfo":Landroid/os/Bundle;
    .restart local p1    # "userId":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .local v0, "pi":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    iget p1, v0, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0
.end method

.method private maybeUpdateKeystore(Ljava/lang/String;I)V
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .local v1, "ks":Landroid/security/KeyStore;
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .local v5, "shouldReset":Z
    if-nez p2, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    invoke-virtual {v1}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v5, 0x0

    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .local v2, "pi":Landroid/content/pm/UserInfo;
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    const/16 v7, 0x3e8

    invoke-static {v6, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .local v3, "profileUid":I
    if-eqz v5, :cond_1

    invoke-virtual {v1, v3}, Landroid/security/KeyStore;->resetUid(I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1, v3}, Landroid/security/KeyStore;->passwordUid(Ljava/lang/String;I)Z

    goto :goto_0

    .end local v2    # "pi":Landroid/content/pm/UserInfo;
    .end local v3    # "profileUid":I
    :cond_2
    return-void
.end method

.method private migrateOldData()V
    .locals 26

    .prologue
    :try_start_0
    const-string v23, "migrated"

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    if-nez v23, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .local v9, "cr":Landroid/content/ContentResolver;
    sget-object v8, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    .local v8, "arr$":[Ljava/lang/String;
    array-length v14, v8

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v14, :cond_1

    aget-object v21, v8, v12

    .local v21, "validSetting":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-static {v9, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .local v22, "value":Ljava/lang/String;
    if-eqz v22, :cond_0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .end local v21    # "validSetting":Ljava/lang/String;
    .end local v22    # "value":Ljava/lang/String;
    :cond_1
    const-string v23, "migrated"

    const-string v24, "true"

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v23, "LockSettingsService"

    const-string v24, "Migrated lock settings to new location"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v9    # "cr":Landroid/content/ContentResolver;
    .end local v12    # "i$":I
    .end local v14    # "len$":I
    :cond_2
    const-string v23, "migrated_user_specific"

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    if-nez v23, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "user"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/UserManager;

    .local v17, "um":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .restart local v9    # "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {v17 .. v17}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v20

    .local v20, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v18, 0x0

    .local v18, "user":I
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v19, v0

    .local v19, "userId":I
    const-string v6, "lock_screen_owner_info"

    .local v6, "OWNER_INFO":Ljava/lang/String;
    const-string v23, "lock_screen_owner_info"

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .local v15, "ownerInfo":Ljava/lang/String;
    if-eqz v15, :cond_3

    const-string v23, "lock_screen_owner_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v19

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v23, ""

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-static {v9, v15, v0, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_3
    const-string v7, "lock_screen_owner_info_enabled"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .local v7, "OWNER_INFO_ENABLED":Ljava/lang/String;
    :try_start_1
    const-string v23, "lock_screen_owner_info_enabled"

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .local v13, "ivalue":I
    if-eqz v13, :cond_5

    const/4 v11, 0x1

    .local v11, "enabled":Z
    :goto_2
    const-string v23, "lock_screen_owner_info_enabled"

    if-eqz v11, :cond_6

    const-wide/16 v24, 0x1

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v11    # "enabled":Z
    .end local v13    # "ivalue":I
    :cond_4
    :goto_4
    :try_start_2
    const-string v23, "lock_screen_owner_info_enabled"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-static {v9, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .restart local v13    # "ivalue":I
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .restart local v11    # "enabled":Z
    :cond_6
    const-wide/16 v24, 0x0

    goto :goto_3

    .end local v11    # "enabled":Z
    .end local v13    # "ivalue":I
    :catch_0
    move-exception v10

    .local v10, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_4

    const-string v23, "lock_screen_owner_info_enabled"

    const-wide/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .end local v6    # "OWNER_INFO":Ljava/lang/String;
    .end local v7    # "OWNER_INFO_ENABLED":Ljava/lang/String;
    .end local v9    # "cr":Landroid/content/ContentResolver;
    .end local v10    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v15    # "ownerInfo":Ljava/lang/String;
    .end local v17    # "um":Landroid/os/UserManager;
    .end local v18    # "user":I
    .end local v19    # "userId":I
    .end local v20    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_1
    move-exception v16

    .local v16, "re":Landroid/os/RemoteException;
    const-string v23, "LockSettingsService"

    const-string v24, "Unable to migrate old data"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v16    # "re":Landroid/os/RemoteException;
    :cond_7
    :goto_5
    return-void

    .restart local v9    # "cr":Landroid/content/ContentResolver;
    .restart local v17    # "um":Landroid/os/UserManager;
    .restart local v18    # "user":I
    .restart local v20    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_8
    :try_start_3
    const-string v23, "migrated_user_specific"

    const-string v24, "true"

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v23, "LockSettingsService"

    const-string v24, "Migrated per-user lock settings to new location"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5
.end method

.method private readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    move-object v9, p2

    .local v9, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/server/LockSettingsService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "locksettings"

    sget-object v2, Lcom/android/server/LockSettingsService;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    const-string v3, "user=? AND name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    const/4 v6, 0x1

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v9
.end method

.method private updateKeystore(Ljava/lang/String;I)V
    .locals 12
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/16 v11, 0x14

    iget-object v8, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .local v7, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .local v1, "ks":Landroid/security/KeyStore;
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getProfiles(I)Ljava/util/List;

    move-result-object v5

    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    .local v6, "shouldReset":Z
    invoke-virtual {v1, p2}, Landroid/security/KeyStore;->isEmpty(I)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v6, 0x0

    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .local v2, "pi":Landroid/content/pm/UserInfo;
    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    const/16 v9, 0x3e8

    invoke-static {v8, v9}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .local v4, "profileUid":I
    if-eqz v6, :cond_2

    invoke-virtual {v1, v4}, Landroid/security/KeyStore;->resetUid(I)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1, v4}, Landroid/security/KeyStore;->passwordUid(Ljava/lang/String;I)Z

    const-string v8, "LockSettingsService"

    const-string v9, "UpdateKeystore :keyStore.password"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v3

    .local v3, "policyRetry":I
    sget v8, Lcom/android/server/LockSettingsService;->maxRetry:I

    if-eq v3, v8, :cond_1

    if-eqz v3, :cond_3

    sput v3, Lcom/android/server/LockSettingsService;->maxRetry:I

    sget v8, Lcom/android/server/LockSettingsService;->maxRetry:I

    invoke-virtual {v1, v8}, Landroid/security/KeyStore;->setMaxRetryCount(I)Z

    const-string v8, "MDPP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Max retry count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/LockSettingsService;->maxRetry:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget v8, Lcom/android/server/LockSettingsService;->maxRetry:I

    if-eq v11, v8, :cond_1

    sput v11, Lcom/android/server/LockSettingsService;->maxRetry:I

    sget v8, Lcom/android/server/LockSettingsService;->maxRetry:I

    invoke-virtual {v1, v8}, Landroid/security/KeyStore;->setMaxRetryCount(I)Z

    const-string v8, "MDPP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Max retry count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/LockSettingsService;->maxRetry:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v2    # "pi":Landroid/content/pm/UserInfo;
    .end local v3    # "policyRetry":I
    .end local v4    # "profileUid":I
    :cond_4
    return-void
.end method

.method private writeFile(Ljava/lang/String;[B)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hash"    # [B

    .prologue
    :try_start_0
    const-string v3, "fmm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .local v0, "debugFMM":Z
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v2, "raf":Ljava/io/RandomAccessFile;
    if-eqz p2, :cond_0

    array-length v3, p2

    if-nez v3, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    const-string v3, "LockSettingsService"

    const-string v4, "hash file remove"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    :goto_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .end local v0    # "debugFMM":Z
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    :goto_1
    return-void

    .restart local v0    # "debugFMM":Z
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_2
    if-eqz v0, :cond_3

    const-string v3, "LockSettingsService"

    const-string v4, "hash file write"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v3, 0x0

    array-length v4, p2

    invoke-virtual {v2, p2, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "debugFMM":Z
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .local v1, "ioe":Ljava/io/IOException;
    const-string v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing to file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private writeToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "user"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v1, "locksettings"

    const-string v2, "name=? AND user=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "locksettings"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private writeToDb(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/LockSettingsService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->writeToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, p1, p3}, Lcom/android/server/LockSettingsService;->notifyObservers(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public checkBackupPin(Ljava/lang/String;I)Z
    .locals 16
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    const/4 v9, 0x0

    .local v9, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->getLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "r"

    invoke-direct {v10, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .local v10, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    long-to-int v7, v12

    .local v7, "length":I
    new-array v11, v7, [B

    .local v11, "stored":[B
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v10, v11, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .local v3, "got":I
    if-gtz v3, :cond_2

    const/4 v8, 0x0

    if-eqz v10, :cond_0

    :try_start_2
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v9, v10

    .end local v3    # "got":I
    .end local v7    # "length":I
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :cond_1
    :goto_1
    return v8

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "got":I
    .restart local v7    # "length":I
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "stored":[B
    :catch_0
    move-exception v6

    .local v6, "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v6    # "ioeClose":Ljava/io/IOException;
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    .local v4, "hash":[B
    invoke-static {v11, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    .local v8, "matched":Z
    if-eqz v8, :cond_3

    const-string v12, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v12, v14, v15, v1}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    if-eqz v10, :cond_4

    :try_start_4
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :goto_2
    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v7    # "length":I
    .end local v8    # "matched":Z
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v2

    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v8, 0x0

    if-eqz v9, :cond_1

    :try_start_6
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .local v5, "ioe":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v8, 0x0

    if-eqz v9, :cond_1

    :try_start_8
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_5
    if-eqz v9, :cond_5

    :try_start_9
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_5
    :goto_6
    throw v12

    :catch_6
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v13, "LockSettingsService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot close file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v12

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v5

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v2

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_3
.end method

.method public checkCarrierPassword(Ljava/lang/String;I)Z
    .locals 16
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    const/4 v9, 0x0

    .local v9, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->getLockCarrierPasswordFilename(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "r"

    invoke-direct {v10, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .local v10, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    long-to-int v7, v12

    .local v7, "length":I
    new-array v11, v7, [B

    .local v11, "stored":[B
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v10, v11, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .local v3, "got":I
    if-gtz v3, :cond_2

    const/4 v8, 0x0

    if-eqz v10, :cond_0

    :try_start_2
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v9, v10

    .end local v3    # "got":I
    .end local v7    # "length":I
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :cond_1
    :goto_1
    return v8

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "got":I
    .restart local v7    # "length":I
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "stored":[B
    :catch_0
    move-exception v6

    .local v6, "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v6    # "ioeClose":Ljava/io/IOException;
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    .local v4, "hash":[B
    invoke-static {v11, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    .local v8, "matched":Z
    if-eqz v8, :cond_3

    const-string v12, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v12, v14, v15, v1}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    if-eqz v10, :cond_4

    :try_start_4
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :goto_2
    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v7    # "length":I
    .end local v8    # "matched":Z
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v2

    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v8, 0x0

    if-eqz v9, :cond_1

    :try_start_6
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .local v5, "ioe":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v8, 0x0

    if-eqz v9, :cond_1

    :try_start_8
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_5
    if-eqz v9, :cond_5

    :try_start_9
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_5
    :goto_6
    throw v12

    :catch_6
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v13, "LockSettingsService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot close file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v12

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v5

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v2

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_3
.end method

.method public checkFMMPassword(Ljava/lang/String;I)Z
    .locals 16
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    const/4 v9, 0x0

    .local v9, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->getLockFMMPasswordFilename(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "r"

    invoke-direct {v10, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .local v10, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    long-to-int v7, v12

    .local v7, "length":I
    new-array v11, v7, [B

    .local v11, "stored":[B
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v10, v11, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .local v3, "got":I
    if-gtz v3, :cond_2

    const/4 v8, 0x0

    if-eqz v10, :cond_0

    :try_start_2
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v9, v10

    .end local v3    # "got":I
    .end local v7    # "length":I
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :cond_1
    :goto_1
    return v8

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "got":I
    .restart local v7    # "length":I
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "stored":[B
    :catch_0
    move-exception v6

    .local v6, "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v6    # "ioeClose":Ljava/io/IOException;
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    .local v4, "hash":[B
    invoke-static {v11, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    .local v8, "matched":Z
    if-eqz v8, :cond_3

    const-string v12, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v12, v14, v15, v1}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    if-eqz v10, :cond_4

    :try_start_4
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :goto_2
    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v7    # "length":I
    .end local v8    # "matched":Z
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v2

    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v8, 0x0

    if-eqz v9, :cond_1

    :try_start_6
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .local v5, "ioe":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v8, 0x0

    if-eqz v9, :cond_1

    :try_start_8
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_5
    if-eqz v9, :cond_5

    :try_start_9
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_5
    :goto_6
    throw v12

    :catch_6
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v13, "LockSettingsService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot close file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v12

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v5

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v2

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_3
.end method

.method public checkFingerprintPassword(Ljava/lang/String;I)Z
    .locals 16
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    const/4 v9, 0x0

    .local v9, "raf":Ljava/io/RandomAccessFile;
    if-eqz p1, :cond_1

    const-string v12, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->checkFingerprintPasswordForKeystore(I)V

    const/4 v8, 0x0

    :cond_0
    :goto_0
    return v8

    :cond_1
    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->getLockFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "r"

    invoke-direct {v10, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .local v10, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    long-to-int v7, v12

    .local v7, "length":I
    new-array v11, v7, [B

    .local v11, "stored":[B
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v10, v11, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    .local v3, "got":I
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gtz v3, :cond_3

    const/4 v8, 0x0

    if-eqz v10, :cond_2

    :try_start_2
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v6

    .local v6, "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v6    # "ioeClose":Ljava/io/IOException;
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    .local v4, "hash":[B
    invoke-static {v11, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    .local v8, "matched":Z
    if-eqz v8, :cond_4

    const-string v12, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v12, v14, v15, v1}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->checkFingerprintPasswordForKeystore(I)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    if-eqz v10, :cond_5

    :try_start_4
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_5
    :goto_2
    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v7    # "length":I
    .end local v8    # "matched":Z
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v2

    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v8, 0x0

    if-eqz v9, :cond_0

    :try_start_6
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .local v5, "ioe":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v8, 0x0

    if-eqz v9, :cond_0

    :try_start_8
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_5
    if-eqz v9, :cond_6

    :try_start_9
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_6
    :goto_6
    throw v12

    :catch_6
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v13, "LockSettingsService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot close file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v12

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v5

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v2

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_3
.end method

.method public checkParentControlPassword([BI)Z
    .locals 12
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    const/4 v8, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    const/4 v5, 0x0

    .local v5, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockParentControlPasswordFilename(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "r"

    invoke-direct {v6, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .local v6, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    long-to-int v4, v10

    .local v4, "length":I
    new-array v7, v4, [B

    .local v7, "stored":[B
    const/4 v9, 0x0

    array-length v10, v7

    invoke-virtual {v6, v7, v9, v10}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .local v1, "got":I
    if-gtz v1, :cond_2

    if-eqz v6, :cond_0

    :try_start_2
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v5, v6

    .end local v1    # "got":I
    .end local v4    # "length":I
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .end local v7    # "stored":[B
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :cond_1
    :goto_1
    return v8

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "got":I
    .restart local v4    # "length":I
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "stored":[B
    :catch_0
    move-exception v3

    .local v3, "ioeClose":Ljava/io/IOException;
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v3    # "ioeClose":Ljava/io/IOException;
    :cond_2
    :try_start_3
    invoke-static {v7, p1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v8

    if-eqz v6, :cond_3

    :try_start_4
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_2
    move-object v5, v6

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v3

    .restart local v3    # "ioeClose":Ljava/io/IOException;
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v1    # "got":I
    .end local v3    # "ioeClose":Ljava/io/IOException;
    .end local v4    # "length":I
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .end local v7    # "stored":[B
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v0

    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot read file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_1

    :try_start_6
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v3

    .restart local v3    # "ioeClose":Ljava/io/IOException;
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v3    # "ioeClose":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .local v2, "ioe":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot read file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v5, :cond_1

    :try_start_8
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v3

    .restart local v3    # "ioeClose":Ljava/io/IOException;
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v3    # "ioeClose":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v5, :cond_4

    :try_start_9
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_4
    :goto_6
    throw v8

    :catch_6
    move-exception v3

    .restart local v3    # "ioeClose":Ljava/io/IOException;
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v3    # "ioeClose":Ljava/io/IOException;
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v0

    move-object v5, v6

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_3
.end method

.method public checkPassword(Ljava/lang/String;I)Z
    .locals 18
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v13

    .local v13, "versionInfo":Landroid/os/Bundle;
    if-eqz v13, :cond_0

    const-string v14, "2.0"

    const-string v15, "version"

    invoke-virtual {v13, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v9

    .local v9, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v9, :cond_0

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-direct/range {p0 .. p2}, Lcom/android/server/LockSettingsService;->extractPasswordFromGrabage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v9, v0, v1, v14}, Lcom/android/server/pm/PersonaManagerService;->getEncodedPassword(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    .end local v9    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_0
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v14

    if-eqz v14, :cond_6

    if-eqz p1, :cond_1

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    :cond_1
    const/4 v8, 0x0

    .local v8, "matched":Z
    :cond_2
    :goto_0
    if-eqz v8, :cond_3

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-direct/range {p0 .. p2}, Lcom/android/server/LockSettingsService;->updateKeystore(Ljava/lang/String;I)V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->clear()V

    .end local v8    # "matched":Z
    :cond_4
    :goto_2
    return v8

    :cond_5
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v14

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Landroid/security/KeyStore;->checkPassword(Ljava/lang/String;I)Z

    move-result v8

    .restart local v8    # "matched":Z
    goto :goto_0

    .end local v8    # "matched":Z
    :cond_6
    const/4 v10, 0x0

    .local v10, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v11, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "r"

    invoke-direct {v11, v14, v15}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .local v11, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v14

    long-to-int v7, v14

    .local v7, "length":I
    new-array v12, v7, [B

    .local v12, "stored":[B
    const/4 v14, 0x0

    array-length v15, v12

    invoke-virtual {v11, v12, v14, v15}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .local v3, "got":I
    if-gtz v3, :cond_7

    const/4 v8, 0x0

    if-eqz v11, :cond_4

    :try_start_2
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    .local v6, "ioeClose":Ljava/io/IOException;
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot close file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v6    # "ioeClose":Ljava/io/IOException;
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    .local v4, "hash":[B
    invoke-static {v12, v4}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v8

    .restart local v8    # "matched":Z
    if-eqz v11, :cond_2

    :try_start_4
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot close file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v7    # "length":I
    .end local v8    # "matched":Z
    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .end local v12    # "stored":[B
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v2

    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot read file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v8, 0x0

    if-eqz v10, :cond_4

    :try_start_6
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot close file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .local v5, "ioe":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot read file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v8, 0x0

    if-eqz v10, :cond_4

    :try_start_8
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot close file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :goto_5
    if-eqz v10, :cond_8

    :try_start_9
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_8
    :goto_6
    throw v14

    :catch_6
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v15, "LockSettingsService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cannot close file "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v8    # "matched":Z
    :cond_9
    invoke-direct/range {p0 .. p2}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V

    goto/16 :goto_1

    .end local v8    # "matched":Z
    .restart local v11    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v14

    move-object v10, v11

    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "raf":Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v5

    move-object v10, v11

    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "raf":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v2

    move-object v10, v11

    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_3
.end method

.method public checkPattern(Ljava/lang/String;I)Z
    .locals 18
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    const/4 v10, 0x0

    .local v10, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v13

    .local v13, "versionInfo":Landroid/os/Bundle;
    if-eqz v13, :cond_0

    const-string v14, "2.0"

    const-string v15, "version"

    invoke-virtual {v13, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v9

    .local v9, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v9, :cond_0

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x1

    move/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v9, v0, v1, v14}, Lcom/android/server/pm/PersonaManagerService;->setCachedPassword(ILjava/lang/String;Z)V

    .end local v9    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_0
    new-instance v11, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "r"

    invoke-direct {v11, v14, v15}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .local v11, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v14

    long-to-int v7, v14

    .local v7, "length":I
    new-array v12, v7, [B

    .local v12, "stored":[B
    const/4 v14, 0x0

    array-length v15, v12

    invoke-virtual {v11, v12, v14, v15}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .local v3, "got":I
    if-gtz v3, :cond_3

    const/4 v8, 0x0

    if-eqz v11, :cond_1

    :try_start_2
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    move-object v10, v11

    .end local v3    # "got":I
    .end local v7    # "length":I
    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .end local v12    # "stored":[B
    .end local v13    # "versionInfo":Landroid/os/Bundle;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :cond_2
    :goto_1
    return v8

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "got":I
    .restart local v7    # "length":I
    .restart local v11    # "raf":Ljava/io/RandomAccessFile;
    .restart local v12    # "stored":[B
    .restart local v13    # "versionInfo":Landroid/os/Bundle;
    :catch_0
    move-exception v6

    .local v6, "ioeClose":Ljava/io/IOException;
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot close file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v6    # "ioeClose":Ljava/io/IOException;
    :cond_3
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v4

    .local v4, "hash":[B
    invoke-static {v12, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    .local v8, "matched":Z
    if-eqz v8, :cond_4

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-direct/range {p0 .. p2}, Lcom/android/server/LockSettingsService;->updateKeystore(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    :goto_2
    if-eqz v11, :cond_5

    :try_start_4
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_3
    move-object v10, v11

    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "raf":Ljava/io/RandomAccessFile;
    :cond_6
    :try_start_5
    invoke-direct/range {p0 .. p2}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v7    # "length":I
    .end local v8    # "matched":Z
    .end local v12    # "stored":[B
    :catch_1
    move-exception v2

    move-object v10, v11

    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .end local v13    # "versionInfo":Landroid/os/Bundle;
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :goto_4
    :try_start_6
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot read file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v8, 0x0

    if-eqz v10, :cond_2

    :try_start_7
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    :catch_2
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot close file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "got":I
    .restart local v4    # "hash":[B
    .restart local v7    # "length":I
    .restart local v8    # "matched":Z
    .restart local v11    # "raf":Ljava/io/RandomAccessFile;
    .restart local v12    # "stored":[B
    .restart local v13    # "versionInfo":Landroid/os/Bundle;
    :catch_3
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot close file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v7    # "length":I
    .end local v8    # "matched":Z
    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .end local v12    # "stored":[B
    .end local v13    # "versionInfo":Landroid/os/Bundle;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v5

    .local v5, "ioe":Ljava/io/IOException;
    :goto_5
    :try_start_8
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot read file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v8, 0x0

    if-eqz v10, :cond_2

    :try_start_9
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot close file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :goto_6
    if-eqz v10, :cond_7

    :try_start_a
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :cond_7
    :goto_7
    throw v14

    :catch_6
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v15, "LockSettingsService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cannot close file "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "raf":Ljava/io/RandomAccessFile;
    .restart local v13    # "versionInfo":Landroid/os/Bundle;
    :catchall_1
    move-exception v14

    move-object v10, v11

    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_6

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "raf":Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v5

    move-object v10, v11

    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5

    .end local v13    # "versionInfo":Landroid/os/Bundle;
    :catch_8
    move-exception v2

    goto/16 :goto_4
.end method

.method public checkPersonalModeBackupPin(Ljava/lang/String;I)Z
    .locals 16
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    const/4 v9, 0x0

    .local v9, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->getPersonalModeBackupPinFilename(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "r"

    invoke-direct {v10, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .local v10, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    long-to-int v7, v12

    .local v7, "length":I
    new-array v11, v7, [B

    .local v11, "stored":[B
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v10, v11, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .local v3, "got":I
    if-gtz v3, :cond_2

    const/4 v8, 0x0

    if-eqz v10, :cond_0

    :try_start_2
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v9, v10

    .end local v3    # "got":I
    .end local v7    # "length":I
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :cond_1
    :goto_1
    return v8

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "got":I
    .restart local v7    # "length":I
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "stored":[B
    :catch_0
    move-exception v6

    .local v6, "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v6    # "ioeClose":Ljava/io/IOException;
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    .local v4, "hash":[B
    invoke-static {v11, v4}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v8

    .local v8, "matched":Z
    if-eqz v10, :cond_3

    :try_start_4
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_2
    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v7    # "length":I
    .end local v8    # "matched":Z
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v2

    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v8, 0x0

    if-eqz v9, :cond_1

    :try_start_6
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .local v5, "ioe":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v8, 0x0

    if-eqz v9, :cond_1

    :try_start_8
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_5
    if-eqz v9, :cond_4

    :try_start_9
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_4
    :goto_6
    throw v12

    :catch_6
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v13, "LockSettingsService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot close file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v12

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v5

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v2

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_3
.end method

.method public checkPersonalModeFingerprintPassword(Ljava/lang/String;I)Z
    .locals 16
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    const/4 v9, 0x0

    .local v9, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->getPersonalModeFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "r"

    invoke-direct {v10, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .local v10, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    long-to-int v7, v12

    .local v7, "length":I
    new-array v11, v7, [B

    .local v11, "stored":[B
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v10, v11, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .local v3, "got":I
    if-gtz v3, :cond_2

    const/4 v8, 0x0

    if-eqz v10, :cond_0

    :try_start_2
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v9, v10

    .end local v3    # "got":I
    .end local v7    # "length":I
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :cond_1
    :goto_1
    return v8

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "got":I
    .restart local v7    # "length":I
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "stored":[B
    :catch_0
    move-exception v6

    .local v6, "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v6    # "ioeClose":Ljava/io/IOException;
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    .local v4, "hash":[B
    invoke-static {v11, v4}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v8

    .local v8, "matched":Z
    if-eqz v10, :cond_3

    :try_start_4
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_2
    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v7    # "length":I
    .end local v8    # "matched":Z
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v2

    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v8, 0x0

    if-eqz v9, :cond_1

    :try_start_6
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .local v5, "ioe":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v8, 0x0

    if-eqz v9, :cond_1

    :try_start_8
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_5
    if-eqz v9, :cond_4

    :try_start_9
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_4
    :goto_6
    throw v12

    :catch_6
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v13, "LockSettingsService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot close file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v12

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v5

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v2

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_3
.end method

.method public checkPersonalModePassword(Ljava/lang/String;I)Z
    .locals 16
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    const/4 v9, 0x0

    .local v9, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->getPersonalModePasswordFilename(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "r"

    invoke-direct {v10, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .local v10, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    long-to-int v7, v12

    .local v7, "length":I
    new-array v11, v7, [B

    .local v11, "stored":[B
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v10, v11, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .local v3, "got":I
    if-gtz v3, :cond_2

    const/4 v8, 0x0

    if-eqz v10, :cond_0

    :try_start_2
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v9, v10

    .end local v3    # "got":I
    .end local v7    # "length":I
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :cond_1
    :goto_1
    return v8

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "got":I
    .restart local v7    # "length":I
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "stored":[B
    :catch_0
    move-exception v6

    .local v6, "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v6    # "ioeClose":Ljava/io/IOException;
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    .local v4, "hash":[B
    invoke-static {v11, v4}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v8

    .local v8, "matched":Z
    if-eqz v10, :cond_3

    :try_start_4
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_2
    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v7    # "length":I
    .end local v8    # "matched":Z
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v2

    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v8, 0x0

    if-eqz v9, :cond_1

    :try_start_6
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .local v5, "ioe":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v8, 0x0

    if-eqz v9, :cond_1

    :try_start_8
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_5
    if-eqz v9, :cond_4

    :try_start_9
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_4
    :goto_6
    throw v12

    :catch_6
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v13, "LockSettingsService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot close file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v12

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v5

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v2

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_3
.end method

.method public checkPersonalModePattern(Ljava/lang/String;I)Z
    .locals 16
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    const/4 v9, 0x0

    .local v9, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->getPersonalModePatternFilename(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "r"

    invoke-direct {v10, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .local v10, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    long-to-int v7, v12

    .local v7, "length":I
    new-array v11, v7, [B

    .local v11, "stored":[B
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v10, v11, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    .local v3, "got":I
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gtz v3, :cond_2

    const/4 v8, 0x0

    if-eqz v10, :cond_0

    :try_start_2
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v9, v10

    .end local v3    # "got":I
    .end local v7    # "length":I
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :cond_1
    :goto_1
    return v8

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "got":I
    .restart local v7    # "length":I
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "stored":[B
    :catch_0
    move-exception v6

    .local v6, "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v6    # "ioeClose":Ljava/io/IOException;
    :cond_2
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v4

    .local v4, "hash":[B
    invoke-static {v11, v4}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v8

    .local v8, "matched":Z
    if-eqz v10, :cond_3

    :try_start_4
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_2
    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v7    # "length":I
    .end local v8    # "matched":Z
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v2

    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v8, 0x0

    if-eqz v9, :cond_1

    :try_start_6
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .local v5, "ioe":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v8, 0x0

    if-eqz v9, :cond_1

    :try_start_8
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_5
    if-eqz v9, :cond_4

    :try_start_9
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_4
    :goto_6
    throw v12

    :catch_6
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v13, "LockSettingsService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot close file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v12

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v5

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v2

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_3
.end method

.method public checkPersonalModePin(Ljava/lang/String;I)Z
    .locals 16
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    const/4 v9, 0x0

    .local v9, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->getPersonalModePinFilename(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "r"

    invoke-direct {v10, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .local v10, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    long-to-int v7, v12

    .local v7, "length":I
    new-array v11, v7, [B

    .local v11, "stored":[B
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v10, v11, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .local v3, "got":I
    if-gtz v3, :cond_2

    const/4 v8, 0x0

    if-eqz v10, :cond_0

    :try_start_2
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v9, v10

    .end local v3    # "got":I
    .end local v7    # "length":I
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :cond_1
    :goto_1
    return v8

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "got":I
    .restart local v7    # "length":I
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "stored":[B
    :catch_0
    move-exception v6

    .local v6, "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v6    # "ioeClose":Ljava/io/IOException;
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    .local v4, "hash":[B
    invoke-static {v11, v4}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v8

    .local v8, "matched":Z
    if-eqz v10, :cond_3

    :try_start_4
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_2
    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v7    # "length":I
    .end local v8    # "matched":Z
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v2

    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v8, 0x0

    if-eqz v9, :cond_1

    :try_start_6
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .local v5, "ioe":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v8, 0x0

    if-eqz v9, :cond_1

    :try_start_8
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_5
    if-eqz v9, :cond_4

    :try_start_9
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_4
    :goto_6
    throw v12

    :catch_6
    move-exception v6

    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v13, "LockSettingsService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot close file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v12

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v5

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v2

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_3
.end method

.method public checkSignatureBackupPin([BI)Z
    .locals 12
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    const/4 v5, 0x0

    .local v5, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getSignatureBackupPinFilename(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "r"

    invoke-direct {v6, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .local v6, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    long-to-int v4, v10

    .local v4, "length":I
    new-array v7, v4, [B

    .local v7, "stored":[B
    const/4 v9, 0x0

    array-length v10, v7

    invoke-virtual {v6, v7, v9, v10}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .local v1, "got":I
    if-gtz v1, :cond_2

    if-eqz v6, :cond_0

    :try_start_2
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v5, v6

    .end local v1    # "got":I
    .end local v4    # "length":I
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .end local v7    # "stored":[B
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :cond_1
    :goto_1
    return v8

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "got":I
    .restart local v4    # "length":I
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "stored":[B
    :catch_0
    move-exception v3

    .local v3, "ioeClose":Ljava/io/IOException;
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v3    # "ioeClose":Ljava/io/IOException;
    :cond_2
    :try_start_3
    invoke-static {v7, p1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v8

    if-eqz v6, :cond_3

    :try_start_4
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_2
    move-object v5, v6

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v3

    .restart local v3    # "ioeClose":Ljava/io/IOException;
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v1    # "got":I
    .end local v3    # "ioeClose":Ljava/io/IOException;
    .end local v4    # "length":I
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .end local v7    # "stored":[B
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v0

    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot read file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_1

    :try_start_6
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v3

    .restart local v3    # "ioeClose":Ljava/io/IOException;
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v3    # "ioeClose":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .local v2, "ioe":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot read file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v5, :cond_1

    :try_start_8
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v3

    .restart local v3    # "ioeClose":Ljava/io/IOException;
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v3    # "ioeClose":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v5, :cond_4

    :try_start_9
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_4
    :goto_6
    throw v8

    :catch_6
    move-exception v3

    .restart local v3    # "ioeClose":Ljava/io/IOException;
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v3    # "ioeClose":Ljava/io/IOException;
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v0

    move-object v5, v6

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_3
.end method

.method public checkVoldPassword(I)Z
    .locals 14
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v2, 0x0

    const/4 v12, 0x0

    iget-boolean v0, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    if-nez v0, :cond_0

    move v0, v12

    :goto_0
    return v0

    :cond_0
    iput-boolean v12, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v11

    .local v11, "service":Landroid/os/storage/IMountService;
    invoke-interface {v11}, Landroid/os/storage/IMountService;->getPassword()Ljava/lang/String;

    move-result-object v9

    .local v9, "password":Ljava/lang/String;
    invoke-interface {v11}, Landroid/os/storage/IMountService;->clearPassword()V

    if-nez v9, :cond_1

    move v0, v12

    goto :goto_0

    :cond_1
    const-string v0, "content://com.sec.knox.provider/PasswordPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "getMaximumFailedPasswordsForDisable"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    const/4 v10, 0x0

    .local v10, "resultMDM":I
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "getMaximumFailedPasswordsForDisable"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-lez v10, :cond_2

    const-string v0, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check Password again due to PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v10    # "resultMDM":I
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v9, p1}, Lcom/android/server/LockSettingsService;->checkPattern(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v13

    goto :goto_0

    .restart local v10    # "resultMDM":I
    :catch_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .end local v10    # "resultMDM":I
    :cond_4
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v9, p1}, Lcom/android/server/LockSettingsService;->checkPassword(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v7, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .local v7, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v7, v9}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .end local v7    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    :cond_5
    move v0, v13

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DevicePolicyManager;

    .local v8, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v8, v2}, Landroid/app/admin/DevicePolicyManager;->isSupportFingerprintForODE(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v9, p1}, Lcom/android/server/LockSettingsService;->checkFingerprintPassword(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v7, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .restart local v7    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v7, v9}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    invoke-virtual {v8, v2, v12}, Landroid/app/admin/DevicePolicyManager;->setNeedToGetAlternativePasswdForODE(Landroid/content/ComponentName;Z)V

    .end local v7    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    :cond_7
    move v0, v13

    goto/16 :goto_0

    :cond_8
    move v0, v12

    goto/16 :goto_0
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/LockSettingsService;->readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_0
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public getCarrierLockPlusMode(I)Z
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, "mCarrierlockPlusMode":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/sktdm_mem/lawlock.txt"

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

    const-string v2, "LockSettingsService"

    const-string v3, "isCarrierLockPlusEnabled() is true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :goto_1
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v1, "OFF"

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getLong(Ljava/lang/String;JI)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p4}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p4}, Lcom/android/server/LockSettingsService;->readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method public getParentControlPasswordHashSize(I)I
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const/4 v3, -0x1

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    const/4 v4, 0x0

    .local v4, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockParentControlPasswordFilename(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "r"

    invoke-direct {v5, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .local v5, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v6

    long-to-int v3, v6

    .local v3, "length":I
    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v4, v5

    .end local v3    # "length":I
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :cond_1
    :goto_1
    return v3

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "length":I
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v2

    .local v2, "ioeClose":Ljava/io/IOException;
    const-string v6, "LockSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot close file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "ioeClose":Ljava/io/IOException;
    .end local v3    # "length":I
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v6, "LockSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot read file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    .restart local v2    # "ioeClose":Ljava/io/IOException;
    const-string v6, "LockSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot close file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v2    # "ioeClose":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .local v1, "ioe":Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string v6, "LockSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot read file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_1

    :try_start_6
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v2

    .restart local v2    # "ioeClose":Ljava/io/IOException;
    const-string v6, "LockSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot close file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v2    # "ioeClose":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v4, :cond_2

    :try_start_7
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_2
    :goto_5
    throw v6

    :catch_5
    move-exception v2

    .restart local v2    # "ioeClose":Ljava/io/IOException;
    const-string v7, "LockSettingsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot close file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v2    # "ioeClose":Ljava/io/IOException;
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v1

    move-object v4, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_3

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v0

    move-object v4, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_2
.end method

.method getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;
    .locals 2

    .prologue
    const-string v1, "persona"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    .local v0, "pms":Lcom/android/server/pm/PersonaManagerService;
    return-object v0
.end method

.method public getSignatureInfo(I)[B
    .locals 13
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v10, "LockSettingsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getSignatureInfo"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getSignatureFilename(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    const/4 v6, 0x0

    .local v6, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getSignatureFilename(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "r"

    invoke-direct {v7, v10, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .local v7, "raf":Ljava/io/RandomAccessFile;
    if-eqz v7, :cond_5

    const/16 v10, 0x58

    :try_start_1
    new-array v9, v10, [B

    .local v9, "settings":[B
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    long-to-int v8, v10

    .local v8, "savedSettingsLength":I
    const/16 v10, 0x54

    if-ne v8, v10, :cond_2

    const-string v10, "LockSettingsService"

    const-string v11, "Read old signature lock settings"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v5, v8, [B

    .local v5, "prev":[B
    const/4 v10, 0x0

    invoke-virtual {v7, v5, v10, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .local v1, "got":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v10, 0x24

    if-ge v2, v10, :cond_0

    aget-byte v10, v5, v2

    aput-byte v10, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x24

    :goto_1
    const/16 v10, 0x28

    if-ge v2, v10, :cond_1

    const/4 v10, 0x0

    aput-byte v10, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/16 v2, 0x28

    :goto_2
    const/16 v10, 0x58

    if-ge v2, v10, :cond_3

    add-int/lit8 v10, v2, -0x4

    aget-byte v10, v5, v10

    aput-byte v10, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1    # "got":I
    .end local v2    # "i":I
    .end local v5    # "prev":[B
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .restart local v1    # "got":I
    :cond_3
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    if-gtz v1, :cond_4

    const/4 v9, 0x0

    .end local v9    # "settings":[B
    move-object v6, v7

    .end local v1    # "got":I
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .end local v8    # "savedSettingsLength":I
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :goto_3
    return-object v9

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "got":I
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v8    # "savedSettingsLength":I
    .restart local v9    # "settings":[B
    :cond_4
    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_3

    .end local v1    # "got":I
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .end local v8    # "savedSettingsLength":I
    .end local v9    # "settings":[B
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :cond_5
    const/4 v9, 0x0

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_3

    :catch_0
    move-exception v0

    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    :goto_4
    const-string v10, "LockSettingsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot read file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto :goto_3

    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .local v3, "ioe":Ljava/io/IOException;
    :goto_5
    const-string v10, "LockSettingsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot read file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_6

    :try_start_2
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    :goto_6
    const/4 v9, 0x0

    goto :goto_3

    :catch_2
    move-exception v4

    .local v4, "ioeClose":Ljava/io/IOException;
    const-string v10, "LockSettingsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot close file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "ioeClose":Ljava/io/IOException;
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v3

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public haveBackupPin(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public haveCarrierPassword(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockCarrierPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public haveFMMPassword(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockFMMPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public haveFingerprintPassword(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public haveParentControlPassword(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockParentControlPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public havePassword(I)Z
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .local v0, "result":Z
    :goto_0
    return v0

    .end local v0    # "result":Z
    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .restart local v0    # "result":Z
    :goto_1
    goto :goto_0

    .end local v0    # "result":Z
    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public havePattern(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public havePersonalModeBackupPin(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getPersonalModeBackupPinFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public havePersonalModeFingerprintPassword(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getPersonalModeFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public havePersonalModePassword(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getPersonalModePasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public havePersonalModePattern(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getPersonalModePatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public havePersonalModePin(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getPersonalModePinFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public haveSignature(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getSignatureFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public haveSignatureBackupPin(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getSignatureBackupPinFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyObservers(Ljava/lang/String;I)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mObservers:Ljava/util/ArrayList;

    monitor-enter v3

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ge v1, v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LockSettingsService$LockSettingsObserver;

    iget-object v2, v2, Lcom/android/server/LockSettingsService$LockSettingsObserver;->remote:Lcom/android/internal/widget/ILockSettingsObserver;

    invoke-interface {v2, p1, p2}, Lcom/android/internal/widget/ILockSettingsObserver;->onLockSettingChanged(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to notify ILockSettingsObserver: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public registerObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V
    .locals 7
    .param p1, "remote"    # Lcom/android/internal/widget/ILockSettingsObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mObservers:Ljava/util/ArrayList;

    monitor-enter v4

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LockSettingsService$LockSettingsObserver;

    iget-object v3, v3, Lcom/android/server/LockSettingsService$LockSettingsObserver;->remote:Lcom/android/internal/widget/ILockSettingsObserver;

    invoke-interface {v3}, Lcom/android/internal/widget/ILockSettingsObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/widget/ILockSettingsObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v3, v5, :cond_1

    const-string v3, "1"

    const-string v5, "ro.debuggable"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "isDebuggable":Z
    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Observer was already registered."

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v1    # "isDebuggable":Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "isDebuggable":Z
    :cond_0
    :try_start_1
    const-string v3, "LockSettingsService"

    const-string v5, "Observer was already registered."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    .end local v1    # "isDebuggable":Z
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/android/server/LockSettingsService$LockSettingsObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/LockSettingsService$LockSettingsObserver;-><init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$1;)V

    .local v2, "o":Lcom/android/server/LockSettingsService$LockSettingsObserver;
    iput-object p1, v2, Lcom/android/server/LockSettingsService$LockSettingsObserver;->remote:Lcom/android/internal/widget/ILockSettingsObserver;

    iget-object v3, v2, Lcom/android/server/LockSettingsService$LockSettingsObserver;->remote:Lcom/android/internal/widget/ILockSettingsObserver;

    invoke-interface {v3}, Lcom/android/internal/widget/ILockSettingsObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v2, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public removeUser(I)V
    .locals 9
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;

    invoke-virtual {v6}, Lcom/android/server/LockSettingsService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .local v4, "um":Landroid/os/UserManager;
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .local v3, "parentInfo":Landroid/content/pm/UserInfo;
    if-nez v3, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .end local v1    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v6, "locksettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "user=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    .local v2, "ks":Landroid/security/KeyStore;
    const/16 v6, 0x3e8

    invoke-static {p1, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .local v5, "userUid":I
    invoke-virtual {v2, v5}, Landroid/security/KeyStore;->resetUid(I)Z

    return-void

    .end local v2    # "ks":Landroid/security/KeyStore;
    .end local v3    # "parentInfo":Landroid/content/pm/UserInfo;
    .end local v4    # "um":Landroid/os/UserManager;
    .end local v5    # "userUid":I
    :catchall_0
    move-exception v6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/LockSettingsService;->writeToDb(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public setCarrierLockPlusEnabled(I)V
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "LockPatternUtils.Cache.IsCarrierLockPlusEnabledCacheKey"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/LockSettingsService;->notifyObservers(Ljava/lang/String;I)V

    return-void
.end method

.method public setLockBackupPin(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    const-string v0, "LockPatternUtils.Cache.HasLockBackupPinCacheKey"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/LockSettingsService;->notifyObservers(Ljava/lang/String;I)V

    return-void
.end method

.method public setLockCarrierPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockCarrierPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    const-string v0, "LockPatternUtils.Cache.HasLockCarrierPasswordCacheKey"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/LockSettingsService;->notifyObservers(Ljava/lang/String;I)V

    return-void
.end method

.method public setLockFMMPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockFMMPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    const-string v0, "LockPatternUtils.Cache.HasLockFMMPasswordCacheKey"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/LockSettingsService;->notifyObservers(Ljava/lang/String;I)V

    return-void
.end method

.method public setLockFingerprintPassword(Ljava/lang/String;I)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x64

    if-ge p2, v0, :cond_2

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_null_setLFinger, userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_nullPassword012"

    invoke-direct {p0, v0, p2}, Lcom/android/server/LockSettingsService;->updateKeystore(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "_nullPassword012"

    invoke-direct {p0, v0, p2}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public setLockParentControlPassword([BI)V
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockParentControlPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    const-string v0, "LockPatternUtils.Cache.HasLockParentControlPasswordCacheKey"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/LockSettingsService;->notifyObservers(Ljava/lang/String;I)V

    return-void
.end method

.method public setLockPassword(Ljava/lang/String;I)V
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Knox.KeyMgnt :: setLockPassword start "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v3

    .local v3, "versionInfo":Landroid/os/Bundle;
    const/4 v0, 0x0

    .local v0, "knoxSupported":Z
    const/4 v2, 0x0

    .local v2, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v3, :cond_0

    const-string v4, "2.0"

    const-string v5, "version"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/server/LockSettingsService;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v2

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_5

    invoke-virtual {v2, p2}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v1, 0x0

    .local v1, "password2":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    const-string v4, "LockSettingsService"

    const-string v5, "Knox.KeyMgnt :: setLockPassword null pwd - skip"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v1, p2}, Lcom/android/server/LockSettingsService;->updateKeystore(Ljava/lang/String;I)V

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->clear()V

    .end local v1    # "password2":Ljava/lang/String;
    :cond_2
    :goto_2
    const-string v4, "LockPatternUtils.Cache.HasLockPasswordCacheKey"

    invoke-virtual {p0, v4, p2}, Lcom/android/server/LockSettingsService;->notifyObservers(Ljava/lang/String;I)V

    return-void

    .restart local v1    # "password2":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/String;

    .end local v1    # "password2":Ljava/lang/String;
    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v1    # "password2":Ljava/lang/String;
    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Knox.KeyMgnt :: setLockPassword "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1, p2}, Lcom/android/server/LockSettingsService;->extractPasswordFromGrabage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p2, v1}, Lcom/android/server/pm/PersonaManagerService;->onPasswordChange(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1, p2}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    goto :goto_1

    .end local v1    # "password2":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->updateKeystore(Ljava/lang/String;I)V

    goto :goto_2

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    goto :goto_2
.end method

.method public setLockPattern(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->updateKeystore(Ljava/lang/String;I)V

    :goto_0
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    .local v2, "versionInfo":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    const-string v3, "2.0"

    const-string v4, "version"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/LockSettingsService;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    .local v1, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, p2, p1}, Lcom/android/server/pm/PersonaManagerService;->onPatternChange(ILjava/lang/String;)V

    .end local v1    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_0
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    .local v0, "hash":[B
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    const-string v3, "LockPatternUtils.Cache.HasLockPatternCacheKey"

    invoke-virtual {p0, v3, p2}, Lcom/android/server/LockSettingsService;->notifyObservers(Ljava/lang/String;I)V

    return-void

    .end local v0    # "hash":[B
    .end local v2    # "versionInfo":Landroid/os/Bundle;
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setLong(Ljava/lang/String;JI)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/LockSettingsService;->writeToDb(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setPersonalModeFingerprintPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getPersonalModeFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public setPersonalModeLockBackupPin(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getPersonalModeBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public setPersonalModeLockPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getPersonalModePasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public setPersonalModeLockPattern(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    .local v0, "hash":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getPersonalModePatternFilename(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getPersonalModePatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public setPersonalModeLockPin(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getPersonalModePinFilename(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public setSignatureBackupPin([BI)V
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getSignatureBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public setSignatureInfo([BI)V
    .locals 3
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSignatureInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getSignatureFilename(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getSignatureFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->writeToDb(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public systemReady()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->migrateOldData()V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->resetBiometricLock()V

    return-void
.end method

.method public unlockMDPPForFingerprint(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyMgntTest unlockMDPPForFingerprint >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_null_checkFinger_isMdfSupported, userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "LockSettingsService"

    const-string v1, "KeyMgntTest unlockMDPPForFingerprint calling checkPassword >> "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string v1, "_nullPassword012"

    invoke-virtual {v0, v1, p1}, Landroid/security/KeyStore;->checkPassword(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "LockSettingsService"

    const-string v1, "KeyMgntTest unlockMDPPForFingerprint checkPassword >> FALSE "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_null_checkFinger_updateKeystore, userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "LockSettingsService"

    const-string v1, "KeyMgntTest unlockMDPPForFingerprint checkPassword >> TRUE "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v0, "LockSettingsService"

    const-string v1, "KeyMgntTest unlockMDPPForFingerprint MDPP not supported >> "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V
    .locals 4
    .param p1, "remote"    # Lcom/android/internal/widget/ILockSettingsObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mObservers:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LockSettingsService$LockSettingsObserver;

    iget-object v1, v1, Lcom/android/server/LockSettingsService$LockSettingsObserver;->remote:Lcom/android/internal/widget/ILockSettingsObserver;

    invoke-interface {v1}, Lcom/android/internal/widget/ILockSettingsObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/widget/ILockSettingsObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    monitor-exit v2

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
