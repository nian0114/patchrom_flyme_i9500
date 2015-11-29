.class public Lcom/android/internal/widget/LockPatternUtilsCache;
.super Ljava/lang/Object;
.source "LockPatternUtilsCache.java"

# interfaces
.implements Lcom/android/internal/widget/ILockSettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;
    }
.end annotation


# static fields
.field private static final HAS_LOCK_BACKUP_PIN_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockBackupPinCacheKey"

.field private static final HAS_LOCK_CARRIER_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockCarrierPasswordCacheKey"

.field private static final HAS_LOCK_FINGERPRINT_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockFingerprintPasswordCacheKey"

.field private static final HAS_LOCK_FMM_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockFMMPasswordCacheKey"

.field private static final HAS_LOCK_PARENTCONTROL_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockParentControlPasswordCacheKey"

.field private static final HAS_LOCK_PARENTCONTROL_PASSWORD_HASHSIZE_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockParentControlPasswordHashSizeCacheKey"

.field private static final HAS_LOCK_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPasswordCacheKey"

.field private static final HAS_LOCK_PATTERN_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPatternCacheKey"

.field private static final HAS_LOCK_PERSONALMODE_BACKUP_PIN_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPersonalModeBackupPinCacheKey"

.field private static final HAS_LOCK_PERSONALMODE_FINGERPRINT_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPersonalModeFingerprintPasswordCacheKey"

.field private static final HAS_LOCK_PERSONALMODE_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPersonalModePasswordCacheKey"

.field private static final HAS_LOCK_PERSONALMODE_PATTERN_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPersonalModePatternCacheKey"

.field private static final HAS_LOCK_PERSONALMODE_PIN_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPersonalModePinCacheKey"

.field private static final IS_CARRIER_LOCK_ENABLED_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.IsCarrierLockPlusEnabledCacheKey"

.field private static final TAG:Ljava/lang/String; = "LockPatternUtilsCache"

.field private static sInstance:Lcom/android/internal/widget/LockPatternUtilsCache;


# instance fields
.field private final mCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mCacheKey:Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

.field private final mObserver:Lcom/android/internal/widget/ILockSettingsObserver;

.field private final mService:Lcom/android/internal/widget/ILockSettings;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/ILockSettings;)V
    .locals 3
    .param p1, "service"    # Lcom/android/internal/widget/ILockSettings;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCache:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;-><init>(Lcom/android/internal/widget/LockPatternUtilsCache$1;)V

    iput-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCacheKey:Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtilsCache$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtilsCache$1;-><init>(Lcom/android/internal/widget/LockPatternUtilsCache;)V

    iput-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mObserver:Lcom/android/internal/widget/ILockSettingsObserver;

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mObserver:Lcom/android/internal/widget/ILockSettingsObserver;

    invoke-interface {p1, v1}, Lcom/android/internal/widget/ILockSettings;->registerObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/LockPatternUtilsCache;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternUtilsCache;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/LockPatternUtilsCache;
    .locals 2
    .param p0, "service"    # Lcom/android/internal/widget/ILockSettings;

    .prologue
    const-class v1, Lcom/android/internal/widget/LockPatternUtilsCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/widget/LockPatternUtilsCache;->sInstance:Lcom/android/internal/widget/LockPatternUtilsCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/LockPatternUtilsCache;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtilsCache;-><init>(Lcom/android/internal/widget/ILockSettings;)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtilsCache;->sInstance:Lcom/android/internal/widget/LockPatternUtilsCache;

    :cond_0
    sget-object v0, Lcom/android/internal/widget/LockPatternUtilsCache;->sInstance:Lcom/android/internal/widget/LockPatternUtilsCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private invalidateCache(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCache:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCache:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCacheKey:Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->set(Ljava/lang/String;I)Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private peekCache(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCache:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCache:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCacheKey:Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->set(Ljava/lang/String;I)Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private putCache(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCache:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCache:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;-><init>(Lcom/android/internal/widget/LockPatternUtilsCache$1;)V

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->set(Ljava/lang/String;I)Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    move-result-object v2

    invoke-virtual {v0, v2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0}, Lcom/android/internal/widget/ILockSettings;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public checkBackupPin(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkBackupPin(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkCarrierPassword(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkCarrierPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkFMMPassword(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkFMMPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkFingerprintPassword(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkFingerprintPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkParentControlPassword([BI)Z
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkParentControlPassword([BI)Z

    move-result v0

    return v0
.end method

.method public checkPassword(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkPattern(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPattern(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkPersonalModeBackupPin(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModeBackupPin(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkPersonalModeFingerprintPassword(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModeFingerprintPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkPersonalModePassword(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkPersonalModePattern(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePattern(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkPersonalModePin(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePin(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkSignatureBackupPin([BI)Z
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkSignatureBackupPin([BI)Z

    move-result v0

    return v0
.end method

.method public checkVoldPassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->checkVoldPassword(I)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p3}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    .local v0, "result":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, p1, p3, v2}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getCarrierLockPlusMode(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v2, "LockPatternUtils.Cache.IsCarrierLockPlusEnabledCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->getCarrierLockPlusMode(I)Z

    move-result v0

    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.IsCarrierLockPlusEnabledCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p4}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/lang/Long;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    .restart local v2    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    .local v0, "result":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, p1, p4, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getParentControlPasswordHashSize(I)I
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->getParentControlPasswordHashSize(I)I

    move-result v0

    .local v0, "result":I
    const-string v1, "LockPatternUtils.Cache.HasLockParentControlPasswordHashSizeCacheKey"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    return v0
.end method

.method public getSignatureInfo(I)[B
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->getSignatureInfo(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p3}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/String;

    .end local v1    # "value":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, p1, p3, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    move-object v1, v0

    goto :goto_0
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
    const-string v2, "LockPatternUtils.Cache.HasLockBackupPinCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->haveBackupPin(I)Z

    move-result v0

    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockBackupPinCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

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
    const-string v2, "LockPatternUtils.Cache.HasLockCarrierPasswordCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->haveCarrierPassword(I)Z

    move-result v0

    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockCarrierPasswordCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

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
    const-string v2, "LockPatternUtils.Cache.HasLockFMMPasswordCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->haveFMMPassword(I)Z

    move-result v0

    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockFMMPasswordCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

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
    const-string v2, "LockPatternUtils.Cache.HasLockFingerprintPasswordCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->haveFingerprintPassword(I)Z

    move-result v0

    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockFingerprintPasswordCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public haveParentControlPassword(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v2, "LockPatternUtils.Cache.HasLockParentControlPasswordCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->haveParentControlPassword(I)Z

    move-result v0

    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockParentControlPasswordCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public havePassword(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v2, "LockPatternUtils.Cache.HasLockPasswordCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z

    move-result v0

    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockPasswordCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0
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
    const-string v2, "LockPatternUtils.Cache.HasLockPatternCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->havePattern(I)Z

    move-result v0

    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockPatternCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

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
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModeBackupPinCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModeBackupPin(I)Z

    move-result v0

    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModeBackupPinCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

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
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModeFingerprintPasswordCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModeFingerprintPassword(I)Z

    move-result v0

    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModeFingerprintPasswordCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

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
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModePasswordCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePassword(I)Z

    move-result v0

    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModePasswordCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

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
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModePatternCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePattern(I)Z

    move-result v0

    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModePatternCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

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
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModePinCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePin(I)Z

    move-result v0

    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModePinCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public haveSignature(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->haveSignature(I)Z

    move-result v0

    return v0
.end method

.method public haveSignatureBackupPin(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->haveSignatureBackupPin(I)Z

    move-result v0

    return v0
.end method

.method public registerObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/internal/widget/ILockSettingsObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->registerObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V

    return-void
.end method

.method public removeUser(I)V
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->removeUser(I)V

    return-void
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
    invoke-direct {p0, p1, p3}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public setCarrierLockPlusEnabled(I)V
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "LockPatternUtils.Cache.IsCarrierLockPlusEnabledCacheKey"

    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->getCarrierLockPlusMode(I)Z

    move-result v0

    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->setCarrierLockPlusEnabled(I)V

    const-string v1, "LockPatternUtils.Cache.IsCarrierLockPlusEnabledCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

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
    const-string v0, "LockPatternUtils.Cache.HasLockBackupPinCacheKey"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPin(Ljava/lang/String;I)V

    const-string v1, "LockPatternUtils.Cache.HasLockBackupPinCacheKey"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    const-string v0, "LockPatternUtils.Cache.HasLockCarrierPasswordCacheKey"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockCarrierPassword(Ljava/lang/String;I)V

    const-string v1, "LockPatternUtils.Cache.HasLockCarrierPasswordCacheKey"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    const-string v0, "LockPatternUtils.Cache.HasLockFMMPasswordCacheKey"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockFMMPassword(Ljava/lang/String;I)V

    const-string v1, "LockPatternUtils.Cache.HasLockFMMPasswordCacheKey"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLockFingerprintPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "LockPatternUtils.Cache.HasLockFingerprintPasswordCacheKey"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockFingerprintPassword(Ljava/lang/String;I)V

    const-string v1, "LockPatternUtils.Cache.HasLockFingerprintPasswordCacheKey"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLockParentControlPassword([BI)V
    .locals 2
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "LockPatternUtils.Cache.HasLockParentControlPasswordCacheKey"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockParentControlPassword([BI)V

    const-string v1, "LockPatternUtils.Cache.HasLockParentControlPasswordCacheKey"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLockPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "LockPatternUtils.Cache.HasLockPasswordCacheKey"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockPassword(Ljava/lang/String;I)V

    const-string v1, "LockPatternUtils.Cache.HasLockPasswordCacheKey"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLockPattern(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "LockPatternUtils.Cache.HasLockPatternCacheKey"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;I)V

    const-string v1, "LockPatternUtils.Cache.HasLockPatternCacheKey"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

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
    invoke-direct {p0, p1, p4}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

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
    const-string v0, "LockPatternUtils.Cache.HasLockPersonalModeFingerprintPasswordCacheKey"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeFingerprintPassword(Ljava/lang/String;I)V

    const-string v1, "LockPatternUtils.Cache.HasLockPersonalModeFingerprintPasswordCacheKey"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    const-string v0, "LockPatternUtils.Cache.HasLockPersonalModeBackupPinCacheKey"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockBackupPin(Ljava/lang/String;I)V

    const-string v1, "LockPatternUtils.Cache.HasLockPersonalModeBackupPinCacheKey"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    const-string v0, "LockPatternUtils.Cache.HasLockPersonalModePasswordCacheKey"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPassword(Ljava/lang/String;I)V

    const-string v1, "LockPatternUtils.Cache.HasLockPersonalModePasswordCacheKey"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPersonalModeLockPattern(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "LockPatternUtils.Cache.HasLockPersonalModePatternCacheKey"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPattern(Ljava/lang/String;I)V

    const-string v1, "LockPatternUtils.Cache.HasLockPersonalModePatternCacheKey"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

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
    const-string v0, "LockPatternUtils.Cache.HasLockPersonalModePinCacheKey"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPin(Ljava/lang/String;I)V

    const-string v1, "LockPatternUtils.Cache.HasLockPersonalModePinCacheKey"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setSignatureBackupPin([BI)V

    return-void
.end method

.method public setSignatureInfo([BI)V
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setSignatureInfo([BI)V

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p3}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, p1, p3, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public unregisterObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/internal/widget/ILockSettingsObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->unregisterObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V

    return-void
.end method
