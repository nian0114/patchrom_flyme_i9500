.class Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MasterInstallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/epm/overlay/ThemeManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;Lcom/android/server/epm/overlay/ThemeManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p2, "x1"    # Lcom/android/server/epm/overlay/ThemeManagerService$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/epm/overlay/ThemeManagerService;->onMasterInstalled(Ljava/lang/String;Z)V
    invoke-static {v0, p1, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$800(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
