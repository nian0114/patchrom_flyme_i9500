.class Lcom/android/server/pm/PackageManagerService$InstallParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallParams"
.end annotation


# instance fields
.field installFlags:I

.field final installerPackageName:Ljava/lang/String;

.field final installerSourcePackageName:Ljava/lang/String;

.field private mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private mRet:I

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final packageAbiOverride:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final verificationParams:Landroid/content/pm/VerificationParams;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$OriginInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 1
    .param p2, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p3, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p4, "installFlags"    # I
    .param p5, "installerPackageName"    # Ljava/lang/String;
    .param p6, "verificationParams"    # Landroid/content/pm/VerificationParams;
    .param p7, "user"    # Landroid/os/UserHandle;
    .param p8, "packageAbiOverride"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0, p1, p7}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerSourcePackageName:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$OriginInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/VerificationParams;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0
    .param p2, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p3, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p4, "installFlags"    # I
    .param p5, "installerPackageName"    # Ljava/lang/String;
    .param p6, "installerSourcePackageName"    # Ljava/lang/String;
    .param p7, "verificationParams"    # Landroid/content/pm/VerificationParams;
    .param p8, "user"    # Landroid/os/UserHandle;
    .param p9, "packageAbiOverride"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0, p1, p8}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerSourcePackageName:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    iput-object p9, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    return-void
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I
    .locals 9
    .param p1, "pkgLite"    # Landroid/content/pm/PackageInfoLite;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-object v2, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .local v2, "packageName":Ljava/lang/String;
    iget v0, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .local v0, "installLocation":I
    iget v6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_0

    move v1, v4

    .local v1, "onSd":Z
    :goto_0
    sget-object v6, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    sget-object v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_6

    iget v7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_9

    iget v7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_1

    iget v7, p1, Landroid/content/pm/PackageInfoLite;->versionCode:I

    iget v8, v3, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    if-ge v7, v8, :cond_1

    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t install update of "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " update version "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p1, Landroid/content/pm/PackageInfoLite;->versionCode:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is older than installed version "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v3, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x7

    monitor-exit v6

    :goto_1
    return v4

    .end local v1    # "onSd":Z
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1    # "onSd":Z
    .restart local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_1
    iget-object v7, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    if-eqz v1, :cond_2

    const-string v4, "PackageManager"

    const-string v5, "Cannot install update to system app on sdcard"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x3

    monitor-exit v6

    goto :goto_1

    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_2
    :try_start_1
    monitor-exit v6

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    monitor-exit v6

    move v4, v5

    goto :goto_1

    :cond_4
    if-ne v0, v4, :cond_5

    monitor-exit v6

    goto :goto_1

    :cond_5
    if-ne v0, v5, :cond_7

    :cond_6
    monitor-exit v6

    if-eqz v1, :cond_a

    move v4, v5

    goto :goto_1

    :cond_7
    # invokes: Lcom/android/server/pm/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$1200(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_8

    monitor-exit v6

    move v4, v5

    goto :goto_1

    :cond_8
    monitor-exit v6

    goto :goto_1

    :cond_9
    const/4 v4, -0x4

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_a
    iget v4, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_1
.end method


# virtual methods
.method public getManifestDigest()Landroid/content/pm/ManifestDigest;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v0}, Landroid/content/pm/VerificationParams;->getManifestDigest()Landroid/content/pm/ManifestDigest;

    move-result-object v0

    goto :goto_0
.end method

.method handleReturnCode()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$1900(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    :cond_0
    return-void
.end method

.method handleServiceError()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->createInstallArgs(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->access$3100(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/16 v0, -0x6e

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    return-void
.end method

.method public handleStartCopy()V
    .locals 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v27, 0x1

    .local v27, "ret":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x10

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x9

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_c

    const/16 v19, 0x1

    .local v19, "onSd":Z
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_d

    const/16 v18, 0x1

    .local v18, "onInt":Z
    :goto_2
    const/16 v21, 0x0

    .local v21, "pkgLite":Landroid/content/pm/PackageInfoLite;
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v20, "packageFileTemp":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v22

    .local v22, "pkgLiteTemp":Landroid/content/pm/PackageInfoLite;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/pm/PackageManagerService;->isUpdateOnSystemApp(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$2900(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    move-object/from16 v0, v20

    # invokes: Lcom/android/server/pm/PackageManagerService;->isAppBlockedByDPM(Ljava/io/File;Ljava/lang/String;ZI)Z
    invoke-static {v5, v0, v6, v4, v7}, Lcom/android/server/pm/PackageManagerService;->access$3000(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;Ljava/lang/String;ZI)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v27, -0x74

    :cond_1
    :goto_4
    const/4 v4, 0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_2

    move-object/from16 v0, v21

    iget v14, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .local v14, "loc":I
    const/4 v4, -0x3

    if-ne v14, v4, :cond_12

    const/16 v27, -0x13

    .end local v14    # "loc":I
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    # invokes: Lcom/android/server/pm/PackageManagerService;->createInstallArgs(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->access$3100(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v12

    .local v12, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/4 v4, 0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v33

    .local v33, "userIdentifier":I
    const/4 v4, -0x1

    move/from16 v0, v33

    if-ne v0, v4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_3

    const/16 v33, 0x0

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move/from16 v0, v33

    # invokes: Lcom/android/server/pm/PackageManagerService;->getRequiredVerifiersLPr(I)Ljava/util/ArrayList;
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->access$3200(Lcom/android/server/pm/PackageManagerService;I)Ljava/util/ArrayList;

    move-result-object v25

    .local v25, "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    const/4 v15, 0x1

    .local v15, "needVerificationForPersona":Z
    const/16 v26, 0x1

    .local v26, "requiresVerificationForPersona":Z
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->needVerificationForPackage(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping verification for Persona "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x0

    :cond_4
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v0, v33

    # invokes: Lcom/android/server/pm/PackageManagerService;->isVerificationEnabled(II)Z
    invoke-static {v4, v0, v5}, Lcom/android/server/pm/PackageManagerService;->access$3300(Lcom/android/server/pm/PackageManagerService;II)Z

    move-result v4

    if-eqz v4, :cond_22

    if-eqz v26, :cond_22

    new-instance v34, Landroid/content/Intent;

    const-string v4, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    move-object/from16 v0, v34

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v34, "verification":Landroid/content/Intent;
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "application/vnd.android.package-archive"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v4, :cond_1a

    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v5, "application/vnd.android.package-archive"

    const/16 v6, 0x200

    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v4, v0, v5, v6, v1}, Lcom/android/server/pm/PackageManagerService;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v24

    .local v24, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_6
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " verifiers for intent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v34 .. v34}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " optional verifiers"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # operator++ for: Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$3408(Lcom/android/server/pm/PackageManagerService;)I

    move-result v35

    .local v35, "verificationId":I
    const-string v4, "android.content.pm.extra.VERIFICATION_ID"

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    move-object/from16 v0, v21

    iget v5, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    if-eqz v4, :cond_1b

    const-string v4, "KNOXVerificationInstallerUid"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v5}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    move-result v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_7
    const-string v4, "KNOXVerificationPackagePath"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getVerificationURI()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v4, "android.content.pm.extra.VERIFICATION_URI"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v5}, Landroid/content/pm/VerificationParams;->getVerificationURI()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getOriginatingURI()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v4, "android.intent.extra.ORIGINATING_URI"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v5}, Landroid/content/pm/VerificationParams;->getOriginatingURI()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getReferrer()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string v4, "android.intent.extra.REFERRER"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v5}, Landroid/content/pm/VerificationParams;->getReferrer()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getOriginatingUid()I

    move-result v4

    if-ltz v4, :cond_8

    const-string v4, "android.intent.extra.ORIGINATING_UID"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v5}, Landroid/content/pm/VerificationParams;->getOriginatingUid()I

    move-result v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    move-result v4

    if-ltz v4, :cond_9

    const-string v4, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v5}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    move-result v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_9
    new-instance v36, Lcom/android/server/pm/PackageVerificationState;

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3, v12}, Lcom/android/server/pm/PackageVerificationState;-><init>(Ljava/util/ArrayList;Landroid/content/Intent;ILcom/android/server/pm/PackageManagerService$InstallArgs;)V

    .local v36, "verificationState":Lcom/android/server/pm/PackageVerificationState;
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v10

    .local v10, "M":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_8
    if-ge v13, v10, :cond_1c

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/pm/PackageManagerService$VerifierPackage;

    .local v38, "vp":Lcom/android/server/pm/PackageManagerService$VerifierPackage;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v38

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->packageName:Ljava/lang/String;

    move-object/from16 v0, v24

    # invokes: Lcom/android/server/pm/PackageManagerService;->matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;
    invoke-static {v4, v5, v0}, Lcom/android/server/pm/PackageManagerService;->access$3500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v4

    move-object/from16 v0, v38

    iput-object v4, v0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->componentName:Landroid/content/ComponentName;

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->uId:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageVerificationState;->addRequiredVerifierUid(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .end local v10    # "M":I
    .end local v12    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v13    # "i":I
    .end local v15    # "needVerificationForPersona":Z
    .end local v18    # "onInt":Z
    .end local v19    # "onSd":Z
    .end local v20    # "packageFileTemp":Ljava/io/File;
    .end local v21    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v22    # "pkgLiteTemp":Landroid/content/pm/PackageInfoLite;
    .end local v24    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v25    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .end local v26    # "requiresVerificationForPersona":Z
    .end local v33    # "userIdentifier":I
    .end local v34    # "verification":Landroid/content/Intent;
    .end local v35    # "verificationId":I
    .end local v36    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .end local v38    # "vp":Lcom/android/server/pm/PackageManagerService$VerifierPackage;
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x11

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto/16 :goto_0

    :cond_b
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Invalid stage location"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_1

    .restart local v19    # "onSd":Z
    :cond_d
    const/16 v18, 0x0

    goto/16 :goto_2

    .restart local v18    # "onInt":Z
    .restart local v20    # "packageFileTemp":Ljava/io/File;
    .restart local v21    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v22    # "pkgLiteTemp":Landroid/content/pm/PackageInfoLite;
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_f
    if-eqz v18, :cond_10

    if-eqz v19, :cond_10

    const-string v4, "PackageManager"

    const-string v5, "Conflicting flags specified for installing on both internal and external"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, -0x13

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-nez v4, :cond_1

    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v30

    .local v30, "storage":Landroid/os/storage/StorageManager;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v16

    .local v16, "lowThreshold":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->isForwardLocked()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/app/IMediaContainerService;->calculateInstalledSize(Ljava/lang/String;ZLjava/lang/String;)J

    move-result-wide v28

    .local v28, "sizeBytes":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    add-long v6, v28, v16

    invoke-virtual {v4, v6, v7}, Lcom/android/server/pm/Installer;->freeCache(J)I

    move-result v4

    if-ltz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v21

    :cond_11
    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 v5, -0x6

    if-ne v4, v5, :cond_1

    const/4 v4, -0x1

    move-object/from16 v0, v21

    iput v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto/16 :goto_4

    .end local v16    # "lowThreshold":J
    .end local v28    # "sizeBytes":J
    .end local v30    # "storage":Landroid/os/storage/StorageManager;
    .restart local v14    # "loc":I
    :cond_12
    const/4 v4, -0x4

    if-ne v14, v4, :cond_13

    const/16 v27, -0x1

    goto/16 :goto_5

    :cond_13
    const/4 v4, -0x1

    if-ne v14, v4, :cond_14

    const/16 v27, -0x4

    goto/16 :goto_5

    :cond_14
    const/4 v4, -0x2

    if-ne v14, v4, :cond_15

    const/16 v27, -0x2

    goto/16 :goto_5

    :cond_15
    const/4 v4, -0x6

    if-ne v14, v4, :cond_16

    const/16 v27, -0x3

    goto/16 :goto_5

    :cond_16
    const/4 v4, -0x5

    if-ne v14, v4, :cond_17

    const/16 v27, -0x14

    goto/16 :goto_5

    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I

    move-result v14

    const/4 v4, -0x7

    if-ne v14, v4, :cond_18

    const/16 v27, -0x19

    goto/16 :goto_5

    :cond_18
    if-nez v19, :cond_2

    if-nez v18, :cond_2

    const/4 v4, 0x2

    if-ne v14, v4, :cond_19

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x11

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto/16 :goto_5

    :cond_19
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x10

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x9

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto/16 :goto_5

    .end local v14    # "loc":I
    .restart local v12    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .restart local v15    # "needVerificationForPersona":Z
    .restart local v25    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .restart local v26    # "requiresVerificationForPersona":Z
    .restart local v33    # "userIdentifier":I
    .restart local v34    # "verification":Landroid/content/Intent;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v5, "application/vnd.android.package-archive"

    const/16 v6, 0x200

    const/4 v7, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v24

    .restart local v24    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto/16 :goto_6

    .restart local v35    # "verificationId":I
    :cond_1b
    const-string v4, "KNOXVerificationInstallerUid"

    const/4 v5, -0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_7

    .restart local v10    # "M":I
    .restart local v13    # "i":I
    .restart local v36    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v36

    # invokes: Lcom/android/server/pm/PackageManagerService;->matchVerifiers(Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;
    invoke-static {v4, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$3600(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v32

    .local v32, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v32, :cond_1d

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v11

    .local v11, "N":I
    if-nez v11, :cond_21

    const-string v4, "PackageManager"

    const-string v5, "Additional verifiers required, but none installed."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, -0x16

    .end local v11    # "N":I
    :cond_1d
    const/4 v4, 0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_1e

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v36

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendOrderedBroadcastToRequiredVerifier(Lcom/android/server/pm/PackageVerificationState;)Z
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->access$3700(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageVerificationState;)Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .end local v10    # "M":I
    .end local v13    # "i":I
    .end local v15    # "needVerificationForPersona":Z
    .end local v24    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v25    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .end local v26    # "requiresVerificationForPersona":Z
    .end local v32    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v33    # "userIdentifier":I
    .end local v34    # "verification":Landroid/content/Intent;
    .end local v35    # "verificationId":I
    .end local v36    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_1e
    :goto_9
    const/4 v4, 0x1

    move/from16 v0, v27

    if-eq v0, v4, :cond_1f

    const/4 v4, 0x3

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "PackageManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Install Application "

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v39, " failed"

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :cond_1f
    const/4 v4, 0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_20

    :try_start_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$3800(Lcom/android/server/pm/PackageManagerService;)Landroid/content/IHarmonyEAS;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mHM:Landroid/content/IHarmonyEAS;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3900()Landroid/content/IHarmonyEAS;

    move-result-object v4

    if-eqz v4, :cond_20

    # getter for: Lcom/android/server/pm/PackageManagerService;->mHM:Landroid/content/IHarmonyEAS;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3900()Landroid/content/IHarmonyEAS;

    move-result-object v4

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/content/IHarmonyEAS;->setInstallationPackageUnknown(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_20
    :goto_a
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    return-void

    .restart local v10    # "M":I
    .restart local v11    # "N":I
    .restart local v13    # "i":I
    .restart local v15    # "needVerificationForPersona":Z
    .restart local v24    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v25    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .restart local v26    # "requiresVerificationForPersona":Z
    .restart local v32    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v33    # "userIdentifier":I
    .restart local v34    # "verification":Landroid/content/Intent;
    .restart local v35    # "verificationId":I
    .restart local v36    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_21
    const/4 v13, 0x0

    :goto_b
    if-ge v13, v11, :cond_1d

    move-object/from16 v0, v32

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/ComponentName;

    .local v37, "verifierComponent":Landroid/content/ComponentName;
    new-instance v31, Landroid/content/Intent;

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .local v31, "sufficientIntent":Landroid/content/Intent;
    move-object/from16 v0, v31

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .end local v10    # "M":I
    .end local v11    # "N":I
    .end local v13    # "i":I
    .end local v24    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v31    # "sufficientIntent":Landroid/content/Intent;
    .end local v32    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v34    # "verification":Landroid/content/Intent;
    .end local v35    # "verificationId":I
    .end local v36    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .end local v37    # "verifierComponent":Landroid/content/ComponentName;
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v12, v4, v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v27

    goto/16 :goto_9

    .end local v15    # "needVerificationForPersona":Z
    .end local v25    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .end local v26    # "requiresVerificationForPersona":Z
    .end local v33    # "userIdentifier":I
    :catch_0
    move-exception v23

    .local v23, "rE":Landroid/os/RemoteException;
    invoke-virtual/range {v23 .. v23}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a
.end method

.method public isForwardLocked()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
