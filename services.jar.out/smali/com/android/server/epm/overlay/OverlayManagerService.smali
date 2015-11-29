.class public Lcom/android/server/epm/overlay/OverlayManagerService;
.super Ljava/lang/Object;
.source "OverlayManagerService.java"

# interfaces
.implements Lcom/android/server/epm/IPluginHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;
    }
.end annotation


# static fields
.field private static final DEBUG_ELASTIC:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field final ACTION_EVENT_OCCUR:Ljava/lang/String;

.field final ACTION_EVEN_ENDED:Ljava/lang/String;

.field private KEY_VALUE:Ljava/lang/String;

.field private final SCROLL_THRESHOLD:F

.field private activeComponentMasterPackageArr:[Ljava/lang/String;

.field private activeComponentPackageArr:[Ljava/lang/String;

.field private componentOrder:[Ljava/lang/String;

.field public componentPackageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private eventPackage:Ljava/lang/String;

.field public eventThemeMasterPackageName:Ljava/lang/String;

.field private expiryTime:I

.field mAlarmManager:Landroid/app/AlarmManager;

.field mCallback:Landroid/app/epm/IPluginManagerCallback;

.field private mContext:Landroid/content/Context;

.field private mInitX:F

.field private mInitY:F

.field private mMasterPackageName:Ljava/lang/String;

.field private mNoOfOverlays:I

.field private mOverlay:Ljava/io/File;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mView:Landroid/view/View;

.field private mViewClicked:Z

.field public mWallpaperName:Ljava/lang/String;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private masterDetailsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;",
            ">;"
        }
    .end annotation
.end field

.field private masterEventTimeDetails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;>;"
        }
    .end annotation
.end field

.field private masterPackageName:Ljava/lang/String;

.field private masterStatus:Z

.field private masterThemesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private masterVersion:Ljava/lang/String;

.field private overlayCount:I

.field private overlayTargetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private overlaysForuninstall:I

.field private phoneStyleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private selectedComponentPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/server/epm/overlay/OverlayManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/epm/overlay/OverlayManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "themes"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "lock"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "home"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "lockscreenwallpaper"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "phonestyle"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "appicon"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "font"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sound"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "event"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->componentOrder:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->eventPackage:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->masterEventTimeDetails:Ljava/util/HashMap;

    const-string v0, "theme.installer.action"

    iput-object v0, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->ACTION_EVENT_OCCUR:Ljava/lang/String;

    const-string v0, "theme.uninstaller.action"

    iput-object v0, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->ACTION_EVEN_ENDED:Ljava/lang/String;

    iput v4, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->mNoOfOverlays:I

    iput v4, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->overlayCount:I

    iput-object v3, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->mOverlay:Ljava/io/File;

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->SCROLL_THRESHOLD:F

    iput-object v3, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->masterPackageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->masterVersion:Ljava/lang/String;

    iput v4, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->expiryTime:I

    const-string v0, "value"

    iput-object v0, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->KEY_VALUE:Ljava/lang/String;

    iput v4, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->overlaysForuninstall:I

    iput-object v3, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->eventThemeMasterPackageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/epm/overlay/OverlayManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/OverlayManagerService;

    .prologue
    iget v0, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->expiryTime:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/epm/overlay/OverlayManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/OverlayManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/epm/overlay/OverlayManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/OverlayManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->KEY_VALUE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/epm/overlay/OverlayManagerService;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/OverlayManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "dirPath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method private startExpiryTimerForUninstall(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .local v0, "mTimer":Ljava/util/Timer;
    new-instance v1, Lcom/android/server/epm/overlay/OverlayManagerService$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/epm/overlay/OverlayManagerService$1;-><init>(Lcom/android/server/epm/overlay/OverlayManagerService;Ljava/lang/String;Ljava/util/Timer;)V

    .local v1, "mTask":Ljava/util/TimerTask;
    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method


# virtual methods
.method public changeThemeState(Ljava/lang/String;IIZ)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "order"    # I
    .param p4, "isTrial"    # Z

    .prologue
    return-void
.end method

.method public copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x400

    new-array v0, v2, [B

    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public getActiveComponents()[Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCategory()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getComponentPackageMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getData(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const-string v1, "store"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "mPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getDependencies(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPluginList()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->masterDetailsMap:Ljava/util/HashMap;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->masterDetailsMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->masterDetailsMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .local v3, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "pkg":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->masterDetailsMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;

    .local v2, "obj":Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;->mTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;->mDesc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v2, Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;->mStatus:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;->mCategory:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v2, Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;->mStatus:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "obj":Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;
    .end local v3    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getTargetAppList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public installThemePackage(Landroid/net/Uri;Z)V
    .locals 0
    .param p1, "path"    # Landroid/net/Uri;
    .param p2, "isTrial"    # Z

    .prologue
    return-void
.end method

.method public onBootCompleted()V
    .locals 0

    .prologue
    return-void
.end method

.method public onPluginDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onPluginEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onPluginInstalled(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgManager"    # Landroid/content/pm/PackageManager;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onPluginUninstalled(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgManager"    # Landroid/content/pm/PackageManager;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public parseMetaData(Landroid/content/pm/PackageInfo;Z)V
    .locals 0
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;
    .param p2, "status"    # Z

    .prologue
    return-void
.end method

.method public parsePlugins()V
    .locals 0

    .prologue
    return-void
.end method

.method public removeThemePackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public setCallback(Landroid/app/epm/IPluginManagerCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/epm/IPluginManagerCallback;

    .prologue
    iput-object p1, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->mCallback:Landroid/app/epm/IPluginManagerCallback;

    return-void
.end method

.method public storeData(Landroid/content/Context;I)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "val"    # I

    .prologue
    const-string v2, "store"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->KEY_VALUE:Ljava/lang/String;

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
