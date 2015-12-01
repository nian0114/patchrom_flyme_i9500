.class public Lcom/android/providers/settings/SettingsProvider;
.super Landroid/content/ContentProvider;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/SettingsProvider$SettingsCache;,
        Lcom/android/providers/settings/SettingsProvider$CachePrefetchThread;,
        Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;,
        Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    }
.end annotation


# static fields
.field private static final COLUMN_VALUE:[Ljava/lang/String;

.field private static final MULTISIM_DB:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NULL_SETTING:Landroid/os/Bundle;

.field private static final TOO_LARGE_TO_CACHE_MARKER:Landroid/os/Bundle;

.field private static final sGlobalCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

.field private static final sKnownMutationsInFlight:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private static sObserverInstances:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;",
            ">;"
        }
    .end annotation
.end field

.field static final sRestrictedKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSecureCaches:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/providers/settings/SettingsProvider$SettingsCache;",
            ">;"
        }
    .end annotation
.end field

.field static final sSecureCloneToManagedKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sSecureGlobalKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSystemCaches:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/providers/settings/SettingsProvider$SettingsCache;",
            ">;"
        }
    .end annotation
.end field

.field static final sSystemCloneToManagedKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sSystemGlobalKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private SHARE_KNOX:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mManagedProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mOpenHelpers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/providers/settings/DatabaseHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "value"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->COLUMN_VALUE:[Ljava/lang/String;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sSystemCaches:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sSecureCaches:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    const-string v2, "global"

    invoke-direct {v1, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sGlobalCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Landroid/util/SparseArray;

    const-string v1, "value"

    invoke-static {v1, v4}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING:Landroid/os/Bundle;

    const-string v1, "_dummy"

    invoke-static {v1, v4}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->TOO_LARGE_TO_CACHE_MARKER:Landroid/os/Bundle;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sSecureGlobalKeys:Ljava/util/HashSet;

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSecureGlobalKeys:Ljava/util/HashSet;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getMovedKeys(Ljava/util/HashSet;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sSystemGlobalKeys:Ljava/util/HashSet;

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSystemGlobalKeys:Ljava/util/HashSet;

    invoke-static {v1}, Landroid/provider/Settings$System;->getNonLegacyMovedKeys(Ljava/util/HashSet;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sRestrictedKeys:Ljava/util/Map;

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sRestrictedKeys:Ljava/util/Map;

    const-string v2, "location_mode"

    const-string v3, "no_share_location"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sRestrictedKeys:Ljava/util/Map;

    const-string v2, "location_providers_allowed"

    const-string v3, "no_share_location"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sRestrictedKeys:Ljava/util/Map;

    const-string v2, "install_non_market_apps"

    const-string v3, "no_install_unknown_sources"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sRestrictedKeys:Ljava/util/Map;

    const-string v2, "adb_enabled"

    const-string v3, "no_debugging_features"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sRestrictedKeys:Ljava/util/Map;

    const-string v2, "package_verifier_enable"

    const-string v3, "ensure_verify_apps"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sRestrictedKeys:Ljava/util/Map;

    const-string v2, "preferred_network_mode"

    const-string v3, "no_config_mobile_networks"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedKeys:Ljava/util/HashSet;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedKeys:Ljava/util/HashSet;

    sget-object v2, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedKeys:Ljava/util/HashSet;

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedKeys:Ljava/util/HashSet;

    sget-object v2, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sObserverInstances:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "select_icon_1"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "select_icon_2"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "current_network"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "select_name_1"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "select_name_2"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "prefered_voice_call"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "prefered_video_call"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "is_sim_1"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "paging_mode"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "phone1_on"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "phone2_on"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "dsa_init_dialog_is_checked"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "dsa_reset"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "dsa_inter_change"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "dsa_sim1_value"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "dsa_sim2_value"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "dsa_init_process"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "dsa_is_first"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "dsa_check_started_networkmanagement"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "paging_mode_dialog_is_checked"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "sim1_value"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "sim2_value"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelpers:Landroid/util/SparseArray;

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mPersonaManager:Landroid/os/PersonaManager;

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$000()Landroid/util/SparseArray;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/providers/settings/SettingsProvider;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsProvider;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->fullyPopulateCaches(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/providers/settings/SettingsProvider;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsProvider;
    .param p1, "x1"    # Ljava/util/HashSet;

    .prologue
    iput-object p1, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$400()Landroid/os/Bundle;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$500()Landroid/os/Bundle;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->TOO_LARGE_TO_CACHE_MARKER:Landroid/os/Bundle;

    return-object v0
.end method

.method private checkUserRestrictions(Ljava/lang/String;I)V
    .locals 3
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sRestrictedKeys:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "userRestriction":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Permission denial: user is restricted from changing this setting."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V
    .locals 5
    .param p1, "args"    # Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    .prologue
    const-string v0, "secure"

    iget-object v1, p1, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "global"

    iget-object v1, p1, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denial: writing to secure settings requires %1$s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "android.permission.WRITE_SECURE_SETTINGS"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private ensureAndroidIdIsSet(I)Z
    .locals 19
    .param p1, "userHandle"    # I

    .prologue
    sget-object v5, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "value"

    aput-object v7, v6, v4

    const-string v7, "name=?"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v9, "android_id"

    aput-object v9, v8, v4

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/providers/settings/SettingsProvider;->queryForUser(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v11

    .local v11, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .local v17, "value":Ljava/lang/String;
    :goto_0
    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v16

    .local v16, "user":Landroid/content/pm/UserInfo;
    if-nez v16, :cond_1

    const/4 v4, 0x0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .end local v16    # "user":Landroid/content/pm/UserInfo;
    :goto_1
    return v4

    .end local v17    # "value":Ljava/lang/String;
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .restart local v16    # "user":Landroid/content/pm/UserInfo;
    .restart local v17    # "value":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v14, Ljava/security/SecureRandom;

    invoke-direct {v14}, Ljava/security/SecureRandom;-><init>()V

    .local v14, "random":Ljava/security/SecureRandom;
    invoke-virtual {v14}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v13

    .local v13, "newAndroidIdValue":Ljava/lang/String;
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .local v18, "values":Landroid/content/ContentValues;
    const-string v4, "name"

    const-string v5, "android_id"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "value"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/android/providers/settings/SettingsProvider;->insertForUser(Landroid/net/Uri;Landroid/content/ContentValues;I)Landroid/net/Uri;

    move-result-object v15

    .local v15, "uri":Landroid/net/Uri;
    if-nez v15, :cond_2

    const-string v4, "SettingsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to generate new ANDROID_ID for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_2
    :try_start_2
    const-string v4, "SettingsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Generated and saved new ANDROID_ID ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "dropbox"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/DropBoxManager;

    .local v12, "dbm":Landroid/os/DropBoxManager;
    if-eqz v12, :cond_3

    const-string v4, "restricted_profile_ssaid"

    invoke-virtual {v12, v4}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "restricted_profile_ssaid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",restricted_profile_ssaid,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v12    # "dbm":Landroid/os/DropBoxManager;
    .end local v13    # "newAndroidIdValue":Ljava/lang/String;
    .end local v14    # "random":Ljava/security/SecureRandom;
    .end local v15    # "uri":Landroid/net/Uri;
    .end local v16    # "user":Landroid/content/pm/UserInfo;
    .end local v18    # "values":Landroid/content/ContentValues;
    :cond_3
    const/4 v4, 0x1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .end local v17    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method private establishDbTracking(I)V
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelpers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/settings/DatabaseHelper;

    .local v1, "dbhelper":Lcom/android/providers/settings/DatabaseHelper;
    if-nez v1, :cond_0

    new-instance v1, Lcom/android/providers/settings/DatabaseHelper;

    .end local v1    # "dbhelper":Lcom/android/providers/settings/DatabaseHelper;
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Lcom/android/providers/settings/DatabaseHelper;-><init>(Landroid/content/Context;I)V

    .restart local v1    # "dbhelper":Lcom/android/providers/settings/DatabaseHelper;
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelpers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sSystemCaches:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    const-string v5, "system"

    invoke-direct {v4, v5}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sSecureCaches:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    const-string v5, "secure"

    invoke-direct {v4, v5}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Landroid/util/SparseArray;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/android/providers/settings/SettingsProvider;->sObserverInstances:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_1
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sObserverInstances:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v2, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;-><init>(Lcom/android/providers/settings/SettingsProvider;ILjava/lang/String;)V

    .local v2, "observer":Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sObserverInstances:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v2}, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->startWatching()V

    .end local v2    # "observer":Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->ensureAndroidIdIsSet(I)Z

    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->startAsyncCachePopulation(I)V

    return-void

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "dbhelper":Lcom/android/providers/settings/DatabaseHelper;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "dbhelper":Lcom/android/providers/settings/DatabaseHelper;
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method private fullyPopulateCache(Lcom/android/providers/settings/DatabaseHelper;Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;)V
    .locals 14
    .param p1, "dbHelper"    # Lcom/android/providers/settings/DatabaseHelper;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "cache"    # Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    .prologue
    invoke-virtual {p1}, Lcom/android/providers/settings/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "name"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string v4, "value"

    aput-object v4, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "201"

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .local v10, "c":Landroid/database/Cursor;
    :try_start_0
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->evictAll()V

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->setFullyMatchesDisk(Z)V

    const/4 v12, 0x0

    .local v12, "rows":I
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .local v11, "name":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .local v13, "value":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v13}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->populate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "rows":I
    .end local v13    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v12    # "rows":I
    :cond_0
    const/16 v2, 0xc8

    if-le v12, v2, :cond_1

    const/4 v2, 0x0

    :try_start_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->setFullyMatchesDisk(Z)V

    :cond_1
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private fullyPopulateCaches(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/settings/DatabaseHelper;

    .local v0, "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    monitor-exit p0

    if-nez v0, :cond_0

    :goto_0
    return-void

    .end local v0    # "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    :cond_0
    if-nez p1, :cond_1

    const-string v1, "global"

    sget-object v2, Lcom/android/providers/settings/SettingsProvider;->sGlobalCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/SettingsProvider;->fullyPopulateCache(Lcom/android/providers/settings/DatabaseHelper;Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;)V

    :cond_1
    const-string v2, "secure"

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSecureCaches:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/providers/settings/SettingsProvider;->fullyPopulateCache(Lcom/android/providers/settings/DatabaseHelper;Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;)V

    const-string v2, "system"

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSystemCaches:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/providers/settings/SettingsProvider;->fullyPopulateCache(Lcom/android/providers/settings/DatabaseHelper;Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;)V

    goto :goto_0
.end method

.method private getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "edmUri"    # Ljava/lang/String;
    .param p2, "projectionArgs"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const-string v0, "SettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "edmUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "projectionArgs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x1

    .local v7, "ret":I
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v7, 0x1

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    const-string v0, "SettingsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1, "edmUri"    # Ljava/lang/String;
    .param p2, "projectionArgs"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const-string v0, "SettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "edmUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "projectionArgs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, p3

    if-ge v7, v0, :cond_0

    const-string v0, "SettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectionArgs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, -0x1

    .local v8, "ret":I
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    const/4 v8, 0x1

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    const-string v0, "SettingsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getOrConstructCache(ILandroid/util/SparseArray;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .locals 1
    .param p1, "callingUser"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/providers/settings/SettingsProvider$SettingsCache;",
            ">;)",
            "Lcom/android/providers/settings/SettingsProvider$SettingsCache;"
        }
    .end annotation

    .prologue
    .local p2, "which":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/providers/settings/SettingsProvider$SettingsCache;>;"
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    return-object v0
.end method

.method private getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;
    .locals 8
    .param p1, "callingUser"    # I

    .prologue
    const/16 v3, 0x3e8

    if-lt p1, v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Uid rather than user handle: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "oldId":J
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelpers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/settings/DatabaseHelper;

    .local v2, "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->establishDbTracking(I)V

    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelpers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/providers/settings/DatabaseHelper;

    move-object v2, v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    .end local v2    # "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .restart local v2    # "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    :catchall_2
    move-exception v3

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method private getUriFor(Landroid/net/Uri;Landroid/content/ContentValues;J)Landroid/net/Uri;
    .locals 5
    .param p1, "tableUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "rowId"    # J

    .prologue
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "table":Ljava/lang/String;
    const-string v2, "system"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "secure"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "global"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "name"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "name":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_2
    invoke-static {p1, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method private insertForPersona(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 24
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mPersonaManager:Landroid/os/PersonaManager;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, "oldId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mPersonaManager:Landroid/os/PersonaManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v16

    .local v16, "personaIds":[I
    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_2

    move-object/from16 v6, v16

    .local v6, "arr$":[I
    array-length v11, v6

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_2

    aget v13, v6, v10

    .local v13, "personaId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mPersonaManager:Landroid/os/PersonaManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/os/PersonaManager;->settingSyncAllowed(I)Z

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v13, v1}, Lcom/android/providers/settings/SettingsProvider;->cacheForTable(ILjava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v7

    .local v7, "cache":Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    const-string v21, "value"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .local v20, "value":Ljava/lang/String;
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v7, v0, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->isRedundantSetValue(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .end local v7    # "cache":Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .end local v20    # "value":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .restart local v7    # "cache":Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .restart local v20    # "value":Ljava/lang/String;
    :cond_1
    sget-object v21, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Landroid/util/SparseArray;

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/concurrent/atomic/AtomicInteger;

    .local v12, "mutationCount":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    move-result-object v9

    .local v9, "dbH":Lcom/android/providers/settings/DatabaseHelper;
    invoke-virtual {v9}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, p3

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v18

    .local v18, "rowId":J
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    const-wide/16 v22, 0x0

    cmp-long v21, v18, v22

    if-lez v21, :cond_0

    move-object/from16 v0, p3

    invoke-static {v7, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->populate(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Landroid/content/ContentValues;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/settings/SettingsProvider;->getUriFor(Landroid/net/Uri;Landroid/content/ContentValues;J)Landroid/net/Uri;

    move-result-object v17

    .local v17, "url_for_persona":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v13}, Lcom/android/providers/settings/SettingsProvider;->sendNotify(Landroid/net/Uri;I)V

    goto :goto_1

    .end local v6    # "arr$":[I
    .end local v7    # "cache":Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .end local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "dbH":Lcom/android/providers/settings/DatabaseHelper;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "mutationCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v13    # "personaId":I
    .end local v17    # "url_for_persona":Landroid/net/Uri;
    .end local v18    # "rowId":J
    .end local v20    # "value":Ljava/lang/String;
    :cond_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v14    # "oldId":J
    .end local v16    # "personaIds":[I
    :cond_3
    return-void
.end method

.method private insertForUser(Landroid/net/Uri;Landroid/content/ContentValues;I)Landroid/net/Uri;
    .locals 15
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;
    .param p3, "desiredUserHandle"    # I

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .local v4, "callingUser":I
    move/from16 v0, p3

    if-eq v4, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v14, "Not permitted to access settings for other users"

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .local v2, "args":Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    const-string v12, "favorites"

    iget-object v13, v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x0

    :goto_0
    return-object v12

    :cond_1
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/SettingsProvider;->isChangeAllowed(Landroid/content/ContentValues;I)Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    const-string v12, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "name":Ljava/lang/String;
    const-string v12, "location_providers_allowed"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-direct/range {p0 .. p3}, Lcom/android/providers/settings/SettingsProvider;->parseProviderList(Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v12

    if-nez v12, :cond_3

    const/4 v12, 0x0

    goto :goto_0

    :cond_3
    if-eqz v8, :cond_6

    sget-object v12, Lcom/android/providers/settings/SettingsProvider;->sSecureGlobalKeys:Ljava/util/HashSet;

    invoke-virtual {v12, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    sget-object v12, Lcom/android/providers/settings/SettingsProvider;->sSystemGlobalKeys:Ljava/util/HashSet;

    invoke-virtual {v12, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_4
    const-string v12, "global"

    iget-object v13, v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    :cond_5
    const-string v12, "global"

    iput-object v12, v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    :cond_6
    const-string v12, "system"

    iget-object v13, v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v12, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "allow_volte_provisioning"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "com.vzw.permission.ALLOW_VOLTE_PERMISSION"

    invoke-virtual {v12, v13}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_7

    new-instance v12, Ljava/lang/SecurityException;

    const-string v13, "Permission denial: Modifying allow_volte_provisioning requires com.vzw.permission.ALLOW_VOLTE_PERMISSION"

    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_7
    invoke-direct {p0, v2}, Lcom/android/providers/settings/SettingsProvider;->checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V

    move/from16 v0, p3

    invoke-direct {p0, v8, v0}, Lcom/android/providers/settings/SettingsProvider;->checkUserRestrictions(Ljava/lang/String;I)V

    const-string v12, "global"

    iget-object v13, v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 p3, 0x0

    :cond_8
    :goto_1
    iget-object v12, v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    move/from16 v0, p3

    invoke-virtual {p0, v0, v12}, Lcom/android/providers/settings/SettingsProvider;->cacheForTable(ILjava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v3

    .local v3, "cache":Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    const-string v12, "value"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "value":Ljava/lang/String;
    invoke-static {v3, v8, v9}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->isRedundantSetValue(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_0

    .end local v3    # "cache":Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .end local v9    # "value":Ljava/lang/String;
    :cond_9
    iget-object v12, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    if-eqz v12, :cond_a

    const/16 v12, 0x64

    move/from16 v0, p3

    if-lt v0, v12, :cond_a

    iget-object v12, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    invoke-virtual {v12, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/16 p3, 0x0

    iget-object v12, v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v12, v0, v1, v8}, Lcom/android/providers/settings/SettingsProvider;->insertForPersona(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    iget-object v12, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    if-eqz v12, :cond_8

    if-nez p3, :cond_8

    iget-object v12, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    invoke-virtual {v12, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    iget-object v12, v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v12, v0, v1, v8}, Lcom/android/providers/settings/SettingsProvider;->insertForPersona(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_1

    .restart local v3    # "cache":Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_b
    monitor-enter p0

    :try_start_0
    sget-object v12, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/atomic/AtomicInteger;

    .local v7, "mutationCount":Ljava/util/concurrent/atomic/AtomicInteger;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_c
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    move-result-object v6

    .local v6, "dbH":Lcom/android/providers/settings/DatabaseHelper;
    invoke-virtual {v6}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v12, v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v5, v12, v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    .local v10, "rowId":J
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_d
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-gtz v12, :cond_e

    const/4 v12, 0x0

    goto/16 :goto_0

    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "dbH":Lcom/android/providers/settings/DatabaseHelper;
    .end local v7    # "mutationCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v10    # "rowId":J
    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .restart local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v6    # "dbH":Lcom/android/providers/settings/DatabaseHelper;
    .restart local v7    # "mutationCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v10    # "rowId":J
    :cond_e
    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->populate(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Landroid/content/ContentValues;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v0, v1, v10, v11}, Lcom/android/providers/settings/SettingsProvider;->getUriFor(Landroid/net/Uri;Landroid/content/ContentValues;J)Landroid/net/Uri;

    move-result-object p1

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/SettingsProvider;->sendNotify(Landroid/net/Uri;I)V

    move-object/from16 v12, p1

    goto/16 :goto_0
.end method

.method private isAirViewRelated(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const-string v1, "air_view_master_onoff"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "finger_air_view"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "finger_air_view_information_preview"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "finger_air_view_highlight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pen_hovering"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isChangeAllowed(Landroid/content/ContentValues;I)Z
    .locals 13
    .param p1, "initialValues"    # Landroid/content/ContentValues;
    .param p2, "userId"    # I

    .prologue
    if-nez p1, :cond_0

    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .local v2, "callingUid":I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "args_callingUid":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "args_usedId":Ljava/lang/String;
    const-string v8, "name"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "name":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "selectionArgs_widgetView":Ljava/lang/String;
    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "selectionArgs_shortcutView":Ljava/lang/String;
    const-string v8, "SettingsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x3e8

    if-eq v2, v8, :cond_1

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v9, "isSettingsChangesAllowed"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "false"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    const-string v8, "install_non_market_apps"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v9, "isNonMarketAppAllowed"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_5

    const-string v8, "location_providers_allowed"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "value"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "value":Ljava/lang/String;
    const-string v8, "SettingsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "value = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .local v4, "provider":Ljava/lang/String;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_3
    const-string v8, "SettingsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "provider = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_4

    const-string v8, "content://com.sec.knox.provider/LocationPolicy"

    const-string v9, "isLocationProviderBlockedAsUser"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    aput-object v1, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v8, 0x1

    goto/16 :goto_0

    .end local v4    # "provider":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_5
    if-eqz v3, :cond_6

    const-string v8, "always_finish_activities"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v9, "isKillingActivitiesOnLeaveAllowed"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_6

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_6
    if-eqz v3, :cond_9

    const-string v8, "voice_input_control"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "wake_up_lock_screen"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_7
    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v9, "isSVoiceAllowed"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "false"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v9, "isMicrophoneEnabledAsUser"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "false"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v1, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_9

    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_9
    if-eqz v3, :cond_a

    const-string v8, "kg_multiple_lockscreen"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v9, "isLockScreenViewAllowed"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_a

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_a
    if-eqz v3, :cond_b

    const-string v8, "lock_screen_shortcut"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v9, "isLockScreenViewAllowed"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v5, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_b

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_b
    if-eqz v3, :cond_c

    const-string v8, "mock_location"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v9, "isMockLocationEnabled"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_c

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_c
    if-eqz v3, :cond_d

    const-string v8, "airplane_mode_on"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v9, "isAirplaneModeAllowed"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "true"

    aput-object v12, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_d

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_d
    if-eqz v3, :cond_f

    const-string v8, "global_http_proxy_host"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    const-string v8, "global_http_proxy_port"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    const-string v8, "global_http_proxy_exclusion_list"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    const-string v8, "global_proxy_pac_url"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    :cond_e
    const-string v8, "FirewallPolicy"

    const-string v9, "isGlobalProxyAllowed"

    invoke-direct {p0, v8, v9}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_f

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_f
    if-eqz v3, :cond_10

    const-string v8, "show_password"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v8, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v9, "isPasswordVisibilityEnabled"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_10

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_10
    if-eqz v3, :cond_11

    const-string v8, "multi_window_enabled"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    const-string v8, "content://com.sec.knox.provider2/KioskMode"

    const-string v9, "isMultiWindowModeAllowedAsUser"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_11

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_11
    if-eqz v3, :cond_12

    const-string v8, "toolbox_onoff"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v8, "content://com.sec.knox.provider2/KioskMode"

    const-string v9, "isKioskModeEnabled"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_12

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_12
    if-eqz v3, :cond_13

    const-string v8, "air_button_onoff"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    const/16 v8, 0x3e8

    if-eq v2, v8, :cond_13

    const-string v8, "content://com.sec.knox.provider2/KioskMode"

    const-string v9, "isAirCommandModeAllowed"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_13

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_13
    if-eqz v3, :cond_14

    invoke-direct {p0, v3}, Lcom/android/providers/settings/SettingsProvider;->isAirViewRelated(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x3e8

    if-eq v2, v8, :cond_14

    const-string v8, "content://com.sec.knox.provider2/KioskMode"

    const-string v9, "isAirViewModeAllowed"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_14

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_14
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method private isManagedProfile(I)Z
    .locals 3
    .param p1, "callingUser"    # I

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    if-nez v1, :cond_0

    monitor-exit p0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    monitor-exit p0

    goto :goto_0

    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_0
.end method

.method private lookupValue(Lcom/android/providers/settings/DatabaseHelper;Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 14
    .param p1, "dbHelper"    # Lcom/android/providers/settings/DatabaseHelper;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "cache"    # Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    if-nez p3, :cond_1

    const-string v3, "SettingsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cache is null for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    :cond_0
    :goto_0
    return-object v13

    :cond_1
    monitor-enter p3

    :try_start_0
    invoke-virtual/range {p3 .. p4}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    .local v13, "value":Landroid/os/Bundle;
    if-eqz v13, :cond_2

    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->TOO_LARGE_TO_CACHE_MARKER:Landroid/os/Bundle;

    if-eq v13, v3, :cond_3

    monitor-exit p3

    goto :goto_0

    .end local v13    # "value":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v13    # "value":Landroid/os/Bundle;
    :cond_2
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->fullyMatchesDisk()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v13, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING:Landroid/os/Bundle;

    .end local v13    # "value":Landroid/os/Bundle;
    monitor-exit p3

    goto :goto_0

    .restart local v13    # "value":Landroid/os/Bundle;
    :cond_3
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lcom/android/providers/settings/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_2
    sget-object v4, Lcom/android/providers/settings/SettingsProvider;->COLUMN_VALUE:[Ljava/lang/String;

    const-string v5, "name=?"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p4, v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->putIfAbsent(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v13

    .end local v13    # "value":Landroid/os/Bundle;
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v13    # "value":Landroid/os/Bundle;
    :cond_4
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->putIfAbsent(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    sget-object v13, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING:Landroid/os/Bundle;

    goto :goto_0

    :catch_0
    move-exception v12

    .local v12, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v3, "SettingsProvider"

    const-string v4, "settings lookup error"

    invoke-static {v3, v4, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v13, 0x0

    .end local v13    # "value":Landroid/os/Bundle;
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v12    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v13    # "value":Landroid/os/Bundle;
    :catchall_1
    move-exception v3

    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v3
.end method

.method private parseProviderList(Landroid/net/Uri;Landroid/content/ContentValues;I)Z
    .locals 15
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;
    .param p3, "desiredUser"    # I

    .prologue
    const-string v1, "value"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "value":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "newProviders":Ljava/lang/String;
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .local v12, "prefix":C
    const/16 v1, 0x2b

    if-eq v12, v1, :cond_0

    const/16 v1, 0x2d

    if-ne v12, v1, :cond_5

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const-string v13, ""

    .local v13, "providers":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "value"

    aput-object v2, v3, v1

    .local v3, "columns":[Ljava/lang/String;
    const-string v4, "name=\'location_providers_allowed\'"

    .local v4, "where":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/providers/settings/SettingsProvider;->queryForUser(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .local v10, "index":I
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    add-int v9, v10, v1

    .local v9, "end":I
    if-lez v10, :cond_2

    add-int/lit8 v1, v10, -0x1

    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_2

    const/4 v10, -0x1

    :cond_2
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v9, v1, :cond_3

    invoke-virtual {v13, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_3

    const/4 v10, -0x1

    :cond_3
    const/16 v1, 0x2b

    if-ne v12, v1, :cond_8

    if-gez v10, :cond_8

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    move-object v11, v14

    :cond_4
    :goto_1
    if-eqz v11, :cond_5

    const-string v1, "value"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "columns":[Ljava/lang/String;
    .end local v4    # "where":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "end":I
    .end local v10    # "index":I
    .end local v12    # "prefix":C
    .end local v13    # "providers":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x1

    :goto_2
    return v1

    .restart local v3    # "columns":[Ljava/lang/String;
    .restart local v4    # "where":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "prefix":C
    .restart local v13    # "providers":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_6
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v9    # "end":I
    .restart local v10    # "index":I
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_8
    const/16 v1, 0x2d

    if-ne v12, v1, :cond_b

    if-ltz v10, :cond_b

    if-lez v10, :cond_a

    add-int/lit8 v10, v10, -0x1

    :cond_9
    :goto_3
    const/4 v1, 0x0

    invoke-virtual {v13, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v9, v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_a
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v9, v1, :cond_9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_b
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private queryForUser(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 18
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "select"    # [Ljava/lang/String;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;
    .param p6, "forUser"    # I

    .prologue
    new-instance v11, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v11, v0, v1, v2}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .local v11, "args":Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    const-string v5, "global"

    iget-object v6, v11, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    move-result-object v14

    .local v14, "dbH":Lcom/android/providers/settings/DatabaseHelper;
    invoke-virtual {v14}, Lcom/android/providers/settings/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "favorites"

    iget-object v6, v11, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v17, 0x0

    :goto_1
    return-object v17

    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v14    # "dbH":Lcom/android/providers/settings/DatabaseHelper;
    :cond_0
    move/from16 v5, p6

    goto :goto_0

    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v14    # "dbH":Lcom/android/providers/settings/DatabaseHelper;
    :cond_1
    const-string v5, "old_favorites"

    iget-object v6, v11, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "favorites"

    iput-object v5, v11, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    const-string v5, "PRAGMA table_info(favorites);"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .local v13, "cursor":Landroid/database/Cursor;
    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_2

    const/16 v16, 0x1

    .local v16, "exists":Z
    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    if-nez v16, :cond_4

    const/16 v17, 0x0

    goto :goto_1

    .end local v16    # "exists":Z
    :cond_2
    const/16 v16, 0x0

    goto :goto_2

    :cond_3
    const/16 v17, 0x0

    goto :goto_1

    .end local v13    # "cursor":Landroid/database/Cursor;
    :cond_4
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .local v3, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v5, v11, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    iget-object v6, v11, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v7, v11, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .local v17, "ret":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, v17

    check-cast v0, Landroid/database/AbstractCursor;

    move-object v12, v0

    .local v12, "c":Landroid/database/AbstractCursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-virtual {v12, v5, v0, v1}, Landroid/database/AbstractCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v12    # "c":Landroid/database/AbstractCursor;
    :catch_0
    move-exception v15

    .local v15, "e":Ljava/lang/ClassCastException;
    const-string v5, "SettingsProvider"

    const-string v6, "Incompatible cursor derivation!"

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    throw v15
.end method

.method private sendNotify(Landroid/net/Uri;I)V
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "backedUpDataChanged":Z
    const/4 v6, 0x0

    .local v6, "property":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "table":Ljava/lang/String;
    const-string v10, "global"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "isGlobal":Z
    const-string v10, "system"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v6, "sys.settings_system_version"

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    const-wide/16 v10, 0x0

    invoke-static {v6, v10, v11}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    const-wide/16 v12, 0x1

    add-long v8, v10, v12

    .local v8, "version":J
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .end local v8    # "version":J
    :cond_1
    if-eqz v0, :cond_2

    iget-object v10, p0, Lcom/android/providers/settings/SettingsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v10}, Landroid/app/backup/BackupManager;->dataChanged()V

    :cond_2
    const-string v10, "notify"

    invoke-virtual {p1, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "notify":Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v10, "true"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    if-eqz v1, :cond_7

    const/4 v3, -0x1

    .local v3, "notifyTarget":I
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "oldId":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, p1, v11, v12, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v3    # "notifyTarget":I
    .end local v4    # "oldId":J
    :cond_4
    return-void

    .end local v2    # "notify":Ljava/lang/String;
    :cond_5
    const-string v10, "secure"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v6, "sys.settings_secure_version"

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_0

    const-string v6, "sys.settings_global_version"

    const/4 v0, 0x1

    goto :goto_0

    .restart local v2    # "notify":Ljava/lang/String;
    :cond_7
    move/from16 v3, p2

    goto :goto_1

    .restart local v3    # "notifyTarget":I
    .restart local v4    # "oldId":J
    :catchall_0
    move-exception v10

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method

.method private shouldShadowParentProfile(ILjava/util/HashSet;Ljava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "keys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startAsyncCachePopulation(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$CachePrefetchThread;

    invoke-direct {v0, p0, p1}, Lcom/android/providers/settings/SettingsProvider$CachePrefetchThread;-><init>(Lcom/android/providers/settings/SettingsProvider;I)V

    invoke-virtual {v0}, Lcom/android/providers/settings/SettingsProvider$CachePrefetchThread;->start()V

    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .local v2, "callingUser":I
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .local v0, "args":Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    const-string v8, "favorites"

    iget-object v9, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V

    iget-object v8, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p0, v2, v8}, Lcom/android/providers/settings/SettingsProvider;->cacheForTable(ILjava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v1

    .local v1, "cache":Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    monitor-enter p0

    :try_start_0
    sget-object v8, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/atomic/AtomicInteger;

    .local v6, "mutationCount":Ljava/util/concurrent/atomic/AtomicInteger;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_2
    const-string v8, "global"

    iget-object v9, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    :goto_1
    invoke-direct {p0, v8}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    move-result-object v4

    .local v4, "dbH":Lcom/android/providers/settings/DatabaseHelper;
    invoke-virtual {v4}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_1
    array-length v7, p2

    .local v7, "numValues":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v7, :cond_5

    aget-object v8, p2, v5

    const-string v9, "name"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v2}, Lcom/android/providers/settings/SettingsProvider;->checkUserRestrictions(Ljava/lang/String;I)V

    iget-object v8, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v10, p2, v5

    invoke-virtual {v3, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    const/4 v8, 0x0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "dbH":Lcom/android/providers/settings/DatabaseHelper;
    .end local v5    # "i":I
    .end local v6    # "mutationCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v7    # "numValues":I
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .restart local v6    # "mutationCount":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_3
    move v8, v2

    goto :goto_1

    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "dbH":Lcom/android/providers/settings/DatabaseHelper;
    .restart local v5    # "i":I
    .restart local v7    # "numValues":I
    :cond_4
    :try_start_3
    aget-object v8, p2, v5

    invoke-static {v1, v8}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->populate(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Landroid/content/ContentValues;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_6
    invoke-direct {p0, p1, v2}, Lcom/android/providers/settings/SettingsProvider;->sendNotify(Landroid/net/Uri;I)V

    array-length v8, p2

    goto :goto_0

    .end local v5    # "i":I
    .end local v7    # "numValues":I
    :catchall_1
    move-exception v8

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_7
    throw v8
.end method

.method public cacheForTable(ILjava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .locals 1
    .param p1, "callingUser"    # I
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    const-string v0, "system"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCaches:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider;->getOrConstructCache(ILandroid/util/SparseArray;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "secure"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCaches:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider;->getOrConstructCache(ILandroid/util/SparseArray;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "global"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sGlobalCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 18
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "request"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .local v10, "callingUser":I
    if-eqz p3, :cond_0

    const-string v2, "_user"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .local v4, "reqUser":I
    if-eq v4, v10, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "get/set setting for user"

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v10

    .end local v4    # "reqUser":I
    :cond_0
    const-string v2, "GET_system"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v10, :cond_1

    sget-object v2, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedKeys:Ljava/util/HashSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v2, v1}, Lcom/android/providers/settings/SettingsProvider;->shouldShadowParentProfile(ILjava/util/HashSet;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v10, 0x0

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    move-result-object v11

    .local v11, "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    sget-object v2, Lcom/android/providers/settings/SettingsProvider;->sSystemCaches:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    .local v9, "cache":Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    const-string v2, "system"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v11, v2, v9, v1}, Lcom/android/providers/settings/SettingsProvider;->lookupValue(Lcom/android/providers/settings/DatabaseHelper;Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .end local v9    # "cache":Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .end local v11    # "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    :goto_0
    return-object v2

    :cond_2
    const-string v2, "GET_secure"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedKeys:Ljava/util/HashSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v2, v1}, Lcom/android/providers/settings/SettingsProvider;->shouldShadowParentProfile(ILjava/util/HashSet;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "location_providers_allowed"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    const-string v3, "no_share_location"

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/providers/settings/SettingsProvider;->sSecureCaches:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    const-string v3, ""

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->putIfAbsent(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    move-result-object v11

    .restart local v11    # "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    sget-object v2, Lcom/android/providers/settings/SettingsProvider;->sSecureCaches:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    .restart local v9    # "cache":Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    const-string v2, "secure"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v11, v2, v9, v1}, Lcom/android/providers/settings/SettingsProvider;->lookupValue(Lcom/android/providers/settings/DatabaseHelper;Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    .end local v9    # "cache":Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .end local v11    # "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    :cond_5
    const-string v2, "GET_global"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    move-result-object v2

    const-string v3, "global"

    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->sGlobalCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v3, v5, v1}, Lcom/android/providers/settings/SettingsProvider;->lookupValue(Lcom/android/providers/settings/DatabaseHelper;Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_6
    if-nez p3, :cond_7

    const/4 v14, 0x0

    .local v14, "newValue":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Permission denial: writing to settings requires %1$s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "android.permission.WRITE_SETTINGS"

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v14    # "newValue":Ljava/lang/String;
    :cond_7
    const-string v2, "value"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .restart local v14    # "newValue":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/settings/SettingsProvider;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v2

    const/16 v3, 0x17

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v5, v6}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_9
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .local v15, "values":Landroid/content/ContentValues;
    const-string v2, "name"

    move-object/from16 v0, p2

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    invoke-virtual {v15, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "PUT_system"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz v10, :cond_a

    sget-object v2, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedKeys:Ljava/util/HashSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v2, v1}, Lcom/android/providers/settings/SettingsProvider;->shouldShadowParentProfile(ILjava/util/HashSet;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_a
    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15, v10}, Lcom/android/providers/settings/SettingsProvider;->insertForUser(Landroid/net/Uri;Landroid/content/ContentValues;I)Landroid/net/Uri;

    if-nez v10, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    if-eqz v2, :cond_d

    sget-object v2, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedKeys:Ljava/util/HashSet;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .local v16, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    .local v13, "i":I
    :goto_2
    if-ltz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_b

    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v2}, Lcom/android/providers/settings/SettingsProvider;->insertForUser(Landroid/net/Uri;Landroid/content/ContentValues;I)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    :cond_c
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v13    # "i":I
    .end local v16    # "token":J
    :cond_d
    :goto_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .restart local v16    # "token":J
    :catchall_0
    move-exception v2

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .end local v16    # "token":J
    :cond_e
    const-string v2, "PUT_secure"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    if-eqz v10, :cond_f

    sget-object v2, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedKeys:Ljava/util/HashSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v2, v1}, Lcom/android/providers/settings/SettingsProvider;->shouldShadowParentProfile(ILjava/util/HashSet;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_f
    sget-object v2, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15, v10}, Lcom/android/providers/settings/SettingsProvider;->insertForUser(Landroid/net/Uri;Landroid/content/ContentValues;I)Landroid/net/Uri;

    if-nez v10, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    if-eqz v2, :cond_d

    sget-object v2, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedKeys:Ljava/util/HashSet;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .restart local v16    # "token":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    add-int/lit8 v13, v2, -0x1

    .restart local v13    # "i":I
    :goto_4
    if-ltz v13, :cond_11

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_10

    sget-object v3, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v2}, Lcom/android/providers/settings/SettingsProvider;->insertForUser(Landroid/net/Uri;Landroid/content/ContentValues;I)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_10
    :goto_5
    add-int/lit8 v13, v13, -0x1

    goto :goto_4

    :catch_0
    move-exception v12

    .local v12, "e":Ljava/lang/SecurityException;
    :try_start_3
    const-string v3, "SettingsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot clone request \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\' with value \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\' to managed profile (id "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    .end local v12    # "e":Ljava/lang/SecurityException;
    .end local v13    # "i":I
    :catchall_1
    move-exception v2

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .restart local v13    # "i":I
    :cond_11
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    .end local v13    # "i":I
    .end local v16    # "token":J
    :cond_12
    const-string v2, "PUT_global"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    sget-object v2, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15, v10}, Lcom/android/providers/settings/SettingsProvider;->insertForUser(Landroid/net/Uri;Landroid/content/ContentValues;I)Landroid/net/Uri;

    goto/16 :goto_3

    :cond_13
    const-string v2, "SettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call() with invalid method: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .local v1, "callingUser":I
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .local v0, "args":Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    const-string v6, "favorites"

    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const-string v6, "old_favorites"

    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "favorites"

    iput-object v6, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V

    monitor-enter p0

    :try_start_0
    sget-object v6, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicInteger;

    .local v5, "mutationCount":Ljava/util/concurrent/atomic/AtomicInteger;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    move-result-object v4

    .local v4, "dbH":Lcom/android/providers/settings/DatabaseHelper;
    invoke-virtual {v4}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v6, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v3, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .local v2, "count":I
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_3
    if-lez v2, :cond_4

    iget-object v6, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p0, v1, v6}, Lcom/android/providers/settings/SettingsProvider;->invalidateCache(ILjava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/providers/settings/SettingsProvider;->sendNotify(Landroid/net/Uri;I)V

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/providers/settings/SettingsProvider;->startAsyncCachePopulation(I)V

    goto :goto_0

    .end local v2    # "count":I
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "dbH":Lcom/android/providers/settings/DatabaseHelper;
    .end local v5    # "mutationCount":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_5
    const-string v6, "global"

    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1, v1, v1}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .local v0, "args":Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    iget-object v1, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/SettingsProvider;->insertForUser(Landroid/net/Uri;Landroid/content/ContentValues;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public invalidateCache(ILjava/lang/String;)V
    .locals 2
    .param p1, "callingUser"    # I
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->cacheForTable(ILjava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v0

    .local v0, "cache":Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->evictAll()V

    const/4 v1, 0x0

    # setter for: Lcom/android/providers/settings/SettingsProvider$SettingsCache;->mCacheFullyMatchesDisk:Z
    invoke-static {v0, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->access$302(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Z)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    new-instance v2, Landroid/app/backup/BackupManager;

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .local v1, "versionInfo":Landroid/os/Bundle;
    const-string v2, "2.0"

    const-string v3, "version"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    iput-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mPersonaManager:Landroid/os/PersonaManager;

    :cond_0
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    invoke-static {v2}, Landroid/os/PersonaPolicyManager;->getKnoxKeys(Ljava/util/HashSet;)V

    :cond_1
    const/4 v2, -0x1

    const/16 v3, 0x17

    invoke-virtual {p0, v2, v3}, Lcom/android/providers/settings/SettingsProvider;->setAppOps(II)V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/providers/settings/SettingsProvider;->establishDbTracking(I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "userFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/providers/settings/SettingsProvider$1;

    invoke-direct {v3, p0}, Lcom/android/providers/settings/SettingsProvider$1;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->onProfilesChanged()V

    const/4 v2, 0x1

    return v2
.end method

.method onProfilesChanged()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    .end local v0    # "i":I
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onUserRemoved(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sObserverInstances:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/FileObserver;

    .local v0, "observer":Landroid/os/FileObserver;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sObserverInstances:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSystemCaches:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSecureCaches:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->onProfilesChanged()V

    monitor-exit p0

    return-void

    .end local v0    # "observer":Landroid/os/FileObserver;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v9

    .local v9, "ringtoneType":I
    const/4 v0, -0x1

    if-eq v9, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .local v7, "context":Landroid/content/Context;
    invoke-static {v7, v9}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v10

    .local v10, "soundUri":Landroid/net/Uri;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .local v6, "authority":Ljava/lang/String;
    const-string v0, "media"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v10, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "authority":Ljava/lang/String;
    .end local v7    # "context":Landroid/content/Context;
    .end local v10    # "soundUri":Landroid/net/Uri;
    :goto_0
    return-object v0

    .restart local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "authority":Ljava/lang/String;
    .restart local v7    # "context":Landroid/content/Context;
    .restart local v10    # "soundUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :try_start_1
    invoke-super {p0, v10, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v8

    .local v8, "ex":Ljava/io/FileNotFoundException;
    const/4 v0, 0x2

    if-ne v9, v0, :cond_1

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x110002d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1100008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_0

    .end local v6    # "authority":Ljava/lang/String;
    .end local v8    # "ex":Ljava/io/FileNotFoundException;
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .end local v7    # "context":Landroid/content/Context;
    .end local v10    # "soundUri":Landroid/net/Uri;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v2

    .local v2, "ringtoneType":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .local v3, "soundUri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .local v0, "authority":Ljava/lang/String;
    const-string v4, "media"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .end local v0    # "authority":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "soundUri":Landroid/net/Uri;
    :goto_0
    return-object v4

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "select"    # [Ljava/lang/String;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/settings/SettingsProvider;->queryForUser(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .local v1, "callingUser":I
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .local v0, "args":Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    const-string v6, "favorites"

    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v6, "global"

    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V

    const-string v6, "name"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/android/providers/settings/SettingsProvider;->checkUserRestrictions(Ljava/lang/String;I)V

    invoke-direct {p0, p2, v1}, Lcom/android/providers/settings/SettingsProvider;->isChangeAllowed(Landroid/content/ContentValues;I)Z

    move-result v6

    if-eqz v6, :cond_0

    monitor-enter p0

    :try_start_0
    sget-object v6, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicInteger;

    .local v5, "mutationCount":Ljava/util/concurrent/atomic/AtomicInteger;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    move-result-object v4

    .local v4, "dbH":Lcom/android/providers/settings/DatabaseHelper;
    invoke-virtual {v4}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v6, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v3, v6, p2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .local v2, "count":I
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_4
    if-lez v2, :cond_5

    iget-object v6, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p0, v1, v6}, Lcom/android/providers/settings/SettingsProvider;->invalidateCache(ILjava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/providers/settings/SettingsProvider;->sendNotify(Landroid/net/Uri;I)V

    :cond_5
    invoke-direct {p0, v1}, Lcom/android/providers/settings/SettingsProvider;->startAsyncCachePopulation(I)V

    goto :goto_0

    .end local v2    # "count":I
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "dbH":Lcom/android/providers/settings/DatabaseHelper;
    .end local v5    # "mutationCount":Ljava/util/concurrent/atomic/AtomicInteger;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method
