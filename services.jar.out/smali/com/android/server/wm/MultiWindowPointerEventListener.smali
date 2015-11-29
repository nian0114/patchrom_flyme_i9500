.class public Lcom/android/server/wm/MultiWindowPointerEventListener;
.super Ljava/lang/Object;
.source "MultiWindowPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# static fields
.field private static final DISMISS_DELAYED_TIME:I = 0x1f4

.field static final NONE:I = 0x0

.field static final NOT_SUPPORT:I = 0x2

.field static final RESIZING:I = 0x1


# instance fields
.field private final DEBUG:Z

.field private final DELTA_H_SCALE:F

.field private final DELTA_H_SCALE_TERMINATE:F

.field private final DELTA_H_SCALE_TERMINATE_TOP:F

.field private final DELTA_V_SCALE:F

.field private final DELTA_V_SCALE_TERMINATE:F

.field private final DELTA_V_SCALE_TERMINATE_TOP:F

.field private INTERPORATION:I

.field private final TAG:Ljava/lang/String;

.field private mAppToken:Lcom/android/server/wm/AppWindowToken;

.field private mApplicationName:Ljava/lang/CharSequence;

.field private mCenterBarPoint:Landroid/graphics/Point;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

.field private mEdgeFlag:I

.field private mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

.field private mHandler:Landroid/os/Handler;

.field private mIsSplitWindow:Z

.field private mIvt:[B

.field private mLastX:I

.field private mLastY:I

.field private mMaxScale:F

.field private mMinScale:F

.field private mMoved:Z

.field private mResizeState:I

.field private mScreenHeight:I

.field private mScreenRatio:F

.field private mScreenWidth:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mTerminate:Z

.field private mValidMotion:Z

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mWasTargetChecked:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MultiWindowConverter"

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DEBUG:Z

    const v0, 0x3d8f5c29    # 0.07f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_H_SCALE:F

    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_V_SCALE:F

    const v0, 0x3e051eb8    # 0.13f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_H_SCALE_TERMINATE:F

    const v0, 0x3e3851ec    # 0.18f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_V_SCALE_TERMINATE:F

    const v0, 0x3e570a3d    # 0.21f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_H_SCALE_TERMINATE_TOP:F

    const v0, 0x3db851ec    # 0.09f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_V_SCALE_TERMINATE_TOP:F

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->INTERPORATION:I

    iput v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mWasTargetChecked:Z

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIvt:[B

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x12t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x30t
        0x0t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x5et
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/wm/MultiWindowPointerEventListener;)Lcom/samsung/android/multiwindow/ui/GuideView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/MultiWindowPointerEventListener;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/wm/MultiWindowPointerEventListener;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/MultiWindowPointerEventListener;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/wm/MultiWindowPointerEventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/MultiWindowPointerEventListener;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/wm/MultiWindowPointerEventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/MultiWindowPointerEventListener;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    return p1
.end method

.method private calcPosX(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenRatio:F

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    sub-int/2addr v1, p2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return p1

    :pswitch_0
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    sub-int p1, v0, p1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method private calcPosY(II)I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v0, p2

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinScale:F

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinScale:F

    sub-float v1, v3, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .end local p2    # "y":I
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "y":I
    :cond_1
    int-to-float v0, p2

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMaxScale:F

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMaxScale:F

    sub-float v1, v3, v1

    mul-float/2addr v0, v1

    float-to-int p2, v0

    goto :goto_0
.end method

.method private findApplicationTargetWindow(FFZ)Lcom/android/server/wm/WindowState;
    .locals 11
    .param p1, "xf"    # F
    .param p2, "yf"    # F
    .param p3, "exceptInternnalWindow"    # Z

    .prologue
    float-to-int v6, p1

    .local v6, "x":I
    float-to-int v7, p2

    .local v7, "y":I
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    .local v2, "touchableRegion":Landroid/graphics/Region;
    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v5

    .local v5, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_9

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .local v4, "win":Lcom/android/server/wm/WindowState;
    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .local v0, "flags":I
    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    .local v3, "type":I
    const/16 v8, 0x7d0

    if-ne v3, v8, :cond_0

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v4, 0x0

    monitor-exit v9

    .end local v0    # "flags":I
    .end local v3    # "type":I
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :goto_1
    return-object v4

    .restart local v0    # "flags":I
    .restart local v3    # "type":I
    .restart local v4    # "win":Lcom/android/server/wm/WindowState;
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    and-int/lit8 v8, v0, 0x10

    if-nez v8, :cond_1

    and-int/lit8 v8, v0, 0x8

    if-nez v8, :cond_1

    const/16 v8, 0x82f

    if-ne v3, v8, :cond_3

    const/4 v4, 0x0

    monitor-exit v9

    goto :goto_1

    .end local v0    # "flags":I
    .end local v1    # "i":I
    .end local v3    # "type":I
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    .end local v5    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v0    # "flags":I
    .restart local v1    # "i":I
    .restart local v3    # "type":I
    .restart local v4    # "win":Lcom/android/server/wm/WindowState;
    .restart local v5    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    const/16 v8, 0x89b

    if-ne v3, v8, :cond_4

    const/4 v4, 0x0

    :try_start_1
    monitor-exit v9

    goto :goto_1

    :cond_4
    const/4 v8, 0x2

    if-eq v3, v8, :cond_5

    const/4 v8, 0x1

    if-eq v3, v8, :cond_5

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_1

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_1

    const/16 v8, 0x7d0

    if-lt v3, v8, :cond_1

    const/16 v8, 0xbb7

    if-gt v3, v8, :cond_1

    const/4 v4, 0x0

    monitor-exit v9

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_6

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v10, -0x80000000

    and-int/2addr v8, v10

    if-nez v8, :cond_1

    :cond_6
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Region;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eq v8, v10, :cond_7

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    const/4 v10, 0x1

    if-eq v8, v10, :cond_1

    :cond_7
    monitor-exit v9

    goto :goto_1

    :cond_8
    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v8, v10, :cond_1

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_1

    monitor-exit v9

    goto/16 :goto_1

    .end local v0    # "flags":I
    .end local v3    # "type":I
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :cond_9
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method private getApplicationName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "windowName"    # Ljava/lang/CharSequence;

    .prologue
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, "parts":[Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .local v3, "i":Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    const/4 v8, 0x0

    aget-object v8, v5, v8

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .local v4, "l":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "appName":Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appName":Ljava/lang/CharSequence;
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "l":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "parts":[Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "MultiWindowConverter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getApplicationName is error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isCancelArea(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMaxScale:F

    sub-float/2addr v2, v3

    const v3, 0x3d4ccccd    # 0.05f

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .local v0, "limitHieght":I
    if-ge p2, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTerminativeArea(II)Z
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .local v0, "dInfo":Landroid/view/DisplayInfo;
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .local v6, "screenWidth":I
    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .local v5, "screenHeight":I
    const v1, 0x3e051eb8    # 0.13f

    .local v1, "dh":F
    const v3, 0x3e3851ec    # 0.18f

    .local v3, "dv":F
    const v2, 0x3e570a3d    # 0.21f

    .local v2, "dht":F
    const v4, 0x3db851ec    # 0.09f

    .local v4, "dvt":F
    if-ge v5, v6, :cond_0

    const v1, 0x3db851ec    # 0.09f

    const v3, 0x3e570a3d    # 0.21f

    const v2, 0x3e3851ec    # 0.18f

    const v4, 0x3e051eb8    # 0.13f

    :cond_0
    iget v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    sparse-switch v8, :sswitch_data_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    return v7

    :sswitch_0
    int-to-float v8, v6

    mul-float/2addr v8, v1

    float-to-int v8, v8

    if-ge p1, v8, :cond_2

    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v8, v8

    if-le p2, v8, :cond_2

    const-string v8, "MultiWindowConverter"

    const-string v9, "MultiWindow changing is blocked by terminative area"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    int-to-float v8, v6

    mul-float/2addr v8, v2

    float-to-int v8, v8

    if-le p1, v8, :cond_1

    int-to-float v8, v5

    mul-float/2addr v8, v4

    float-to-int v8, v8

    if-ge p2, v8, :cond_1

    const-string v8, "MultiWindowConverter"

    const-string v9, "MultiWindow changing is blocked by terminative area"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    int-to-float v8, v6

    sub-float v9, v10, v1

    mul-float/2addr v8, v9

    float-to-int v8, v8

    if-le p1, v8, :cond_3

    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v8, v8

    if-le p2, v8, :cond_3

    const-string v8, "MultiWindowConverter"

    const-string v9, "MultiWindow changing is blocked by terminative area"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    int-to-float v8, v6

    sub-float v9, v10, v2

    mul-float/2addr v8, v9

    float-to-int v8, v8

    if-ge p1, v8, :cond_1

    int-to-float v8, v5

    mul-float/2addr v8, v4

    float-to-int v8, v8

    if-ge p2, v8, :cond_1

    const-string v8, "MultiWindowConverter"

    const-string v9, "MultiWindow changing is blocked by terminative area"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method private isValidMotion(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    const v0, 0x3d8f5c29    # 0.07f

    .local v0, "dh":F
    const v1, 0x3d4ccccd    # 0.05f

    .local v1, "dv":F
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    if-ge v4, v5, :cond_0

    const v0, 0x3d4ccccd    # 0.05f

    const v1, 0x3d8f5c29    # 0.07f

    :cond_0
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v2, v4

    .local v2, "limitHieght":I
    if-ge p2, v2, :cond_2

    :cond_1
    :goto_0
    return v3

    :cond_2
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastX:I

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    if-lt v4, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private showFullScreenGuide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->init()V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0, v1, v1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showGuide(II)V

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showGuide(II)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method private showGuide(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    sub-int v2, v4, p1

    .local v2, "width":I
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    sub-int v0, v4, p2

    .local v0, "height":I
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    if-ge v4, v5, :cond_2

    const/4 v1, 0x1

    .local v1, "isLandscape":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    if-eqz v4, :cond_0

    if-nez p2, :cond_0

    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v0, v4, Landroid/graphics/Point;->y:I

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHandler:Landroid/os/Handler;

    if-nez v4, :cond_1

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHandler:Landroid/os/Handler;

    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->init()V

    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    sparse-switch v4, :sswitch_data_0

    :goto_2
    return-void

    .end local v1    # "isLandscape":Z
    :cond_2
    move v1, v3

    goto :goto_0

    .restart local v1    # "isLandscape":Z
    :cond_3
    if-nez p1, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v4, Landroid/graphics/Point;->x:I

    goto :goto_1

    :cond_4
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int v2, v4, v5

    goto :goto_1

    :sswitch_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v3, p1, p2, v2, v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto :goto_2

    :sswitch_1
    iget-boolean v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    if-nez p2, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v3, v6, v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v4, v3, p2, p1, v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public dismissGuide(Z)V
    .locals 4
    .param p1, "immediate"    # Z

    .prologue
    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/MultiWindowPointerEventListener$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/MultiWindowPointerEventListener$1;-><init>(Lcom/android/server/wm/MultiWindowPointerEventListener;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismiss()V

    iput v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    goto :goto_0
.end method

.method public init()V
    .locals 5

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    new-instance v0, Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/16 v3, 0x7d6

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/multiwindow/ui/GuideView;-><init>(Landroid/content/Context;Landroid/os/IBinder;I)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->setMultiWindowFlags(I)V

    new-instance v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinScale:F

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMaxScale:F

    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    and-int/lit16 v0, v10, 0xff

    .local v0, "action":I
    if-nez v0, :cond_0

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    .local v4, "dInfo":Landroid/view/DisplayInfo;
    iget v10, v4, Landroid/view/DisplayInfo;->appWidth:I

    iput v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    iget v10, v4, Landroid/view/DisplayInfo;->appHeight:I

    iput v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    .end local v4    # "dInfo":Landroid/view/DisplayInfo;
    :cond_0
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    iget v11, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    invoke-virtual {v10, v11, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->onTouchEvent(ILandroid/view/MotionEvent;)Z

    move-result v10

    if-nez v10, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy;->isLockTaskModeEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTerminate:Z

    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    iput v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenRatio:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    iput v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    iput v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastY:I

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastX:I

    int-to-float v11, v10

    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastY:I

    int-to-float v12, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    :goto_1
    invoke-direct {p0, v11, v12, v10}, Lcom/android/server/wm/MultiWindowPointerEventListener;->findApplicationTargetWindow(FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/wm/MultiWindowPointerEventListener;->startResizing(Lcom/android/server/wm/WindowState;)Z

    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    invoke-static {v10, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->getEdgeFlag(ILandroid/view/MotionEvent;)I

    move-result v10

    iput v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    const-string v10, "MultiWindowConverter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Start to resize multiwindow: mResizing="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",flag="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",x="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastX:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",y="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastY:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v8, v10

    .local v8, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v9, v10

    .local v9, "y":I
    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastX:I

    sub-int/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->INTERPORATION:I

    if-gt v10, v11, :cond_4

    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastY:I

    sub-int/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->INTERPORATION:I

    if-le v10, v11, :cond_1

    :cond_4
    iget-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    if-nez v10, :cond_5

    iget-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTerminate:Z

    if-nez v10, :cond_1

    invoke-direct {p0, v8, v9}, Lcom/android/server/wm/MultiWindowPointerEventListener;->isTerminativeArea(II)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTerminate:Z

    if-nez v10, :cond_1

    :cond_5
    iget-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    if-nez v10, :cond_6

    invoke-direct {p0, v8, v9}, Lcom/android/server/wm/MultiWindowPointerEventListener;->isValidMotion(II)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    if-eqz v10, :cond_1

    :cond_6
    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    if-eqz v10, :cond_1

    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_7

    iget-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mWasTargetChecked:Z

    if-nez v10, :cond_1

    :cond_7
    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    if-eqz v10, :cond_a

    iget-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mWasTargetChecked:Z

    if-nez v10, :cond_a

    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/MultiWindowFacadeService;->isEnableMakePenWindow()Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showFullScreenGuide()V

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    goto/16 :goto_0

    :cond_8
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v11, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIvt:[B

    iget-object v12, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v12}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showFullScreenGuide()V

    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_9

    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v11, 0x103012b

    invoke-direct {v3, v10, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .local v3, "context":Landroid/content/Context;
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1040b89

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v3, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    const-string v10, "MultiWindowConverter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mApplicationName:Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not supported popup window"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "context":Landroid/content/Context;
    :cond_9
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mWasTargetChecked:Z

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0, v8, v9}, Lcom/android/server/wm/MultiWindowPointerEventListener;->isCancelArea(II)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showFullScreenGuide()V

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    goto/16 :goto_0

    :cond_b
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    invoke-direct {p0, v8, v9}, Lcom/android/server/wm/MultiWindowPointerEventListener;->calcPosY(II)I

    move-result v2

    .local v2, "adjustY":I
    invoke-direct {p0, v8, v2}, Lcom/android/server/wm/MultiWindowPointerEventListener;->calcPosX(II)I

    move-result v1

    .local v1, "adjustX":I
    if-eq v2, v9, :cond_c

    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    iget v12, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinScale:F

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v10, v11

    float-to-int v10, v10

    if-lt v2, v10, :cond_c

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    :goto_2
    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showGuide(II)V

    goto/16 :goto_0

    :cond_c
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    goto :goto_2

    .end local v1    # "adjustX":I
    .end local v2    # "adjustY":I
    .end local v8    # "x":I
    .end local v9    # "y":I
    :pswitch_2
    iget-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    if-eqz v10, :cond_e

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/server/wm/MultiWindowPointerEventListener;->dismissGuide(Z)V

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v11, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIvt:[B

    iget-object v12, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v12}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    new-instance v6, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v10, 0x2

    invoke-direct {v6, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(I)V

    .local v6, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/ui/GuideView;->getLastBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    const/4 v10, 0x2

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    const/16 v10, 0x800

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v10, v11, v6}, Lcom/android/server/wm/WindowManagerService;->changeMultiWindowStyle(Lcom/android/server/wm/AppWindowToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    const/4 v5, 0x0

    .local v5, "packageName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v10}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v7

    .local v7, "w":Lcom/android/server/wm/WindowState;
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v5

    .end local v7    # "w":Lcom/android/server/wm/WindowState;
    :cond_d
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v11, "GEST"

    invoke-static {v10, v11, v5}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "MultiWindowConverter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MultiWindow changing is finished by gesture. app:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",bound="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v12}, Lcom/samsung/android/multiwindow/ui/GuideView;->getLastBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_e
    :pswitch_3
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/server/wm/MultiWindowPointerEventListener;->dismissGuide(Z)V

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mWasTargetChecked:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    const-string v10, "MultiWindowConverter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MultiWindow changing is ended by gesture.:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setCurrentUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->setCurrentUser(I)V

    :cond_0
    return-void
.end method

.method public showMultiWindowGestureHelp()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->showMultiWindowGestureHelp()V

    return-void
.end method

.method public startResizing(Lcom/android/server/wm/WindowState;)Z
    .locals 14
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-nez p1, :cond_0

    const-string v8, "MultiWindowConverter"

    const-string v10, "The top window does not support multi-window"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    :goto_0
    return v9

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v7

    .local v7, "stack":Lcom/android/server/wm/TaskStack;
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mApplicationName:Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    iget v8, v7, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-nez v8, :cond_1

    iput v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    const-string v8, "MultiWindowConverter"

    const-string v10, "MultiWindow Gesture is not supported with launcher"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    .local v5, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/high16 v8, 0x1000000

    invoke-virtual {v5, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_2
    move v6, v10

    .local v6, "notSupport":Z
    :goto_1
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    if-ne v8, v10, :cond_3

    iput-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    new-instance v8, Landroid/graphics/Point;

    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/android/server/am/MultiWindowFacadeService;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    :cond_3
    const/4 v1, 0x0

    .local v1, "currentTask":Lcom/android/server/wm/Task;
    const/4 v4, 0x0

    .local v4, "mainWindowTitle":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "currentTaskInfo":Ljava/lang/String;
    if-eqz v7, :cond_5

    :try_start_0
    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/android/server/wm/Task;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v8, v1, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    iget-object v8, v8, Lcom/android/server/wm/AppWindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_2
    if-eqz v6, :cond_6

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v8, v10}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    invoke-direct {p0, v4}, Lcom/android/server/wm/MultiWindowPointerEventListener;->getApplicationName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mApplicationName:Ljava/lang/CharSequence;

    iput v13, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    const-string v8, "MultiWindowConverter"

    const-string v10, "This application or window do not support multiwindow"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "currentTask":Lcom/android/server/wm/Task;
    .end local v2    # "currentTaskInfo":Ljava/lang/String;
    .end local v4    # "mainWindowTitle":Ljava/lang/CharSequence;
    .end local v6    # "notSupport":Z
    :cond_4
    move v6, v9

    goto :goto_1

    .restart local v1    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v2    # "currentTaskInfo":Ljava/lang/String;
    .restart local v4    # "mainWindowTitle":Ljava/lang/CharSequence;
    .restart local v6    # "notSupport":Z
    :cond_5
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_2

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "TAG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mainWindowTitle is error:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_2

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v8, v10}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    invoke-direct {p0, v4}, Lcom/android/server/wm/MultiWindowPointerEventListener;->getApplicationName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mApplicationName:Ljava/lang/CharSequence;

    const-string v8, "MultiWindowConverter"

    const-string v10, "MultiWindow Gesture is not supported with ISOLATED or FullScreenOnly"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v13, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    goto/16 :goto_0

    :cond_7
    iput v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const-string v8, "MultiWindowConverter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MultiWindow is changing by gesture:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    move v9, v10

    goto/16 :goto_0
.end method
