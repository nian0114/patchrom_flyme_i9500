.class Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static canBeForceHidden(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static checkAddPermission(Landroid/view/WindowManager$LayoutParams;[ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "outAppOp"    # [I
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .local v0, "type":I
    const/16 v1, 0x7fb

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7fa

    if-ne v0, v1, :cond_1

    :cond_0
    const-string p2, "android.permission.SYSTEM_ALERT_WINDOW"

    const/4 v1, 0x0

    const/16 v2, 0x18

    aput v2, p1, v1

    :cond_1
    return-object p2
.end method

.method static checkShowToOwnerOnly(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getFlymeTelecommService()Landroid/telecom/TelecomManager;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method static getLauncherFlag(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 4
    .param p0, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p1, "vis"    # I

    .prologue
    const-string v1, "com.android.launcher3"

    .local v1, "LAUNCHER":Ljava/lang/String;
    const-string v0, "com.meizu.search"

    .local v0, "FLYMESEARCH":Ljava/lang/String;
    const/16 v2, 0x1000

    .local v2, "LAUNCHER_FLAG":I
    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    or-int/2addr p1, v2

    :cond_1
    :goto_0
    return p1

    :cond_2
    and-int v3, p1, v2

    if-eqz v3, :cond_1

    and-int/lit16 p1, p1, -0x1001

    goto :goto_0
.end method

.method static getManifestPermission(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;
    .locals 3
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, 0x0

    .local v0, "permission":Ljava/lang/String;
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .local v1, "type":I
    const/16 v2, 0x7d4

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7e0

    if-ne v1, v2, :cond_2

    :cond_0
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/16 v2, 0x7fa

    if-ne v1, v2, :cond_1

    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    goto :goto_0
.end method

.method static hideBootMessages(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 2
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeHideBootMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeHideBootMessage;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .local v0, "hideFlymeBootMessage":Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeHideBootMessage;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    return v1
.end method

.method static initExtFlymeFields(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V
    .locals 3
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    new-instance v2, Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mzPwm:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getScreenshotRunnable()Ljava/lang/Runnable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMzScreenshotChordLongPress:Ljava/lang/Runnable;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, "statusbarEventFilter":Landroid/content/IntentFilter;
    const-string v2, "meizu.intent.action.REQUEST_TRANSIENT_STATUSBAR"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeStatusBarEventReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeStatusBarEventReceiver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .local v0, "statusBarEventReceiver":Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeStatusBarEventReceiver;
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static isLandScape(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 3
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .local v0, "point":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static mzInterceptHomeKey(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 3
    .param p0, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static mzKeyguardHideLw(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V
    .locals 1
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "doAnimation"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMzKeyguardState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMzKeyguardState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    :cond_0
    return-void
.end method

.method static mzKeyguardShowLw(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V
    .locals 1
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "doAnimation"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMzKeyguardState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMzKeyguardState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    :cond_0
    return-void
.end method

.method static mzLayoutWindowLW(Lcom/android/internal/policy/impl/PhoneWindowManager;ILandroid/graphics/Rect;)V
    .locals 2
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "type"    # I
    .param p2, "frame"    # Landroid/graphics/Rect;

    .prologue
    const/16 v0, 0x7e0

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7d4

    if-ne p1, v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-void
.end method

.method static mzPolicyShowWhenLocked(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p1, p2}, Lcom/android/internal/policy/impl/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    .local v1, "fl":I
    const/high16 v5, 0x400000

    and-int/2addr v5, v1

    if-eqz v5, :cond_1

    move v0, v3

    .local v0, "dismissKeyguard":Z
    :goto_0
    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->mzGetKeyguardSecure(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v2

    .local v2, "secureKeyguard":Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    return-void

    .end local v0    # "dismissKeyguard":Z
    .end local v2    # "secureKeyguard":Z
    :cond_1
    move v0, v4

    goto :goto_0

    .restart local v0    # "dismissKeyguard":Z
    .restart local v2    # "secureKeyguard":Z
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setWinShowWhenLocked(Landroid/view/WindowManagerPolicy$WindowState;)V

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    goto :goto_1
.end method

.method static mzPrivateFlagKeyguardNeeded()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method static mzPrivateFlagKeyguardNeeded(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 1
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static mzSetKeyguard(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMzKeyguardState:Landroid/view/WindowManagerPolicy$WindowState;

    return-void
.end method

.method static mzSetTransWindow(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMzKeyguardState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMzKeyguardState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMzKeyguardState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMzKeyguardState:Landroid/view/WindowManagerPolicy$WindowState;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0
.end method

.method static prepareAddWindowLw(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->mzSetKeyguard(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static preventVolumeKeyForTelephony(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)Z
    .locals 2
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .local v0, "keyCode":I
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mzPwm:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->preventVolumeKeyForTelephony(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static setFlymeNavButtonVisible(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 2
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeStatusBarButton;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeStatusBarButton;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    .local v0, "statusBarButton":Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeStatusBarButton;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static setFlymeStatusBarState(Lcom/android/internal/policy/impl/PhoneWindowManager;I)I
    .locals 9
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "changes"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v8, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v8, v8, 0x400

    if-nez v8, :cond_0

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMzLastSystemUiFlagsIgnoreRecentPanel:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_2

    :cond_0
    move v5, v6

    .local v5, "topIsFullscreenIgnoreRecentPanel":Z
    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarController()Lcom/android/internal/policy/impl/BarController;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    move-result v8

    if-eqz v8, :cond_1

    or-int/lit8 p1, p1, 0x1

    :cond_1
    iget v8, v3, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit8 v8, v8, 0x6

    if-nez v8, :cond_3

    move v2, v6

    .local v2, "isNoActionBar":Z
    :goto_1
    iget v8, v3, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_4

    move v1, v6

    .local v1, "forceHideBackMenuButton":Z
    :goto_2
    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->isLandScape(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    move v0, v6

    .local v0, "backMenuButtonVisible":Z
    :goto_3
    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeStatusBarButton;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeStatusBarButton;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    .local v4, "statusBarButton":Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeStatusBarButton;
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return p1

    .end local v0    # "backMenuButtonVisible":Z
    .end local v1    # "forceHideBackMenuButton":Z
    .end local v2    # "isNoActionBar":Z
    .end local v4    # "statusBarButton":Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeStatusBarButton;
    .end local v5    # "topIsFullscreenIgnoreRecentPanel":Z
    :cond_2
    move v5, v7

    goto :goto_0

    .restart local v5    # "topIsFullscreenIgnoreRecentPanel":Z
    :cond_3
    move v2, v7

    goto :goto_1

    .restart local v2    # "isNoActionBar":Z
    :cond_4
    move v1, v7

    goto :goto_2

    .restart local v1    # "forceHideBackMenuButton":Z
    :cond_5
    move v0, v7

    goto :goto_3
.end method

.method static setHideLockScreen(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 4
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v2, 0x0

    invoke-static {p1, p2}, Lcom/android/internal/policy/impl/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .local v0, "fl":I
    const/high16 v3, 0x80000

    and-int/2addr v3, v0

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .local v1, "showWhenLocked":Z
    :goto_0
    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    :cond_0
    return-void

    .end local v1    # "showWhenLocked":Z
    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method static setLastSystemUiFlagsIgnoreRecentPanel(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V
    .locals 4
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "visibility"    # I

    .prologue
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .local v2, "win":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    const-string v1, "recentPanel"

    .local v1, "recentPanelWindowTitle":Ljava/lang/String;
    const-string v0, "recentPanelLand"

    .local v0, "recentPanelLandWindowTitle":Ljava/lang/String;
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMzLastSystemUiFlagsIgnoreRecentPanel:I

    :goto_1
    return-void

    .end local v0    # "recentPanelLandWindowTitle":Ljava/lang/String;
    .end local v1    # "recentPanelWindowTitle":Ljava/lang/String;
    .end local v2    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .restart local v0    # "recentPanelLandWindowTitle":Ljava/lang/String;
    .restart local v1    # "recentPanelWindowTitle":Ljava/lang/String;
    .restart local v2    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_2
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMzLastSystemUiFlagsIgnoreRecentPanel:I

    goto :goto_1
.end method

.method static setLayoutWindowLW(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "pf"    # Landroid/graphics/Rect;
    .param p3, "df"    # Landroid/graphics/Rect;

    .prologue
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {p0, v1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->mzLayoutWindowLW(Lcom/android/internal/policy/impl/PhoneWindowManager;ILandroid/graphics/Rect;)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {p0, v1, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->mzLayoutWindowLW(Lcom/android/internal/policy/impl/PhoneWindowManager;ILandroid/graphics/Rect;)V

    return-void
.end method

.method static setRectBottom(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/graphics/Rect;)V
    .locals 2
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "vf"    # Landroid/graphics/Rect;

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method static setWinFlags(Landroid/view/Window;I)V
    .locals 2
    .param p0, "win"    # Landroid/view/Window;
    .param p1, "windowFlags"    # I

    .prologue
    const/high16 v1, 0x4000000

    or-int v0, p1, v1

    or-int/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method static showBootMessage(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/CharSequence;Z)Z
    .locals 2
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z

    .prologue
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/CharSequence;Z)V

    .local v0, "showFlymeBootMessage":Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    return v1
.end method

.method static windowTypeToLayerLw(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    const/16 v0, 0x7fb

    if-ne p0, v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x7d4

    if-ne p0, v0, :cond_1

    const/16 v0, 0xd

    goto :goto_0

    :cond_1
    const/16 v0, 0x7fa

    if-ne p0, v0, :cond_2

    const/16 v0, 0xe

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static mzGetKeyguardSecure()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method static mzGetKeyguardSecure(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMzKeyguardSecure:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMzKeyguardSecure:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMzKeyguardSecure:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static mzSetKeyguardSecure(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 1
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMzKeyguardSecure:Ljava/lang/Boolean;

    return-void
.end method