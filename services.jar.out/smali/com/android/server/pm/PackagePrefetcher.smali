.class public Lcom/android/server/pm/PackagePrefetcher;
.super Ljava/lang/Object;
.source "PackagePrefetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackagePrefetcher$1;,
        Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;,
        Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    }
.end annotation


# static fields
.field static final DEBUG_DEV:Z

.field static final LOG_PREF_PREFETCH:Ljava/lang/String; = "PREFETCH"

.field private static final NUM_THREADS:I = 0x6

.field static final TAG:Ljava/lang/String; = "PackagePrefetcher"

.field private static sPrefetcher:Lcom/android/server/pm/PackagePrefetcher;


# instance fields
.field private final mAppDirs:[Ljava/io/File;

.field mDefParseFlags:I

.field private mHasSettingsFile:Z

.field private mParseFlags:[I

.field private final mPrefetchedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mScanFinished:Z

.field private mSeparateProcesses:[Ljava/lang/String;

.field private prefetchQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/util/AbstractMap$SimpleEntry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/pm/PackagePrefetcher;->DEBUG_DEV:Z

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/PackagePrefetcher;->sPrefetcher:Lcom/android/server/pm/PackagePrefetcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackagePrefetcher;->prefetchQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 59
    iput-boolean v6, p0, Lcom/android/server/pm/PackagePrefetcher;->mScanFinished:Z

    .line 60
    invoke-static {}, Lcom/android/server/pm/PackagePrefetcher;->hasSettingsFile()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/pm/PackagePrefetcher;->mHasSettingsFile:Z

    .line 64
    new-array v1, v7, [Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "app"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v1, v6

    const/4 v2, 0x1

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "priv-app"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "app"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/server/pm/PackagePrefetcher;->mAppDirs:[Ljava/io/File;

    .line 71
    new-array v1, v7, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/pm/PackagePrefetcher;->mParseFlags:[I

    .line 108
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;

    .line 111
    const-string v1, "debug.separate_processes"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "separateProcesses":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 115
    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/server/pm/PackagePrefetcher;->mDefParseFlags:I

    .line 117
    iput-object v8, p0, Lcom/android/server/pm/PackagePrefetcher;->mSeparateProcesses:[Ljava/lang/String;

    .line 118
    sget-boolean v1, Lcom/android/server/pm/PackagePrefetcher;->DEBUG_DEV:Z

    if-eqz v1, :cond_0

    .line 119
    const-string v1, "PackagePrefetcher"

    const-string v2, "PREFETCH"

    const-string v3, "Running with debug.separate_processes: * (ALL)"

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iput v6, p0, Lcom/android/server/pm/PackagePrefetcher;->mDefParseFlags:I

    .line 124
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackagePrefetcher;->mSeparateProcesses:[Ljava/lang/String;

    .line 125
    sget-boolean v1, Lcom/android/server/pm/PackagePrefetcher;->DEBUG_DEV:Z

    if-eqz v1, :cond_0

    .line 126
    const-string v1, "PackagePrefetcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running with debug.separate_processes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :cond_2
    iput v6, p0, Lcom/android/server/pm/PackagePrefetcher;->mDefParseFlags:I

    .line 132
    iput-object v8, p0, Lcom/android/server/pm/PackagePrefetcher;->mSeparateProcesses:[Ljava/lang/String;

    goto :goto_0

    .line 71
    nop

    :array_0
    .array-data 4
        0x45
        0xc5
        0x4
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/server/pm/PackagePrefetcher;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackagePrefetcher;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/pm/PackagePrefetcher;->prefetchQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/PackagePrefetcher;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackagePrefetcher;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/pm/PackagePrefetcher;->mSeparateProcesses:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/PackagePrefetcher;Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;I)Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackagePrefetcher;
    .param p1, "x1"    # Landroid/content/pm/PackageParser;
    .param p2, "x2"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "x3"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackagePrefetcher;->preCollectCert(Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;I)Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/PackagePrefetcher;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackagePrefetcher;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/pm/PackagePrefetcher;
    .locals 2

    .prologue
    .line 101
    const-class v1, Lcom/android/server/pm/PackagePrefetcher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/pm/PackagePrefetcher;->sPrefetcher:Lcom/android/server/pm/PackagePrefetcher;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/android/server/pm/PackagePrefetcher;

    invoke-direct {v0}, Lcom/android/server/pm/PackagePrefetcher;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackagePrefetcher;->sPrefetcher:Lcom/android/server/pm/PackagePrefetcher;

    .line 104
    :cond_0
    sget-object v0, Lcom/android/server/pm/PackagePrefetcher;->sPrefetcher:Lcom/android/server/pm/PackagePrefetcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static hasSettingsFile()Z
    .locals 6

    .prologue
    .line 325
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 326
    .local v1, "dataDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "system"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 327
    .local v4, "systemDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string/jumbo v5, "packages.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 328
    .local v3, "settingsFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v5, "packages.xml.bak"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 329
    .local v0, "backupSettingsFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v5, "packages.xml.mbak"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 331
    .local v2, "moreBackupSettingsFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 334
    :cond_0
    const/4 v5, 0x1

    .line 336
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private preCollectCert(Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;I)Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    .locals 7
    .param p1, "pp"    # Landroid/content/pm/PackageParser;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "parseFlags"    # I

    .prologue
    const/4 v6, 0x1

    .line 300
    const/4 v1, 0x0

    .line 302
    .local v1, "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    iget-boolean v2, p0, Lcom/android/server/pm/PackagePrefetcher;->mHasSettingsFile:Z

    if-nez v2, :cond_1

    .line 304
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)V

    .line 305
    new-instance v1, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;

    .end local v1    # "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;-><init>(Lcom/android/server/pm/PackagePrefetcher;Landroid/content/pm/PackageParser$Package;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .restart local v1    # "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    :goto_0
    return-object v1

    .line 306
    .end local v1    # "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    sget-boolean v2, Lcom/android/server/pm/PackagePrefetcher;->DEBUG_DEV:Z

    if-eqz v2, :cond_0

    .line 308
    const-string v2, "PackagePrefetcher"

    const-string v3, "PREFETCH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "faild collect cert : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    new-instance v1, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;

    invoke-direct {v1, p0, p2, v6}, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;-><init>(Lcom/android/server/pm/PackagePrefetcher;Landroid/content/pm/PackageParser$Package;Z)V

    .line 313
    .restart local v1    # "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    goto :goto_0

    .line 315
    .end local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :cond_1
    sget-boolean v2, Lcom/android/server/pm/PackagePrefetcher;->DEBUG_DEV:Z

    if-eqz v2, :cond_2

    .line 316
    const-string v2, "PackagePrefetcher"

    const-string v3, "PREFETCH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "need to collect cert: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_2
    new-instance v1, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;

    .end local v1    # "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    invoke-direct {v1, p0, p2, v6}, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;-><init>(Lcom/android/server/pm/PackagePrefetcher;Landroid/content/pm/PackageParser$Package;Z)V

    .restart local v1    # "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    goto :goto_0
.end method


# virtual methods
.method getPrefetchedPackage(Ljava/lang/String;)Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 172
    .local v1, "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    iget-object v2, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 173
    iget-object v3, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 174
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    iget-object v2, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;

    move-object v1, v0

    .line 183
    :cond_0
    :goto_0
    monitor-exit v3

    .line 186
    :cond_1
    return-object v1

    .line 177
    :cond_2
    sget-boolean v2, Lcom/android/server/pm/PackagePrefetcher;->DEBUG_DEV:Z

    if-eqz v2, :cond_0

    .line 178
    const-string v2, "PackagePrefetcher"

    const-string v4, "PREFETCH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not yet prefetched: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public prefetchPackages()V
    .locals 13

    .prologue
    .line 151
    iget-object v7, p0, Lcom/android/server/pm/PackagePrefetcher;->mAppDirs:[Ljava/io/File;

    array-length v2, v7

    .line 152
    .local v2, "dirs":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 153
    iget-object v7, p0, Lcom/android/server/pm/PackagePrefetcher;->mAppDirs:[Ljava/io/File;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v0, v1, v4

    .line 154
    .local v0, "appFile":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/PackagePrefetcher;->mAppDirs:[Ljava/io/File;

    aget-object v7, v7, v3

    invoke-static {v7}, Lcom/android/server/pm/PackageManagerService;->isSystemDir(Ljava/io/File;)Z

    move-result v6

    .line 155
    .local v6, "systemDir":Z
    if-eqz v6, :cond_0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->isSkippingApk(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 153
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 158
    :cond_0
    iget-object v7, p0, Lcom/android/server/pm/PackagePrefetcher;->prefetchQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v8, Ljava/util/AbstractMap$SimpleEntry;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/server/pm/PackagePrefetcher;->mAppDirs:[Ljava/io/File;

    aget-object v10, v10, v3

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/Integer;

    iget-object v11, p0, Lcom/android/server/pm/PackagePrefetcher;->mParseFlags:[I

    aget v11, v11, v3

    iget v12, p0, Lcom/android/server/pm/PackagePrefetcher;->mDefParseFlags:I

    or-int/2addr v11, v12

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v8, v9, v10}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 152
    .end local v0    # "appFile":Ljava/lang/String;
    .end local v6    # "systemDir":Z
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    const/4 v3, 0x0

    :goto_3
    const/4 v7, 0x6

    if-ge v3, v7, :cond_3

    .line 164
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;-><init>(Lcom/android/server/pm/PackagePrefetcher;Lcom/android/server/pm/PackagePrefetcher$1;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 163
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 166
    :cond_3
    return-void
.end method

.method public prefetchPermissions()V
    .locals 0

    .prologue
    .line 295
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 296
    return-void
.end method

.method setScanFinished(Z)V
    .locals 0
    .param p1, "scanFinished"    # Z

    .prologue
    .line 340
    iput-boolean p1, p0, Lcom/android/server/pm/PackagePrefetcher;->mScanFinished:Z

    .line 341
    return-void
.end method
