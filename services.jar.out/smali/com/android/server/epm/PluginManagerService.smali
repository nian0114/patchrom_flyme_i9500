.class public Lcom/android/server/epm/PluginManagerService;
.super Lcom/android/server/SystemService;
.source "PluginManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/epm/PluginManagerService$PluginBinder;
    }
.end annotation


# static fields
.field private static final DEBUG_ELASTIC:Z

.field public static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mModules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/epm/IPluginHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "PluginManagerService"

    sput-object v0, Lcom/android/server/epm/PluginManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/epm/PluginManagerService;->mModules:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/epm/PluginManagerService;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/epm/PluginManagerService;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/PluginManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/epm/PluginManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/epm/PluginManagerService;Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/epm/PluginManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageManager;

    .prologue
    iput-object p1, p0, Lcom/android/server/epm/PluginManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/epm/PluginManagerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/PluginManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/epm/PluginManagerService;->mModules:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    const-string v0, "samsung_overlay"

    new-instance v1, Lcom/android/server/epm/PluginManagerService$PluginBinder;

    iget-object v2, p0, Lcom/android/server/epm/PluginManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/server/epm/PluginManagerService$PluginBinder;-><init>(Lcom/android/server/epm/PluginManagerService;Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/epm/PluginManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
