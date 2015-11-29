.class public Landroid/sec/clipboard/ClipboardExManager;
.super Ljava/lang/Object;
.source "ClipboardExManager.java"


# static fields
.field public static final DATE:I = 0x1

.field public static final DEFAULT:I = 0x0

.field public static final EMAIL:I = 0x4

.field public static final PHONE_NUMBER:I = 0x3

.field public static final TIME:I = 0x2

.field public static final URL:I = 0x5

.field private static sService:Landroid/sec/clipboard/IClipboardService;


# instance fields
.field private final FAIL_SET_DATA:I

.field private final PROTECTED_DATA_MAX:I

.field private final SUCCESS_AND_SAVE_BITMAP:I

.field private final SUCCESS_SET_DATA:I

.field private final _UNFORMAT:I

.field private mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

.field private mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

.field private mContainerID:I

.field private mContext:Landroid/content/Context;

.field private mFormatid:I

.field private mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

.field private mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

.field private mRegScrapInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

.field private mScrapDataSaving:Z

.field private final mSetDataHandler:Landroid/os/Handler;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerID"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegScrapInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    iput v2, p0, Landroid/sec/clipboard/ClipboardExManager;->_UNFORMAT:I

    iput v3, p0, Landroid/sec/clipboard/ClipboardExManager;->SUCCESS_SET_DATA:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->FAIL_SET_DATA:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->SUCCESS_AND_SAVE_BITMAP:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->PROTECTED_DATA_MAX:I

    iput v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    iput-boolean v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mScrapDataSaving:Z

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    new-instance v0, Landroid/sec/clipboard/ClipboardExManager$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/ClipboardExManager$1;-><init>(Landroid/sec/clipboard/ClipboardExManager;)V

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;

    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    iput p2, p0, Landroid/sec/clipboard/ClipboardExManager;->mContainerID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegScrapInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    iput v3, p0, Landroid/sec/clipboard/ClipboardExManager;->_UNFORMAT:I

    iput v2, p0, Landroid/sec/clipboard/ClipboardExManager;->SUCCESS_SET_DATA:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->FAIL_SET_DATA:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->SUCCESS_AND_SAVE_BITMAP:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->PROTECTED_DATA_MAX:I

    iput v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    iput-boolean v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mScrapDataSaving:Z

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    new-instance v0, Landroid/sec/clipboard/ClipboardExManager$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/ClipboardExManager$1;-><init>(Landroid/sec/clipboard/ClipboardExManager;)V

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;

    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    iput v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mContainerID:I

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    return-void
.end method

.method static synthetic access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/sec/clipboard/ClipboardExManager;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$102(Landroid/sec/clipboard/ClipboardExManager;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$200(Landroid/sec/clipboard/ClipboardExManager;ZI)I
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/sec/clipboard/ClipboardExManager;->isClipboardAllowed(ZI)I

    move-result v0

    return v0
.end method

.method static synthetic access$300()Landroid/sec/clipboard/IClipboardService;
    .locals 1

    .prologue
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/sec/clipboard/ClipboardExManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Landroid/sec/clipboard/ClipboardExManager;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mScrapDataSaving:Z

    return p1
.end method

.method private checkCurrentMode()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .local v3, "packageName":Ljava/lang/String;
    iget-object v7, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_3

    const-string v7, "android.permission.GET_TASKS"

    iget-object v8, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    :try_start_0
    iget-object v7, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .local v5, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .local v6, "topActivity":Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v6    # "topActivity":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    const-string v7, "sec_container_1."

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    iput v10, p0, Landroid/sec/clipboard/ClipboardExManager;->mContainerID:I

    :cond_1
    :goto_1
    sget-object v7, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    if-eqz v7, :cond_6

    :try_start_1
    sget-object v7, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    iget v8, p0, Landroid/sec/clipboard/ClipboardExManager;->mContainerID:I

    invoke-interface {v7, v8}, Landroid/sec/clipboard/IClipboardService;->UpdateClipboardDB(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    return-void

    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v7, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    iput v9, p0, Landroid/sec/clipboard/ClipboardExManager;->mContainerID:I

    goto :goto_1

    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string v7, "ClipboardServiceEx"

    const-string v8, "UpdateClipboardDB(RemoteException) "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    const-string v7, "clipboardEx"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v7

    sput-object v7, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    sget-object v7, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    if-eqz v7, :cond_2

    :try_start_2
    sget-object v7, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    iget v8, p0, Landroid/sec/clipboard/ClipboardExManager;->mContainerID:I

    invoke-interface {v7, v8}, Landroid/sec/clipboard/IClipboardService;->UpdateClipboardDB(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_7

    const-string v7, "ClipboardServiceEx"

    const-string v8, "UpdateClipboardDB(RemoteException) "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private static getService()Landroid/sec/clipboard/IClipboardService;
    .locals 3

    .prologue
    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "clipboardEx"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    sput-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ClipboardServiceEx"

    const-string v2, "Had failed to obtaining clipboardEx service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    goto :goto_0
.end method

.method private isClipboardAllowed(ZI)I
    .locals 10
    .param p1, "showToast"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isClipboardAllowedAsUser"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "isClipboardAllowedAsUser"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move v0, v7

    goto :goto_0
.end method

.method private startClipboardUIServiceService()V
    .locals 5

    .prologue
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.clipboarduiservice"

    const-string v4, "com.samsung.android.clipboarduiservice.ClipboardUIServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting clipboarduiservice service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startKeepUIServiceService()V
    .locals 5

    .prologue
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.SmartClipService"

    const-string v4, "com.samsung.android.clipboarduiservice.ClipboardUIServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting clipboarduiservice service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/sec/clipboard/IClipboardFormatListener;

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    const-string v3, "AddClipboardFormatListener - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->checkCurrentMode()V

    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/clipboard/IClipboardService;->AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, "Result":Z
    goto :goto_0

    .end local v0    # "Result":Z
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "ClipboardServiceEx"

    const-string v3, "AddClipboardFormatListener : "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .restart local v0    # "Result":Z
    goto :goto_0
.end method

.method public RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)Z
    .locals 6
    .param p1, "iRegInterface"    # Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .prologue
    const/4 v0, 0x0

    .local v0, "Result":Z
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eq v3, p1, :cond_1

    :cond_0
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    :cond_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_3

    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "ClipboardServiceEx"

    const-string v4, "RegistClipboardWorkingFormUiInterface - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v1, v0

    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_0
    return v1

    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_3
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->checkCurrentMode()V

    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    invoke-interface {v3, v4}, Landroid/sec/clipboard/IClipboardService;->RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "ClipboardServiceEx"

    const-string v4, "Regist ClipboardWorkingFormUiInterface - Success."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    const/4 v0, 0x1

    :goto_1
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RegistClipboardWorkingFormUiInterface - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v1, v0

    .restart local v1    # "Result":I
    goto :goto_0

    .end local v1    # "Result":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string v3, "ClipboardServiceEx"

    const-string v4, "RegistClipboardWorkingFormUiInterface : "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public RegistScrapWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)Z
    .locals 6
    .param p1, "iRegInterface"    # Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .prologue
    const/4 v0, 0x0

    .local v0, "Result":Z
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegScrapInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegScrapInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eq v3, p1, :cond_1

    :cond_0
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegScrapInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    :cond_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_3

    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "ClipboardServiceEx"

    const-string v4, "RegistScrapdWorkingFormUiInterface - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v1, v0

    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_0
    return v1

    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_3
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->checkCurrentMode()V

    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegScrapInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    invoke-interface {v3, v4}, Landroid/sec/clipboard/IClipboardService;->RegistScrapWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "ClipboardServiceEx"

    const-string v4, "Regist ScrapWorkingFormUiInterface - Success."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    const/4 v0, 0x1

    :goto_1
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RegistClipboardWorkingFormUiInterface - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v1, v0

    .restart local v1    # "Result":I
    goto :goto_0

    .end local v1    # "Result":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string v3, "ClipboardServiceEx"

    const-string v4, "RegistScrapWorkingFormUiInterface : "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/sec/clipboard/IClipboardFormatListener;

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    const-string v3, "RemoveClipboardFormatListener - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/clipboard/IClipboardService;->RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, "Result":Z
    goto :goto_0

    .end local v0    # "Result":Z
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "ClipboardServiceEx"

    const-string v3, "RemoveClipboardFormatListener : "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .restart local v0    # "Result":Z
    goto :goto_0
.end method

.method public callPasteApplication(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 3
    .param p1, "clipdata"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-eqz v1, :cond_3

    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    const-string v2, "callPasteApplication - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/sec/clipboard/IClipboardService;->callPasteMenuFromApp(I)V

    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-interface {v1, p1}, Landroid/sec/clipboard/IClipboardDataPasteEvent;->onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "ClipboardServiceEx"

    const-string v2, "Clipboard Service callPasteApplication error : "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    const-string v2, "Clipboard Service callPasteApplication mPasteEvent == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public callPasteMenuFromApp(I)V
    .locals 3
    .param p1, "enabled"    # I

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    const-string v2, "callPasteMenuFromApp - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/clipboard/IClipboardService;->callPasteMenuFromApp(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "ClipboardServiceEx"

    const-string v2, "callPasteMenuFromApp(RemoteException): "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public dismissUIDataDialog()V
    .locals 3

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    const-string v2, "dismissUIDataDialog - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardService;->dismissUIDataDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "ClipboardServiceEx"

    const-string v2, "dismissUIDataDialog(RemoteException): "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getClipedStrings(II)Ljava/util/ArrayList;
    .locals 4
    .param p1, "metaType"    # I
    .param p2, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "clipboardData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    const-string v3, "getClipedStrings - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/sec/clipboard/IClipboardService;->getClipedStrings(II)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getContainerID()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContainerID:I

    return v0
.end method

.method public getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "formatid"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "data":Landroid/sec/clipboard/data/ClipboardData;
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v4

    if-nez v4, :cond_1

    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ClipboardServiceEx"

    const-string v5, "getData - Fail~ Service is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v1, v0

    .end local v0    # "data":Landroid/sec/clipboard/data/ClipboardData;
    .local v1, "data":Landroid/sec/clipboard/data/ClipboardData;
    :goto_0
    return-object v1

    .end local v1    # "data":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v0    # "data":Landroid/sec/clipboard/data/ClipboardData;
    :cond_1
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->checkCurrentMode()V

    iget v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    move v3, p2

    .local v3, "myFormat":I
    :goto_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/sec/clipboard/IClipboardService;->GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    const v4, 0x1040711

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .end local v3    # "myFormat":I
    :cond_2
    :goto_2
    move-object v1, v0

    .end local v0    # "data":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v1    # "data":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .end local v1    # "data":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v0    # "data":Landroid/sec/clipboard/data/ClipboardData;
    :cond_3
    iget v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "ClipboardServiceEx"

    const-string v5, "getData(int)(RemoteException):"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public getData(Landroid/content/Context;ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "formatid"    # I
    .param p3, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    const/4 v0, 0x1

    .local v0, "Result":Z
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->startClipboardUIServiceService()V

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call getData.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_2

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ClipboardServiceEx"

    const-string v3, "getData - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->checkCurrentMode()V

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-nez v2, :cond_3

    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Landroid/sec/clipboard/IClipboardService;->ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getdata - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-interface {v2, v3, v4}, Landroid/sec/clipboard/IClipboardService;->ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getdata - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "ClipboardServiceEx"

    const-string v3, "getData(Context,int,IClipboardDataPasteEvent) : "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getDataListSize()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .local v1, "size":I
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_1

    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ClipboardServiceEx"

    const-string v4, "getDataListSize - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v2, v1

    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_1
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->checkCurrentMode()V

    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/clipboard/IClipboardService;->getDataSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0

    .end local v2    # "size":I
    .restart local v1    # "size":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getFrozenState()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPersonaId()I
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .local v1, "packageName":Ljava/lang/String;
    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v4, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .local v3, "userId":I
    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPersonaId api current userid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPreviewIconXpos()F
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardUIManager;->getPreviewIconXpos()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreviewIconYpos()F
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardUIManager;->getPreviewIconYpos()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScrapDataSize()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .local v1, "size":I
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_1

    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ClipboardServiceEx"

    const-string v4, "getDataListSize - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v2, v1

    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_1
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->checkCurrentMode()V

    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/clipboard/IClipboardService;->getScrapDataNumber()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0

    .end local v2    # "size":I
    .restart local v1    # "size":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public hasData(Landroid/content/Context;I)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "formatid"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "Result":Z
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v4

    if-nez v4, :cond_1

    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ClipboardServiceEx"

    const-string v5, "hasData - Fail~ Service is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v1, v0

    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_0
    return v1

    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_1
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->checkCurrentMode()V

    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v4

    invoke-interface {v4}, Landroid/sec/clipboard/IClipboardService;->getDataSize()I

    move-result v4

    if-lez v4, :cond_4

    iget v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    move v3, p2

    .local v3, "myFormat":I
    :goto_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/sec/clipboard/IClipboardService;->GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    .end local v3    # "myFormat":I
    :cond_2
    :goto_2
    move v1, v0

    .restart local v1    # "Result":I
    goto :goto_0

    .end local v1    # "Result":I
    :cond_3
    iget v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public hasDataOf(I)Z
    .locals 1
    .param p1, "formatid"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/sec/clipboard/ClipboardExManager;->hasData(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public hideUIFloatingIcon()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->startKeepUIServiceService()V

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardUIManager;->hideFloatingIconForScrap()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    const-string v3, "isShowing - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardService;->IsShowUIClipboardData()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public iscalledPasteMenuFromApp()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    const-string v3, "iscalledPasteMenuFromApp - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardService;->iscalledPasteMenuFromApp()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "ClipboardServiceEx"

    const-string v3, "iscalledPasteMenuFromApp(RemoteException): "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendCropRect(Landroid/graphics/Rect;Z)V
    .locals 1
    .param p1, "cropRect"    # Landroid/graphics/Rect;
    .param p2, "showAni"    # Z

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    invoke-virtual {v0, p1, p2}, Landroid/sec/clipboard/ClipboardUIManager;->sendCropRectForAnimation(Landroid/graphics/Rect;Z)V

    :cond_0
    return-void
.end method

.method public setData(Landroid/content/Context;Landroid/content/ClipData;Z)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/ClipData;
    .param p3, "setPrimary"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .local v2, "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-static {p1}, Landroid/sec/clipboard/ClipboardConverter;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardConverter;

    move-result-object v9

    iput-object v9, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    iget-object v9, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    invoke-virtual {v9, p2}, Landroid/sec/clipboard/ClipboardConverter;->ClipDataToClipbaordData(Landroid/content/ClipData;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    move-object v1, v2

    .local v1, "clipData":Landroid/sec/clipboard/data/ClipboardData;
    move v5, p3

    .local v5, "setPrimaryData":Z
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v9

    if-nez v9, :cond_2

    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "ClipboardServiceEx"

    const-string v9, "setData - Fail~ Service is null."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->checkCurrentMode()V

    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->getContainerID()I

    move-result v7

    if-ne v7, v8, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_3
    :goto_1
    new-instance v4, Ljava/lang/Thread;

    new-instance v7, Landroid/sec/clipboard/ClipboardExManager$4;

    invoke-direct {v7, p0, v5, v1}, Landroid/sec/clipboard/ClipboardExManager$4;-><init>(Landroid/sec/clipboard/ClipboardExManager;ZLandroid/sec/clipboard/data/ClipboardData;)V

    invoke-direct {v4, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .local v4, "setDataThread":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    move v7, v8

    goto :goto_0

    .end local v4    # "setDataThread":Ljava/lang/Thread;
    :pswitch_0
    move-object v6, v1

    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .local v6, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v3

    .local v3, "imagePath":Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v7, "/data/user/0/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "/data/user/0/"

    const-string v9, "/data/data1/"

    invoke-virtual {v3, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .local v0, "changePath":Ljava/lang/String;
    move-object v7, v1

    check-cast v7, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-virtual {v7, v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetBitmapPath(Ljava/lang/String;)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_2

    iget-boolean v7, p0, Landroid/sec/clipboard/ClipboardExManager;->mScrapDataSaving:Z

    if-ne v7, v6, :cond_1

    iget-object v6, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    const v7, 0x1040810

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;

    iget-object v6, p0, Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return v5

    :cond_1
    iput-boolean v6, p0, Landroid/sec/clipboard/ClipboardExManager;->mScrapDataSaving:Z

    :cond_2
    move-object v1, p2

    .local v1, "clipData":Landroid/sec/clipboard/data/ClipboardData;
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v7

    if-nez v7, :cond_3

    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "ClipboardServiceEx"

    const-string v7, "setData - Fail~ Service is null."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->checkCurrentMode()V

    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->getContainerID()I

    move-result v5

    if-ne v5, v6, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_4
    :goto_1
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Landroid/sec/clipboard/ClipboardExManager$2;

    invoke-direct {v5, p0, v1}, Landroid/sec/clipboard/ClipboardExManager$2;-><init>(Landroid/sec/clipboard/ClipboardExManager;Landroid/sec/clipboard/data/ClipboardData;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .local v3, "setDataThread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    move v5, v6

    goto :goto_0

    .end local v3    # "setDataThread":Ljava/lang/Thread;
    :pswitch_0
    move-object v4, v1

    check-cast v4, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .local v4, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v2

    .local v2, "imagePath":Ljava/lang/String;
    if-eqz v2, :cond_4

    const-string v5, "/data/user/0/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "/data/user/0/"

    const-string v7, "/data/data1/"

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .local v0, "changePath":Ljava/lang/String;
    move-object v5, v1

    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-virtual {v5, v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetBitmapPath(Ljava/lang/String;)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public setDataWithoutNoti(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_2

    iget-boolean v7, p0, Landroid/sec/clipboard/ClipboardExManager;->mScrapDataSaving:Z

    if-ne v7, v6, :cond_1

    iget-object v6, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    const v7, 0x1040810

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;

    iget-object v6, p0, Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return v5

    :cond_1
    iput-boolean v6, p0, Landroid/sec/clipboard/ClipboardExManager;->mScrapDataSaving:Z

    :cond_2
    move-object v1, p2

    .local v1, "clipData":Landroid/sec/clipboard/data/ClipboardData;
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v7

    if-nez v7, :cond_3

    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "ClipboardServiceEx"

    const-string v7, "setData - Fail~ Service is null."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->checkCurrentMode()V

    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->getContainerID()I

    move-result v5

    if-ne v5, v6, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_4
    :goto_1
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Landroid/sec/clipboard/ClipboardExManager$3;

    invoke-direct {v5, p0, v1}, Landroid/sec/clipboard/ClipboardExManager$3;-><init>(Landroid/sec/clipboard/ClipboardExManager;Landroid/sec/clipboard/data/ClipboardData;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .local v3, "setDataThread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    move v5, v6

    goto :goto_0

    .end local v3    # "setDataThread":Ljava/lang/Thread;
    :pswitch_0
    move-object v4, v1

    check-cast v4, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .local v4, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v2

    .local v2, "imagePath":Ljava/lang/String;
    if-eqz v2, :cond_4

    const-string v5, "/data/user/0/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "/data/user/0/"

    const-string v7, "/data/data1/"

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .local v0, "changePath":Ljava/lang/String;
    move-object v5, v1

    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-virtual {v5, v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetBitmapPath(Ljava/lang/String;)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public setDataWithoutSendingOrginalClipboard(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v6, 0x1

    move-object v1, p2

    .local v1, "clipData":Landroid/sec/clipboard/data/ClipboardData;
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v5

    if-nez v5, :cond_1

    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "ClipboardServiceEx"

    const-string v6, "setData - Fail~ Service is null."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_1
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->checkCurrentMode()V

    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->getContainerID()I

    move-result v5

    if-ne v5, v6, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Landroid/sec/clipboard/ClipboardExManager$5;

    invoke-direct {v5, p0, v1}, Landroid/sec/clipboard/ClipboardExManager$5;-><init>(Landroid/sec/clipboard/ClipboardExManager;Landroid/sec/clipboard/data/ClipboardData;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .local v3, "setDataThread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    move v5, v6

    goto :goto_0

    .end local v3    # "setDataThread":Ljava/lang/Thread;
    :pswitch_0
    move-object v4, v1

    check-cast v4, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .local v4, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v2

    .local v2, "imagePath":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v5, "/data/user/0/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "/data/user/0/"

    const-string v7, "/data/data1/"

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .local v0, "changePath":Ljava/lang/String;
    move-object v5, v1

    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-virtual {v5, v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetBitmapPath(Ljava/lang/String;)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public setPasteFrozen(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 3
    .param p1, "formatid"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    iget v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/sec/clipboard/ClipboardExManager;->updateData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    :cond_0
    iput p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    iput-object p2, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasteFrozen - Format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasteFrozen - mPasteEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public setThawPaste()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string v1, "setThawPaste"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public showUIDataDialog()V
    .locals 3

    .prologue
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->startClipboardUIServiceService()V

    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    const-string v2, "showUIDataDialog - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardService;->showUIDataDialog()V

    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v1

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardUIManager;->getPreviewIconXpos()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "ClipboardServiceEx"

    const-string v2, "showUIDataDialog(RemoteException): "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public showUIFloatingIcon()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->startKeepUIServiceService()V

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardUIManager;->showFloatingIconForScrap()V

    :cond_0
    return-void
.end method

.method public unRegistClipboardWorkingFormUiInterface()V
    .locals 3

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    const-string v2, "unRegistClipboardWorkingFormUiInterface - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardService;->unRegistClipboardWorkingFormUiInterface()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "ClipboardServiceEx"

    const-string v2, "unRegistClipboardWorkingFormUiInterface(RemoteException): "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 4
    .param p1, "formatid"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-eqz v1, :cond_1

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateData return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_3

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    const-string v2, "updateData - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateData(formatid)(RemoteException): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/sec/clipboard/IClipboardService;->UpdateUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateData - clPasteEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
