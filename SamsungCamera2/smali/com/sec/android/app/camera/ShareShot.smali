.class public Lcom/sec/android/app/camera/ShareShot;
.super Ljava/lang/Object;
.source "ShareShot.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$UserSelectionChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;,
        Lcom/sec/android/app/camera/ShareShot$OnUserSelected;,
        Lcom/sec/android/app/camera/ShareShot$UserWrapper;
    }
.end annotation


# static fields
.field public static final ACTIVE_REQUEST_TIMEOUT:I = 0xce

.field public static final ACTIVE_USER:I = 0xcb

.field public static final CANCEL_ACTIVE_USER:I = 0xcc

.field public static final DIRECTSHARE_ACCESS_KEY:I = 0x0

.field public static final DIRECTSHARE_ACCESS_TOKEN:I = 0x1

.field public static final DIRECTSHARE_APP_CHATON_ID:I = 0x3

.field public static final DIRECTSHARE_CHATON_ID:I = 0x2

.field public static final DIRECTSHARE_INFO_SIZE:I = 0x5

.field public static final DIRECTSHARE_REQUEST_ID:I = 0x1

.field public static final DIRECTSHARE_SCLOUD_ID:I = 0x4

.field public static final FILE_USER_PHOTO_DIR:Ljava/lang/String; = "/sdcard/Android/data/com.sec.android.app.camera"

.field public static final FILE_USER_PHOTO_PATH:Ljava/lang/String; = "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

.field public static final FILE_USER_PHOTO_TMP_PATH:Ljava/lang/String; = "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

.field public static final REFESH_VIEW_COMMAND:I = 0xcd

.field private static final RUN_DIALOG_TO_CONFIRM:I = 0xc8

.field private static final RUN_DIALOG_TO_NOTICE_COMFIRMED:I = 0xca

.field private static final RUN_TO_SNS_MODE:I = 0xc9

.field private static final TAG:Ljava/lang/String; = "ShareShot"

.field private static mDirectshareRequestId:I


# instance fields
.field private callback:Lcom/samsung/shareshot/IShareShotServiceCallback;

.field private cb_conn:Landroid/content/ServiceConnection;

.field private conn:Landroid/content/ServiceConnection;

.field private iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

.field public iShootShareService:Lcom/samsung/shareshot/IShareShotService;

.field private mActiveIp:Ljava/lang/String;

.field public mActiveUserHandler:Landroid/os/Handler;

.field protected mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mDirectShareInfo:[Ljava/lang/String;

.field protected mMainHandler:Landroid/os/Handler;

.field public mReceiveImagePath:Ljava/lang/String;

.field public mReceived:Z

.field public mRespondNoti:Z

.field private mShareTargetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mUserWrapper:Lcom/sec/android/app/camera/ShareShot$UserWrapper;

.field public sobject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/camera/ShareShot;->mDirectshareRequestId:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 3
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    .line 75
    iput-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->mUserWrapper:Lcom/sec/android/app/camera/ShareShot$UserWrapper;

    .line 77
    iput-boolean v2, p0, Lcom/sec/android/app/camera/ShareShot;->mReceived:Z

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mReceiveImagePath:Ljava/lang/String;

    .line 80
    iput-boolean v2, p0, Lcom/sec/android/app/camera/ShareShot;->mRespondNoti:Z

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->sobject:Ljava/lang/Object;

    .line 83
    iput-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mShareTargetList:Ljava/util/ArrayList;

    .line 86
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mDirectShareInfo:[Ljava/lang/String;

    .line 88
    new-instance v0, Lcom/sec/android/app/camera/ShareShot$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ShareShot$1;-><init>(Lcom/sec/android/app/camera/ShareShot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mMainHandler:Landroid/os/Handler;

    .line 140
    new-instance v0, Lcom/sec/android/app/camera/ShareShot$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ShareShot$2;-><init>(Lcom/sec/android/app/camera/ShareShot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mActiveUserHandler:Landroid/os/Handler;

    .line 199
    new-instance v0, Lcom/sec/android/app/camera/ShareShot$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ShareShot$3;-><init>(Lcom/sec/android/app/camera/ShareShot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->callback:Lcom/samsung/shareshot/IShareShotServiceCallback;

    .line 288
    new-instance v0, Lcom/sec/android/app/camera/ShareShot$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ShareShot$4;-><init>(Lcom/sec/android/app/camera/ShareShot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->cb_conn:Landroid/content/ServiceConnection;

    .line 313
    new-instance v0, Lcom/sec/android/app/camera/ShareShot$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ShareShot$5;-><init>(Lcom/sec/android/app/camera/ShareShot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->conn:Landroid/content/ServiceConnection;

    .line 342
    iput-object p1, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 344
    new-instance v0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ShareShot$UserWrapper;-><init>(Lcom/sec/android/app/camera/ShareShot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mUserWrapper:Lcom/sec/android/app/camera/ShareShot$UserWrapper;

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->sobject:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->sobject:Ljava/lang/Object;

    .line 348
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/ShareShot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/ShareShot;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mActiveIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/ShareShot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/ShareShot;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/android/app/camera/ShareShot;->mActiveIp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/ShareShot;Lcom/samsung/dmc/ux/db/UserInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/ShareShot;
    .param p1, "x1"    # Lcom/samsung/dmc/ux/db/UserInfo;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/ShareShot;->onReceiveActivateMsg(Lcom/samsung/dmc/ux/db/UserInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/ShareShot;)Lcom/samsung/shareshot/IShareShotCallbackRegister;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/ShareShot;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/ShareShot;Lcom/samsung/shareshot/IShareShotCallbackRegister;)Lcom/samsung/shareshot/IShareShotCallbackRegister;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/ShareShot;
    .param p1, "x1"    # Lcom/samsung/shareshot/IShareShotCallbackRegister;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/ShareShot;)Lcom/samsung/shareshot/IShareShotServiceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/ShareShot;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->callback:Lcom/samsung/shareshot/IShareShotServiceCallback;

    return-object v0
.end method

.method private checkProviderState()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 1079
    const/4 v7, 0x0

    .line 1080
    .local v7, "pr_status":I
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "status"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1083
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 1087
    :cond_0
    if-eqz v6, :cond_1

    .line 1088
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1092
    :cond_1
    if-eqz v7, :cond_2

    const/4 v0, 0x4

    if-ne v7, v0, :cond_4

    :cond_2
    move v0, v9

    :goto_0
    return v0

    .line 1087
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 1088
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    move v0, v8

    .line 1092
    goto :goto_0
.end method

.method public static createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "implicitIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 817
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 818
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, p1, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 820
    .local v5, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 821
    :cond_0
    const/4 v2, 0x0

    .line 832
    :goto_0
    return-object v2

    .line 824
    :cond_1
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 825
    .local v6, "serviceInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 826
    .local v3, "packageName":Ljava/lang/String;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 827
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 830
    .local v2, "explicitIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private onReceiveActivateMsg(Lcom/samsung/dmc/ux/db/UserInfo;)V
    .locals 2
    .param p1, "gsUserInfo"    # Lcom/samsung/dmc/ux/db/UserInfo;

    .prologue
    .line 620
    const-string v0, "ShareShot"

    const-string v1, "RECV_ACTIVATE_MSG: showing dialog..."

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const-string v0, "ShareShot"

    const-string v1, "checkActivateDlg() == false"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v1, Lcom/sec/android/app/camera/ShareShot$6;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/ShareShot$6;-><init>(Lcom/sec/android/app/camera/ShareShot;Lcom/samsung/dmc/ux/db/UserInfo;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 639
    return-void
.end method

.method private onUserCancelSelected(Lcom/samsung/shareshot/User;)V
    .locals 3
    .param p1, "user"    # Lcom/samsung/shareshot/User;

    .prologue
    .line 655
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/shareshot/IShareShotService;->cancelActivateUser(Ljava/lang/String;)V

    .line 656
    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->onUnSelected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    :goto_0
    return-void

    .line 658
    :catch_0
    move-exception v0

    .line 659
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private onUserSelected(Lcom/samsung/shareshot/User;)V
    .locals 3
    .param p1, "user"    # Lcom/samsung/shareshot/User;

    .prologue
    .line 670
    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/UserInfo;->isOnline()Z

    move-result v1

    if-nez v1, :cond_0

    .line 680
    :goto_0
    return-void

    .line 675
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/shareshot/IShareShotService;->activateUser(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->onSelected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addShareTarget(Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;)V
    .locals 1
    .param p1, "target"    # Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mShareTargetList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    return-void
.end method

.method public addShareTarget(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "selected"    # Z

    .prologue
    .line 1019
    new-instance v0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;-><init>(Lcom/sec/android/app/camera/ShareShot;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/ShareShot;->addShareTarget(Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;)V

    .line 1020
    return-void
.end method

.method public checkWifiConnection()Z
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/ShareShot;->checkWifiConnection(Z)Z

    move-result v0

    return v0
.end method

.method public checkWifiConnection(Z)Z
    .locals 3
    .param p1, "showDialog"    # Z

    .prologue
    .line 582
    const-string v1, "ShareShot"

    const-string v2, "checkWifiConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ShareShot;->isWifiDirectConnected()Z

    move-result v0

    .line 584
    .local v0, "bool_direct":Z
    if-nez v0, :cond_1

    .line 585
    if-eqz p1, :cond_0

    .line 586
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->showWifiConnectionDialog()V

    .line 587
    :cond_0
    const/4 v0, 0x0

    .line 591
    .end local v0    # "bool_direct":Z
    :goto_0
    return v0

    .line 589
    .restart local v0    # "bool_direct":Z
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->hideWifiConnectionDialog()V

    goto :goto_0
.end method

.method public clearShareTargetList()V
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mShareTargetList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1119
    :goto_0
    return-void

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mShareTargetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mShareTargetList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getDirectShareInfo()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mDirectShareInfo:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedIdList()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1096
    const-string v1, ""

    .line 1098
    .local v1, "selectedList":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/camera/ShareShot;->mShareTargetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;

    .line 1099
    .local v2, "target":Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1104
    .end local v2    # "target":Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;
    :cond_1
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1105
    const-string v3, ""

    .line 1110
    :goto_1
    return-object v3

    .line 1108
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 1110
    goto :goto_1
.end method

.method public getShareShotService()Lcom/samsung/shareshot/IShareShotService;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    return-object v0
.end method

.method public getShareTargetList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mShareTargetList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 714
    const/4 v1, 0x0

    .line 716
    .local v1, "info":Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v2, :cond_0

    .line 717
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v2}, Lcom/samsung/shareshot/IShareShotService;->getLocalPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 721
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 722
    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 725
    :goto_1
    return-object v2

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 725
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public initShareTargetListForTest()V
    .locals 6

    .prologue
    .line 961
    const-string v2, "id_1:id_2:id_3:id_4:id_5:id_6:id_7"

    .line 963
    .local v2, "string1":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 970
    :cond_0
    return-void

    .line 966
    :cond_1
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 967
    .local v1, "selectedUser":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 968
    aget-object v3, v1, v0

    aget-object v4, v1, v0

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/android/app/camera/ShareShot;->addShareTarget(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 967
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isWifiDirectConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 595
    iget-object v3, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v3, :cond_1

    .line 604
    :cond_0
    :goto_0
    return v2

    .line 598
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 599
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 600
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 601
    const-string v2, "ShareShot"

    const-string v3, "wifi direct connected"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public join()V
    .locals 2

    .prologue
    .line 729
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v1, Lcom/sec/android/app/camera/ShareShot$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/ShareShot$7;-><init>(Lcom/sec/android/app/camera/ShareShot;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 744
    return-void
.end method

.method public manageLocalService(Z)V
    .locals 11
    .param p1, "start"    # Z

    .prologue
    const/4 v10, 0x1

    .line 747
    const-string v7, "ShareShot"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " manageLocalService "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    if-nez p1, :cond_5

    .line 749
    iget-object v7, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v7, :cond_1

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    if-eqz v7, :cond_0

    .line 754
    :try_start_0
    iget-object v7, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v7}, Lcom/samsung/shareshot/IShareShotService;->isAutoStart()Z

    move-result v7

    if-nez v7, :cond_2

    .line 755
    iget-object v7, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v7}, Lcom/samsung/shareshot/IShareShotService;->leaveOut()V

    .line 757
    :cond_2
    const-string v7, "ShareShot"

    const-string v8, " unbind service"

    invoke-static {v7, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v7, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    iget-object v8, p0, Lcom/sec/android/app/camera/ShareShot;->callback:Lcom/samsung/shareshot/IShareShotServiceCallback;

    invoke-interface {v7, v8}, Lcom/samsung/shareshot/IShareShotCallbackRegister;->unregisterCallback(Lcom/samsung/shareshot/IShareShotServiceCallback;)Z

    .line 759
    iget-object v7, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v7}, Lcom/samsung/shareshot/IShareShotService;->isAutoStart()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/ShareShot;->isWifiDirectConnected()Z

    move-result v7

    if-nez v7, :cond_4

    .line 760
    :cond_3
    const-string v7, "ShareShot"

    const-string v8, " stop service"

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object v7, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v8, p0, Lcom/sec/android/app/camera/ShareShot;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/Camera;->unbindService(Landroid/content/ServiceConnection;)V

    .line 762
    iget-object v7, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v8, p0, Lcom/sec/android/app/camera/ShareShot;->cb_conn:Landroid/content/ServiceConnection;

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/Camera;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 766
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.samsung.shareshot.IShareShotCallbackRegister"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 767
    .local v4, "callbackUnbindIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7, v4}, Lcom/sec/android/app/camera/Camera;->stopService(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 774
    .end local v4    # "callbackUnbindIntent":Landroid/content/Intent;
    :goto_1
    :try_start_2
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.shareshot.IShareShotService"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 775
    .local v6, "unbindIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7, v6}, Lcom/sec/android/app/camera/Camera;->stopService(Landroid/content/Intent;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 776
    .end local v6    # "unbindIntent":Landroid/content/Intent;
    :catch_0
    move-exception v5

    .line 777
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    iget-object v7, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9}, Lcom/sec/android/app/camera/ShareShot;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 786
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v5

    .line 787
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 768
    .end local v5    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v5

    .line 769
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4
    iget-object v7, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/samsung/shareshot/IShareShotCallbackRegister;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9}, Lcom/sec/android/app/camera/ShareShot;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_1

    .line 770
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v5

    .line 771
    .local v5, "e":Ljava/lang/Exception;
    const-string v7, "ShareShot"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Service exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 779
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v5

    .line 780
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v7, "ShareShot"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Service exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 783
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v8, p0, Lcom/sec/android/app/camera/ShareShot;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/Camera;->unbindService(Landroid/content/ServiceConnection;)V

    .line 784
    iget-object v7, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v8, p0, Lcom/sec/android/app/camera/ShareShot;->cb_conn:Landroid/content/ServiceConnection;

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/Camera;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 789
    :cond_5
    if-ne p1, v10, :cond_0

    .line 792
    :try_start_5
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.samsung.shareshot.IShareShotCallbackRegister"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 793
    .local v2, "callbackBindIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7, v2}, Lcom/sec/android/app/camera/Camera;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 794
    iget-object v7, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v8, p0, Lcom/sec/android/app/camera/ShareShot;->cb_conn:Landroid/content/ServiceConnection;

    const/4 v9, 0x1

    invoke-virtual {v7, v2, v8, v9}, Lcom/sec/android/app/camera/Camera;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_7

    .line 803
    .end local v2    # "callbackBindIntent":Landroid/content/Intent;
    :goto_2
    :try_start_6
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.samsung.shareshot.IShareShotService"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 804
    .local v0, "bindIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7, v0}, Lcom/sec/android/app/camera/Camera;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 805
    iget-object v7, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v8, p0, Lcom/sec/android/app/camera/ShareShot;->conn:Landroid/content/ServiceConnection;

    const/4 v9, 0x1

    invoke-virtual {v7, v0, v8, v9}, Lcom/sec/android/app/camera/Camera;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_8

    goto/16 :goto_0

    .line 806
    .end local v0    # "bindIntent":Landroid/content/Intent;
    :catch_5
    move-exception v5

    .line 807
    .local v5, "e":Ljava/lang/SecurityException;
    invoke-virtual {v5}, Ljava/lang/SecurityException;->printStackTrace()V

    goto/16 :goto_0

    .line 795
    .end local v5    # "e":Ljava/lang/SecurityException;
    :catch_6
    move-exception v5

    .line 796
    .restart local v5    # "e":Ljava/lang/SecurityException;
    invoke-virtual {v5}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2

    .line 797
    .end local v5    # "e":Ljava/lang/SecurityException;
    :catch_7
    move-exception v5

    .line 798
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    iget-object v7, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/samsung/shareshot/IShareShotCallbackRegister;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/ShareShot;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    .line 799
    .local v3, "callbackBindIntent1":Landroid/content/Intent;
    iget-object v7, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7, v3}, Lcom/sec/android/app/camera/Camera;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 800
    iget-object v7, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v8, p0, Lcom/sec/android/app/camera/ShareShot;->cb_conn:Landroid/content/ServiceConnection;

    invoke-virtual {v7, v3, v8, v10}, Lcom/sec/android/app/camera/Camera;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_2

    .line 808
    .end local v3    # "callbackBindIntent1":Landroid/content/Intent;
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :catch_8
    move-exception v5

    .line 809
    .restart local v5    # "e":Ljava/lang/IllegalArgumentException;
    iget-object v7, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/ShareShot;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 810
    .local v1, "bindIntent1":Landroid/content/Intent;
    iget-object v7, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7, v1}, Lcom/sec/android/app/camera/Camera;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 811
    iget-object v7, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v8, p0, Lcom/sec/android/app/camera/ShareShot;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v7, v1, v8, v10}, Lcom/sec/android/app/camera/Camera;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto/16 :goto_0
.end method

.method public onPreviewFileReceived(I)V
    .locals 3
    .param p1, "preview"    # I

    .prologue
    const/4 v1, 0x1

    .line 836
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v2, :cond_0

    .line 844
    :goto_0
    return-void

    .line 839
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-ne p1, v1, :cond_1

    :goto_1
    invoke-interface {v2, v1}, Lcom/samsung/shareshot/IShareShotService;->setAutoPreview(Z)V

    .line 840
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 839
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onRespondSharewithNotify()V
    .locals 6

    .prologue
    .line 894
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "UserInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/dmc/ux/db/UserInfo;

    .line 895
    .local v0, "userInfo":Lcom/samsung/dmc/ux/db/UserInfo;
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onShareModeSelect(I)V

    .line 896
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/sec/android/app/camera/ShareShot$9;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/ShareShot$9;-><init>(Lcom/sec/android/app/camera/ShareShot;Lcom/samsung/dmc/ux/db/UserInfo;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 907
    return-void
.end method

.method public onRunSNSAfterConnect(I)V
    .locals 3
    .param p1, "auto"    # I

    .prologue
    const/4 v1, 0x1

    .line 642
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v2, :cond_0

    .line 651
    :goto_0
    return-void

    .line 645
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-ne p1, v1, :cond_1

    :goto_1
    invoke-interface {v2, v1}, Lcom/samsung/shareshot/IShareShotService;->setAutoStart(Z)V

    .line 646
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setNetWork(I)V

    goto :goto_0

    .line 645
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 647
    :catch_0
    move-exception v0

    .line 648
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public onUserSelectionListChanged(Lcom/samsung/shareshot/User;Z)V
    .locals 3
    .param p1, "user"    # Lcom/samsung/shareshot/User;
    .param p2, "isChecked"    # Z

    .prologue
    .line 610
    const-string v0, "ShareShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectUser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    if-eqz p2, :cond_0

    .line 613
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/ShareShot;->onUserSelected(Lcom/samsung/shareshot/User;)V

    .line 617
    :goto_0
    return-void

    .line 615
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/ShareShot;->onUserCancelSelected(Lcom/samsung/shareshot/User;)V

    goto :goto_0
.end method

.method public produceGSPersonalSettingInfoValue(Ljava/lang/String;)Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 683
    new-instance v2, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-direct {v2}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;-><init>()V

    .line 684
    .local v2, "personalInfo":Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    invoke-virtual {v2, v4}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setSettingID(I)V

    .line 686
    invoke-virtual {v2, p1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setUserName(Ljava/lang/String;)V

    .line 688
    new-instance v0, Ljava/io/File;

    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 689
    .local v0, "f":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 690
    .local v1, "f1":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 691
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconType(I)V

    .line 696
    :goto_0
    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 706
    :goto_1
    return-object v2

    .line 693
    :cond_1
    invoke-virtual {v2, v4}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconType(I)V

    goto :goto_0

    .line 698
    :pswitch_0
    const v3, 0x7f02022e

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconResID(I)V

    goto :goto_1

    .line 701
    :pswitch_1
    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconPath(Ljava/lang/String;)V

    goto :goto_1

    .line 696
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized refreshDeviceList()V
    .locals 4

    .prologue
    .line 847
    monitor-enter p0

    :try_start_0
    const-string v1, "ShareShot"

    const-string v2, "refreshDeviceList"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    const/4 v0, 0x0

    .line 850
    .local v0, "deviceListMenu":Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 851
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x55

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "deviceListMenu":Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;
    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;

    .line 853
    .restart local v0    # "deviceListMenu":Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;
    :cond_0
    if-eqz v0, :cond_1

    .line 854
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->refreshMenuSize()V

    .line 855
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->refreshMenuPosition()V

    .line 857
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->mUserWrapper:Lcom/sec/android/app/camera/ShareShot$UserWrapper;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->getUserCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 858
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 859
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 861
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c01ca

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 864
    :cond_3
    monitor-exit p0

    return-void

    .line 847
    .end local v0    # "deviceListMenu":Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public runComfirmedDialog(Lcom/samsung/shareshot/User;)V
    .locals 5
    .param p1, "user"    # Lcom/samsung/shareshot/User;

    .prologue
    .line 911
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Notice"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has accepted your request!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "OK"

    new-instance v4, Lcom/sec/android/app/camera/ShareShot$10;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/ShareShot$10;-><init>(Lcom/sec/android/app/camera/ShareShot;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 918
    .local v1, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 919
    .local v0, "dialog":Landroid/app/AlertDialog;
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/Camera;->setDialogPopupDisbleMultiWindowLayoutParam(Landroid/app/Dialog;)V

    .line 920
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 921
    return-void
.end method

.method public runDialog(Lcom/samsung/shareshot/User;)V
    .locals 5
    .param p1, "user"    # Lcom/samsung/shareshot/User;

    .prologue
    .line 925
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Share with request"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " wants to share image with you. Continue?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/sec/android/app/camera/ShareShot$12;

    invoke-direct {v4, p0, p1}, Lcom/sec/android/app/camera/ShareShot$12;-><init>(Lcom/sec/android/app/camera/ShareShot;Lcom/samsung/shareshot/User;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/sec/android/app/camera/ShareShot$11;

    invoke-direct {v4, p0, p1}, Lcom/sec/android/app/camera/ShareShot$11;-><init>(Lcom/sec/android/app/camera/ShareShot;Lcom/samsung/shareshot/User;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 954
    .local v1, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 955
    .local v0, "dialog":Landroid/app/AlertDialog;
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/Camera;->setDialogPopupDisbleMultiWindowLayoutParam(Landroid/app/Dialog;)V

    .line 956
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 957
    return-void
.end method

.method public searchUser(Lcom/samsung/dmc/ux/db/UserInfo;)Lcom/samsung/shareshot/User;
    .locals 7
    .param p1, "gsUserInfo"    # Lcom/samsung/dmc/ux/db/UserInfo;

    .prologue
    .line 514
    const/4 v3, 0x0

    .line 515
    .local v3, "user":Lcom/samsung/shareshot/User;
    const/4 v2, 0x0

    .line 517
    .local v2, "searchInfo":Lcom/samsung/dmc/ux/db/UserInfo;
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v5}, Lcom/samsung/shareshot/IShareShotService;->getUserList()Ljava/util/List;

    move-result-object v4

    .line 518
    .local v4, "userList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 519
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/samsung/shareshot/User;

    move-object v3, v0

    .line 520
    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    .line 521
    if-eqz v2, :cond_0

    .line 522
    invoke-virtual {p1}, Lcom/samsung/dmc/ux/db/UserInfo;->getGroupID()I

    move-result v5

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getGroupID()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {p1}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    .line 531
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    .end local v4    # "userList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :goto_0
    return-object v5

    .line 528
    :catch_0
    move-exception v5

    .line 531
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public searchUser(Ljava/lang/String;)Lcom/samsung/shareshot/User;
    .locals 7
    .param p1, "userIP"    # Ljava/lang/String;

    .prologue
    .line 536
    const/4 v4, 0x0

    .line 537
    .local v4, "user":Lcom/samsung/shareshot/User;
    const/4 v3, 0x0

    .line 540
    .local v3, "searchInfo":Lcom/samsung/dmc/ux/db/UserInfo;
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v6}, Lcom/samsung/shareshot/IShareShotService;->getUserList()Ljava/util/List;

    move-result-object v5

    .line 541
    .local v5, "userList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    monitor-enter v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 543
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/samsung/shareshot/User;

    move-object v4, v0

    .line 544
    invoke-virtual {v4}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v3

    .line 545
    if-eqz v3, :cond_0

    .line 546
    invoke-virtual {v3}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 548
    monitor-exit v5

    move-object v6, v4

    .line 557
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    .end local v5    # "userList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :goto_0
    return-object v6

    .line 552
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    .restart local v5    # "userList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :cond_1
    monitor-exit v5

    .line 557
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    .end local v5    # "userList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 552
    .restart local v5    # "userList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 553
    .end local v5    # "userList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :catch_0
    move-exception v1

    .line 554
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public searchUser(Ljava/util/List;II)Lcom/samsung/shareshot/User;
    .locals 7
    .param p2, "userID"    # I
    .param p3, "selected"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;II)",
            "Lcom/samsung/shareshot/User;"
        }
    .end annotation

    .prologue
    .line 561
    .local p1, "userList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    const/4 v3, 0x0

    .line 562
    .local v3, "user":Lcom/samsung/shareshot/User;
    const/4 v2, 0x0

    .line 563
    .local v2, "searchInfo":Lcom/samsung/dmc/ux/db/UserInfo;
    const-string v4, "ShareShot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " this user list have "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " userID is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    monitor-enter p1

    .line 565
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 566
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/samsung/shareshot/User;

    move-object v3, v0

    .line 567
    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    .line 568
    if-eqz v2, :cond_0

    .line 569
    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getUserID()I

    move-result v4

    if-ne p2, v4, :cond_0

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getGroupID()I

    move-result v4

    if-ne p3, v4, :cond_0

    .line 570
    monitor-exit p1

    move-object v4, v3

    .line 574
    :goto_0
    return-object v4

    .line 573
    :cond_1
    monitor-exit p1

    .line 574
    const/4 v4, 0x0

    goto :goto_0

    .line 573
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public sendIntentForDirectShareFileTransfer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 973
    const-string v3, "ShareShot"

    const-string v4, "sendIntentForDirectShareFileTransfer"

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ShareShot;->getSelectedIdList()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 975
    const-string v3, "ShareShot"

    const-string v4, "sendIntentForDirectShare - empty selected receiver list for file transfer"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :goto_0
    return-void

    .line 979
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 980
    .local v0, "filelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.app.directshare.service.send"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 984
    .local v1, "sendIntent":Landroid/content/Intent;
    const-string v3, "filepathlist"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 985
    const-string v3, "receiverlist"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/ShareShot;->getSelectedIdList()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 986
    const-string v3, "mediaType"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 987
    const-string v3, "requestIdentifier"

    sget v4, Lcom/sec/android/app/camera/ShareShot;->mDirectshareRequestId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 988
    const-string v3, "targetApp"

    const-string v4, "com.samsung.android.app.directsharegallery"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 989
    const-string v3, "sourceApp"

    const-string v4, "com.sec.android.app.camera.directshare"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 991
    const-string v3, "uploadCompleted"

    const-string v4, "com.sec.android.app.camera.directshare.UPLOAD_COMPLETE"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 992
    const-string v3, "sendCompleted"

    const-string v4, "com.sec.android.app.camera.directshare.SEND_COMPLETE"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 993
    const-string v3, "onError"

    const-string v4, "com.sec.android.app.camera.directshare.UPLOAD_ERROR"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 995
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 996
    .local v2, "serviceIntent":Landroid/content/Intent;
    const-string v3, "com.sec.android.app.camera.DirectShareService"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 997
    const-string v3, "type"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 998
    const-string v3, "id"

    sget v4, Lcom/sec/android/app/camera/ShareShot;->mDirectshareRequestId:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/sec/android/app/camera/ShareShot;->mDirectshareRequestId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 999
    const-string v3, "receiverlist"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/ShareShot;->getSelectedIdList()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1000
    iget-object v3, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/Camera;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1001
    const-string v3, "ShareShot"

    const-string v4, "send intent for DirectShareService"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-object v3, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1004
    const-string v3, "ShareShot"

    const-string v4, "send intent for file transfer"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const-string v3, "photo"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1007
    iget-object v3, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v4, 0x7f0c023b

    invoke-static {v3, v4, v6}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1009
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v4, 0x7f0c023e

    invoke-static {v3, v4, v6}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public setDirectShareInfo([Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # [Ljava/lang/String;

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/sec/android/app/camera/ShareShot;->mDirectShareInfo:[Ljava/lang/String;

    .line 1123
    return-void
.end method

.method public setSelectTarget(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mShareTargetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mShareTargetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 1027
    :cond_0
    :goto_0
    return-void

    .line 1026
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mShareTargetList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->setSelect(Z)V

    goto :goto_0
.end method

.method public setSelectTarget(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "selected"    # Z

    .prologue
    .line 1030
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot;->mShareTargetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;

    .line 1031
    .local v1, "target":Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1032
    invoke-virtual {v1, p2}, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->setSelect(Z)V

    goto :goto_0

    .line 1034
    .end local v1    # "target":Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;
    :cond_1
    return-void
.end method

.method public setTargetNameFromContact()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 1041
    invoke-direct {p0}, Lcom/sec/android/app/camera/ShareShot;->checkProviderState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1042
    const-string v0, "ShareShot"

    const-string v1, "setTargetNameFromContact - don\'t get contact name list"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :cond_0
    :goto_0
    return-void

    .line 1046
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mShareTargetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1047
    const-string v0, "ShareShot"

    const-string v1, "setTargetNameFromContact - share target list size is zero"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1051
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mShareTargetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 1052
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v3, "sourceid IN ("

    .line 1053
    .local v3, "selection":Ljava/lang/String;
    const-string v10, ") AND mimetype=?"

    .line 1054
    .local v10, "selectionMime":Ljava/lang/String;
    const-string v9, ""

    .line 1056
    .local v9, "questionMark":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1057
    .local v7, "index":I
    const/4 v7, 0x0

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mShareTargetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 1058
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mShareTargetList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->getId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1057
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1061
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mShareTargetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "vnd.android.cursor.item/email_v2"

    aput-object v1, v4, v0

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v9, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1064
    const/4 v6, 0x0

    .line 1066
    .local v6, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "display_name"

    aput-object v11, v2, v5

    const/4 v5, 0x1

    const-string v11, "data1"

    aput-object v11, v2, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1067
    const/4 v7, 0x0

    move v8, v7

    .line 1068
    .end local v7    # "index":I
    .local v8, "index":I
    :goto_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1069
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mShareTargetList:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "index":I
    .restart local v7    # "index":I
    :try_start_2
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;

    const-string v1, "display_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->setName(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v8, v7

    .end local v7    # "index":I
    .restart local v8    # "index":I
    goto :goto_2

    .line 1072
    :cond_4
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v8    # "index":I
    .restart local v7    # "index":I
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .end local v7    # "index":I
    .restart local v8    # "index":I
    :catchall_1
    move-exception v0

    move v7, v8

    .end local v8    # "index":I
    .restart local v7    # "index":I
    goto :goto_3
.end method

.method public wakeupToSnSMod()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 867
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "IntentExtraMessageType"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 869
    .local v1, "intent_extra_message":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, "ActivateConfirm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 871
    iput-boolean v5, p0, Lcom/sec/android/app/camera/ShareShot;->mRespondNoti:Z

    .line 872
    const-string v2, "ShareShot"

    const-string v3, " will wake up camera to deal with share with request"

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ShareShot;->onRespondSharewithNotify()V

    .line 879
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 880
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/sec/android/app/camera/ShareShot$8;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/ShareShot$8;-><init>(Lcom/sec/android/app/camera/ShareShot;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :cond_1
    :goto_1
    return-void

    .line 874
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isfromhistory"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 875
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/Camera;->onShareModeSelect(I)V

    goto :goto_0

    .line 888
    :catch_0
    move-exception v0

    .line 889
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method
