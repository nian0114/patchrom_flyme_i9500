.class Lcom/android/server/pm/PackageManagerService$FileInstallArgs;
.super Lcom/android/server/pm/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileInstallArgs"
.end annotation


# instance fields
.field private codeFile:Ljava/io/File;

.field private legacyNativeLibraryPath:Ljava/io/File;

.field private resourceFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .locals 10
    .param p2, "params"    # Lcom/android/server/pm/PackageManagerService$InstallParams;

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v2, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iget v3, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v4, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerSourcePackageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getManifestDigest()Landroid/content/pm/ManifestDigest;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Forward locking only supported in ASEC"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .param p2, "codePath"    # Ljava/lang/String;
    .param p3, "resourcePath"    # Ljava/lang/String;
    .param p4, "legacyNativeLibraryPath"    # Ljava/lang/String;
    .param p5, "instructionSets"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->fromNothing()Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, p5

    move-object v9, v2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    if-eqz p3, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    if-eqz p4, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->legacyNativeLibraryPath:Ljava/io/File;

    return-void

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method static synthetic access$4100(Lcom/android/server/pm/PackageManagerService$FileInstallArgs;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$FileInstallArgs;

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    return-object v0
.end method

.method private cleanUp()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEV:Z

    if-eqz v0, :cond_6

    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t delete codeFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEV:Z

    if-eqz v0, :cond_9

    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couln\'t delete resourceFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->legacyNativeLibraryPath:Ljava/io/File;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->legacyNativeLibraryPath:Ljava/io/File;

    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->legacyNativeLibraryPath:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t delete native library directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->legacyNativeLibraryPath:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->legacyNativeLibraryPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEV:Z

    if-eqz v0, :cond_c

    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t delete legacyNativeLibraryPath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->legacyNativeLibraryPath:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    const-string v0, "PackageManager"

    const-string v1, "Couldn\'t delete codeFile: "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEV:Z

    if-eqz v0, :cond_8

    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete codeFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    const-string v0, "PackageManager"

    const-string v1, "delete codoeFile: "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    const-string v0, "PackageManager"

    const-string v1, "Couln\'t delete resourceFile: "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_a
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEV:Z

    if-eqz v0, :cond_b

    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete resourceFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    const-string v0, "PackageManager"

    const-string v1, "delete resourceFile: "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_c
    const-string v0, "PackageManager"

    const-string v1, "Couldn\'t delete legacyNativeLibraryPath"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method checkFreeStorage(Lcom/android/internal/app/IMediaContainerService;)Z
    .locals 6
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->abiOverride:Ljava/lang/String;

    invoke-interface {p1, v3, v4, v5}, Lcom/android/internal/app/IMediaContainerService;->calculateInstalledSize(Ljava/lang/String;ZLjava/lang/String;)J

    move-result-wide v0

    .local v0, "sizeBytes":J
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v2

    .local v2, "storage":Landroid/os/storage/StorageManager;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getStorageBytesUntilLow(Ljava/io/File;)J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method cleanUpResourcesLI()V
    .locals 13

    .prologue
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .local v0, "allCodePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    :try_start_0
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v8

    .local v8, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    invoke-virtual {v8}, Landroid/content/pm/PackageParser$PackageLite;->getAllCodePaths()Ljava/util/List;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v8    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->instructionSets:[Ljava/lang/String;

    if-nez v10, :cond_1

    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "instructionSet == null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->instructionSets:[Ljava/lang/String;

    invoke-static {v10}, Lcom/android/server/pm/PackageManagerService;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, "dexCodeInstructionSets":[Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "codePath":Ljava/lang/String;
    move-object v1, v4

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v3, v1, v6

    .local v3, "dexCodeInstructionSet":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v10, v2, v3}, Lcom/android/server/pm/Installer;->rmdex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .local v9, "retCode":I
    if-gez v9, :cond_3

    const-string v10, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t remove dex file for package:  at location "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", retcode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "codePath":Ljava/lang/String;
    .end local v3    # "dexCodeInstructionSet":Ljava/lang/String;
    .end local v4    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "retCode":I
    :cond_4
    return-void

    :catch_0
    move-exception v10

    goto :goto_0
.end method

.method copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .locals 22
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p2, "temp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    const-string v19, "PackageManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " already staged; skipping copy"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    const/16 v16, 0x1

    :goto_0
    return v16

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/PackageInstallerService;->allocateInternalStageDirLegacy()Ljava/io/File;

    move-result-object v18

    .local v18, "tempDir":Ljava/io/File;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v17, Lcom/android/server/pm/PackageManagerService$FileInstallArgs$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs$1;-><init>(Lcom/android/server/pm/PackageManagerService$FileInstallArgs;)V

    .local v17, "target":Lcom/android/internal/os/IParcelFileDescriptorFactory;
    const/16 v16, 0x1

    .local v16, "ret":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IMediaContainerService;->copyPackage(Ljava/lang/String;Lcom/android/internal/os/IParcelFileDescriptorFactory;)I

    move-result v16

    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    const-string v19, "PackageManager"

    const-string v20, "Failed to copy package"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v16    # "ret":I
    .end local v17    # "target":Lcom/android/internal/os/IParcelFileDescriptorFactory;
    .end local v18    # "tempDir":Ljava/io/File;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/io/IOException;
    const-string v19, "PackageManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to create copy file: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, -0x4

    goto :goto_0

    .end local v8    # "e":Ljava/io/IOException;
    .restart local v16    # "ret":I
    .restart local v17    # "target":Lcom/android/internal/os/IParcelFileDescriptorFactory;
    .restart local v18    # "tempDir":Ljava/io/File;
    :cond_1
    const-string v19, "device_policy"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v7

    .local v7, "dpm":Landroid/app/admin/IDevicePolicyManager;
    if-eqz v7, :cond_5

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .local v11, "id":I
    if-gez v11, :cond_2

    const/4 v11, 0x0

    :cond_2
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-interface {v7, v0, v11}, Landroid/app/admin/IDevicePolicyManager;->getAllowAppListThirdParty(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object v4

    .local v4, "allowList":Ljava/lang/String;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_5

    const-string v19, "PackageManager"

    const-string v20, "checking allow list after copying finished"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v19, v0

    # invokes: Lcom/android/server/pm/PackageManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;
    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService;->access$3800(Lcom/android/server/pm/PackageManagerService;)Landroid/content/IHarmonyEAS;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .local v6, "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, "allowListArray":[Ljava/lang/String;
    array-length v3, v5

    .local v3, "allowArrayLen":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v3, :cond_3

    aget-object v19, v5, v10

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v6, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    # getter for: Lcom/android/server/pm/PackageManagerService;->mHM:Landroid/content/IHarmonyEAS;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3900()Landroid/content/IHarmonyEAS;

    move-result-object v19

    if-eqz v19, :cond_5

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_5

    const/4 v12, 0x0

    .local v12, "isAppBlocked":Z
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .local v15, "pkgHash":Ljava/lang/StringBuilder;
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    move-object/from16 v19, v0

    const-string v20, "base.apk"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v14, "mFile":Ljava/io/File;
    invoke-static {v14, v15}, Landroid/content/pm/PackageParser;->getHashValueOfPackage(Ljava/io/File;Ljava/lang/StringBuilder;)V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v19

    if-nez v19, :cond_4

    const/4 v12, 0x1

    :goto_2
    if-eqz v12, :cond_5

    const/16 v16, -0x74

    goto/16 :goto_0

    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    .end local v3    # "allowArrayLen":I
    .end local v4    # "allowList":Ljava/lang/String;
    .end local v5    # "allowListArray":[Ljava/lang/String;
    .end local v6    # "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v10    # "i":I
    .end local v11    # "id":I
    .end local v12    # "isAppBlocked":Z
    .end local v14    # "mFile":Ljava/io/File;
    .end local v15    # "pkgHash":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v8    # "e":Ljava/lang/Exception;
    :cond_5
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    move-object/from16 v19, v0

    const-string v20, "lib"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v13, "libraryRoot":Ljava/io/File;
    const/4 v9, 0x0

    .local v9, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->abiOverride:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v9, v13, v0}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v16

    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .end local v9    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v13    # "libraryRoot":Ljava/io/File;
    :catchall_0
    move-exception v19

    throw v19

    .restart local v9    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local v13    # "libraryRoot":Ljava/io/File;
    :catch_2
    move-exception v8

    .local v8, "e":Ljava/io/IOException;
    :try_start_4
    const-string v19, "PackageManager"

    const-string v20, "Copying native libraries failed"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/16 v16, -0x6e

    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .end local v8    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v19

    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v19
.end method

.method doPostDeleteLI(Z)Z
    .locals 1
    .param p1, "delete"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUpResourcesLI()V

    const/4 v0, 0x1

    return v0
.end method

.method doPostInstall(II)I
    .locals 3
    .param p1, "status"    # I
    .param p2, "uid"    # I

    .prologue
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doPostInstall for uid{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    :cond_0
    return p1
.end method

.method doPreInstall(I)I
    .locals 1
    .param p1, "status"    # I

    .prologue
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    :cond_0
    return p1
.end method

.method doRename(ILandroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .locals 8
    .param p1, "status"    # I
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "oldCodePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eq p1, v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    :goto_0
    return v3

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .local v1, "beforeCodeFile":Ljava/io/File;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getNextCodePath(Ljava/lang/String;)Ljava/io/File;
    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->access$4200(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .local v0, "afterCodeFile":Ljava/io/File;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Renaming "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v4, "PackageManager"

    const-string v5, "Failed to restorecon"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Landroid/system/ErrnoException;
    const-string v4, "PackageManager"

    const-string v5, "Failed to rename"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2    # "e":Landroid/system/ErrnoException;
    :cond_1
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1, v0, v3}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/pm/ApplicationInfo;->setCodePath(Ljava/lang/String;)V

    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/pm/ApplicationInfo;->setBaseCodePath(Ljava/lang/String;)V

    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/pm/ApplicationInfo;->setSplitCodePaths([Ljava/lang/String;)V

    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/pm/ApplicationInfo;->setResourcePath(Ljava/lang/String;)V

    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/pm/ApplicationInfo;->setBaseResourcePath(Ljava/lang/String;)V

    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/pm/ApplicationInfo;->setSplitResourcePaths([Ljava/lang/String;)V

    move v3, v4

    goto/16 :goto_0
.end method

.method getCodePath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getLegacyNativeLibraryPath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->legacyNativeLibraryPath:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->legacyNativeLibraryPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
