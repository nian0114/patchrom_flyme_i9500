.class Lcom/android/internal/policy/impl/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;,
        Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;,
        Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;,
        Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;,
        Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;,
        Lcom/android/internal/policy/impl/GlobalActions$LongPressAction;,
        Lcom/android/internal/policy/impl/GlobalActions$Action;,
        Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;,
        Lcom/android/internal/policy/impl/GlobalActions$RebootAction;,
        Lcom/android/internal/policy/impl/GlobalActions$PowerAction;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field public static final ACTION_NETWORK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.NETWORK_MODE_CHANGED"

.field public static final ACTION_SHOW_GLOBAL_ACTIONS:Ljava/lang/String; = "android.intent.action.SHOW_GLOBAL_ACTIONS"

.field private static final ACTION_STATUS_EXPAND:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED"

.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final GLOBAL_ACTION_KEY_AIRPLANE:Ljava/lang/String; = "airplane"

.field private static final GLOBAL_ACTION_KEY_BUGREPORT:Ljava/lang/String; = "bugreport"

.field private static final GLOBAL_ACTION_KEY_DATAMODE:Ljava/lang/String; = "datamode"

.field private static final GLOBAL_ACTION_KEY_EMERGENCYMODE:Ljava/lang/String; = "emergencymode"

.field private static final GLOBAL_ACTION_KEY_LOCKDOWN:Ljava/lang/String; = "lockdown"

.field private static final GLOBAL_ACTION_KEY_POWER:Ljava/lang/String; = "power"

.field private static final GLOBAL_ACTION_KEY_REBOOT:Ljava/lang/String; = "reboot"

.field private static final GLOBAL_ACTION_KEY_RESTART:Ljava/lang/String; = "restart"

.field private static final GLOBAL_ACTION_KEY_SETTINGS:Ljava/lang/String; = "settings"

.field private static final GLOBAL_ACTION_KEY_SILENT:Ljava/lang/String; = "silent"

.field private static final GLOBAL_ACTION_KEY_USERS:Ljava/lang/String; = "users"

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_HIDE_QUICKPANEL:I = 0x4

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_REFRESH_AIRPLANEMODE:I = 0x3

.field private static final MESSAGE_REFRESH_RINGER:I = 0x5

.field private static final MESSAGE_SHOW:I = 0x2

.field static final SAFE_DEBUG:Z

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final SIM_CDMA:I = 0x0

.field private static final SIM_GSM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GlobalActions"

.field private static final TW_GLOBALACTIONS_MSG_DELAY:I = 0x96

.field private static mCountyCode:Ljava/lang/String;

.field private static mCoverViewListView:Landroid/widget/ListView;

.field private static mHasVibrator:Z

.field private static mIsCoverOpen:Z

.field private static mIsFirstCreated:Z

.field private static mIsMiniCoverOpened:Z

.field private static mIsMiniDialogMode:Z

.field private static mPasscodeEditText:Landroid/widget/EditText;

.field private static final mProductName:Ljava/lang/String;

.field private static mSCoverRequestStatus:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSViewCoverAppLevel:I

.field private static mSViewCoverWidth:I

.field private static final mSalesCode:Ljava/lang/String;

.field private static final mScafe:Ljava/lang/String;

.field private static final mScafeShot:Ljava/lang/String;

.field private static mSealedExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private static mSealedMenuPosition:I

.field private static mSealedModeOptionShown:Z

.field public static mSilentModeView:Landroid/view/View;

.field private static sIsConfirming:Z

.field private static sIsConfirmingGuard:Ljava/lang/Object;

.field private static sIsSecondConfirming:Z


# instance fields
.field final INTERVAL_SCOVER_TRANSITION:I

.field private cm:Landroid/net/ConnectivityManager;

.field private isLGTOperator:Z

.field private isPHSalesCode:Z

.field private isVZWOperatorAirplaneModeONReasonUSB3:Z

.field private mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

.field mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

.field mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConfirmDialog:Landroid/app/AlertDialog;

.field private mConfirmDialogReceiver:Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

.field private mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

.field private final mContext:Landroid/content/Context;

.field private mCoverColor:I

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mDataNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

.field private mDisplayConfirm:Z

.field private mDontShowCheckbox:Landroid/widget/CheckBox;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mEmergency:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mEmergencyState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mIsSetAirplaneOnMessageVZW:Z

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private final mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

.field private mLayout:Landroid/widget/LinearLayout;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRestart:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mSealedModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mShowOnAirplaneConfirm:Z

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

.field mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mViewCoverParentLayout:Landroid/widget/ImageView;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    sput v1, Lcom/android/internal/policy/impl/GlobalActions;->mSealedMenuPosition:I

    sput-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mSealedModeOptionShown:Z

    sput-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    sput-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    sput-object v3, Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    sput-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    sput v1, Lcom/android/internal/policy/impl/GlobalActions;->mSViewCoverAppLevel:I

    sput-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsMiniDialogMode:Z

    sput-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsMiniCoverOpened:Z

    sput-object v3, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeView:Landroid/view/View;

    sput v1, Lcom/android/internal/policy/impl/GlobalActions;->mSViewCoverWidth:I

    const-string v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mScafe:Ljava/lang/String;

    const-string v0, "ro.build.scafe.shot"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mScafeShot:Ljava/lang/String;

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mProductName:Ljava/lang/String;

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;

    const-string v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mCountyCode:Ljava/lang/String;

    sput-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->mIsFirstCreated:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDisplayConfirm:Z

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mEmergencyState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mViewCoverParentLayout:Landroid/widget/ImageView;

    iput v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverColor:I

    iput-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const-string v3, "LGT"

    sget-object v6, Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "LUC"

    sget-object v6, Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "LUO"

    sget-object v6, Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    move v3, v5

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->isLGTOperator:Z

    const-string v3, "SMA"

    sget-object v6, Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "GLB"

    sget-object v6, Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "XTC"

    sget-object v6, Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "XTE"

    sget-object v6, Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    move v3, v5

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->isPHSalesCode:Z

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    iput-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowOnAirplaneConfirm:Z

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    iput-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$19;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$19;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$20;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$20;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$21;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$21;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$22;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$22;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$23;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$23;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$24;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$24;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$25;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v6}, Lcom/android/internal/policy/impl/GlobalActions$25;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$26;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$26;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    iput v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->INTERVAL_SCOVER_TRANSITION:I

    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v6, 0x103012b

    invoke-direct {v3, p1, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "dreams"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "CTC"

    sget-object v6, Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isMultiSIMDevice()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "ACTION_DUALMODE_SETTING"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v3, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "airplane_mode_on"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v6, "vibrator"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .local v2, "vibrator":Landroid/os/Vibrator;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v5

    :goto_2
    sput-boolean v3, Lcom/android/internal/policy/impl/GlobalActions;->mHasVibrator:Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1120061

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_7

    :goto_3
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowSilentToggle:Z

    const-string v3, "TMB"

    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDisplayConfirm:Z

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->initCoverManager(Landroid/content/Context;)V

    return-void

    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v2    # "vibrator":Landroid/os/Vibrator;
    :cond_4
    move v3, v4

    goto/16 :goto_0

    :cond_5
    move v3, v4

    goto/16 :goto_1

    .restart local v0    # "filter":Landroid/content/IntentFilter;
    .restart local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v2    # "vibrator":Landroid/os/Vibrator;
    :cond_6
    move v3, v4

    goto :goto_2

    :cond_7
    move v5, v4

    goto :goto_3
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/GlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/GlobalActions;Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Landroid/hardware/usb/UsbManager;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/GlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/GlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/GlobalActions;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->isLGTOperator:Z

    return v0
.end method

.method static synthetic access$1900()Landroid/widget/EditText;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/GlobalActions;->createKnoxCPUriCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/GlobalActions;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Landroid/database/Cursor;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/GlobalActions;->getStringQueryFromKnoxCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    return-object v0
.end method

.method static synthetic access$2300()Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mSealedExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDisplayConfirm:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$2900()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->mIsMiniDialogMode:Z

    return v0
.end method

.method static synthetic access$2902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsMiniDialogMode:Z

    return p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->mIsMiniCoverOpened:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/GlobalActions;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->virtualDismissInSCover(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsMiniCoverOpened:Z

    return p0
.end method

.method static synthetic access$3100()Landroid/widget/ListView;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$3300()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->mSealedModeOptionShown:Z

    return v0
.end method

.method static synthetic access$3302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/internal/policy/impl/GlobalActions;->mSealedModeOptionShown:Z

    return p0
.end method

.method static synthetic access$3400()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/policy/impl/GlobalActions;->mSealedMenuPosition:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSealedModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/GlobalActions;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3700()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->clearSCoverRequestStatus()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$4100()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->mHasVibrator:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;)Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/internal/policy/impl/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$4900()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mCountyCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mScafe:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isSimReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/GlobalActions;->confirmDialog(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->isPHSalesCode:Z

    return v0
.end method

.method private addCustomDialogItems(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Landroid/content/Intent;ILjava/util/ArrayList;)Z
    .locals 8
    .param p1, "iconDraw"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p2, "messageChars"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/BitmapDrawable;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p5, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/policy/impl/GlobalActions$Action;>;"
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$14;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/GlobalActions$14;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v6

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addDialogItemsIfEnabled(ILcom/android/internal/policy/impl/GlobalActions$Action;Ljava/util/ArrayList;Z)Z
    .locals 5
    .param p1, "valueToCheck"    # I
    .param p2, "actionToAdd"    # Lcom/android/internal/policy/impl/GlobalActions$Action;
    .param p4, "ifEnabledMoveIncrementSealedPosition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/policy/impl/GlobalActions$Action;>;"
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const-string v2, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    const-string v3, "getSealedPowerDialogItems"

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/policy/impl/GlobalActions;->createKnoxCPUriCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, "cr":Landroid/database/Cursor;
    const-string v2, "getSealedPowerDialogItems"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/GlobalActions;->getIntQueryFromKnoxCursor(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .local v1, "getSealedPowerDialogItems":I
    and-int v2, v1, p1

    if-ne v2, p1, :cond_1

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    sget v2, Lcom/android/internal/policy/impl/GlobalActions;->mSealedMenuPosition:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/policy/impl/GlobalActions;->mSealedMenuPosition:I

    :cond_0
    const/4 v2, 0x1

    .end local v0    # "cr":Landroid/database/Cursor;
    .end local v1    # "getSealedPowerDialogItems":I
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/policy/impl/GlobalActions$Action;>;"
    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    .local v9, "um":Landroid/os/UserManager;
    invoke-virtual {v9}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v9}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    .local v10, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    .local v6, "currentUser":Landroid/content/pm/UserInfo;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v6, :cond_2

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_1

    move v8, v11

    .local v8, "isCurrentUser":Z
    :goto_1
    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    :goto_2
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$18;

    const v2, 0x10804d5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v8, :cond_6

    const-string v1, " \u2714"

    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/GlobalActions$18;-><init>(Lcom/android/internal/policy/impl/GlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .local v0, "switchToUser":Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "switchToUser":Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "isCurrentUser":Z
    :cond_1
    move v8, v12

    goto :goto_1

    :cond_2
    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v2, :cond_3

    move v8, v11

    goto :goto_1

    :cond_3
    move v8, v12

    goto :goto_1

    .restart local v8    # "isCurrentUser":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_5
    const-string v1, "Primary"

    goto :goto_3

    :cond_6
    const-string v1, ""

    goto :goto_4

    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "isCurrentUser":Z
    .end local v10    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_7
    return-void
.end method

.method private awakenIfNecessary()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$27;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlobalActions$27;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_3

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_2
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :cond_0
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_2
.end method

.method private checkAirplaneModeOnOff()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "GlobalActions"

    const-string v3, "===== Start checkAirplaneModeOnOff ====="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .local v0, "airplaneModeOn":Z
    :goto_0
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAirplaneModeOnOff : airplaneModeOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_1
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    const-string v1, "GlobalActions"

    const-string v2, "checkAirplaneModeOnOff : sendEmptyMessageDelayed MESSAGE_REFRESH_AIRPLANEMODE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .end local v0    # "airplaneModeOn":Z
    :cond_0
    move v0, v1

    goto :goto_0

    .restart local v0    # "airplaneModeOn":Z
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private clearCustomDialogItems()Z
    .locals 4

    .prologue
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/policy/impl/GlobalActions$Action;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/GlobalActions$Action;

    .local v1, "obj":Lcom/android/internal/policy/impl/GlobalActions$Action;
    instance-of v2, v1, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    .end local v1    # "obj":Lcom/android/internal/policy/impl/GlobalActions$Action;
    iget-boolean v2, v1, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/policy/impl/GlobalActions$Action;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/policy/impl/GlobalActions$Action;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    return v2
.end method

.method private clearSCoverRequestStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "sender":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->restoreQuickpanelBackground(Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "sender":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method private confirmDialog(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V
    .locals 18
    .param p1, "action"    # Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .param p2, "resTitle"    # I
    .param p3, "resON"    # I
    .param p4, "resOFF"    # I

    .prologue
    const/4 v3, 0x0

    .local v3, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/4 v12, 0x0

    .local v12, "positiveButtonClickListener":Landroid/content/DialogInterface$OnClickListener;
    const/4 v11, 0x0

    .local v11, "mConfirmDialogSViewCover":Landroid/app/GlobalActionsSViewCoverDialog;
    const/4 v5, 0x0

    .local v5, "dialog":Landroid/app/AlertDialog;
    const/4 v13, 0x0

    .local v13, "positiveButtonStringId":I
    const/4 v1, 0x0

    .local v1, "abuilder":Landroid/app/AlertDialog$Builder;
    const/4 v10, 0x0

    .local v10, "isStateOff":Z
    const/4 v7, 0x0

    .local v7, "isActionAirplaneModeOn":Z
    const/4 v9, 0x0

    .local v9, "isSetAirplaneOnMessageVZW":Z
    const/4 v8, 0x0

    .local v8, "isRunnigWithoutConfirmMessage":Z
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v15, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-ne v14, v15, :cond_4

    const v13, 0x1040735

    const/4 v10, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_5

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    :goto_1
    sget-boolean v14, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v14, :cond_8

    new-instance v14, Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;-><init>(Landroid/content/Context;)V

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setTitle(I)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v16, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    if-ne v14, v0, :cond_7

    move/from16 v14, p3

    :goto_2
    invoke-virtual {v15, v14}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setMessage(I)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    if-eqz v15, :cond_0

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v16, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_0

    const v13, 0x104088e

    .end local v13    # "positiveButtonStringId":I
    :cond_0
    invoke-virtual {v14, v13, v12}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v14

    const v15, 0x1040009

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->create()Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v11

    :goto_3
    new-instance v14, Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogReceiver:Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    sget-boolean v14, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v14, :cond_c

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x833

    invoke-virtual {v14, v15}, Landroid/view/Window;->setType(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1120011

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-nez v14, :cond_1

    invoke-virtual {v11}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    invoke-virtual {v11}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .local v2, "attributes":Landroid/view/WindowManager$LayoutParams;
    const/4 v14, 0x1

    iput v14, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/4 v14, 0x0

    iput v14, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v11}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/app/GlobalActionsSViewCoverDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v11}, Landroid/app/GlobalActionsSViewCoverDialog;->show()V

    const-string v14, "GlobalActions$ConfirmDialog"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/policy/impl/GlobalActions;->hideQuickpanelBackground(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

    .end local v2    # "attributes":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    :goto_4
    if-nez v8, :cond_3

    sget-object v15, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v15

    const/4 v14, 0x1

    :try_start_0
    sput-boolean v14, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    .restart local v13    # "positiveButtonStringId":I
    :cond_4
    const v13, 0x1040734

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    goto/16 :goto_1

    :cond_6
    const-string v14, "GlobalActions"

    const-string v15, "Cannot find ClickListener."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    move/from16 v14, p4

    goto/16 :goto_2

    :cond_8
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .end local v1    # "abuilder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v1, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v1    # "abuilder":Landroid/app/AlertDialog$Builder;
    move/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    if-eqz v14, :cond_a

    if-eqz v7, :cond_a

    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v14, 0x1090109

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .local v4, "content":Landroid/view/View;
    const-string v14, "GlobalActions"

    const-string v15, "confirmDialog : set airplane mode on message for VZW"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v14, 0x102048b

    invoke-virtual {v4, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    const/4 v9, 0x1

    .end local v4    # "content":Landroid/view/View;
    .end local v6    # "inflater":Landroid/view/LayoutInflater;
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    if-eqz v14, :cond_9

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v15, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-eq v14, v15, :cond_9

    const v13, 0x104088e

    .end local v13    # "positiveButtonStringId":I
    :cond_9
    invoke-virtual {v1, v13, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v14, 0x1040009

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_3

    .restart local v13    # "positiveButtonStringId":I
    :cond_a
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v15, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-ne v14, v15, :cond_b

    move/from16 v14, p3

    :goto_6
    invoke-virtual {v1, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    :cond_b
    move/from16 v14, p4

    goto :goto_6

    .end local v13    # "positiveButtonStringId":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogReceiver:Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    iput-object v5, v14, Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;->dialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogReceiver:Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    invoke-virtual {v5, v14}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    if-eqz v14, :cond_f

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x7d9

    invoke-virtual {v14, v15}, Landroid/view/Window;->setType(I)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1120011

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-nez v14, :cond_d

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/view/Window;->addFlags(I)V

    :cond_d
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->checkOnAirplaneConfirmShow()V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mShowOnAirplaneConfirm:Z

    if-nez v14, :cond_10

    if-eqz v9, :cond_10

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/policy/impl/GlobalActions;->airplaneModeClickAction(Z)V

    const/4 v8, 0x1

    :goto_8
    sget-boolean v14, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v14, :cond_e

    const-string v14, "GlobalActions"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "in confirmDialog action = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " resON = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "resOFF = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " config_sf_slowBlur = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1120011

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " resTitle = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mAirplaneModeOn = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mDataModeToggle = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    goto/16 :goto_4

    :cond_f
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x7d8

    invoke-virtual {v14, v15}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_7

    :cond_10
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_8

    :catchall_0
    move-exception v14

    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v14
.end method

.method private createDialog()Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    .locals 26

    .prologue
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->mSealedModeOptionShown:Z

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$2;

    const v4, 0x1080a54

    const v5, 0x1080a53

    const v6, 0x10408ab

    const v7, 0x10408ac

    const v8, 0x10408ad

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/policy/impl/GlobalActions$2;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$3;

    const v4, 0x1080a51

    const v5, 0x1080a52

    const v6, 0x104010e

    const v7, 0x104010f

    const v8, 0x1040110

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/policy/impl/GlobalActions$3;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->onAirplaneModeChanged()V

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$4;

    const v4, 0x1080a60

    const v5, 0x1080a61

    const v6, 0x1040897

    const v7, 0x1040895

    const v8, 0x1040896

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/policy/impl/GlobalActions$4;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mEmergency:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mSealedExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mSealedExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v3, 0x1040a8b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mSealedExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v3, 0x1040a8c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mSealedExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mSealedExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/internal/policy/impl/GlobalActions$5;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mSealedExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/internal/policy/impl/GlobalActions$6;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$7;

    const v4, 0x1080482

    const v5, 0x1080481

    const v6, 0x1040a88

    const v7, 0x1040a89

    const v8, 0x1040a8a

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/policy/impl/GlobalActions$7;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mSealedModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$8;

    const v3, 0x1080a57

    const v4, 0x10407ca

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/android/internal/policy/impl/GlobalActions$8;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mRestart:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v2, 0x0

    sput v2, Lcom/android/internal/policy/impl/GlobalActions;->mSealedMenuPosition:I

    const-string v2, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v3, "getSealedState"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/GlobalActions;->createKnoxCPUriCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .local v11, "cr":Landroid/database/Cursor;
    const-string v2, "getSealedState"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/android/internal/policy/impl/GlobalActions;->getStringQueryFromKnoxCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .local v17, "getSealedState":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v2, :cond_1

    if-eqz v17, :cond_1

    const-string v2, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$PowerAction;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/internal/policy/impl/GlobalActions$PowerAction;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$1;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/internal/policy/impl/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/internal/policy/impl/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    const/16 v2, 0x10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/internal/policy/impl/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/internal/policy/impl/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    const/16 v2, 0x20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/internal/policy/impl/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/internal/policy/impl/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    const/16 v2, 0x40

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mRestart:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/internal/policy/impl/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/internal/policy/impl/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    const/16 v2, 0x80

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mEmergency:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/internal/policy/impl/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/internal/policy/impl/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    const/16 v2, 0x100

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->getBugReportAction()Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/internal/policy/impl/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/internal/policy/impl/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    const-string v2, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v3, "getSealedPowerDialogOptionMode"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/GlobalActions;->createKnoxCPUriCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    const-string v2, "getSealedPowerDialogOptionMode"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/android/internal/policy/impl/GlobalActions;->getIntQueryFromKnoxCursor(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v16

    .local v16, "getSealedPowerDialogOptionMode":I
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mSealedModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/16 v2, 0x200

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/internal/policy/impl/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/internal/policy/impl/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v2}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedPowerDialogCustomItemsState()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->clearCustomDialogItems()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v2}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedPowerDialogCustomItems()Ljava/util/List;

    move-result-object v15

    .local v15, "fromDB":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    if-eqz v15, :cond_10

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;

    .local v20, "item":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    invoke-virtual/range {v20 .. v20}, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->getIcon()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->getIntentAction()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/GlobalActions;->addCustomDialogItems(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Landroid/content/Intent;ILjava/util/ArrayList;)Z

    goto :goto_0

    .end local v15    # "fromDB":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    .end local v16    # "getSealedPowerDialogOptionMode":I
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "item":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .local v13, "defaultActions":[Ljava/lang/String;
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .local v10, "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    array-length v2, v13

    move/from16 v0, v18

    if-ge v0, v2, :cond_f

    aget-object v9, v13, v18

    .local v9, "actionKey":Ljava/lang/String;
    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_3
    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v2, :cond_4

    const-string v2, "emergencymode"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "users"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "settings"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_4
    const-string v2, "power"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$PowerAction;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/internal/policy/impl/GlobalActions$PowerAction;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$1;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    const-string v2, "airplane"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    const-string v2, "datamode"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    const-string v2, "bugreport"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bugreport_in_power_menu"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->isCurrentUserOwner()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->getBugReportAction()Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    const-string v2, "restart"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mRestart:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    const-string v2, "emergencymode"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mEmergency:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    const-string v2, "silent"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mShowSilentToggle:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_c
    const-string v2, "users"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "fw.power_user_switcher"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/GlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    goto/16 :goto_3

    :cond_d
    const-string v2, "settings"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->getSettingsAction()Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_e
    const-string v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid global action key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v9    # "actionKey":Ljava/lang/String;
    :cond_f
    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeView:Landroid/view/View;

    .end local v10    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v13    # "defaultActions":[Ljava/lang/String;
    .end local v18    # "i":I
    :cond_10
    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    new-instance v23, Lcom/android/internal/app/AlertController$AlertParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .local v23, "params":Lcom/android/internal/app/AlertController$AlertParams;
    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, 0x1

    move-object/from16 v0, v23

    iput-boolean v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    :goto_4
    new-instance v14, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v23

    invoke-direct {v14, v2, v0, v3}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;Landroid/os/Handler;)V

    .local v14, "dialog":Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    const-string v2, "GlobalActions"

    const-string v3, "Create GlobalActionsDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v2, :cond_17

    const-string v2, "GlobalActions"

    const-string v3, "mIsCoverOpen  is false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x833

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/LayoutInflater;

    .local v21, "lf":Landroid/view/LayoutInflater;
    const/16 v25, 0x0

    .local v25, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_13

    const v2, 0x109005b

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$9;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/policy/impl/GlobalActions$9;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v14, v2}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :goto_5
    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;)V

    .end local v21    # "lf":Landroid/view/LayoutInflater;
    .end local v25    # "v":Landroid/view/View;
    :goto_6
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-eqz v2, :cond_11

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setLongClickable(Z)V

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/GlobalActions$12;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const-string v2, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v3, "getSealedPowerDialogOptionMode"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/GlobalActions;->createKnoxCPUriCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    const-string v2, "getSealedPowerDialogOptionMode"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/android/internal/policy/impl/GlobalActions;->getIntQueryFromKnoxCursor(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v16

    .restart local v16    # "getSealedPowerDialogOptionMode":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v2, :cond_11

    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_11

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$13;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/policy/impl/GlobalActions$13;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v14, v2}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .end local v16    # "getSealedPowerDialogOptionMode":I
    :cond_11
    return-object v14

    .end local v14    # "dialog":Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    :cond_12
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v22, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_4

    .end local v22    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v14    # "dialog":Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    .restart local v21    # "lf":Landroid/view/LayoutInflater;
    .restart local v25    # "v":Landroid/view/View;
    :cond_13
    const v2, 0x109005c

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    const v2, 0x102035d

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    .local v12, "crossBtn":Landroid/widget/ImageButton;
    invoke-virtual {v12}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    invoke-virtual {v12}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    const/16 v3, 0x5153

    invoke-virtual {v2, v3}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/policy/impl/GlobalActions$10;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v12, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x1020337

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mViewCoverParentLayout:Landroid/widget/ImageView;

    const v2, 0x1020378

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    sput-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_15

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    :cond_15
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/GlobalActions$11;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v2, 0x1020016

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .local v24, "titleView":Landroid/widget/TextView;
    const-string v2, "VZW"

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10400f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040103

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .end local v12    # "crossBtn":Landroid/widget/ImageButton;
    .end local v21    # "lf":Landroid/view/LayoutInflater;
    .end local v24    # "titleView":Landroid/widget/TextView;
    .end local v25    # "v":Landroid/view/View;
    :cond_17
    const v2, 0x1040103

    invoke-virtual {v14, v2}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setTitle(I)V

    goto/16 :goto_6
.end method

.method private createKnoxCPUriCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uriString"    # Ljava/lang/String;
    .param p2, "queryMethod"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cr":Landroid/database/Cursor;
    return-object v6
.end method

.method private getBugReportAction()Lcom/android/internal/policy/impl/GlobalActions$Action;
    .locals 3

    .prologue
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$15;

    const v1, 0x1080477

    const v2, 0x1040108

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$15;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    return-object v0
.end method

.method private getCurrentNW()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCurrentNW()] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "CURRENT_NETWORK"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CURRENT_NETWORK"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 2

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getIntQueryFromKnoxCursor(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 2
    .param p1, "cr"    # Landroid/database/Cursor;
    .param p2, "queryMethod"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .local v0, "queryResult":I
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private getLockdownAction()Lcom/android/internal/policy/impl/GlobalActions$Action;
    .locals 3

    .prologue
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$17;

    const v1, 0x108002f

    const v2, 0x1040112

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$17;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    return-object v0
.end method

.method private getSCoverState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getSviewCoverAppLevel()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v1, :cond_0

    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCoverManager.getCoverState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v1, "GlobalActions"

    const-string v2, "state is null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "GlobalActions"

    const-string v2, "mCoverManager is null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSettingsAction()Lcom/android/internal/policy/impl/GlobalActions$Action;
    .locals 3

    .prologue
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$16;

    const v1, 0x108054d

    const v2, 0x1040111

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$16;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    return-object v0
.end method

.method private getStringQueryFromKnoxCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "cr"    # Landroid/database/Cursor;
    .param p2, "queryMethod"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "queryResult":Ljava/lang/String;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private getSviewCoverAppLevel()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this Cover app level is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/policy/impl/GlobalActions;->mSViewCoverAppLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.sec.feature.cover.sviewcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/internal/policy/impl/GlobalActions;->mSViewCoverAppLevel:I

    :cond_0
    return-void
.end method

.method private handleShow()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->awakenIfNecessary()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getSCoverState()Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_1

    const-string v1, "americano"

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "double"

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mScafeShot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget v1, Lcom/android/internal/policy/impl/GlobalActions;->mSViewCoverAppLevel:I

    if-ge v1, v5, :cond_1

    const-string v1, "GlobalActions"

    const-string v2, "handleShow() : Device is in SView Cover mode hence GlobalAction dialog will not display "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v1, "GlobalActions"

    const-string v2, "handleShow() : Call createDialog()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->prepareDialog()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getCount()I

    move-result v1

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/policy/impl/GlobalActions$LongPressAction;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->onPress()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040103

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->clearFlags(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105011a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/internal/policy/impl/GlobalActions;->mSViewCoverWidth:I

    const-string v1, "GlobalActions"

    const-string v2, "handleShow() : call mDialog.show()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->show()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    sput-boolean v3, Lcom/android/internal/policy/impl/GlobalActions;->mIsMiniDialogMode:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-nez v1, :cond_3

    sput-boolean v4, Lcom/android/internal/policy/impl/GlobalActions;->mIsMiniDialogMode:Z

    const-string v1, "GlobalActions"

    const-string v2, "handleShow(), mini dialog showed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleShow() : mIsCoverOpen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lcom/android/internal/policy/impl/GlobalActions;->mSViewCoverWidth:I

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->hideQuickpanelBackground()V

    goto/16 :goto_0

    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_5
    const-string v1, "GlobalActions"

    const-string v2, "Can not show dialog as it is not well formed properly"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private hideQuickpanelBackground()V
    .locals 1

    .prologue
    const-string v0, "GlobalActions"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions;->hideQuickpanelBackground(Ljava/lang/String;)V

    return-void
.end method

.method private hideQuickpanelBackground(Ljava/lang/String;)V
    .locals 4
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initCoverManager(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const-string v0, "GlobalActions"

    const-string v1, "initCoverManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    const-string v0, "GlobalActions"

    const-string v1, "mCoverManager.registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private isCurrentUserOwner()Z
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isGlobalActionConfirming()Z
    .locals 2

    .prologue
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isSimReady()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .local v0, "SimState":I
    const-string v7, "ro.config.donot_nosim"

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .local v4, "lSimValue":Z
    if-eqz v0, :cond_0

    if-ne v0, v6, :cond_1

    :cond_0
    move v3, v6

    .local v3, "finalSimState":Z
    :goto_0
    if-nez v4, :cond_3

    if-eqz v3, :cond_3

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x10408a2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v7, 0x10408a3

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v7, 0x104000a

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .local v1, "alert":Landroid/app/AlertDialog;
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d9

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    :goto_1
    new-instance v7, Lcom/android/internal/policy/impl/GlobalActions$28;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/GlobalActions$28;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    sget-object v6, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v6

    const/4 v7, 0x1

    :try_start_0
    sput-boolean v7, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_2
    return v5

    .end local v3    # "finalSimState":Z
    :cond_1
    move v3, v5

    goto :goto_0

    .restart local v1    # "alert":Landroid/app/AlertDialog;
    .restart local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v3    # "finalSimState":Z
    :cond_2
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d8

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_3
    move v5, v6

    goto :goto_2
.end method

.method private onAirplaneModeChanged()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .local v0, "airplaneModeOn":Z
    :goto_1
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_2
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    goto :goto_0

    .end local v0    # "airplaneModeOn":Z
    :cond_1
    move v0, v1

    goto :goto_1

    .restart local v0    # "airplaneModeOn":Z
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_2
.end method

.method private prepareDialog()V
    .locals 7

    .prologue
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    .local v1, "dataModeOn":Z
    if-eqz v1, :cond_3

    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_0
    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ABSENT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    const-string v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v5, "getSealedState"

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/internal/policy/impl/GlobalActions;->createKnoxCPUriCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, "cr":Landroid/database/Cursor;
    const-string v4, "getSealedState"

    invoke-direct {p0, v0, v4}, Lcom/android/internal/policy/impl/GlobalActions;->getStringQueryFromKnoxCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "getSealedState":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSealedModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_2
    iput-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mEmergencyState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mEmergency:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mEmergencyState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    const-string v4, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareDialog : mIsCoverOpen"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    :cond_1
    :goto_3
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowSilentToggle:Z

    if-eqz v4, :cond_2

    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v2, "filter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_2
    return-void

    .end local v0    # "cr":Landroid/database/Cursor;
    .end local v3    # "getSealedState":Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto/16 :goto_0

    .restart local v0    # "cr":Landroid/database/Cursor;
    .restart local v3    # "getSealedState":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSealedModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    goto :goto_1

    :cond_5
    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d8

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x833

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_8

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_8
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method

.method private restoreQuickpanelBackground()V
    .locals 1

    .prologue
    const-string v0, "GlobalActions"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions;->restoreQuickpanelBackground(Ljava/lang/String;)V

    return-void
.end method

.method private restoreQuickpanelBackground(Ljava/lang/String;)V
    .locals 3
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "miniModeUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private virtualDismissInSCover()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "miniModeUI"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "sender"

    const-string v2, "GlobalActions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "sender"

    const-string v2, "GlobalActions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "sender"

    const-string v2, "GlobalActions$ConfirmDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

    invoke-virtual {v1}, Landroid/app/GlobalActionsSViewCoverDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "sender"

    const-string v2, "GlobalActions$ConfirmDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private virtualDismissInSCover(Ljava/lang/String;)V
    .locals 5
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "miniModeUI"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public airplaneModeClickAction(Z)V
    .locals 5
    .param p1, "isShowingConfirmMessage"    # Z

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->onPressAction()V

    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z

    if-nez v0, :cond_3

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->clearSCoverRequestStatus()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on_reason_usb3"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "GlobalActions"

    const-string v1, "USB 3.0 is disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tw_globalactions_dont_show_again"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    sput-boolean v4, Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "GlobalActions"

    const-string v1, "USB manager is not created hence USB 3.0 connection can not be terminated."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public checkOnAirplaneConfirmShow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "GlobalActions"

    const-string v1, "checkOnAirplaneConfirmShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tw_globalactions_dont_show_again"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowOnAirplaneConfirm:Z

    :goto_0
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkOnAirplaneConfirmShow : mShowOnAirplaneConfirm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowOnAirplaneConfirm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowOnAirplaneConfirm:Z

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick  which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/GlobalActions$Action;->onPress()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z

    if-nez v1, :cond_2

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_1
    sput-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    const-string v1, "GlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "ie":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_2
    sput-boolean v3, Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z

    goto :goto_1
.end method

.method public showDialog(ZZ)V
    .locals 5
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isGlobalActionConfirming()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .local v1, "versionInfo":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    const-string v2, "2.0"

    const-string v3, "version"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .local v0, "pm":Landroid/os/PersonaManager;
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    invoke-virtual {v0}, Landroid/os/PersonaManager;->getKeyguardShowState()Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    const-string v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Oring mKeyguardShowing and pm.getKeyguardShowState()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "pm":Landroid/os/PersonaManager;
    .end local v1    # "versionInfo":Landroid/os/Bundle;
    :cond_1
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->dismiss()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const-string v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showDialog() : mIsFirstCreated = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/policy/impl/GlobalActions;->mIsFirstCreated:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->mIsFirstCreated:Z

    if-eqz v2, :cond_3

    const-string v2, "GlobalActions"

    const-string v3, "showDialog() : call checkAirplaneModeOnOff"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->checkAirplaneModeOnOff()V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->mIsFirstCreated:Z

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->handleShow()V

    goto/16 :goto_0
.end method

.method public showErrorMessage(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
