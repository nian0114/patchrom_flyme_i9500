.class public Lcom/android/server/cocktailbar/CocktailBarManagerService;
.super Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;
.source "CocktailBarManagerService.java"

# interfaces
.implements Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;
.implements Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;
.implements Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktailBarSettingsObserver;,
        Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktailBarHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final COCKTAIL_BAR_CLASS_NAME:Ljava/lang/String;

.field private final COCKTAIL_BAR_PACKAGE_NAME:Ljava/lang/String;

.field private final DEBUG:Z

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCocktailBarHandler:Landroid/os/Handler;

.field private final mCocktailBarServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mCocktailSettingsObserver:Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktailBarSettingsObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mHost:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/cocktailbar/ICocktailHost;",
            ">;"
        }
    .end annotation
.end field

.field private mIntent:Landroid/content/Intent;

.field private final mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

.field private mSafeMode:Z

.field private final mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

.field private final mUserManager:Lcom/android/server/cocktailbar/user/CocktailBarUserManager;

.field private final mWakeUpManager:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->DEBUG:Z

    const-string v1, "com.samsung.android.app.cocktailbarservice"

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->COCKTAIL_BAR_PACKAGE_NAME:Ljava/lang/String;

    const-string v1, "com.samsung.android.app.cocktailbarservice.CocktailBarService"

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->COCKTAIL_BAR_CLASS_NAME:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mIntent:Landroid/content/Intent;

    iput v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCurrentUserId:I

    iput-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mHost:Landroid/util/Pair;

    new-instance v1, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktailBarHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktailBarHandler;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    new-instance v1, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;)V

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mWakeUpManager:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    new-instance v1, Lcom/android/server/cocktailbar/user/CocktailBarUserManager;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/server/cocktailbar/user/CocktailBarUserManager;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;)V

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mUserManager:Lcom/android/server/cocktailbar/user/CocktailBarUserManager;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarServices:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-direct {v0, p1, v1, v2, v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;I)V

    .local v0, "primary":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v1, v5, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktailBarSettingsObserver;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktailBarSettingsObserver;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailSettingsObserver:Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktailBarSettingsObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/cocktailbar/CocktailBarManagerService;I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarServices:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/cocktailbar/CocktailBarManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerService;

    .prologue
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "initial":Z
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .local v1, "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    if-nez v1, :cond_1

    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find CocktailBarManagerService for user "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", adding"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .end local v1    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-direct {v1, v2, v3, v5, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;I)V

    .restart local v1    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mHost:Landroid/util/Pair;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mHost:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mHost:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->initialize()V

    :cond_2
    return-object v1

    .end local v1    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private init()V
    .locals 19

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .local v4, "configFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .local v8, "packageFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .local v12, "sdFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v11, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v16, Landroid/content/IntentFilter;

    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    .local v16, "comFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_REMOVED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v15, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private registerOnCrossProfileProvidersChangedListener()V
    .locals 2

    .prologue
    const-class v1, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->addOnCrossProfileWidgetProvidersChangeListener(Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public activateCocktailBar()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->activateCocktailBar()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activateCocktailBar : Calling uid is not system uid ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "callbacks"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;)V

    return-void
.end method

.method public closeCocktail(II)V
    .locals 1
    .param p1, "cocktailId"    # I
    .param p2, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->closeCocktail(II)V

    return-void
.end method

.method public cocktailBarreboot()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public cocktailBarshutdown()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public deactivateCocktailBar()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->deactivateCocktailBar()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deactivateCocktailBar : Calling uid is not system uid ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    sget-object v5, Lcom/android/server/cocktailbar/CocktailBarManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_0
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v1, p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .local v1, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .local v2, "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    invoke-virtual {v2, p1, v1, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    const-string v3, "\n"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    :cond_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v3}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->dump()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v4

    return-void

    .end local v0    # "i":I
    .end local v1    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getAllCocktailIds()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getAllCocktailIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getCocktaiBarWakeUpState()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mWakeUpManager:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->getWakeUpState()Z

    move-result v0

    return v0
.end method

.method public getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 1
    .param p1, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    return-object v0
.end method

.method public getCocktailBarVisibility()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->getCocktailBarVisibility()I

    move-result v0

    return v0
.end method

.method public getCocktailId(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "provider"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktailId(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getCocktailIds(Landroid/content/ComponentName;)[I
    .locals 1
    .param p1, "provider"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    return-object v0
.end method

.method public getWindowType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->getWindowType()I

    move-result v0

    return v0
.end method

.method public isAllowTransientBarCocktailBar()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->isAllowTransientBarCocktailBar()Z

    move-result v0

    return v0
.end method

.method public notifyCocktailViewDataChanged(II)V
    .locals 1
    .param p1, "cocktailId"    # I
    .param p2, "viewId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->notifyCocktailViewDataChanged(II)V

    return-void
.end method

.method public notifyCocktailVisibiltyChanged(II)V
    .locals 1
    .param p1, "cocktailId"    # I
    .param p2, "visibility"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->notifyCocktailVisibiltyChanged(II)V

    return-void
.end method

.method public notifyKeyguardState(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->notifyKeyguardState(Z)V

    return-void
.end method

.method public onCrossProfileWidgetProvidersChanged(ILjava/util/List;)V
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCrossProfileWidgetProvidersChanged : userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCrossProfileWidgetProvidersChanged : packages = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onNotifyCocktailBarWakeUp(ZI)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "keyCode"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->notifyCocktailBarWakeUp(ZI)V

    return-void
.end method

.method public onResetMode(IILjava/lang/String;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "mode"    # I
    .param p3, "modeName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setMode(II)V

    return-void
.end method

.method public onScreenTurnedOn(Lcom/samsung/android/cocktailbar/ICocktailBarShowCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/cocktailbar/ICocktailBarShowCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onScreenTurnedOn(Lcom/samsung/android/cocktailbar/ICocktailBarShowCallback;)V

    :cond_0
    return-void
.end method

.method public onSetMode(IILjava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "mode"    # I
    .param p3, "modeName"    # Ljava/lang/String;
    .param p4, "cocktailType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setMode(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v1, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->isDisableCocktailBarMode(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->hideAndLockCocktailBar(Z)V

    return-void
.end method

.method public onSwitchUser(IIIIILandroid/os/IRemoteCallback;)V
    .locals 3
    .param p1, "currentUserId"    # I
    .param p2, "newUserId"    # I
    .param p3, "currentUserType"    # I
    .param p4, "newUserType"    # I
    .param p5, "modeId"    # I
    .param p6, "callback"    # Landroid/os/IRemoteCallback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->disableUser(I)V

    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v1, p5}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->enableUser(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mHost:Landroid/util/Pair;

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mHost:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mHost:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUnsetMode(IILjava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "mode"    # I
    .param p3, "modeName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->unsetMode(ILjava/lang/String;)V

    return-void
.end method

.method public partiallyUpdateCocktail(Landroid/widget/RemoteViews;I)V
    .locals 2
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->TAG:Ljava/lang/String;

    const-string v1, "partiallyUpdateCocktail : contentView is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->partiallyUpdateCocktail(ILandroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method public registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/IBinder;
    .param p2, "cm"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    return-void
.end method

.method public removeCocktailUIService()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public requestToDisableCocktail(I)Z
    .locals 1
    .param p1, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToDisableCocktail(I)Z

    move-result v0

    return v0
.end method

.method public requestToDisableCocktailByCategory(I)Z
    .locals 1
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToDisableCocktailByCategory(I)Z

    move-result v0

    return v0
.end method

.method public requestToDisableCocktailByPrivateMode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "privateMode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToDisableCocktailByPrivateMode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public requestToUpdateCocktail(I)Z
    .locals 1
    .param p1, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToUpdateCocktail(I)Z

    move-result v0

    return v0
.end method

.method public requestToUpdateCocktailByCategory(I)Z
    .locals 1
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToUpdateCocktailByCategory(I)Z

    move-result v0

    return v0
.end method

.method public requestToUpdateCocktailByPrivateMode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "privateMode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToUpdateCocktailByPrivateMode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sendDragEvent(ILandroid/view/DragEvent;)V
    .locals 1
    .param p1, "cocktailId"    # I
    .param p2, "event"    # Landroid/view/DragEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendDragEvent(ILandroid/view/DragEvent;)V

    return-void
.end method

.method public sendExtraDataToCocktailBar(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extraData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendExtraDataToCocktailBar(Landroid/os/Bundle;)V

    return-void
.end method

.method public setCocktailBarStatus(ZZ)V
    .locals 1
    .param p1, "shift"    # Z
    .param p2, "transparent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->updateCocktailBarStatus(ZZ)V

    return-void
.end method

.method public setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Lcom/samsung/android/cocktailbar/ICocktailHost;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mHost:Landroid/util/Pair;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->isExistKioskContainers(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCurrentUserId:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDisableTickerView(I)V
    .locals 1
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setDisableTickerView(I)V

    return-void
.end method

.method public showAndLockCocktailBar()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->showAndLockCocktailBar(ZI)V

    return-void
.end method

.method public showCocktail(I)V
    .locals 1
    .param p1, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->showCocktail(I)V

    return-void
.end method

.method public startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;Ljava/util/List;)[I
    .locals 1
    .param p1, "host"    # Lcom/samsung/android/cocktailbar/ICocktailHost;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/cocktailbar/ICocktailHost;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;)[I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p3, "updatedCocktails":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mHost:Landroid/util/Pair;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;Ljava/util/List;)[I

    move-result-object v0

    return-object v0
.end method

.method public switchDefaultCocktail()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->switchDefaultCocktail()V

    return-void
.end method

.method public systemRunning(Z)V
    .locals 3
    .param p1, "safeMode"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mSafeMode:Z

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->init()V

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->registerOnCrossProfileProvidersChangedListener()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mIntent:Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.cocktailbarservice"

    const-string v2, "com.samsung.android.app.cocktailbarservice.CocktailBarService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method public unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->unbindRemoteViewsService(ILandroid/content/Intent;)V

    return-void
.end method

.method public unlockCocktailBar(I)V
    .locals 2
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->showAndLockCocktailBar(ZI)V

    return-void
.end method

.method public unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V

    return-void
.end method

.method public updateCocktail(Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    .locals 2
    .param p1, "cocktailInfo"    # Lcom/samsung/android/cocktailbar/CocktailInfo;
    .param p2, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->TAG:Ljava/lang/String;

    const-string v1, "updateCocktail : cocktailInfo is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateCocktail(ILcom/samsung/android/cocktailbar/CocktailInfo;)V

    goto :goto_0
.end method

.method public updateCocktailBarPosition(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->updatePosition(I)V

    return-void
.end method

.method public updateCocktailBarStateFromSystem(I)V
    .locals 1
    .param p1, "windowType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->updateStateFromSystem(I)V

    return-void
.end method

.method public updateCocktailBarVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->updateVisibility(I)V

    return-void
.end method

.method public updateLongpressGesture(Z)V
    .locals 1
    .param p1, "bEnable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "android.permission.DEVICE_POWER"

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->checkPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateLongpressGesture(Z)V

    return-void
.end method

.method public updateSysfsBarLength(I)V
    .locals 1
    .param p1, "barLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "android.permission.DEVICE_POWER"

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->checkPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateSysfsBarLength(I)V

    return-void
.end method

.method public updateSysfsDeadZone(I)V
    .locals 1
    .param p1, "deadzone"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "android.permission.DEVICE_POWER"

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->checkPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateSysfsDeadZone(I)V

    return-void
.end method

.method public updateSysfsGripDisable(Z)V
    .locals 1
    .param p1, "bDisable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "android.permission.DEVICE_POWER"

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->checkPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateSysfsGripDisable(Z)V

    return-void
.end method

.method public updateWakeupGesture(IZ)V
    .locals 1
    .param p1, "gestureType"    # I
    .param p2, "bEnable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "android.permission.DEVICE_POWER"

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->checkPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateWakeupGesture(IZ)V

    return-void
.end method

.method public wakeupCocktailBar(ZI)V
    .locals 2
    .param p1, "bEnable"    # Z
    .param p2, "keyCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mWakeUpManager:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->wakeupCocktailBar(ZI)V

    :cond_0
    return-void
.end method
