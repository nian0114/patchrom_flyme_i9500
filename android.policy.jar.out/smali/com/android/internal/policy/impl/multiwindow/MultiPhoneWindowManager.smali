.class public Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;
.super Ljava/lang/Object;
.source "MultiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final DEBUG_ALWAYS_ON:Z = false

.field private static final MULTIWINDOW_SETTING_OFF:I = 0x0

.field private static final MULTIWINDOW_SETTING_ON:I = 0x1

.field static final TAG:Ljava/lang/String; = "MultiPhoneWindowManager"


# instance fields
.field private mCanBeForceHide:Z

.field private mConsumeBackKeyUp:Z

.field mContext:Landroid/content/Context;

.field private mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

.field private mEnableMultiWindowUISetting:I

.field private mFirstMultiWindowSettingOn:Z

.field private mFirstRecentKeyClick:Z

.field private mFloatingPadding:Landroid/graphics/Rect;

.field private mFloatingPaddingTemp:Landroid/graphics/Rect;

.field private mForceHideCascade:Z

.field private mForceHideCenterbar:Z

.field private mForceHidePenWindowController:Z

.field private mForceHidePenWindowControllerTargetToken:Landroid/view/IApplicationToken;

.field private mForceHideStatusBar:Z

.field mHandler:Landroid/os/Handler;

.field private mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field private mIsIsolatedSplitUsed:Z

.field private mIsMultiWindowTrayOpen:Z

.field private mIsRecentUI:Z

.field private mIsTrayBarUI:Z

.field mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

.field final mLock:Ljava/lang/Object;

.field private mMinimizeSize:I

.field private mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowUIIntent:Landroid/content/Intent;

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

.field private mScaleWindowResizableSize:I

.field mSettingsObserver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;

.field private final mStatusBarController:Lcom/android/internal/policy/impl/BarController;

.field mStatusBarHeight:I

.field private mStatusBarTransient:Z

.field public mSystemBooted:Z

.field public mSystemReady:Z

.field private mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field private mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

.field private mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field mWindowManagerInternal:Landroid/view/WindowManagerInternal;


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/high16 v2, 0x4000000

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mLock:Ljava/lang/Object;

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarHeight:I

    new-instance v0, Lcom/android/internal/policy/impl/BarController;

    const-string v1, "StatusBar"

    const/high16 v3, 0x10000000

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/BarController;-><init>(Ljava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsTrayBarUI:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMinimizeSize:I

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mScaleWindowResizableSize:I

    iput-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsIsolatedSplitUsed:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarTransient:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstRecentKeyClick:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    iput-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCanBeForceHide:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCenterbar:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsMultiWindowTrayOpen:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowController:Z

    iput-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowControllerTargetToken:Landroid/view/IApplicationToken;

    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    return v0
.end method

.method private isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isIsolatedSplitUsed()Z
    .locals 2

    .prologue
    const/16 v1, 0x1000

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keyguardIsShowingTq()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v0

    goto :goto_0
.end method

.method private keyguardOn()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyMultiWindowScaleFrame(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "pf"    # Landroid/graphics/Rect;
    .param p3, "df"    # Landroid/graphics/Rect;
    .param p4, "of"    # Landroid/graphics/Rect;
    .param p5, "cf"    # Landroid/graphics/Rect;
    .param p6, "vf"    # Landroid/graphics/Rect;
    .param p7, "dcf"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->getFloatingWindowPadding(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/graphics/Rect;

    move-result-object v2

    .local v2, "rect":Landroid/graphics/Rect;
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    add-int v0, v4, v5

    .local v0, "height":I
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int v3, v4, v5

    .local v3, "width":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->orientation:I

    .local v1, "orientation":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedOrientation()I

    move-result v4

    if-ne v4, v6, :cond_0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedOrientation()I

    move-result v4

    if-nez v4, :cond_3

    if-ne v1, v6, :cond_3

    :cond_1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    const/high16 v5, 0x400000

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v3

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iput v4, p2, Landroid/graphics/Rect;->right:I

    :goto_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_2

    const/16 v4, -0x2710

    iput v4, p6, Landroid/graphics/Rect;->top:I

    iput v4, p6, Landroid/graphics/Rect;->left:I

    iput v4, p5, Landroid/graphics/Rect;->top:I

    iput v4, p5, Landroid/graphics/Rect;->left:I

    iput v4, p4, Landroid/graphics/Rect;->top:I

    iput v4, p4, Landroid/graphics/Rect;->left:I

    iput v4, p3, Landroid/graphics/Rect;->top:I

    iput v4, p3, Landroid/graphics/Rect;->left:I

    const/16 v4, 0x2710

    iput v4, p6, Landroid/graphics/Rect;->bottom:I

    iput v4, p6, Landroid/graphics/Rect;->right:I

    iput v4, p5, Landroid/graphics/Rect;->bottom:I

    iput v4, p5, Landroid/graphics/Rect;->right:I

    iput v4, p4, Landroid/graphics/Rect;->bottom:I

    iput v4, p4, Landroid/graphics/Rect;->right:I

    iput v4, p3, Landroid/graphics/Rect;->bottom:I

    iput v4, p3, Landroid/graphics/Rect;->right:I

    :cond_2
    return-void

    :cond_3
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method public applyPostLayoutPolicyForRecenUI(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x82f

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideStatusBar:Z

    :cond_0
    return-void
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    .local v1, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v2, :cond_0

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v5, :cond_0

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v2

    .local v0, "isMultiWindowTarget":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    :cond_1
    if-eqz v0, :cond_2

    const/high16 v3, 0x200000

    invoke-virtual {v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCenterbar:Z

    :cond_2
    :goto_1
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-eq v3, v4, :cond_3

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dc

    if-ne v3, v4, :cond_4

    :cond_3
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_4

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowController:Z

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getTargetAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowControllerTargetToken:Landroid/view/IApplicationToken;

    :cond_4
    return-void

    .end local v0    # "isMultiWindowTarget":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "isMultiWindowTarget":Z
    :cond_6
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v2, :cond_8

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    if-ne v3, v5, :cond_7

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_2

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_1

    :cond_8
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-nez v3, :cond_2

    iput-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_1
.end method

.method public beginLayoutLw()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCanBeForceHide:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCenterbar:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarTransient:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsIsolatedSplitUsed:Z

    return-void
.end method

.method public beginPostLayoutPolicyLw()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideStatusBar:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowController:Z

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowControllerTargetToken:Landroid/view/IApplicationToken;

    return-void
.end method

.method public checkAddPermission(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/16 v0, 0x8d4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public closeMultiWindowTrayBar(Z)Z
    .locals 4
    .param p1, "forceClose"    # Z

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "MultiPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeMultiWindowTrayBar() failed -> mMultiWindowTrayBar ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/mMultiWindowEditMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsMultiWindowTrayOpen:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$4;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_3

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsMultiWindowTrayOpen:Z

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    return-void
.end method

.method public existInputMethodInScreen(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 1
    .param p1, "targetWin"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 6
    .param p1, "topFullscreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->needHideTrayBar(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v5, v5, v5}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(ZZZ)Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v5, v5, v5}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(ZZZ)Z

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .local v0, "showCenterBar":Z
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    if-ne v4, v5, :cond_2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->isIsolatedSplitUsed()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->isPreviewScaleEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCenterbar:Z

    if-nez v4, :cond_2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    .local v2, "topFullAppZone":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v4, :cond_5

    move v1, v3

    .local v1, "topAppZone":I
    :goto_1
    if-ne v2, v1, :cond_6

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v0, 0x0

    .end local v1    # "topAppZone":I
    .end local v2    # "topFullAppZone":I
    :cond_2
    :goto_2
    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v4, :cond_7

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-ne v4, v5, :cond_7

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_3
    return-void

    .end local v0    # "showCenterBar":Z
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v5}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    goto :goto_0

    .restart local v0    # "showCenterBar":Z
    .restart local v2    # "topFullAppZone":I
    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v1

    goto :goto_1

    .restart local v1    # "topAppZone":I
    :cond_6
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    .end local v1    # "topAppZone":I
    .end local v2    # "topFullAppZone":I
    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v3, v3, v5}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(ZZZ)Z

    goto :goto_3

    :cond_8
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v3, v5, v5}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(ZZZ)Z

    goto :goto_3
.end method

.method public getFloatingStatusBarHeight(Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getTopFullWindowInSameTask()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v1

    .local v1, "mainWin":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v1, :cond_1

    move-object v4, v1

    .local v4, "targetWin":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .local v0, "fl":I
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v3

    .local v3, "sysUiFl":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .local v2, "multiWindowFl":I
    and-int/lit8 v6, v2, 0x8

    if-eqz v6, :cond_2

    .end local v0    # "fl":I
    .end local v1    # "mainWin":Landroid/view/WindowManagerPolicy$WindowState;
    .end local v2    # "multiWindowFl":I
    .end local v3    # "sysUiFl":I
    .end local v4    # "targetWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_0
    :goto_1
    return v5

    .restart local v1    # "mainWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_1
    move-object v4, p1

    goto :goto_0

    .restart local v0    # "fl":I
    .restart local v2    # "multiWindowFl":I
    .restart local v3    # "sysUiFl":I
    .restart local v4    # "targetWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_2
    and-int/lit16 v6, v0, 0x400

    if-nez v6, :cond_3

    const/high16 v6, 0x4000000

    and-int/2addr v6, v0

    if-eqz v6, :cond_4

    :cond_3
    and-int/lit16 v6, v3, 0x100

    if-eqz v6, :cond_0

    and-int/lit16 v6, v0, 0x400

    if-nez v6, :cond_0

    :cond_4
    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarHeight:I

    goto :goto_1
.end method

.method public getFloatingWindowPadding(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/graphics/Rect;
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->getFloatingStatusBarHeight(Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGlobalSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;ILandroid/view/WindowManagerPolicy$WindowState;)I
    .locals 5
    .param p1, "statusBar"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "lastSystemUiFlags"    # I
    .param p3, "topFullScreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v2, 0x4

    .local v2, "visibility":I
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .local v1, "topIsFullscreen":Z
    if-eqz p3, :cond_1

    :try_start_0
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_0

    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_3

    :cond_0
    const/4 v1, 0x1

    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x0

    .end local v1    # "topIsFullscreen":Z
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->notifySystemUiVisibility(I)V

    monitor-exit v4

    return v2

    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "topIsFullscreen":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "topIsFullscreen":Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getMinimizeSize()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMinimizeSize:I

    return v0
.end method

.method public getScaleWindowResizableSize()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mScaleWindowResizableSize:I

    return v0
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .param p4, "spwm"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p5, "phoneWindowManager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    iput-object p3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-class v2, Landroid/view/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerInternal;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    iput-object p5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object p4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.multiwindow.recentui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.multiwindow.simplificationui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsTrayBarUI:Z

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    const-string v3, "com.sec.android.app.FlashBarService"

    const-string v4, "com.sec.android.app.FlashBarService.MultiWindowTrayService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;->observe()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x1050010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarHeight:I

    return-void

    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public interceptKeyBeforeDispatching(ZIZLandroid/view/WindowManagerPolicy$WindowState;)I
    .locals 5
    .param p1, "down"    # Z
    .param p2, "repeatCount"    # I
    .param p3, "canceled"    # Z
    .param p4, "topFullscreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v4, 0x7

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isHMTSupportAndConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne p2, v4, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eqz p1, :cond_5

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v3, :cond_4

    if-ne p2, v4, :cond_3

    if-nez p3, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsTrayBarUI:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0, p4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->toggleMultiWindowTray(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    const-string v2, "MultiPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MultiWindowTrayBar toggle / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    if-eqz v3, :cond_4

    if-gtz p2, :cond_1

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v3, :cond_4

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    if-eqz v3, :cond_6

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    goto :goto_0

    :cond_6
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->closeMultiWindowTrayBar(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.intent.action.BACK_KEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public isEnabledTalkback()Z
    .locals 8

    .prologue
    const/16 v1, 0x3a

    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    const-string v0, "com.google.android.marvin.talkback"

    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    new-instance v5, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x3a

    invoke-direct {v5, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .local v5, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "enabled_accessibility_services"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "enabledServicesSetting":Ljava/lang/String;
    if-nez v4, :cond_0

    const-string v4, ""

    :cond_0
    invoke-virtual {v5, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .local v2, "componentNameString":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .local v3, "enabledService":Landroid/content/ComponentName;
    if-eqz v3, :cond_1

    const-string v6, "com.google.android.marvin.talkback"

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    .end local v2    # "componentNameString":Ljava/lang/String;
    .end local v3    # "enabledService":Landroid/content/ComponentName;
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public isForceHideStatusBar()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideStatusBar:Z

    return v0
.end method

.method public isSplitTopApplicationWindow()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStatusBarTransient()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarTransient:Z

    return v0
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;IIIIIIIIIIIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 31
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p3, "unrestrictedScreenTop"    # I
    .param p4, "unrestrictedScreenWidth"    # I
    .param p5, "unrestrictedScreenHeight"    # I
    .param p6, "dockTop"    # I
    .param p7, "dockBottom"    # I
    .param p8, "stableTop"    # I
    .param p9, "stableBottom"    # I
    .param p10, "curTop"    # I
    .param p11, "curBottom"    # I
    .param p12, "contentBottom"    # I
    .param p13, "restrictedScreenLeft"    # I
    .param p14, "restrictedScreenTop"    # I
    .param p15, "restrictedScreenWidth"    # I
    .param p16, "restrictedScreenHeight"    # I
    .param p17, "pf"    # Landroid/graphics/Rect;
    .param p18, "df"    # Landroid/graphics/Rect;
    .param p19, "of"    # Landroid/graphics/Rect;
    .param p20, "cf"    # Landroid/graphics/Rect;
    .param p21, "vf"    # Landroid/graphics/Rect;
    .param p22, "canHideNavigationBar"    # Z

    .prologue
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    .local v16, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    .local v5, "fl":I
    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v6, v3, 0xf0

    .local v6, "adjust":I
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v29

    .local v29, "sysUiFl":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v27

    .local v27, "stackBounds":Landroid/graphics/Rect;
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v14

    .local v14, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/16 v3, 0x800

    invoke-virtual {v14, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v24

    .local v24, "optionScale":Z
    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    const/16 v30, 0x1

    .local v30, "typeCascade":Z
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_e

    const/4 v15, 0x1

    .local v15, "absLayout":Z
    :goto_1
    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v3

    if-nez v3, :cond_27

    if-eqz v24, :cond_0

    if-eqz v30, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-nez v3, :cond_27

    :cond_0
    if-nez v15, :cond_27

    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarTransient:Z

    :cond_1
    const/16 v3, 0x1000

    invoke-virtual {v14, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsIsolatedSplitUsed:Z

    :cond_2
    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_f

    const/16 v23, 0x1

    .local v23, "isPortrait":Z
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->shouldMoveUpWindow(Landroid/view/WindowManagerPolicy$WindowState;Z)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-eqz v3, :cond_20

    if-nez p2, :cond_20

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    .local v20, "currentWinLeft":I
    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    .local v18, "currentWinBottom":I
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->width()I

    move-result v21

    .local v21, "currentWinWidth":I
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->height()I

    move-result v19

    .local v19, "currentWinHeight":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getScaleFactor()Landroid/graphics/PointF;

    move-result-object v26

    .local v26, "scale":Landroid/graphics/PointF;
    move/from16 v17, v19

    .local v17, "currentStackHeight":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedWidthLw()I

    move-result v21

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedHeightLw()I

    move-result v19

    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v4, v4, v21

    div-int/lit8 v4, v4, 0x2

    add-int v20, v3, v4

    :cond_3
    move/from16 v0, v18

    move/from16 v1, p12

    if-gt v0, v1, :cond_4

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v3

    if-eqz v3, :cond_1d

    :cond_4
    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_5

    const/4 v3, 0x0

    move-object/from16 v0, p20

    iput v3, v0, Landroid/graphics/Rect;->top:I

    :cond_5
    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v4, 0x1fffffff

    and-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int v22, v3, v4

    .local v22, "heightUpperInputMethod":I
    move-object/from16 v28, v27

    .local v28, "stackBoxBounds":Landroid/graphics/Rect;
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-nez v3, :cond_11

    if-eqz v23, :cond_11

    if-nez v30, :cond_11

    move-object/from16 v0, v28

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p7

    if-ne v3, v0, :cond_11

    move/from16 v0, v19

    move/from16 v1, p5

    if-ge v0, v1, :cond_11

    move-object/from16 v0, v28

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_6

    const/4 v3, 0x0

    move-object/from16 v0, p18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    :cond_6
    sub-int v3, v22, v19

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, p12

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p12

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v3

    move/from16 v0, p15

    if-ge v3, v0, :cond_10

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    add-int v3, v20, v21

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    :goto_3
    const/16 v3, 0x10

    if-eq v6, v3, :cond_7

    const/16 v3, 0x20

    if-ne v6, v3, :cond_8

    :cond_7
    move/from16 v0, p7

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_8
    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v4, -0x80000000

    or-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .end local v19    # "currentWinHeight":I
    .end local p8    # "stableTop":I
    :goto_4
    const/16 v3, 0x30

    if-eq v6, v3, :cond_1c

    if-nez v24, :cond_1c

    move/from16 v0, p10

    move-object/from16 v1, p21

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p11

    move-object/from16 v1, p21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .end local v17    # "currentStackHeight":I
    .end local v18    # "currentWinBottom":I
    .end local v20    # "currentWinLeft":I
    .end local v21    # "currentWinWidth":I
    .end local v22    # "heightUpperInputMethod":I
    .end local v26    # "scale":Landroid/graphics/PointF;
    .end local v28    # "stackBoxBounds":Landroid/graphics/Rect;
    :cond_9
    :goto_5
    if-eqz p2, :cond_c

    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-nez v3, :cond_a

    invoke-interface/range {p2 .. p2}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e9

    if-eq v3, v4, :cond_a

    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ec

    if-ne v3, v4, :cond_c

    :cond_a
    invoke-interface/range {p2 .. p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_b

    invoke-interface/range {p2 .. p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_b

    invoke-interface/range {p2 .. p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_c

    :cond_b
    const v3, 0x10500

    and-int/2addr v3, v5

    const v4, 0x10100

    if-ne v3, v4, :cond_26

    and-int/lit8 v3, v29, 0x4

    if-nez v3, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v8, 0x1

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p17

    move-object/from16 v10, p18

    move-object/from16 v11, p19

    move-object/from16 v12, p20

    move-object/from16 v13, p21

    invoke-virtual/range {v3 .. v14}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .end local v23    # "isPortrait":Z
    :cond_c
    :goto_6
    return-void

    .end local v15    # "absLayout":Z
    .end local v30    # "typeCascade":Z
    .restart local p8    # "stableTop":I
    :cond_d
    const/16 v30, 0x0

    goto/16 :goto_0

    .restart local v30    # "typeCascade":Z
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_1

    .restart local v15    # "absLayout":Z
    :cond_f
    const/16 v23, 0x0

    goto/16 :goto_2

    .restart local v17    # "currentStackHeight":I
    .restart local v18    # "currentWinBottom":I
    .restart local v19    # "currentWinHeight":I
    .restart local v20    # "currentWinLeft":I
    .restart local v21    # "currentWinWidth":I
    .restart local v22    # "heightUpperInputMethod":I
    .restart local v23    # "isPortrait":Z
    .restart local v26    # "scale":Landroid/graphics/PointF;
    .restart local v28    # "stackBoxBounds":Landroid/graphics/Rect;
    :cond_10
    move/from16 v0, p13

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    add-int v3, p13, p15

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_3

    :cond_11
    if-eqz v30, :cond_12

    add-int v19, v17, p8

    .end local v19    # "currentWinHeight":I
    :cond_12
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_15

    if-eqz v30, :cond_13

    sub-int v3, p12, v17

    move/from16 v0, p8

    int-to-float v4, v0

    move-object/from16 v0, v26

    iget v7, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v4, v7

    float-to-int v4, v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v3, v3, p8

    move-object/from16 v0, p18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p17

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p17

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p18

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p18

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, p18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :goto_7
    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v4, 0x20000000

    or-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_4

    :cond_13
    move/from16 v0, p3

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p3

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p12

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p12

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    move-object/from16 v0, v28

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v28

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_7

    :cond_14
    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    add-int v3, v20, v21

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_7

    :cond_15
    if-eqz v24, :cond_16

    if-eqz v30, :cond_16

    move/from16 v0, p8

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p8

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p8

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    sub-int v3, v22, p8

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    move-object/from16 v0, v26

    iget v7, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v7

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int v3, v3, p8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    move-object/from16 v0, v26

    iget v7, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v4, v7

    float-to-int v4, v4

    add-int/2addr v3, v4

    move-object/from16 v0, p20

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_4

    :cond_16
    if-eqz v30, :cond_19

    .end local p8    # "stableTop":I
    :goto_8
    move/from16 v0, p8

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p8

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p8

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int v3, v3, v21

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    if-eqz p22, :cond_1a

    move/from16 v0, v29

    and-int/lit16 v3, v0, 0x200

    if-eqz v3, :cond_1a

    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1a

    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_1a

    add-int v3, p3, p5

    move-object/from16 v0, p18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :goto_9
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_17

    move/from16 v0, p12

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p12

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p13

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    add-int v3, p13, p15

    move-object/from16 v0, p18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    :cond_17
    const/16 v3, 0x10

    if-eq v6, v3, :cond_18

    move/from16 v0, p7

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p7

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_18
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_1b

    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_4

    .restart local p8    # "stableTop":I
    :cond_19
    const/16 p8, 0x0

    goto/16 :goto_8

    .end local p8    # "stableTop":I
    :cond_1a
    add-int v3, p14, p16

    move-object/from16 v0, p18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_9

    :cond_1b
    const/high16 v3, 0x40000000    # 2.0f

    move-object/from16 v0, v16

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_4

    :cond_1c
    move-object/from16 v0, p21

    move-object/from16 v1, p20

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_5

    .end local v22    # "heightUpperInputMethod":I
    .end local v28    # "stackBoxBounds":Landroid/graphics/Rect;
    .restart local v19    # "currentWinHeight":I
    .restart local p8    # "stableTop":I
    :cond_1d
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, p8

    if-le v3, v0, :cond_1f

    move/from16 v0, p8

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p8

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    :cond_1e
    :goto_a
    move/from16 v0, p12

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p12

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int v3, v3, v21

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    const/16 v3, 0x10

    if-eq v6, v3, :cond_9

    move/from16 v0, p6

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p6

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p7

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p7

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_5

    :cond_1f
    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_1e

    const/4 v3, 0x0

    move-object/from16 v0, p18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    goto :goto_a

    .end local v17    # "currentStackHeight":I
    .end local v18    # "currentWinBottom":I
    .end local v19    # "currentWinHeight":I
    .end local v20    # "currentWinLeft":I
    .end local v21    # "currentWinWidth":I
    .end local v26    # "scale":Landroid/graphics/PointF;
    :cond_20
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v4, 0x1fffffff

    and-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_5

    :cond_21
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v3

    if-eqz v3, :cond_22

    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v4, 0x1fffffff

    and-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_22
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-nez v3, :cond_9

    if-eqz v23, :cond_9

    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p18

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p9

    if-ge v3, v0, :cond_23

    move/from16 v0, p9

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_23
    move-object/from16 v0, p19

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p9

    if-ge v3, v0, :cond_24

    move/from16 v0, p9

    move-object/from16 v1, p19

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_24
    move-object/from16 v0, p20

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p9

    if-ge v3, v0, :cond_25

    move/from16 v0, p9

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_25
    move-object/from16 v0, p21

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p9

    if-ge v3, v0, :cond_9

    move/from16 v0, p9

    move-object/from16 v1, p21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_5

    .end local p8    # "stableTop":I
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p17

    move-object/from16 v10, p18

    move-object/from16 v11, p19

    move-object/from16 v12, p20

    move-object/from16 v13, p21

    invoke-virtual/range {v3 .. v14}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto/16 :goto_6

    .end local v23    # "isPortrait":Z
    .restart local p8    # "stableTop":I
    :cond_27
    if-eqz v30, :cond_c

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_c

    if-eqz p2, :cond_28

    and-int/lit16 v3, v5, 0x100

    if-nez v3, :cond_28

    invoke-interface/range {p2 .. p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_c

    :cond_28
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v3

    if-eqz v3, :cond_29

    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v4, 0x1fffffff

    and-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    move/from16 v25, v0

    .local v25, "orientation":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedOrientation()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2c

    const/4 v3, 0x2

    move/from16 v0, v25

    if-ne v0, v3, :cond_2c

    if-nez p2, :cond_2c

    const/high16 v3, 0x400000

    invoke-virtual {v14, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2c

    move/from16 v0, p3

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p5

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_2b

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFocused()Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAttachedWindowFocused()Z

    move-result v3

    if-nez v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/WindowManagerPolicy$WindowState;->isAttachedTo(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v3

    if-eqz v3, :cond_2b

    :cond_2a
    move/from16 v0, p11

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getGroupId()I

    move-result v3

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGroupId()I

    move-result v4

    if-ne v3, v4, :cond_c

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int v22, v3, v4

    .restart local v22    # "heightUpperInputMethod":I
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->height()I

    move-result v3

    move/from16 v0, v22

    if-ge v3, v0, :cond_2d

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, v22, v3

    div-int/lit8 v3, v3, 0x2

    add-int v3, v3, p14

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_6

    .end local v22    # "heightUpperInputMethod":I
    :cond_2c
    move-object/from16 v0, p17

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_b

    .restart local v22    # "heightUpperInputMethod":I
    :cond_2d
    move/from16 v0, p14

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto/16 :goto_6
.end method

.method public needForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "windowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p4, "attachedWin"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p5, "attachAttrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p6, "attachedWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p7, "topFullScreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x8d4

    if-ne v4, v5, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v4, v3, :cond_3

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_3

    invoke-virtual {p3, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p6, :cond_3

    invoke-virtual {p6, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    if-eqz p5, :cond_4

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-nez v4, :cond_4

    iget v4, p5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x898

    if-ne v4, v5, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz p6, :cond_6

    invoke-virtual {p6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v0, v3

    .local v0, "isCascade":Z
    :goto_1
    if-eqz v0, :cond_0

    if-eqz p7, :cond_7

    invoke-interface {p7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_7

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    move v2, v3

    goto :goto_0

    .end local v0    # "isCascade":Z
    :cond_6
    move v0, v2

    goto :goto_1

    .restart local v0    # "isCascade":Z
    :cond_7
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    if-eqz v4, :cond_a

    if-eqz p7, :cond_8

    invoke-interface {p7}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    move v2, v3

    goto :goto_0

    :cond_9
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    :cond_a
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowController:Z

    if-eqz v4, :cond_c

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3ee

    if-eq v4, v5, :cond_b

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3ef

    if-ne v4, v5, :cond_c

    :cond_b
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowControllerTargetToken:Landroid/view/IApplicationToken;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowControllerTargetToken:Landroid/view/IApplicationToken;

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v5

    if-ne v4, v5, :cond_c

    move v2, v3

    goto :goto_0

    :cond_c
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->keyguardOn()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCanBeForceHide:Z

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_d
    const/high16 v1, 0x480000

    .local v1, "mask":I
    if-eqz p2, :cond_e

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v1

    if-nez v4, :cond_0

    :cond_e
    if-eqz p5, :cond_f

    iget v4, p5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v1

    if-nez v4, :cond_0

    :cond_f
    move v2, v3

    goto/16 :goto_0

    .end local v1    # "mask":I
    :cond_10
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCanBeForceHide:Z

    if-nez v4, :cond_d

    goto/16 :goto_0
.end method

.method public needHideTrayBar(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 13
    .param p1, "topFullScreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/16 v12, 0x1000

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "true"

    const-string v10, "dev.knoxapp.running"

    const-string v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v7, v8

    :goto_0
    return v7

    :cond_0
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v9, :cond_1

    move-object v3, v7

    .local v3, "lpZoneA":Landroid/view/WindowManager$LayoutParams;
    :goto_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v9, :cond_2

    move-object v4, v7

    .local v4, "lpZoneB":Landroid/view/WindowManager$LayoutParams;
    :goto_2
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v9, :cond_3

    move-object v5, v7

    .local v5, "styleA":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_3
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v9, :cond_4

    move-object v6, v7

    .local v6, "styleB":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v8

    goto :goto_0

    .end local v3    # "lpZoneA":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "lpZoneB":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "styleA":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v6    # "styleB":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    goto :goto_1

    .restart local v3    # "lpZoneA":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    goto :goto_2

    .restart local v4    # "lpZoneB":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    goto :goto_3

    .restart local v5    # "styleA":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    goto :goto_4

    .restart local v6    # "styleB":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_5
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .local v1, "lpApp":Landroid/view/WindowManager$LayoutParams;
    move-object v2, v1

    .local v2, "lpTopFullApp":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_6

    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v7, v8, :cond_6

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    :cond_6
    if-eqz v2, :cond_9

    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->isPreviewScaleEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->hasChild()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->closeMultiWindowTrayBar(Z)Z

    move v7, v8

    goto :goto_0

    :cond_7
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v7, :cond_8

    move v7, v8

    goto :goto_0

    :cond_8
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->hasChild()Z

    move-result v7

    if-nez v7, :cond_9

    move v7, v8

    goto/16 :goto_0

    .end local v1    # "lpApp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "lpTopFullApp":Landroid/view/WindowManager$LayoutParams;
    :cond_9
    if-eqz v3, :cond_a

    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_a

    move v7, v8

    goto/16 :goto_0

    :cond_a
    if-eqz v4, :cond_b

    iget v7, v4, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_b

    move v7, v8

    goto/16 :goto_0

    :cond_b
    if-eqz v5, :cond_c

    invoke-virtual {v5, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_d

    :cond_c
    if-eqz v6, :cond_e

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_d
    move v7, v8

    goto/16 :goto_0

    :cond_e
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->isPreviewScaleEnabled()Z

    move-result v7

    if-nez v7, :cond_10

    if-eqz v3, :cond_f

    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_f

    move v7, v8

    goto/16 :goto_0

    :cond_f
    if-eqz v4, :cond_10

    iget v7, v4, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_10

    move v7, v8

    goto/16 :goto_0

    :cond_10
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isKidsModeEnabled()Z

    move-result v7

    if-nez v7, :cond_11

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEasyModeEnabled()Z

    move-result v7

    if-nez v7, :cond_11

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v7

    if-nez v7, :cond_11

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v7

    if-eqz v7, :cond_12

    :cond_11
    move v7, v8

    goto/16 :goto_0

    :cond_12
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_13

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_13

    move v7, v8

    goto/16 :goto_0

    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_13
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public notifySystemUiVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$6;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSystemReady(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V
    .locals 0
    .param p1, "keyguardDelegate"    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    return-void
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 1
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :pswitch_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :pswitch_1
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    const/4 v0, -0x7

    goto :goto_1

    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :pswitch_3
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x898
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_2

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_3

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0
.end method

.method public setCanBeForceHide(Z)V
    .locals 0
    .param p1, "forceHide"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCanBeForceHide:Z

    return-void
.end method

.method public setCurrentInputMethodTargetLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "inputTargetWindow"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    const-string v0, "MultiPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changed -> mCurrentInputMethodTarget : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setInitialDisplaySize()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    const v2, 0x10501c9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    :cond_0
    const v1, 0x10501c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMinimizeSize:I

    const v1, 0x10501db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mScaleWindowResizableSize:I

    return-void
.end method

.method public setInputMethodWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "inputMethodWindow"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    const-string v0, "MultiPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changed -> mInputMehtodWindow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setMultiWindowTrayOpenState(Z)V
    .locals 0
    .param p1, "open"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsMultiWindowTrayOpen:Z

    return-void
.end method

.method public shouldMoveUpWindow(Landroid/view/WindowManagerPolicy$WindowState;Z)Z
    .locals 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "isPortrait"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    const-string v1, "MultiPhoneWindowManager"

    const-string v2, "shouldMoveUpWindow() return false -> win is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .local v0, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->existInputMethodInScreen(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v1, :cond_5

    const-string v1, "MultiPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldMoveUpWindow() return true -> win is mCurrentInputMethodTarget : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGroupId()I

    move-result v1

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getGroupId()I

    move-result v4

    if-ne v1, v4, :cond_6

    move v1, v2

    :goto_2
    move v3, v1

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_2
.end method

.method public toggleMultiWindowTray(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 4
    .param p1, "topFullscreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->needHideTrayBar(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "MultiPhoneWindowManager"

    const-string v3, "MultiWindowTrayBar couldn\'t execute"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public toggleRecentApps()V
    .locals 3

    .prologue
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstRecentKeyClick:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstRecentKeyClick:Z

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .local v1, "recentIntent":Landroid/content/Intent;
    const-string v2, "com.sec.android.multiwindow.recentkey.start"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "recentIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateMultiWindowTrayBar(Z)V
    .locals 2
    .param p1, "forceShow"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$5;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateSettings()V
    .locals 13

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .local v5, "resolver":Landroid/content/ContentResolver;
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    if-nez v9, :cond_0

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    :cond_0
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    .local v4, "prevEnableMultiWindowUISetting":I
    const-string v9, "multi_window_enabled"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v5, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    iput v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    const-string v9, "MultiPhoneWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateSetting mEnableMultiWindowUISetting = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSystemReady:Z

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eq v9, v4, :cond_3

    const/4 v2, 0x1

    .local v2, "isUpdateMultiWindowTrayNeeded":Z
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v6

    .local v6, "versionInfo":Landroid/os/Bundle;
    const-string v9, "2.0"

    const-string v10, "version"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v10, "persona"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .local v3, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v3}, Landroid/os/PersonaManager;->getForegroundUser()I

    move-result v0

    .local v0, "currUser":I
    const/16 v9, 0x64

    if-lt v0, v9, :cond_1

    const/4 v2, 0x0

    .end local v0    # "currUser":I
    .end local v3    # "pm":Landroid/os/PersonaManager;
    :cond_1
    if-eqz v2, :cond_3

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "multi_window_tray_shown"

    const/4 v11, 0x1

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v1, :cond_4

    .local v1, "forceShow":Z
    :goto_0
    if-nez v1, :cond_2

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "multi_window_tray_shown"

    const/4 v10, 0x1

    const/4 v11, -0x2

    invoke-static {v7, v9, v10, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->updateMultiWindowTrayBar(Z)V

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSystemBooted:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$2;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)V

    invoke-virtual {v7, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .end local v1    # "forceShow":Z
    .end local v2    # "isUpdateMultiWindowTrayNeeded":Z
    .end local v6    # "versionInfo":Landroid/os/Bundle;
    :cond_3
    monitor-exit v8

    return-void

    .restart local v2    # "isUpdateMultiWindowTrayNeeded":Z
    .restart local v6    # "versionInfo":Landroid/os/Bundle;
    :cond_4
    move v1, v7

    goto :goto_0

    .end local v2    # "isUpdateMultiWindowTrayNeeded":Z
    .end local v4    # "prevEnableMultiWindowUISetting":I
    .end local v6    # "versionInfo":Landroid/os/Bundle;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public windowTypeToLayerLw(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/16 v0, 0x899

    if-ne p1, v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x89a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x89b

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/16 v0, 0x8d4

    if-ne p1, v0, :cond_3

    const/16 v0, 0xb

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method
