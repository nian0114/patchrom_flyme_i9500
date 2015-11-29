.class public Lcom/android/server/epm/overlay/ThemeManagerService;
.super Lcom/android/server/epm/overlay/OverlayManagerService;
.source "ThemeManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;,
        Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;,
        Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;,
        Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;,
        Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;,
        Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;
    }
.end annotation


# static fields
.field private static final COMPONENT_PREFERENCES:Ljava/lang/String; = "samsung.andorid.themes.component_preference"

.field private static final DEBUG_ELASTIC:Z = false

.field private static final PREF_ACTIVE_COMPONENTS:Ljava/lang/String; = "samsung.andorid.themes.pref_active_component"

.field private static final TAG:Ljava/lang/String;

.field static isVisible:Z


# instance fields
.field final ACTION_EVENT_ENDED:Ljava/lang/String;

.field final ACTION_EVENT_OCCUR:Ljava/lang/String;

.field private KEY_VALUE:Ljava/lang/String;

.field private final SCROLL_THRESHOLD:F

.field private activeComponentMasterPackageArr:[Ljava/lang/String;

.field private activeComponentPackageArr:[Ljava/lang/String;

.field buggy:Z

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

.field private currentPackageToBeInstalled:Ljava/lang/String;

.field eventIndex:I

.field eventMasterPackageName:Ljava/lang/String;

.field private expiryTime:I

.field inProgress:Z

.field private isLiveWallpaper:Z

.field private mComponentCount:I

.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mEventReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;

.field mFloatingViewClickListener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mInitX:F

.field private mInitY:F

.field private mMasterInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;

.field private mMasterPackageName:Ljava/lang/String;

.field private mNoOfOverlays:I

.field private mOverlay:Ljava/io/File;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;

.field private mThemeUninstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;

.field private mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

.field private mTimer:Ljava/util/Timer;

.field private mTrialInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;

.field private mView:Landroid/view/View;

.field private mViewClicked:Z

.field mViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private masterDetailsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;",
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

.field private overlaysForuninstall:I

.field private trialMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private trialPackage:Ljava/lang/String;

.field private wallManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/epm/overlay/ThemeManagerService;->isVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/epm/overlay/OverlayManagerService;-><init>(Landroid/content/Context;)V

    iput-boolean v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->isLiveWallpaper:Z

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "themes"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "lock"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "wallpaper"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "appicon"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "event"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "font"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "sound"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "appstyle"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "home"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterEventTimeDetails:Ljava/util/HashMap;

    const-string v1, "theme.installer.action"

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->ACTION_EVENT_OCCUR:Ljava/lang/String;

    const-string v1, "theme.uninstaller.action"

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->ACTION_EVENT_ENDED:Ljava/lang/String;

    iput v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mNoOfOverlays:I

    iput v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->overlayCount:I

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mEventReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->SCROLL_THRESHOLD:F

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterPackageName:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterVersion:Ljava/lang/String;

    iput v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->expiryTime:I

    const-string v1, "value"

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->KEY_VALUE:Ljava/lang/String;

    iput v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->overlaysForuninstall:I

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    iput v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventMasterPackageName:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventIndex:I

    new-instance v1, Lcom/android/server/epm/overlay/ThemeManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/epm/overlay/ThemeManagerService$4;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mFloatingViewClickListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/android/server/epm/overlay/ThemeManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/epm/overlay/ThemeManagerService$5;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mViewTouchListener:Landroid/view/View$OnTouchListener;

    iput-boolean v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    iput-boolean v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->buggy:Z

    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    :cond_0
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialMap:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialMap:Landroid/util/SparseArray;

    :cond_1
    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->setStoredActiveComponents()V

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mEventReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mEventReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;

    :cond_2
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    :cond_3
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    :cond_4
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    :cond_5
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mMasterInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;

    if-nez v1, :cond_6

    new-instance v1, Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;

    invoke-direct {v1, p0, v5}, Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Lcom/android/server/epm/overlay/ThemeManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mMasterInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;

    :cond_6
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTrialInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;

    if-nez v1, :cond_7

    new-instance v1, Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;

    invoke-direct {v1, p0, v5}, Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Lcom/android/server/epm/overlay/ThemeManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTrialInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;

    :cond_7
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "eventFilter":Landroid/content/IntentFilter;
    const-string v1, "theme.installer.action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "theme.uninstaller.action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mEventReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/epm/overlay/ThemeManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    iget v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->expiryTime:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/epm/overlay/ThemeManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/epm/overlay/ThemeManagerService;->removeTrialPackage(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/epm/overlay/ThemeManagerService;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/epm/overlay/ThemeManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->showEventBubble()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/epm/overlay/ThemeManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mViewClicked:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/epm/overlay/ThemeManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mViewClicked:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/epm/overlay/ThemeManagerService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    iget v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mInitX:F

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/epm/overlay/ThemeManagerService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mInitX:F

    return p1
.end method

.method static synthetic access$2000(Lcom/android/server/epm/overlay/ThemeManagerService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    iget v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mInitY:F

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/epm/overlay/ThemeManagerService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mInitY:F

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/server/epm/overlay/ThemeManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    iget v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/epm/overlay/ThemeManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    return p1
.end method

.method static synthetic access$2310(Lcom/android/server/epm/overlay/ThemeManagerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    iget v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/epm/overlay/ThemeManagerService;->onEventPassed(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/epm/overlay/ThemeManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->onEventOccur()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/io/InputStream;
    .param p3, "x3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/epm/overlay/ThemeManagerService;->onMasterInstalled(Ljava/lang/String;Z)V

    return-void
.end method

.method private applyDefaultWallpaper()V
    .locals 6

    .prologue
    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    .local v4, "wallManager":Landroid/app/WallpaperManager;
    iget-boolean v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->isLiveWallpaper:Z

    if-eqz v5, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.service.wallpaper.LIVE_WALLPAPER_CHOOSER"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "/data/overlays/defalut.png"

    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "mBitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v4, v2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private applyNewWallpaper()V
    .locals 6

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->wallManager:Landroid/app/WallpaperManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->wallManager:Landroid/app/WallpaperManager;

    :cond_0
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWallpaperName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWallpaperName:Ljava/lang/String;

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .local v1, "id":I
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->wallManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2, v1}, Landroid/app/WallpaperManager;->setResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "id":I
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private deleteRingtoneEntry(Ljava/lang/String;Landroid/net/Uri;)I
    .locals 7
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    const/4 v2, -0x1

    .local v2, "result":I
    invoke-direct {p0, p1, p2}, Lcom/android/server/epm/overlay/ThemeManagerService;->isRingToneEntryExist(Ljava/lang/String;Landroid/net/Uri;)J

    move-result-wide v0

    .local v0, "lRingToneId":J
    const-wide/16 v4, -0x1

    cmp-long v3, v4, v0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    :cond_0
    return v2
.end method

.method private disableComponent(IZ)Z
    .locals 13
    .param p1, "order"    # I
    .param p2, "isTrial"    # Z

    .prologue
    :try_start_0
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aget-object v9, v9, p1

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v10, v9, p1

    const/4 v9, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v9, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    const/4 v9, 0x0

    :goto_2
    return v9

    :sswitch_0
    const-string v11, "home"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x0

    goto :goto_0

    :sswitch_1
    const-string v11, "lock"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :sswitch_2
    const-string v11, "wallpaper"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x2

    goto :goto_0

    :sswitch_3
    const-string v11, "appstyle"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x3

    goto :goto_0

    :sswitch_4
    const-string v11, "font"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x4

    goto :goto_0

    :sswitch_5
    const-string v11, "appicon"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x5

    goto :goto_0

    :sswitch_6
    const-string v11, "sound"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x6

    goto :goto_0

    :sswitch_7
    const-string v11, "event"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x7

    goto :goto_0

    :pswitch_1
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v10, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aget-object v10, v10, p1

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "current_sec_home_theme_package"

    const-string v11, ""

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_2

    const-string v9, "com.sec.android.app.launcher"

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    :cond_2
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v10, v9, p1

    const/4 v9, 0x1

    goto/16 :goto_2

    .end local v0    # "am":Landroid/app/ActivityManager;
    :pswitch_2
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v10, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aget-object v10, v10, p1

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v10, v9, p1

    const/4 v9, 0x1

    goto/16 :goto_2

    :pswitch_3
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v10, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aget-object v10, v10, p1

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "current_sec_wallpaper_theme_package"

    const-string v11, ""

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string v10, "wallpaper"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/WallpaperManager;

    .local v8, "wpm":Landroid/app/WallpaperManager;
    invoke-virtual {v8}, Landroid/app/WallpaperManager;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v8    # "wpm":Landroid/app/WallpaperManager;
    :goto_3
    :try_start_2
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lockscreen_wallpaper_path"

    const-string v11, ""

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v10, v9, p1

    const/4 v9, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .end local v3    # "e":Ljava/lang/Exception;
    :pswitch_4
    const/4 v7, 0x0

    .local v7, "themeSparsedArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :try_start_3
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aget-object v9, v9, p1

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "appStyleCurrentArr":[Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v1, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, "currentInd":I
    if-eqz p2, :cond_3

    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialMap:Landroid/util/SparseArray;

    :goto_4
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    iget-object v10, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v10, v10, p1

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, "pkg":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-virtual {v9, v6, v10, v11}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_5

    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    const/4 v10, 0x0

    aget-object v10, v1, v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "themeSparsedArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    check-cast v7, Landroid/util/SparseArray;

    .restart local v7    # "themeSparsedArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    goto :goto_4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v10, v9, p1

    const/4 v9, 0x1

    goto/16 :goto_2

    .end local v1    # "appStyleCurrentArr":[Ljava/lang/String;
    .end local v2    # "currentInd":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "themeSparsedArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :pswitch_5
    new-instance v5, Landroid/content/Intent;

    const-string v9, "FONT_THEME_CHANGED"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v5, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v10, v9, p1

    const/4 v9, 0x1

    goto/16 :goto_2

    .end local v5    # "intent":Landroid/content/Intent;
    :pswitch_6
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v10, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aget-object v10, v10, p1

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "current_sec_appicon_theme_package"

    const-string v11, ""

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v10, v9, p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v9, 0x1

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x2f4941e6 -> :sswitch_5
        0x300c4f -> :sswitch_4
        0x30f4df -> :sswitch_0
        0x32c52b -> :sswitch_1
        0x5c6729a -> :sswitch_7
        0x688c90f -> :sswitch_6
        0x46b5d030 -> :sswitch_3
        0x57e60e02 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "dirPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x1ff

    const/4 v5, -0x1

    const/4 v0, 0x0

    .local v0, "fileToBeCopied":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    .end local v0    # "fileToBeCopied":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "fileToBeCopied":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v1, "os":Ljava/io/OutputStream;
    invoke-virtual {p0, p2, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-static {p3, v6, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v2

    .local v2, "stat":I
    invoke-static {v0, v6, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    move-result v2

    return-object v0
.end method

.method private enableComponent(Ljava/lang/String;IIZ)Z
    .locals 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "order"    # I
    .param p3, "index"    # I
    .param p4, "isTrial"    # Z

    .prologue
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_1

    const/16 v16, 0x0

    .local v16, "themeSparsedArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    if-eqz p4, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialMap:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v19, v18, p2

    const/16 v18, -0x1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v18, :pswitch_data_0

    .end local v16    # "themeSparsedArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :cond_1
    :goto_2
    :pswitch_0
    const/16 v18, 0x0

    :goto_3
    return v18

    .restart local v16    # "themeSparsedArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Landroid/util/SparseArray;

    move-object/from16 v16, v0

    goto :goto_0

    :sswitch_0
    const-string v20, "home"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x0

    goto :goto_1

    :sswitch_1
    const-string v20, "lock"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x1

    goto :goto_1

    :sswitch_2
    const-string v20, "wallpaper"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x2

    goto :goto_1

    :sswitch_3
    const-string v20, "appstyle"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x3

    goto :goto_1

    :sswitch_4
    const-string v20, "font"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x4

    goto :goto_1

    :sswitch_5
    const-string v20, "appicon"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x5

    goto :goto_1

    :sswitch_6
    const-string v20, "sound"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x6

    goto :goto_1

    :sswitch_7
    const-string v20, "event"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x7

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_1

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .local v13, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "current_sec_home_theme_package"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "activity"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .local v3, "am":Landroid/app/ActivityManager;
    if-eqz v3, :cond_3

    const-string v18, "com.sec.android.app.launcher"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v13, v18, p2

    const/16 v18, 0x1

    goto/16 :goto_3

    .end local v3    # "am":Landroid/app/ActivityManager;
    .end local v13    # "pkg":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_1

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .restart local v13    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v13, v18, p2

    const/16 v18, 0x1

    goto/16 :goto_3

    .end local v13    # "pkg":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_1

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .restart local v13    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "current_sec_wallpaper_theme_package"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v18, "homescreen_wallpaper"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Lcom/android/server/epm/overlay/ThemeManagerService;->getItemBitmap(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "."

    const-string v20, "_"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".png"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .local v17, "wallName":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/data/overlays/lockwallpaper/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v11, "locWall":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "lockscreen_wallpaper_path"

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x2

    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v13, v18, p2

    const/16 v18, 0x1

    goto/16 :goto_3

    .end local v11    # "locWall":Ljava/io/File;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v17    # "wallName":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_1

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .restart local v13    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "#"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v18, p2

    const/16 v18, 0x1

    goto/16 :goto_3

    .end local v9    # "i$":Ljava/util/Iterator;
    :pswitch_5
    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_1

    new-instance v10, Landroid/content/Intent;

    const-string v18, "FONT_THEME_CHANGED"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v10, "intent":Landroid/content/Intent;
    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .local v15, "str":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/data/overlays/fonts/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "fontPath":Ljava/lang/String;
    const-string v18, "#"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, "fontArr":[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v6, v18

    const-string v19, "system"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    const-string v18, "system"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v18, "sip"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/DroidSans.ttf"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    :goto_6
    sget-object v18, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "sending Broadcast..confirmed...."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_7
    const/16 v18, 0x0

    aget-object v18, v6, v18

    const-string v19, "clock"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    const-string v18, "clock"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v6, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    :cond_8
    const/16 v18, 0x0

    aget-object v18, v6, v18

    const-string v19, "numeric"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    const-string v18, "numeric"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v6, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_6

    .end local v6    # "fontArr":[Ljava/lang/String;
    .end local v7    # "fontPath":Ljava/lang/String;
    .end local v15    # "str":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v18, p2

    const/16 v18, 0x1

    goto/16 :goto_3

    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "intent":Landroid/content/Intent;
    :pswitch_6
    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_1

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .restart local v13    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "current_sec_appicon_theme_package"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v13, v18, p2

    const/16 v18, 0x1

    goto/16 :goto_3

    .end local v13    # "pkg":Ljava/lang/String;
    :pswitch_7
    const/4 v12, 0x0

    .local v12, "pendingIndex":I
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_7
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_a

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    const-string v19, "starttime"

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .local v14, "startTime":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    const-string v19, "endtime"

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "endTime":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v5, v12}, Lcom/android/server/epm/overlay/ThemeManagerService;->setAlarmForEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .end local v5    # "endTime":Ljava/lang/String;
    .end local v14    # "startTime":Ljava/lang/String;
    :cond_a
    const/16 v18, 0x1

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2f4941e6 -> :sswitch_5
        0x300c4f -> :sswitch_4
        0x30f4df -> :sswitch_0
        0x32c52b -> :sswitch_1
        0x5c6729a -> :sswitch_7
        0x688c90f -> :sswitch_6
        0x46b5d030 -> :sswitch_3
        0x57e60e02 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private isRingToneEntryExist(Ljava/lang/String;Landroid/net/Uri;)J
    .locals 12
    .param p1, "aRingToneAbsolutePath"    # Ljava/lang/String;
    .param p2, "aUri"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v8, -0x1

    .local v8, "lRingToneEntryId":J
    const/4 v7, 0x0

    .local v7, "lCursor":Landroid/database/Cursor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, "token":J
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "lWhereClause":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v3    # "lWhereClause":Ljava/lang/String;
    :goto_0
    return-wide v8

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private onEventOccur()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventMasterPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventIndex:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(IZ)Z

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventMasterPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventIndex:I

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->enableComponent(Ljava/lang/String;IIZ)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->storeActiveComponents()V

    return-void
.end method

.method private onEventPassed(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(IZ)Z

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0, v2, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->enableComponent(Ljava/lang/String;IIZ)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->storeActiveComponents()V

    return-void
.end method

.method private onMasterInstalled(Ljava/lang/String;Z)V
    .locals 24
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isTrial"    # Z

    .prologue
    sget-object v3, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMasterInstalled , thread id is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "--->"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Lcom/android/server/epm/overlay/ThemeManagerService$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

    :cond_0
    new-instance v18, Ljava/io/File;

    const-string v3, "/data/overlays"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v18, "overlayDir":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdir()Z

    :cond_1
    new-instance v22, Ljava/io/File;

    const-string v3, "/data/overlays/lockwallpaper"

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v22, "wallPaperDir":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->mkdir()Z

    const/16 v3, 0x1ff

    const/4 v4, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, v22

    invoke-static {v0, v3, v4, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    :cond_2
    new-instance v17, Ljava/io/File;

    const-string v3, "/data/overlays/jsonfiles"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v17, "jsonDir":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdir()Z

    :cond_3
    new-instance v14, Ljava/io/File;

    const-string v3, "/data/overlays/fonts"

    invoke-direct {v14, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v14, "fontsDir":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v14}, Ljava/io/File;->mkdir()Z

    const/16 v3, 0x1ff

    const/4 v4, -0x1

    const/4 v6, -0x1

    invoke-static {v14, v3, v4, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    :cond_4
    new-instance v20, Ljava/io/File;

    const-string v3, "/data/overlays/sound"

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v20, "soundDir":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    :cond_5
    const/16 v3, 0x1ff

    const/4 v4, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, v20

    invoke-static {v0, v3, v4, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    const/4 v10, 0x0

    .local v10, "aInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .local v5, "masterContext":Landroid/content/Context;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->parseJSonData(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    .local v11, "am":Landroid/content/res/AssetManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "themes.json"

    invoke-virtual {v11, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v6, "/data/overlays/jsonfiles"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v6}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    const/16 v21, 0x0

    .local v21, "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    if-nez p2, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    check-cast v21, Landroid/util/SparseArray;

    .restart local v21    # "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :goto_0
    if-eqz p2, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v4, "themes"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v4, "themes"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v4, "themes"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_6
    if-eqz p2, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v4, "event"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v4, "event"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v4, "event"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_1
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_9

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .local v7, "compMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move/from16 v9, v16

    .local v9, "index":I
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "str":Ljava/lang/String;
    if-eqz p2, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_8
    new-instance v23, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/epm/overlay/ThemeManagerService$1;

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/epm/overlay/ThemeManagerService$1;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)V

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_2

    .end local v5    # "masterContext":Landroid/content/Context;
    .end local v7    # "compMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v8    # "str":Ljava/lang/String;
    .end local v9    # "index":I
    .end local v11    # "am":Landroid/content/res/AssetManager;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "j":I
    .end local v21    # "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :catch_0
    move-exception v13

    .local v13, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v13}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .end local v13    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_9
    :goto_3
    return-void

    .restart local v5    # "masterContext":Landroid/content/Context;
    .restart local v11    # "am":Landroid/content/res/AssetManager;
    .restart local v21    # "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialMap:Landroid/util/SparseArray;

    move-object/from16 v21, v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.android.themecenter"

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v12

    .local v12, "ct":Landroid/content/Context;
    const-string v3, "samsung.andorid.themes.component_preference"

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .local v19, "prefs":Landroid/content/SharedPreferences;
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "TrialPackage"

    move-object/from16 v0, p1

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .end local v12    # "ct":Landroid/content/Context;
    .end local v19    # "prefs":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v13

    .local v13, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .end local v5    # "masterContext":Landroid/content/Context;
    .end local v11    # "am":Landroid/content/res/AssetManager;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v21    # "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :catch_2
    move-exception v13

    .local v13, "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .end local v13    # "e":Ljava/io/IOException;
    .restart local v5    # "masterContext":Landroid/content/Context;
    .restart local v7    # "compMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v9    # "index":I
    .restart local v11    # "am":Landroid/content/res/AssetManager;
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v16    # "j":I
    .restart local v21    # "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :cond_b
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .end local v5    # "masterContext":Landroid/content/Context;
    .end local v7    # "compMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v9    # "index":I
    .end local v11    # "am":Landroid/content/res/AssetManager;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "j":I
    .end local v21    # "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :catch_3
    move-exception v13

    .local v13, "e":Lorg/json/JSONException;
    invoke-virtual {v13}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method

.method private removeTrialPackage(Z)V
    .locals 3
    .param p1, "switchToNormal"    # Z

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(IZ)Z

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0, v2, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->enableComponent(Ljava/lang/String;IIZ)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->removeThemePackage(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private saveDefaultWallpaper()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .local v0, "wallManager":Landroid/app/WallpaperManager;
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/epm/overlay/ThemeManagerService$6;

    invoke-direct {v2, p0, v0}, Lcom/android/server/epm/overlay/ThemeManagerService$6;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/app/WallpaperManager;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->isLiveWallpaper:Z

    goto :goto_0
.end method

.method private setAlarmForEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 14
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "startEventThemeTime"    # Ljava/lang/String;
    .param p3, "endEventThemeTime"    # Ljava/lang/String;
    .param p4, "index"    # I

    .prologue
    const-string v8, "USER_EVENT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USER_EVENT -- startTimerForEventThemeUninstall pkgName= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .local v7, "startTimeCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .local v2, "endTimeCalendar":Ljava/util/Calendar;
    const-string v8, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, "splitsStartTime":[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "month_start":I
    sget-object v8, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "value of splits year--->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",Month --->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",Day-->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",hours --->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x3

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",minutes--->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x4

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    const/4 v8, 0x5

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xb

    const/4 v9, 0x3

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xc

    const/4 v9, 0x4

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xd

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    const-string v8, ":"

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, "splitsEndTime":[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "month_end":I
    const/4 v8, 0x2

    invoke-virtual {v2, v8, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    const/4 v8, 0x5

    const/4 v9, 0x2

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xb

    const/4 v9, 0x3

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xc

    const/4 v9, 0x4

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xd

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    sget-object v8, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "endTimecalendar value of splits year--->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",Month --->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",Day --->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",Hours -->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x3

    aget-object v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",minutes-->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x4

    aget-object v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    sget-object v9, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setting alarmaa "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterEventTimeDetails:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    move/from16 v0, p4

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    invoke-virtual {v8}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v10, 0x0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterEventTimeDetails:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    move/from16 v0, p4

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    invoke-virtual {v9, v10, v12, v13, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    add-int/lit8 p4, p4, 0x1

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v10, 0x0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterEventTimeDetails:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    move/from16 v0, p4

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    invoke-virtual {v9, v10, v12, v13, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private setStoredActiveComponents()V
    .locals 7

    .prologue
    :try_start_0
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.themecenter"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .local v0, "ct":Landroid/content/Context;
    const-string v4, "samsung.andorid.themes.component_preference"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .local v3, "prefs":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "active"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "ct":Landroid/content/Context;
    .end local v2    # "i":I
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private setThemeRingtone(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "type"    # I

    .prologue
    const/4 v12, 0x0

    const/16 v13, 0x2e

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .local v7, "title":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .local v3, "fileAbsPath":Ljava/lang/String;
    if-lez p4, :cond_0

    invoke-static {v3}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .local v10, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .local v6, "newUri":Landroid/net/Uri;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10}, Lcom/android/server/epm/overlay/ThemeManagerService;->deleteRingtoneEntry(Ljava/lang/String;Landroid/net/Uri;)I

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .local v11, "values":Landroid/content/ContentValues;
    const-string v12, "_data"

    invoke-virtual {v11, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "title"

    invoke-virtual {v11, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "_size"

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v12, "mime_type"

    const-string v13, "audio/*"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "artist"

    const-string v13, "elastic"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "is_ringtone"

    const/4 v12, 0x1

    move/from16 v0, p4

    if-ne v0, v12, :cond_1

    const/4 v12, 0x1

    :goto_0
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v13, "is_notification"

    const/4 v12, 0x2

    move/from16 v0, p4

    if-ne v0, v12, :cond_2

    const/4 v12, 0x1

    :goto_1
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v13, "is_alarm"

    const/4 v12, 0x4

    move/from16 v0, p4

    if-ne v0, v12, :cond_3

    const/4 v12, 0x1

    :goto_2
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v12, "is_music"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v11    # "values":Landroid/content/ContentValues;
    :goto_3
    if-eqz v6, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "ident":J
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v0, v1, v6}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v4    # "ident":J
    .end local v6    # "newUri":Landroid/net/Uri;
    .end local v8    # "token":J
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_0
    return-void

    .restart local v6    # "newUri":Landroid/net/Uri;
    .restart local v8    # "token":J
    .restart local v10    # "uri":Landroid/net/Uri;
    .restart local v11    # "values":Landroid/content/ContentValues;
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .end local v11    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12
.end method

.method private showEventBubble()V
    .locals 8

    .prologue
    const/16 v1, 0x96

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    const/16 v4, 0xc8

    const/16 v5, 0x7d3

    const v6, 0x40028

    const/4 v7, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "EventTheme"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mFloatingViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/epm/overlay/ThemeManagerService;->isVisible:Z

    return-void
.end method

.method private startExpiryTimerForUninstall(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/android/server/epm/overlay/ThemeManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/epm/overlay/ThemeManagerService$3;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    .local v0, "mTask":Ljava/util/TimerTask;
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTimer:Ljava/util/Timer;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private storeActiveComponents()V
    .locals 7

    .prologue
    :try_start_0
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.themecenter"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .local v0, "ct":Landroid/content/Context;
    const-string v4, "samsung.andorid.themes.component_preference"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .local v3, "prefs":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "active"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "ct":Landroid/content/Context;
    .end local v2    # "i":I
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method public changeThemeState(Ljava/lang/String;IIZ)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "order"    # I
    .param p4, "isTrial"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x9

    const/4 v3, 0x0

    if-nez p4, :cond_7

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    invoke-direct {p0, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->removeTrialPackage(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v2, v2, p3

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    if-nez p3, :cond_5

    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_3

    invoke-direct {p0, v1, p4}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(IZ)Z

    invoke-direct {p0, p1, v1, v3, p4}, Lcom/android/server/epm/overlay/ThemeManagerService;->enableComponent(Ljava/lang/String;IIZ)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aput-object p1, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aput-object v5, v2, v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aput-object p1, v2, v3

    .end local v1    # "i":I
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->storeActiveComponents()V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCallback:Landroid/app/epm/IPluginManagerCallback;

    invoke-interface {v2, p1}, Landroid/app/epm/IPluginManagerCallback;->onStateChangeCompleted(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :cond_5
    invoke-direct {p0, p3, p4}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(IZ)Z

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aput-object p1, v2, p3

    invoke-direct {p0, p1, p3, v3, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->enableComponent(Ljava/lang/String;IIZ)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aput-object p1, v2, p3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aput-object v5, v2, p3

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    invoke-direct {p0, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->removeTrialPackage(Z)V

    :cond_8
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v4, :cond_a

    const/4 v2, 0x4

    if-eq v1, v2, :cond_9

    invoke-direct {p0, v1, p4}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(IZ)Z

    invoke-direct {p0, p1, v1, v3, p4}, Lcom/android/server/epm/overlay/ThemeManagerService;->enableComponent(Ljava/lang/String;IIZ)Z

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTimer:Ljava/util/Timer;

    invoke-direct {p0, p1}, Lcom/android/server/epm/overlay/ThemeManagerService;->startExpiryTimerForUninstall(Ljava/lang/String;)V

    goto :goto_2

    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
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

.method public extractWallpaper()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->saveDefaultWallpaper()V

    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->applyNewWallpaper()V

    return-void
.end method

.method public getActiveComponents()[Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v2, 0x9

    new-array v1, v2, [Ljava/lang/String;

    .local v1, "returnArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;

    iget-object v2, v2, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public getCategory()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public getComponentPackageMap()Ljava/util/HashMap;
    .locals 8
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
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .local v5, "tempComponentPackageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "key":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "packageListForComponent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "pkg":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;

    iget-object v6, v6, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;

    iget-object v6, v6, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mVersion:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v4    # "pkg":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "packageListForComponent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    return-object v5
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getItemBitmap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "bitmapId"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    .local v7, "appContext":Landroid/content/Context;
    const-string v0, "wallpaper"

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/WallpaperManager;

    .local v6, "wpm":Landroid/app/WallpaperManager;
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .local v2, "r":Landroid/content/res/Resources;
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .local v5, "hl":Landroid/os/Handler;
    if-eqz v2, :cond_0

    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/epm/overlay/ThemeManagerService$2;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/epm/overlay/ThemeManagerService$2;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/app/WallpaperManager;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "r":Landroid/content/res/Resources;
    .end local v5    # "hl":Landroid/os/Handler;
    .end local v6    # "wpm":Landroid/app/WallpaperManager;
    .end local v7    # "appContext":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public installThemePackage(Landroid/net/Uri;Z)V
    .locals 6
    .param p1, "path"    # Landroid/net/Uri;
    .param p2, "isTrial"    # Z

    .prologue
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTrialInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mMasterInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iput-boolean v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected installThemes(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V
    .locals 23
    .param p1, "masterContext"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "str"    # Ljava/lang/String;
    .param p5, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    .local v5, "am":Landroid/content/res/AssetManager;
    const/16 v18, -0x1

    :try_start_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v18, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    return-void

    :sswitch_0
    const-string v19, "home"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x0

    goto :goto_0

    :sswitch_1
    const-string v19, "lock"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x1

    goto :goto_0

    :sswitch_2
    const-string v19, "wallpaper"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x2

    goto :goto_0

    :sswitch_3
    const-string v19, "appstyle"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x3

    goto :goto_0

    :sswitch_4
    const-string v19, "font"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x4

    goto :goto_0

    :sswitch_5
    const-string v19, "appicon"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x5

    goto :goto_0

    :sswitch_6
    const-string v19, "sound"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x6

    goto :goto_0

    :sswitch_7
    const-string v19, "event"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x7

    goto :goto_0

    :pswitch_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".apk"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ".apk"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    const-string v20, "/data/overlays"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    sget-object v18, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "exception in component :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .local v13, "msg":Landroid/os/Message;
    const-string v18, "appstyle"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    iput v0, v13, Landroid/os/Message;->arg1:I

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .end local v6    # "e":Ljava/lang/Exception;
    .end local v13    # "msg":Landroid/os/Message;
    :pswitch_2
    :try_start_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".apk"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ".apk"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    const-string v20, "/data/overlays"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".apk"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ".apk"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    const-string v20, "/data/overlays"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_1

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".apk"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ".apk"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    const-string v20, "/data/overlays"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .end local v11    # "i":I
    :pswitch_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/data/overlays/fonts/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .local v10, "fontPath":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v9, "fontDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    :cond_2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "font":Ljava/lang/String;
    const-string v18, "#"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .local v8, "fontArr":[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v8, v18

    const-string v19, "system"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    const-string v18, "DroidSans.ttf"

    const/16 v19, 0x1

    aget-object v19, v8, v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v10}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    const-string v18, "DroidSans-Bold.ttf"

    const/16 v19, 0x1

    aget-object v19, v8, v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v10}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    goto :goto_4

    :cond_3
    const/16 v18, 0x1

    aget-object v18, v8, v18

    const/16 v19, 0x1

    aget-object v19, v8, v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v10}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    goto :goto_4

    .end local v7    # "font":Ljava/lang/String;
    .end local v8    # "fontArr":[Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .end local v9    # "fontDir":Ljava/io/File;
    .end local v10    # "fontPath":Ljava/lang/String;
    .end local v12    # "i$":Ljava/util/Iterator;
    :pswitch_6
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".apk"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ".apk"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    const-string v20, "/data/overlays"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_7
    const-string v17, "/data/overlays/sound"

    .local v17, "soundPath":Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v16, "soundDir":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    :cond_5
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .local v14, "sound":Ljava/lang/String;
    const-string v18, "#"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .local v15, "soundArr":[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v15, v18

    const-string v19, "ringtone"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    const/16 v18, 0x1

    aget-object v18, v15, v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "sound/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v15, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v19, v15, v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->setThemeRingtone(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V

    goto :goto_5

    :cond_7
    const/16 v18, 0x0

    aget-object v18, v15, v18

    const-string v19, "notification"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    const/16 v18, 0x1

    aget-object v18, v15, v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "sound/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v15, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v19, v15, v19

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->setThemeRingtone(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_8
    const/16 v18, 0x0

    aget-object v18, v15, v18

    const-string v19, "alarm"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    const/16 v18, 0x1

    aget-object v18, v15, v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "sound/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v15, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v19, v15, v19

    const/16 v20, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->setThemeRingtone(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_9
    const/16 v18, 0x0

    aget-object v18, v15, v18

    const-string v19, "sceen_touch"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    const-string v18, "TW_Touch.ogg"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "sound/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v15, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "theme_touch_sound"

    const-string v20, "/data/overlays/sound"

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_5

    :cond_a
    const/16 v18, 0x0

    aget-object v18, v15, v18

    const-string v19, "hw_touch"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    const-string v18, "S_HW_Touch.ogg"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "sound/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v15, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "theme_touch_sound"

    const-string v20, "/data/overlays/sound"

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_5

    :cond_b
    const/16 v18, 0x0

    aget-object v18, v15, v18

    const-string v19, "keyboard"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    const/16 v18, 0x1

    aget-object v18, v15, v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "sound/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v15, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "default_key_sound_path"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/data/overlays/sound/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v21, v15, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_5

    .end local v14    # "sound":Ljava/lang/String;
    .end local v15    # "soundArr":[Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v16    # "soundDir":Ljava/io/File;
    .end local v17    # "soundPath":Ljava/lang/String;
    .restart local v6    # "e":Ljava/lang/Exception;
    .restart local v13    # "msg":Landroid/os/Message;
    :cond_d
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v13, Landroid/os/Message;->arg1:I

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2f4941e6 -> :sswitch_5
        0x300c4f -> :sswitch_4
        0x30f4df -> :sswitch_0
        0x32c52b -> :sswitch_1
        0x5c6729a -> :sswitch_7
        0x688c90f -> :sswitch_6
        0x46b5d030 -> :sswitch_3
        0x57e60e02 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method public normalMasterInstallation(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/epm/overlay/ThemeManagerService;->onMasterInstalled(Ljava/lang/String;Z)V

    :cond_0
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

.method public parseJSonData(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 45
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isTrial"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v18, 0x0

    .local v18, "is":Ljava/io/InputStream;
    const/16 v38, 0x0

    .local v38, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "themes.json"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    new-instance v38, Ljava/io/BufferedReader;

    .end local v38    # "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/InputStreamReader;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v38

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v38    # "reader":Ljava/io/BufferedReader;
    :goto_0
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .local v27, "jsonData":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual/range {v38 .. v38}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v29

    .local v29, "line":Ljava/lang/String;
    if-eqz v29, :cond_1

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v27    # "jsonData":Ljava/lang/StringBuilder;
    .end local v29    # "line":Ljava/lang/String;
    :cond_0
    new-instance v13, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/overlays/jsonfiles/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v13, "fl":Ljava/io/File;
    new-instance v38, Ljava/io/BufferedReader;

    .end local v38    # "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v38

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v38    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .end local v13    # "fl":Ljava/io/File;
    .restart local v27    # "jsonData":Ljava/lang/StringBuilder;
    .restart local v29    # "line":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .local v33, "parsedJson":Ljava/lang/String;
    new-instance v21, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v21, "jObject":Lorg/json/JSONObject;
    new-instance v32, Landroid/util/SparseArray;

    invoke-direct/range {v32 .. v32}, Landroid/util/SparseArray;-><init>()V

    .local v32, "packsMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    const-string v2, "header"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    .local v23, "jObjectHeader":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    move-object/from16 v43, v0

    new-instance v2, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;

    const-string v3, "title"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "description"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "version"

    const/16 v44, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v44

    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "themes"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "themes"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "themes"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "themes"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/16 v34, 0x0

    .local v34, "pendingIntenList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v2, "isTrial"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    :cond_4
    const-string v2, "themes"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .local v24, "jObjectThemeArr":Lorg/json/JSONArray;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v15, v2, :cond_2d

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .local v11, "componentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    .local v22, "jObject1":Lorg/json/JSONObject;
    const-string v2, "lock"

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, "element":Ljava/lang/String;
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .local v40, "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v12, :cond_7

    move-object/from16 v0, v40

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "lock"

    move-object/from16 v0, v40

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "lock"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "lock"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "lock"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "lock"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v40, Ljava/util/ArrayList;

    .end local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .restart local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    :cond_7
    const-string v2, "home"

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_a

    move-object/from16 v0, v40

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "home"

    move-object/from16 v0, v40

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "home"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "home"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "home"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "home"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    new-instance v40, Ljava/util/ArrayList;

    .end local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .restart local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    :cond_a
    const-string v2, "appstyle"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    .local v25, "jPhoneStyleObject":Lorg/json/JSONObject;
    if-eqz v25, :cond_10

    const-string v2, "applications"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .local v9, "appArr":Lorg/json/JSONArray;
    if-eqz v9, :cond_b

    const/16 v19, 0x0

    .local v19, "j":I
    :goto_3
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_b

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v37

    .local v37, "pstylePackage":Ljava/lang/String;
    move-object/from16 v0, v40

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .end local v19    # "j":I
    .end local v37    # "pstylePackage":Ljava/lang/String;
    :cond_b
    const-string v2, "framework"

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "fwkPackage":Ljava/lang/String;
    if-eqz v14, :cond_c

    move-object/from16 v0, v40

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    const-string v2, "appstyle"

    move-object/from16 v0, v40

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "appstyle"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "appstyle"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "appstyle"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "appstyle"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    if-eqz p1, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    :cond_f
    new-instance v40, Ljava/util/ArrayList;

    .end local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .end local v9    # "appArr":Lorg/json/JSONArray;
    .end local v14    # "fwkPackage":Ljava/lang/String;
    .restart local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_10
    const-string v2, "wallpaper"

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_13

    move-object/from16 v0, v40

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "wallpaper"

    move-object/from16 v0, v40

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "wallpaper"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "wallpaper"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "wallpaper"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "wallpaper"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    new-instance v40, Ljava/util/ArrayList;

    .end local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .restart local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    :cond_13
    const-string v2, "appicon"

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_16

    move-object/from16 v0, v40

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "appicon"

    move-object/from16 v0, v40

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "appicon"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "appicon"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "appicon"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "appicon"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    new-instance v40, Ljava/util/ArrayList;

    .end local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .restart local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    :cond_16
    const-string v2, "font"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .local v20, "jFontsObject":Lorg/json/JSONObject;
    if-eqz v20, :cond_1c

    const-string v2, "system"

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .local v41, "sysFont":Ljava/lang/String;
    if-eqz v41, :cond_17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "system#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-interface/range {v40 .. v41}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    const-string v2, "clock"

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "clockFont":Ljava/lang/String;
    if-eqz v10, :cond_18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clock#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v40

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    const-string v2, "numeric"

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .local v31, "numFont":Ljava/lang/String;
    if-eqz v31, :cond_19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v40

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    const-string v2, "font"

    move-object/from16 v0, v40

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "font"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "font"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "font"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "font"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    new-instance v40, Ljava/util/ArrayList;

    .end local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .restart local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    .end local v10    # "clockFont":Ljava/lang/String;
    .end local v31    # "numFont":Ljava/lang/String;
    .end local v41    # "sysFont":Ljava/lang/String;
    :cond_1c
    const-string v2, "sound"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .local v26, "jSoundObject":Lorg/json/JSONObject;
    if-eqz v26, :cond_25

    const-string v2, "ringtone"

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .local v39, "ringSound":Ljava/lang/String;
    if-eqz v39, :cond_1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ringtone#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    const-string v2, "notification"

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .local v30, "notiSound":Ljava/lang/String;
    if-eqz v30, :cond_1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notification#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v40

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    const-string v2, "alarm"

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "alarmSound":Ljava/lang/String;
    if-eqz v8, :cond_1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alarm#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v40

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    const-string v2, "sceen_touch"

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .local v42, "touchSound":Ljava/lang/String;
    if-eqz v42, :cond_20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sceen_touch#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    const-string v2, "hw_touch"

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    if-eqz v42, :cond_21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hw_touch#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    const-string v2, "keyboard"

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    if-eqz v42, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyboard#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    const-string v2, "sound"

    move-object/from16 v0, v40

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "sound"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "sound"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "sound"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "sound"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    new-instance v40, Ljava/util/ArrayList;

    .end local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .restart local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_25

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    .end local v8    # "alarmSound":Ljava/lang/String;
    .end local v30    # "notiSound":Ljava/lang/String;
    .end local v39    # "ringSound":Ljava/lang/String;
    .end local v42    # "touchSound":Ljava/lang/String;
    :cond_25
    const-string v2, "thirdparty"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v28

    .local v28, "jsonElementArr":Lorg/json/JSONArray;
    if-eqz v28, :cond_28

    const/16 v19, 0x0

    .restart local v19    # "j":I
    :goto_4
    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_26

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    :cond_26
    const-string v2, "thirdparty"

    move-object/from16 v0, v40

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_27

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    :cond_27
    new-instance v40, Ljava/util/ArrayList;

    .end local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .end local v19    # "j":I
    .restart local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_28
    if-eqz v15, :cond_2c

    const-string v2, "notifyuser"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_29

    move-object/from16 v0, v40

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "notifyuser"

    move-object/from16 v0, v40

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v40, Ljava/util/ArrayList;

    .end local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .restart local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "event"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "event"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "event"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "event"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    new-instance v34, Ljava/util/ArrayList;

    .end local v34    # "pendingIntenList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .restart local v34    # "pendingIntenList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v2, "starttime"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v40

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "starttime"

    move-object/from16 v0, v40

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v17, Landroid/content/Intent;

    const-string v2, "theme.installer.action"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v17, "i1_start":Landroid/content/Intent;
    const-string v2, "package"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "index"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v36

    .local v36, "pi_start":Landroid/app/PendingIntent;
    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v40, Ljava/util/ArrayList;

    .end local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .restart local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "endtime"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v40

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "endtime"

    move-object/from16 v0, v40

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Landroid/content/Intent;

    const-string v2, "theme.uninstaller.action"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v16, "i1_end":Landroid/content/Intent;
    const-string v2, "package"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "index"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v35

    .local v35, "pi_end":Landroid/app/PendingIntent;
    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v16    # "i1_end":Landroid/content/Intent;
    .end local v17    # "i1_start":Landroid/content/Intent;
    .end local v35    # "pi_end":Landroid/app/PendingIntent;
    .end local v36    # "pi_start":Landroid/app/PendingIntent;
    :cond_2c
    move-object/from16 v0, v32

    invoke-virtual {v0, v15, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .end local v11    # "componentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v12    # "element":Ljava/lang/String;
    .end local v20    # "jFontsObject":Lorg/json/JSONObject;
    .end local v22    # "jObject1":Lorg/json/JSONObject;
    .end local v25    # "jPhoneStyleObject":Lorg/json/JSONObject;
    .end local v26    # "jSoundObject":Lorg/json/JSONObject;
    .end local v28    # "jsonElementArr":Lorg/json/JSONArray;
    .end local v40    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2d
    if-eqz p3, :cond_2e

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->trialMap:Landroid/util/SparseArray;

    :goto_5
    return-void

    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterEventTimeDetails:Ljava/util/HashMap;

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method

.method public parsePlugins()V
    .locals 23

    .prologue
    :try_start_0
    new-instance v11, Ljava/io/File;

    const-string v20, "/data/overlays/jsonfiles"

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v11, "masterFiles":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "com.samsung.android.themecenter"

    const/16 v22, 0x2

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .local v4, "ct":Landroid/content/Context;
    const-string v20, "samsung.andorid.themes.component_preference"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .local v15, "prefs":Landroid/content/SharedPreferences;
    const-string v20, "TrialPackage"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .local v19, "trialPkg":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-virtual {v11}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .local v7, "files":[Ljava/lang/String;
    move-object v3, v7

    .local v3, "arr$":[Ljava/lang/String;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v10, :cond_2

    aget-object v17, v3, v9

    .local v17, "str":Ljava/lang/String;
    const/16 v20, 0x0

    const-string v21, ".json"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .local v14, "pkgName":Ljava/lang/String;
    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->parseJSonData(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->parseJSonData(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "ct":Landroid/content/Context;
    .end local v7    # "files":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "masterFiles":Ljava/io/File;
    .end local v14    # "pkgName":Ljava/lang/String;
    .end local v15    # "prefs":Landroid/content/SharedPreferences;
    .end local v17    # "str":Ljava/lang/String;
    .end local v19    # "trialPkg":Ljava/lang/String;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .restart local v4    # "ct":Landroid/content/Context;
    .restart local v11    # "masterFiles":Ljava/io/File;
    .restart local v15    # "prefs":Landroid/content/SharedPreferences;
    .restart local v19    # "trialPkg":Ljava/lang/String;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget-object v20, v20, v21

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget-object v12, v20, v21

    .local v12, "packageName":Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "pendingIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/util/SparseArray;

    .local v18, "themeSparsedArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_3
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_3

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/HashMap;

    const-string v21, "starttime"

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .local v16, "startTime":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/HashMap;

    const-string v21, "endtime"

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, "endTime":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v12, v1, v6, v13}, Lcom/android/server/epm/overlay/ThemeManagerService;->setAlarmForEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .end local v6    # "endTime":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "pendingIndex":I
    .end local v16    # "startTime":Ljava/lang/String;
    .end local v18    # "themeSparsedArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :cond_3
    if-eqz v19, :cond_1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->removeTrialPackage(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public removeThemePackage(Ljava/lang/String;)V
    .locals 22
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemeUninstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    new-instance v19, Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Lcom/android/server/epm/overlay/ThemeManagerService$1;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemeUninstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v5, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/overlays/jsonfiles/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".json"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v5, "fl":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_2
    const/16 v17, 0x0

    .local v17, "themeArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialMap:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    :goto_1
    if-eqz v17, :cond_1e

    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseArray;->size()I

    move-result v19

    if-lez v19, :cond_1e

    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseArray;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_19

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .local v4, "componentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_18

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .local v16, "str":Ljava/lang/String;
    const/16 v19, -0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_0

    :cond_4
    :goto_4
    packed-switch v19, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .local v14, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    aput-object v21, v19, v20

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(IZ)Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemeUninstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .end local v4    # "componentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v9    # "i":I
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v16    # "str":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "themeArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    check-cast v17, Landroid/util/SparseArray;

    .restart local v17    # "themeArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    goto/16 :goto_1

    .restart local v4    # "componentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v9    # "i":I
    .restart local v16    # "str":Ljava/lang/String;
    :sswitch_0
    const-string v20, "lock"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    const/16 v19, 0x0

    goto/16 :goto_4

    :sswitch_1
    const-string v20, "home"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    const/16 v19, 0x1

    goto/16 :goto_4

    :sswitch_2
    const-string v20, "wallpaper"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    const/16 v19, 0x2

    goto/16 :goto_4

    :sswitch_3
    const-string v20, "appstyle"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    const/16 v19, 0x3

    goto/16 :goto_4

    :sswitch_4
    const-string v20, "font"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    const/16 v19, 0x4

    goto/16 :goto_4

    :sswitch_5
    const-string v20, "appicon"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    const/16 v19, 0x5

    goto/16 :goto_4

    :sswitch_6
    const-string v20, "sound"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    const/16 v19, 0x6

    goto/16 :goto_4

    :pswitch_1
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .restart local v14    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    aget-object v19, v19, v20

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    const/16 v21, 0x0

    aput-object v21, v19, v20

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    aget-object v19, v19, v20

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    const/16 v19, 0x8

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(IZ)Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemeUninstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .end local v14    # "pkg":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .restart local v14    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget-object v19, v19, v20

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    const/16 v21, 0x0

    aput-object v21, v19, v20

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget-object v19, v19, v20

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(IZ)Z

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemeUninstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "."

    const-string v21, "_"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".png"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .local v18, "wallName":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/overlays/lockwallpaper/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v13, "locWall":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_c

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .end local v13    # "locWall":Ljava/io/File;
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v18    # "wallName":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x7

    aget-object v19, v19, v20

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x7

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x7

    const/16 v21, 0x0

    aput-object v21, v19, v20

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x7

    aget-object v19, v19, v20

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x7

    aget-object v19, v19, v20

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "#"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    const/16 v19, 0x7

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(IZ)Z

    :cond_e
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .local v15, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemeUninstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    goto :goto_5

    .end local v15    # "pkgName":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .end local v11    # "i$":Ljava/util/Iterator;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    aget-object v19, v19, v20

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    const/16 v21, 0x0

    aput-object v21, v19, v20

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    aget-object v19, v19, v20

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    aget-object v19, v19, v20

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    const/16 v19, 0x5

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(IZ)Z

    :cond_11
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/overlays/fonts/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "fontPath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v6, "fontDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_13

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .local v3, "arr$":[Ljava/io/File;
    array-length v12, v3

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_6
    if-ge v11, v12, :cond_12

    aget-object v8, v3, v11

    .local v8, "fs":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .end local v8    # "fs":Ljava/io/File;
    :cond_12
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .end local v3    # "arr$":[Ljava/io/File;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .end local v6    # "fontDir":Ljava/io/File;
    .end local v7    # "fontPath":Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .restart local v14    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    aget-object v19, v19, v20

    if-eqz v19, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    const/16 v21, 0x0

    aput-object v21, v19, v20

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    aget-object v19, v19, v20

    if-eqz v19, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    const/16 v19, 0x3

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(IZ)Z

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemeUninstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .end local v14    # "pkg":Ljava/lang/String;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    aget-object v19, v19, v20

    if-eqz v19, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    const/16 v21, 0x0

    aput-object v21, v19, v20

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    aget-object v19, v19, v20

    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    aget-object v19, v19, v20

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    const/16 v19, 0x6

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(IZ)Z

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .end local v16    # "str":Ljava/lang/String;
    :cond_18
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .end local v4    # "componentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    aget-object v19, v19, v20

    if-eqz v19, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    const/16 v21, 0x0

    aput-object v21, v19, v20

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "event"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "event"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "event"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    if-eqz v19, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput-object v21, v19, v20

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "themes"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "themes"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "themes"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v9    # "i":I
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->storeActiveComponents()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x2f4941e6 -> :sswitch_5
        0x300c4f -> :sswitch_4
        0x30f4df -> :sswitch_1
        0x32c52b -> :sswitch_0
        0x688c90f -> :sswitch_6
        0x46b5d030 -> :sswitch_3
        0x57e60e02 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public run()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/android/server/epm/overlay/ThemeManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/epm/overlay/ThemeManagerService$7;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    iput-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public setCallback(Landroid/app/epm/IPluginManagerCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/epm/IPluginManagerCallback;

    .prologue
    invoke-super {p0, p1}, Lcom/android/server/epm/overlay/OverlayManagerService;->setCallback(Landroid/app/epm/IPluginManagerCallback;)V

    return-void
.end method
