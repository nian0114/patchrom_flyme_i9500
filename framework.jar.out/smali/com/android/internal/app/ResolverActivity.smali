.class public Lcom/android/internal/app/ResolverActivity;
.super Landroid/app/Activity;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;,
        Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;,
        Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;,
        Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListInfo;,
        Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;,
        Lcom/android/internal/app/ResolverActivity$ResolverComparator;,
        Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;,
        Lcom/android/internal/app/ResolverActivity$LoadIconTask;,
        Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;,
        Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;,
        Lcom/android/internal/app/ResolverActivity$ViewHolder;,
        Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;,
        Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;,
        Lcom/android/internal/app/ResolverActivity$ActionTitle;,
        Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEV_TYPE_MOBILE:I = 0x0

.field private static final DEV_TYPE_TABLET:I = 0x1

.field private static final GUIDE_ACTIVITY:Ljava/lang/String; = "ResolverGuideActivity"

.field public static final INTENT_REQUEST_RECENT_GROUP:Ljava/lang/String; = "com.samsung.android.coreapps.rshare.requestrecentgroupcontacts"

.field private static final INTERNAL_PACKAGE:Ljava/lang/String; = "com.android.internal.app"

.field private static final MSG_INIT_RECENTLIST:I = 0x7d0

.field private static final MSG_LIST_UPDATE:I = 0x3e8

.field private static final NET_TYPE_BT:I = 0x1

.field private static final NET_TYPE_WIFIDIRECT:I = 0x0

.field private static final REQUEST_CODE_REQUEST_RECENT_CONTACTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ResolverActivity"

.field private static final TAG_RECIPIENT_DATAIDS:Ljava/lang/String; = "recipientdataids"

.field public static final THEME_CHOOSER:Ljava/lang/String; = "theme"

.field public static final THEME_DEVICE_DEFAULT:I = 0x1

.field public static final THEME_DEVICE_DEFAULT_LIGHT:I = 0x2

.field public static final THEME_NONE:I = 0x0

.field private static final USAGE_STATS_PERIOD:J = 0x48190800L

.field private static final WIFIDIRECT_ACTIVITY_NAME:Ljava/lang/String; = "com.sec.android.app.FileShareClient.DeviceSelectActivity"

.field private static mIsEasySingUpIsCertificated:Z

.field private static mIsRemoteShareServiceDownloaded:Z


# instance fields
.field private final ACTION_AUTH_RESULT:Ljava/lang/String;

.field private final ACTION_REQ_AUTH:Ljava/lang/String;

.field private final EXTRA_AUTH_RESULT:Ljava/lang/String;

.field public final EXTRA_KEY_RECENT_GROUP_CONTACTID:Ljava/lang/String;

.field public final EXTRA_KEY_RECENT_GROUP_COUNT:Ljava/lang/String;

.field public final EXTRA_KEY_RECENT_GROUP_DATAIDS:Ljava/lang/String;

.field public final EXTRA_KEY_RECENT_GROUP_NAMES:Ljava/lang/String;

.field public final EXTRA_KEY_RECENT_GROUP_PHONENUM:Ljava/lang/String;

.field public final EXTRA_KEY_RECENT_GROUP_THUMBNAILS:Ljava/lang/String;

.field private final RECENT_CONTACTS_LIST_MAX_COUNT:I

.field private final REMOTE_SHARE_SERVICE_ID:I

.field public final RESPONSE_RECENT_GROUP_CONTACTS:Ljava/lang/String;

.field private final RESULT_FAILED:I

.field private final RESULT_SUCCESS:I

.field private mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

.field private mAlwaysButton:Landroid/widget/Button;

.field private mAlwaysUseOption:Z

.field private mApplyNearByDevice:Z

.field private mApplyRemoteShareResolver:Z

.field private mConnector:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

.field private mContext:Landroid/content/Context;

.field private mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;

.field private mEasySignUpReceiver:Landroid/content/BroadcastReceiver;

.field mEasySignUpReciverfilter:Landroid/content/IntentFilter;

.field private mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

.field private mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

.field private mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

.field private mGridView:Landroid/widget/GridView;

.field final mHandler:Landroid/os/Handler;

.field private mIconDpi:I

.field private mIconSize:I

.field private mIntent:Landroid/content/Intent;

.field private mIsDeviceDefault:Z

.field private mIsEasySingUpIsCertificatedChecked:Z

.field private mIsLightTheme:Z

.field private mIsRecentContactsReceiverRegistered:Z

.field private mIsRemoteShareServiceDownloadedChecked:Z

.field private mIsSupportNewFeature:Z

.field private mItemLongClicked:Z

.field private mKgm:Landroid/app/KeyguardManager;

.field private mLastSelected:I

.field private mLaunchedFromPackage:Ljava/lang/String;

.field private mLaunchedFromUid:I

.field private mListupCompleted:Z

.field private mMaxColumns:I

.field private mOnceButton:Landroid/widget/Button;

.field private mOrigIntent:Landroid/content/Intent;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPrivateModeSettingsValBeforeOnFocusChanged:I

.field private mPrivateModeSettingsValBeforeOnFocusChangedisChecked:Z

.field private mRecentContactsId:[J

.field private mRecentContactsItemContactsCountInGroup:[I

.field private mRecentContactsItemPhoneNum:[Ljava/lang/String;

.field private mRecentContactsListCount:I

.field private mRecentContactsListName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentContactsListThumb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private mRemoteShareIndex:I

.field private mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

.field private mRemoteShareRecentHistoryDefaultIndex:I

.field private mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

.field private mRemoteShareRecentHistoryIndex:I

.field private mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

.field private mResolvingHome:Z

.field private mSafeForwardingMode:Z

.field private mShowExtended:Z

.field private mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;

.field private mUsm:Landroid/app/usage/UsageStatsManager;

.field private request_dataids:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    sput-boolean v0, Lcom/android/internal/app/ResolverActivity;->mIsRemoteShareServiceDownloaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mItemLongClicked:Z

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareIndex:I

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateModeSettingsValBeforeOnFocusChanged:I

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateModeSettingsValBeforeOnFocusChangedisChecked:Z

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultIndex:I

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificatedChecked:Z

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsRemoteShareServiceDownloadedChecked:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->REMOTE_SHARE_SERVICE_ID:I

    const-string v0, "com.samsung.android.coreapps.rshare.responserecentgroupcontacts"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->RESPONSE_RECENT_GROUP_CONTACTS:Ljava/lang/String;

    const-string v0, "recentgroupnames"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTRA_KEY_RECENT_GROUP_NAMES:Ljava/lang/String;

    const-string v0, "recentgroupthumbnail"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTRA_KEY_RECENT_GROUP_THUMBNAILS:Ljava/lang/String;

    const-string v0, "recentgroupdataids"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTRA_KEY_RECENT_GROUP_DATAIDS:Ljava/lang/String;

    const-string v0, "recentgroupcontactids"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTRA_KEY_RECENT_GROUP_CONTACTID:Ljava/lang/String;

    const-string v0, "recentgroupcount"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTRA_KEY_RECENT_GROUP_COUNT:Ljava/lang/String;

    const-string v0, "recentphonenumbers"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTRA_KEY_RECENT_GROUP_PHONENUM:Ljava/lang/String;

    const-string v0, "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->ACTION_REQ_AUTH:Ljava/lang/String;

    const-string v0, "com.samsung.android.coreapps.easysignup.ACTION_AUTH_RESULT"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->ACTION_AUTH_RESULT:Ljava/lang/String;

    const-string v0, "extra_auth_result"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTRA_AUTH_RESULT:Ljava/lang/String;

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->RESULT_SUCCESS:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->RESULT_FAILED:I

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsRecentContactsReceiverRegistered:Z

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    iput v2, p0, Lcom/android/internal/app/ResolverActivity;->RECENT_CONTACTS_LIST_MAX_COUNT:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListName:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->request_dataids:[Ljava/lang/String;

    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsId:[J

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemContactsCountInGroup:[I

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemPhoneNum:[Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsSupportNewFeature:Z

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mApplyNearByDevice:Z

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mListupCompleted:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceList:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mConnector:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    new-instance v0, Lcom/android/internal/app/ResolverActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$1;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/internal/app/ResolverActivity$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$2;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mStatusListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;

    new-instance v0, Lcom/android/internal/app/ResolverActivity$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$3;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;

    new-instance v0, Lcom/android/internal/app/ResolverActivity$4;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$4;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/app/ResolverActivity$5;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$5;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mEasySignUpReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/app/ResolverActivity$6;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$6;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-void
.end method

.method private RemoteShareRecentHistoryDefaultGridItemClick(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    if-nez v1, :cond_0

    const-string v1, "ResolverActivity"

    const-string v2, "mGridRemoteShareRecentHistoryDefault.onItemClick : mRemoteShareRecentHistoryDefaultListAdapter is null, finish "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "fromOOBE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "agreeMarketing"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mEasySignUpReciverfilter:Landroid/content/IntentFilter;

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mEasySignUpReciverfilter:Landroid/content/IntentFilter;

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mEasySignUpReciverfilter:Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.coreapps.easysignup.ACTION_AUTH_RESULT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mEasySignUpReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mEasySignUpReciverfilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/ResolverActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "ResolverActivity"

    const-string v2, "RemoteShareRecentHistoryDefaultGridItemClick : Trying to Easy Sign-up"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private RemoteShareRecentHistoryGridItemClick(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    if-nez v3, :cond_0

    const-string v3, "ResolverActivity"

    const-string v4, "mGridRemoteShareRecentHistory.onItemClick : mRemoteShareRecentHistoryListAdapter is null, finish "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .local v2, "targetIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.coreapps.rshare.action.REQUESTSEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "recentHistoryIntent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.coreapps"

    const-string v4, "com.samsung.android.coreapps.rshare.ui.RelayActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->getDeviceInfo(I)Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    move-result-object v0

    .local v0, "deviceInfo":Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mIsSupportNewFeature:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    const-string v3, "ResolverActivity"

    const-string v4, "DeviceInfo exist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->deviceItemClick(Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)V

    goto :goto_0

    :cond_1
    const-string v3, "ResolverActivity"

    const-string v4, "DeviceInfo does not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto :goto_0

    :cond_2
    const-string v3, "recipientdataids"

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->request_dataids:[Ljava/lang/String;

    add-int/lit8 v5, p1, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->checkNearbyDeviceWithRecents(Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/app/ResolverActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    return p1
.end method

.method static synthetic access$1008(Lcom/android/internal/app/ResolverActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListName:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/app/ResolverActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->request_dataids:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/app/ResolverActivity;)[J
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsId:[J

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/app/ResolverActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemContactsCountInGroup:[I

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/app/ResolverActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemPhoneNum:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/HorizontalListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/app/ResolverActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->addRemoteShareRecentHistoryGridView(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->addDeviceItemToList(Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)V

    return-void
.end method

.method static synthetic access$2002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/internal/app/ResolverActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mEasySignUpReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->sendRequesRecentContactsHistoryList()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mShowExtended:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/internal/app/ResolverActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mShowExtended:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mIconSize:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/internal/app/ResolverActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mItemLongClicked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/app/ResolverActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mStats:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initRemoteShareRecentHistoryList()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/app/ResolverActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistoryDefault(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/app/ResolverActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistory(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/sconnect/extern/QuickConnectConnector;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mConnector:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mListupCompleted:Z

    return v0
.end method

.method private addApplicationGridView(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const v1, 0x102049a

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, "text":Landroid/widget/TextView;
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setSubtitleBackgroundNoSpace(Landroid/widget/TextView;)V

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setSubtitleColor(Landroid/widget/TextView;)V

    const v1, 0x102049b

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableHeightGridView;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    check-cast v1, Landroid/widget/ExpandableHeightGridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableHeightGridView;->setExpanded(Z)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    new-instance v2, Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->resizeGrid()V

    return-void
.end method

.method private addDeviceItemToList(Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)V
    .locals 6
    .param p1, "deviceInfo"    # Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    .prologue
    new-instance v0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;

    iget-object v2, p1, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceName:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)V

    .local v0, "DeviceItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->access$3200(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    return-void
.end method

.method private addRemoteShareGridView(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const v0, 0x1020494

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .local v7, "titleText":Landroid/widget/TextView;
    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSubtitleBackground(Landroid/widget/TextView;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10407c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .local v6, "cText":Ljava/lang/CharSequence;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSubtitleColor(Landroid/widget/TextView;)V

    new-instance v0, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;I)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    const v0, 0x1020495

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableHeightGridView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableHeightGridView;->setExpanded(Z)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableHeightGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableHeightGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableHeightGridView;->setNumColumns(I)V

    return-void
.end method

.method private addRemoteShareRecentHistoryDefaultGridView(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const v0, 0x1020496

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .local v7, "titleText":Landroid/widget/TextView;
    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSubtitleBackground(Landroid/widget/TextView;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10407c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .local v6, "cText":Ljava/lang/CharSequence;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSubtitleColor(Landroid/widget/TextView;)V

    new-instance v0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;I)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    const v0, 0x1020497

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableHeightGridView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableHeightGridView;->setExpanded(Z)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableHeightGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableHeightGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableHeightGridView;->setNumColumns(I)V

    return-void
.end method

.method private addRemoteShareRecentHistoryGridView(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const v0, 0x1020498

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .local v7, "titleText":Landroid/widget/TextView;
    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSubtitleBackground(Landroid/widget/TextView;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10407c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .local v6, "cText":Ljava/lang/CharSequence;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSubtitleColor(Landroid/widget/TextView;)V

    new-instance v0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;I)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    const v0, 0x1020499

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalListView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

    invoke-virtual {v0, p0}, Landroid/widget/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private applyRemoteShareResolver(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->checkThemeType(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090135

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .local v0, "layout":Landroid/widget/ScrollView;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->addApplicationGridView(Landroid/content/Intent;)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->addRemoteShareGridView(Landroid/content/Intent;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isEasySingUpIsCertificated()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->addRemoteShareRecentHistoryDefaultGridView(Landroid/content/Intent;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initRemoteShareRecentHistoryDefaultList()V

    invoke-direct {p0, v5}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistoryDefault(I)V

    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistory(I)V

    :goto_0
    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShare(I)V

    const v1, 0x102049a

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x1020496

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x1020498

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

    if-nez v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->addRemoteShareRecentHistoryGridView(Landroid/content/Intent;)V

    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private checkNearbyDeviceWithRecents(Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)Z
    .locals 9
    .param p1, "deviceInfo"    # Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    .prologue
    const/4 v6, 0x0

    if-eqz p1, :cond_0

    iget-object v7, p1, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->number:Ljava/lang/CharSequence;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v7, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    if-ge v1, v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemPhoneNum:[Ljava/lang/String;

    aget-object v4, v7, v1

    .local v4, "recentPhoneNum":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .local v5, "value":Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "phoneNumbers":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    array-length v7, v3

    if-ge v2, v7, :cond_3

    iget-object v7, p1, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->number:Ljava/lang/CharSequence;

    aget-object v8, v3, v2

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v6, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Matched phoneNumber is  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->number:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;

    .local v0, "data":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    iput-object p1, v0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->deviceInfo:Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    const/4 v6, 0x1

    goto :goto_0

    .end local v0    # "data":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "j":I
    .end local v3    # "phoneNumbers":[Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private checkProductSupport()V
    .locals 3

    .prologue
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "zero"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ResolverActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Build.PRODUCT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Zero concept enable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsSupportNewFeature:Z

    :cond_0
    return-void
.end method

.method private checkThemeType(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .local v1, "theme":I
    :try_start_0
    const-string v2, "theme"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ResolverActivity"

    const-string v3, "checkedItemPosition is invalid position"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "ResolverActivity"

    const-string v3, " intent.getIntExtra(THEME_CHOOSER, TYPE_NONE), OutOfMemoryError"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :pswitch_0
    const-string v2, "black"

    const-string v3, "ro.build.scafe.cream"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    goto :goto_1

    :cond_0
    iput-boolean v5, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    goto :goto_1

    :pswitch_1
    iput-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    goto :goto_1

    :pswitch_2
    iput-boolean v5, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private clearRemoteShareRecentHistoryList(Z)V
    .locals 1
    .param p1, "bClearAll"    # Z

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->access$3200(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->access$3200(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mListupCompleted:Z

    :cond_0
    return-void
.end method

.method private deviceItemClick(Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)V
    .locals 10
    .param p1, "deviceInfo"    # Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    .prologue
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mOrigIntent:Landroid/content/Intent;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mOrigIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v7, "ResolverActivity"

    const-string v8, "deviceItemClick: info is null, finish "

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mOrigIntent:Landroid/content/Intent;

    .local v1, "intent":Landroid/content/Intent;
    const-string v7, "ResolverActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deviceItemClick: deviceName= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceName:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " deviceId= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceId:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " netType= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->netType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mime= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "ResolverActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deviceItemClick: uri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_2
    const-string v7, "ResolverActivity"

    const-string v8, "deviceItemClick: uris = null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity;->mConnector:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    iget-object v7, p1, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceId:Ljava/lang/CharSequence;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7, v6}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->sendFiles(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .end local v3    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.SEND"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .restart local v3    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .restart local v6    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .local v2, "stream":Landroid/net/Uri;
    if-eqz v2, :cond_6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .restart local v5    # "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "ResolverActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deviceItemClick:stream = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_6
    const-string v7, "android.intent.extra.TEXT"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .local v4, "text":Ljava/lang/CharSequence;
    if-eqz v4, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "text://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .restart local v5    # "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "ResolverActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deviceItemClick:text = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_7
    const-string v7, "ResolverActivity"

    const-string v8, "deviceItemClick: extra empty!!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "text":Ljava/lang/CharSequence;
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity;->mConnector:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    iget-object v7, p1, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceId:Ljava/lang/CharSequence;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7, v6}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->sendFiles(Ljava/lang/String;Ljava/util/ArrayList;)Z

    goto/16 :goto_2

    .end local v2    # "stream":Landroid/net/Uri;
    .end local v3    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_9
    const-string v7, "ResolverActivity"

    const-string v8, "deviceItemClick: Action is wrong!!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private getDevType(I)I
    .locals 1
    .param p1, "deviceType"    # I

    .prologue
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDeviceInfo(I)Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;
    .locals 2
    .param p1, "position"    # I

    .prologue
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;

    .local v0, "data":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->deviceInfo:Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    return-object v1
.end method

.method private getNetType(I)I
    .locals 1
    .param p1, "netType"    # I

    .prologue
    and-int/lit8 v0, p1, 0x4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasManagedProfile()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-string v6, "user"

    invoke-virtual {p0, v6}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .local v4, "userManager":Landroid/os/UserManager;
    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private initRemoteShareRecentHistoryDefaultList()V
    .locals 6

    .prologue
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    if-nez v4, :cond_0

    const-string v4, "ResolverActivity"

    const-string v5, "initRemoteShareRecentHistoryDefaultList : mRemoteShareRecentHistoryDefaultListAdapter is null "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->mRemoteShareRecentHistoryDefaultList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->access$3100(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->mRemoteShareRecentHistoryDefaultList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->access$3100(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultIndex:I

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ExpandableHeightGridView;->setNumColumns(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10407c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "recentHistoryDefaultDisplayLabel":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x108053f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "recentHistoryDefaultDisplayIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10407c8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, "recentHistoryDefaultIconDisplayLabel":Ljava/lang/CharSequence;
    new-instance v3, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListInfo;

    invoke-direct {v3, p0, v1, v0, v2}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .local v3, "recentHistoryDefaultItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListInfo;
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->mRemoteShareRecentHistoryDefaultList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->access$3100(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultIndex:I

    invoke-interface {v4, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultIndex:I

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private initRemoteShareRecentHistoryList()V
    .locals 22

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    const-string v18, "ResolverActivity"

    const-string v19, "initRemoteShareRecentHistoryList : mRemoteShareRecentHistoryListAdapter is null "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->access$3200(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity;->clearRemoteShareRecentHistoryList(Z)V

    :cond_1
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x10407c8

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .local v15, "remoteShareDisplayLabel":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x108053f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .local v14, "remoteShareDisplayIcon":Landroid/graphics/drawable/Drawable;
    new-instance v16, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v15, v14, v2}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .local v16, "remoteShareItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->access$3200(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    const/16 v17, 0x0

    .local v17, "tempContactsIndex":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    const/4 v11, 0x0

    .local v11, "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    const/4 v12, 0x0

    .local v12, "recentHistoryDisplayLabel2":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemContactsCountInGroup:[I

    move-object/from16 v18, v0

    aget v18, v18, v17

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListName:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    check-cast v11, Ljava/lang/CharSequence;

    .restart local v11    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    const v18, 0x10407c9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "groupNameOrg":Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemContactsCountInGroup:[I

    move-object/from16 v20, v0

    aget v20, v20, v17

    add-int/lit8 v20, v20, -0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "groupName":Ljava/lang/String;
    move-object v12, v7

    .end local v7    # "groupName":Ljava/lang/String;
    .end local v8    # "groupNameOrg":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemContactsCountInGroup:[I

    move-object/from16 v18, v0

    aget v18, v18, v17

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsId:[J

    move-object/from16 v19, v0

    aget-wide v20, v19, v17

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ResolverActivity;->makeContactsThumbnailImage([BJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .local v10, "recentHistoryDisplayIcon":Landroid/graphics/drawable/Drawable;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemContactsCountInGroup:[I

    move-object/from16 v18, v0

    aget v18, v18, v17

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    new-instance v13, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11, v10, v12}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .local v13, "recentHistoryItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->access$3200(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v1, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .end local v10    # "recentHistoryDisplayIcon":Landroid/graphics/drawable/Drawable;
    .end local v13    # "recentHistoryItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListName:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    check-cast v11, Ljava/lang/CharSequence;

    .restart local v11    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    goto/16 :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsId:[J

    move-object/from16 v19, v0

    aget-wide v20, v19, v17

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ResolverActivity;->makeContactsThumbnailImage([BJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .restart local v10    # "recentHistoryDisplayIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .end local v10    # "recentHistoryDisplayIcon":Landroid/graphics/drawable/Drawable;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    const-wide/16 v20, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ResolverActivity;->makeContactsThumbnailImage([BJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .restart local v10    # "recentHistoryDisplayIcon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    :cond_5
    new-instance v13, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v13, v0, v11, v10, v1}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .restart local v13    # "recentHistoryItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    goto/16 :goto_4

    .end local v10    # "recentHistoryDisplayIcon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    .end local v12    # "recentHistoryDisplayLabel2":Ljava/lang/CharSequence;
    .end local v13    # "recentHistoryItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    .end local v14    # "remoteShareDisplayIcon":Landroid/graphics/drawable/Drawable;
    .end local v15    # "remoteShareDisplayLabel":Ljava/lang/CharSequence;
    .end local v16    # "remoteShareItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    .end local v17    # "tempContactsIndex":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    move/from16 v18, v0

    if-nez v18, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x10407c8

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .restart local v11    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x108053f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .restart local v10    # "recentHistoryDisplayIcon":Landroid/graphics/drawable/Drawable;
    new-instance v13, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v13, v0, v11, v10, v1}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .restart local v13    # "recentHistoryItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->access$3200(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v1, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    .end local v10    # "recentHistoryDisplayIcon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    .end local v13    # "recentHistoryItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ResolverActivity;->mIsSupportNewFeature:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ResolverActivity;->mApplyNearByDevice:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mDeviceList:Ljava/util/List;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mDeviceList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    .local v6, "dr":Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;
    const-string v18, "ResolverActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "initRemoteShareRecentHistoryList: deviceName="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v6, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceName:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " displayIcon="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v6, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/app/ResolverActivity;->checkNearbyDeviceWithRecents(Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)Z

    move-result v18

    if-nez v18, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/app/ResolverActivity;->addDeviceItemToList(Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)V

    goto :goto_5

    .end local v6    # "dr":Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->notifyDataSetChanged()V

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ResolverActivity;->mListupCompleted:Z

    goto/16 :goto_0
.end method

.method private isEasySingUpIsCertificated()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificatedChecked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->isAuth(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificatedChecked:Z

    :cond_0
    sget-boolean v0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    return v0
.end method

.method private isEmergencyOrUPSModeEnabled()Z
    .locals 9

    .prologue
    const/16 v7, 0x200

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    if-nez v6, :cond_1

    const-string v4, "ResolverActivity"

    const-string v6, "isEmergencyOrUPSModeEnabled : mContext is null"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    const/4 v1, 0x0

    .local v1, "isEmergencyMode":Z
    const/4 v3, 0x0

    .local v3, "isUltraPowerSavingMode":Z
    const/4 v2, 0x0

    .local v2, "isEmergencyOrUPSM":Z
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v6

    if-nez v6, :cond_4

    move v1, v4

    :goto_1
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v6

    if-eqz v6, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    const-string v6, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isEmergencyMode :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isUltraPowerSavingMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isEmergencyOrUPSM:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    if-nez v1, :cond_3

    if-eqz v3, :cond_0

    :cond_3
    move v5, v4

    goto :goto_0

    :cond_4
    move v1, v5

    goto :goto_1

    :cond_5
    move v3, v5

    goto :goto_2
.end method

.method private isIntentTypeSupportRemoteShare(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->isIntentUriDataIValidCheck(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isIntentUriDataIValidCheck(Landroid/content/Intent;)Z
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const-string v8, "ResolverActivity"

    const-string v9, "isIntentUriDataNotNullCheck"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v8, "android.intent.action.SEND"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v5, 0x0

    .local v5, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .local v1, "extraBundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .end local v5    # "uri":Landroid/net/Uri;
    check-cast v5, Landroid/net/Uri;

    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_0
    if-nez v5, :cond_2

    const-string v7, "ResolverActivity"

    const-string v8, "isIntentUriDataNotNullCheck: uri == null "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "extraBundle":Landroid/os/Bundle;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return v3

    .restart local v1    # "extraBundle":Landroid/os/Bundle;
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_2
    const-string v8, "com.android.contacts"

    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "ResolverActivity"

    const-string v9, "isIntentUriDataNotNullCheck: com.android.contacts.equals(uri.getEncodedAuthority()) == TRUE "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    goto :goto_0

    .end local v1    # "extraBundle":Landroid/os/Bundle;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_3
    const-string v8, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "uriArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_4

    const-string v7, "ResolverActivity"

    const-string v8, "intent.getParcelableArrayListExtra(Intent.EXTRA_STREAM) returns NULL "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "numOfUri":I
    const/4 v3, 0x0

    .local v3, "isNotNullAtLeastOne":Z
    const-string v7, "ResolverActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isIntentUriDataNotNullCheck, uriArray.size : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_1

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    const-string v8, "com.android.contacts"

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "ResolverActivity"

    const-string v8, "isIntentUriDataNotNullCheck: com.android.contacts.equals(uriArray.get(i).getEncodedAuthority()) == TRUE "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    const-string v7, "ResolverActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "uriArray.get(n) != null , n is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_6
    const-string v7, "ResolverActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "uriArray.get(n) == null , n is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "i":I
    .end local v3    # "isNotNullAtLeastOne":Z
    .end local v4    # "numOfUri":I
    .end local v6    # "uriArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_7
    move v3, v7

    goto/16 :goto_0
.end method

.method private isKnoxModeEnabled()Z
    .locals 3

    .prologue
    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    .local v0, "isKnoxMode":Z
    :goto_0
    return v0

    .end local v0    # "isKnoxMode":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRemoteShareServiceDownloaded()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsRemoteShareServiceDownloadedChecked:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v0

    .local v0, "retVal":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/app/ResolverActivity;->mIsRemoteShareServiceDownloaded:Z

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mIsRemoteShareServiceDownloadedChecked:Z

    .end local v0    # "retVal":I
    :cond_0
    sget-boolean v1, Lcom/android/internal/app/ResolverActivity;->mIsRemoteShareServiceDownloaded:Z

    return v1

    .restart local v0    # "retVal":I
    :cond_1
    sput-boolean v3, Lcom/android/internal/app/ResolverActivity;->mIsRemoteShareServiceDownloaded:Z

    goto :goto_0
.end method

.method private isSupportNearByDevice(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v5, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isSupportSConnect()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    iput-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mApplyNearByDevice:Z

    .end local v2    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.SEND"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .local v0, "stream":Landroid/net/Uri;
    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mApplyNearByDevice:Z

    goto :goto_0

    :cond_1
    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    iput-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mApplyNearByDevice:Z

    goto :goto_0

    .end local v0    # "stream":Landroid/net/Uri;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_2
    iput-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mApplyNearByDevice:Z

    move v3, v4

    goto :goto_0
.end method

.method private isSupportRemoteShare(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isRemoteShareServiceDownloaded()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->isIntentTypeSupportRemoteShare(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isKnoxModeEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isEmergencyOrUPSModeEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    :goto_0
    return v0

    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    move v0, v1

    goto :goto_0
.end method

.method private isSupportSConnect()Z
    .locals 4

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.samsung.android.sconnect"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private makeContactsThumbnailImage([BJZ)Landroid/graphics/drawable/Drawable;
    .locals 20
    .param p1, "contactsThumbnailByteArray"    # [B
    .param p2, "contactId"    # J
    .param p4, "isGroup"    # Z

    .prologue
    if-eqz p1, :cond_0

    const/4 v10, 0x0

    .local v10, "mask":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .local v3, "bm":Landroid/graphics/Bitmap;
    const/4 v14, 0x0

    .local v14, "photo":Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .local v12, "orgThumb":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .local v8, "drawableIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x108053b

    invoke-static/range {v15 .. v16}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v15, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v12, v15, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v15 .. v17}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v4, "canvas":Landroid/graphics/Canvas;
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v14, v15, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .local v13, "paint":Landroid/graphics/Paint;
    new-instance v15, Landroid/graphics/PorterDuffXfermode;

    sget-object v16, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v15 .. v16}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v10, v15, v0, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-direct {v8, v15, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v8    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    move-object v9, v8

    .end local v8    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    .end local v12    # "orgThumb":Landroid/graphics/Bitmap;
    .local v9, "drawableIcon":Ljava/lang/Object;
    :goto_0
    return-object v9

    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v9    # "drawableIcon":Ljava/lang/Object;
    .end local v10    # "mask":Landroid/graphics/Bitmap;
    .end local v13    # "paint":Landroid/graphics/Paint;
    .end local v14    # "photo":Landroid/graphics/Bitmap;
    :cond_0
    if-nez p4, :cond_1

    const-string v15, "ResolverActivity"

    const-string v16, "makeContactsThumbnailImage:  contactsThumbnailByteArray == null and isGroup==false, show default image"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    .restart local v10    # "mask":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .restart local v3    # "bm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1080542

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .local v7, "defaultPhotoDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .local v6, "defaultPhoto":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .restart local v8    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x0

    .restart local v14    # "photo":Landroid/graphics/Bitmap;
    const/4 v11, 0x5

    .local v11, "numOfContactsThumbnailBgColor":I
    int-to-long v0, v11

    move-wide/from16 v16, v0

    rem-long v16, p2, v16

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v5, v0

    .local v5, "contactsThumbnailIndex":I
    const/4 v2, 0x0

    .local v2, "bgColorOfContactsThumbnail":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x108053b

    invoke-static/range {v15 .. v16}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v6, v15, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v15 .. v17}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    packed-switch v5, :pswitch_data_0

    :goto_1
    invoke-virtual {v4, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v14, v15, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .restart local v13    # "paint":Landroid/graphics/Paint;
    new-instance v15, Landroid/graphics/PorterDuffXfermode;

    sget-object v16, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v15 .. v16}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v10, v15, v0, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-direct {v8, v15, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v8    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    move-object v9, v8

    .restart local v9    # "drawableIcon":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v9    # "drawableIcon":Ljava/lang/Object;
    .end local v13    # "paint":Landroid/graphics/Paint;
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1060126

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_1

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1060127

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_1

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1060128

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_1

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1060129

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_1

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x106012a

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_1

    .end local v2    # "bgColorOfContactsThumbnail":I
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "contactsThumbnailIndex":I
    .end local v6    # "defaultPhoto":Landroid/graphics/Bitmap;
    .end local v7    # "defaultPhotoDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v8    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    .end local v10    # "mask":Landroid/graphics/Bitmap;
    .end local v11    # "numOfContactsThumbnailBgColor":I
    .end local v14    # "photo":Landroid/graphics/Bitmap;
    :cond_1
    const-string v15, "ResolverActivity"

    const-string v16, "makeContactsThumbnailImage:  contactsThumbnailByteArray == null and isGroup==true, show group image"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    .restart local v10    # "mask":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .restart local v3    # "bm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1080541

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .restart local v7    # "defaultPhotoDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .restart local v6    # "defaultPhoto":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .restart local v8    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x0

    .restart local v14    # "photo":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x108053b

    invoke-static/range {v15 .. v16}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v6, v15, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v15 .. v17}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v14, v15, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .restart local v13    # "paint":Landroid/graphics/Paint;
    new-instance v15, Landroid/graphics/PorterDuffXfermode;

    sget-object v16, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v15 .. v16}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v10, v15, v0, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-direct {v8, v15, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v8    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    move-object v9, v8

    .restart local v9    # "drawableIcon":Ljava/lang/Object;
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private registerRecentContactsReceiver()V
    .locals 2

    .prologue
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsRecentContactsReceiverRegistered:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.coreapps.rshare.responserecentgroupcontacts"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ResolverActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsRecentContactsReceiverRegistered:Z

    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private sendRequesRecentContactsHistoryList()Z
    .locals 2

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.coreapps.rshare.requestrecentgroupcontacts"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->registerRecentContactsReceiver()V

    const/4 v1, 0x1

    return v1
.end method

.method private setAlwaysButtonEnabled(ZIZ)V
    .locals 4
    .param p1, "hasValidSelection"    # Z
    .param p2, "checkedPos"    # I
    .param p3, "filtered"    # Z

    .prologue
    const/4 v0, 0x0

    .local v0, "enabled":Z
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget v2, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private setSubtitleBackground(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "text"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    if-eqz v0, :cond_0

    const v0, 0x1080ad4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_0
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void

    :cond_0
    const v0, 0x1080ad3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setSubtitleBackgroundNoSpace(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "text"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    if-eqz v0, :cond_0

    const v0, 0x1080ad6

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_0
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void

    :cond_0
    const v0, 0x1080ad5

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setSubtitleColor(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "text"    # Landroid/widget/TextView;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060124

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setVisibilityGridRemoteShare(I)V
    .locals 1
    .param p1, "iVisible"    # I

    .prologue
    const v0, 0x1020494

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x1020495

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setVisibilityGridRemoteShareRecentHistory(I)V
    .locals 1
    .param p1, "iVisible"    # I

    .prologue
    const v0, 0x1020499

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setVisibilityGridRemoteShareRecentHistoryDefault(I)V
    .locals 1
    .param p1, "iVisible"    # I

    .prologue
    const v0, 0x1020497

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z
    .locals 6
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {p0, v3}, Lcom/android/internal/app/ResolverActivity;->versionNumberAtLeastL(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private versionNumberAtLeastL(I)Z
    .locals 1
    .param p1, "versionNumber"    # I

    .prologue
    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method dismiss()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :cond_0
    return-void
.end method

.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    :try_start_0
    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "result":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .end local v1    # "result":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getReplacementIntent(Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .prologue
    return-object p2
.end method

.method protected getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "defaultTitleRes"    # I

    .prologue
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v2, :cond_0

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .local v1, "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v0

    .local v0, "named":Z
    sget-object v2, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    if-ne v1, v2, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    .end local v0    # "named":Z
    .end local v1    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :cond_0
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v1

    goto :goto_0

    .restart local v0    # "named":Z
    .restart local v1    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :cond_1
    if-eqz v0, :cond_2

    iget v2, v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->namedTitleRes:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/ResolverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget v2, v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    .local v2, "iconRes":I
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iconRes":I
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ResolverActivity"

    const-string v4, "Couldn\'t find resources for package"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .local v0, "id":I
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v1

    move v2, v1

    :goto_0
    const v1, 0x102041b

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->dismiss()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredPosition()I

    move-result v1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .local v8, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v7, :cond_0

    const-string v0, "android.intent.category.HOME"

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v7, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSafeForwardingMode(Z)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 25
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "defaultTitleRes"    # I
    .param p5, "initialIntents"    # [Landroid/content/Intent;
    .param p7, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "I[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p6, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const v2, 0x103048f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLaunchedFromPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    const-string v2, "usagestats"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mUsm:Landroid/app/usage/UsageStatsManager;

    const-string v2, "keyguard"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mKgm:Landroid/app/KeyguardManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x48190800

    sub-long v22, v2, v4

    .local v22, "sinceTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mUsm:Landroid/app/usage/UsageStatsManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mStats:Ljava/util/Map;

    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sinceTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e006e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    new-instance v19, Landroid/util/TypedValue;

    invoke-direct/range {v19 .. v19}, Landroid/util/TypedValue;-><init>()V

    .local v19, "outValue":Landroid/util/TypedValue;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    const/16 v21, 0x0

    .local v21, "theme":I
    :try_start_2
    const-string v2, "theme"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    move-result v21

    :goto_2
    packed-switch v21, :pswitch_data_0

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    const-string v2, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager;

    .local v11, "am":Landroid/app/ActivityManager;
    invoke-virtual {v11}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    invoke-virtual {v11}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mIconSize:I

    new-instance v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-eqz v2, :cond_3

    const v18, 0x1090132

    .local v18, "layoutId":I
    :goto_4
    const/16 p7, 0x0

    :goto_5
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    .local v13, "count":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-ltz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :cond_1
    :goto_6
    return-void

    .end local v11    # "am":Landroid/app/ActivityManager;
    .end local v13    # "count":I
    .end local v18    # "layoutId":I
    .end local v19    # "outValue":Landroid/util/TypedValue;
    .end local v21    # "theme":I
    .end local v22    # "sinceTime":J
    :catch_0
    move-exception v14

    .local v14, "e":Landroid/os/RemoteException;
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    goto/16 :goto_0

    .end local v14    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v14

    .restart local v14    # "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    const-string v2, "ResolverActivity"

    const-string v3, "mLaunchedFromPackage=null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v19    # "outValue":Landroid/util/TypedValue;
    .restart local v21    # "theme":I
    .restart local v22    # "sinceTime":J
    :catch_2
    move-exception v14

    .local v14, "e":Ljava/lang/Exception;
    const-string v2, "ResolverActivity"

    const-string v3, "checkedItemPosition is invalid position"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v14    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v14

    .local v14, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "ResolverActivity"

    const-string v3, " intent.getIntExtra(THEME_CHOOSER, TYPE_NONE), OutOfMemoryError"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v14    # "e":Ljava/lang/OutOfMemoryError;
    :pswitch_0
    const-string v2, "black"

    const-string v3, "ro.build.scafe.cream"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x103048f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    goto/16 :goto_3

    :cond_2
    const v2, 0x103048f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    goto/16 :goto_3

    :pswitch_1
    const v2, 0x103048f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    goto/16 :goto_3

    :pswitch_2
    const v2, 0x103048f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    goto/16 :goto_3

    .restart local v11    # "am":Landroid/app/ActivityManager;
    :cond_3
    const v18, 0x10900c3

    .restart local v18    # "layoutId":I
    goto/16 :goto_4

    .end local v18    # "layoutId":I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-eqz v2, :cond_5

    const v18, 0x1090131

    .restart local v18    # "layoutId":I
    goto/16 :goto_5

    .end local v18    # "layoutId":I
    :cond_5
    const v18, 0x10900c2

    .restart local v18    # "layoutId":I
    goto/16 :goto_5

    .restart local v13    # "count":I
    :cond_6
    const/4 v2, 0x1

    if-le v13, v2, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->checkProductSupport()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity;->isSupportRemoteShare(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->isEasySingUpIsCertificated()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->sendRequesRecentContactsHistoryList()Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsSupportNewFeature:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity;->isSupportNearByDevice(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mStatusListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;-><init>(Landroid/content/Context;Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mConnector:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mOrigIntent:Landroid/content/Intent;

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity;->applyRemoteShareResolver(Landroid/content/Intent;)V

    goto/16 :goto_6

    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    const v2, 0x102041d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    new-instance v3, Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    if-eqz p7, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setChoiceMode(I)V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->resizeGrid()V

    :goto_7
    const v2, 0x102033f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/internal/widget/ResolverDrawerLayout;

    .local v20, "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    if-eqz v20, :cond_a

    new-instance v2, Lcom/android/internal/app/ResolverActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/app/ResolverActivity$7;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnClickOutsideListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    if-nez p3, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/app/ResolverActivity;->getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p3

    :cond_b
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const v2, 0x1020016

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .local v24, "titleView":Landroid/widget/TextView;
    if-eqz v24, :cond_c

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->setTitle(Ljava/lang/CharSequence;)V

    .end local v24    # "titleView":Landroid/widget/TextView;
    :cond_d
    const v2, 0x1020006

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .local v17, "iconView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v16

    .local v16, "iconInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    if-eqz v17, :cond_e

    if-eqz v16, :cond_e

    new-instance v2, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v1}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/widget/ImageView;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    const/4 v4, 0x0

    aput-object v16, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_e
    if-nez p7, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_f
    const v2, 0x102034d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .local v12, "buttonLayout":Landroid/view/ViewGroup;
    if-eqz v12, :cond_14

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v2, 0x102041b

    invoke-virtual {v12, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    const v2, 0x102041c

    invoke-virtual {v12, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    .end local v12    # "buttonLayout":Landroid/view/ViewGroup;
    :cond_10
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredPosition()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_6

    .end local v16    # "iconInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .end local v17    # "iconView":Landroid/widget/ImageView;
    .end local v20    # "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    :cond_11
    const/4 v2, 0x1

    if-ne v13, v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->intentForPosition(IZ)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v2}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto/16 :goto_6

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-eqz v2, :cond_13

    const v2, 0x1090131

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    :goto_9
    const v2, 0x1020004

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .local v15, "empty":Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x102041d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setVisibility(I)V

    goto/16 :goto_7

    .end local v15    # "empty":Landroid/widget/TextView;
    :cond_13
    const v2, 0x10900c2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    goto :goto_9

    .restart local v12    # "buttonLayout":Landroid/view/ViewGroup;
    .restart local v16    # "iconInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .restart local v17    # "iconView":Landroid/widget/ImageView;
    .restart local v20    # "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    :cond_14
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    goto/16 :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    return-void
.end method

.method protected onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V
    .locals 30
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "alwaysCheck"    # Z

    .prologue
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-eqz v2, :cond_e

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .local v6, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v13

    .local v13, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v13, :cond_2

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .local v12, "cat":Ljava/lang/String;
    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    .end local v12    # "cat":Ljava/lang/String;
    .end local v18    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v3, 0xfff0000

    and-int v12, v2, v3

    .local v12, "cat":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    .local v15, "data":Landroid/net/Uri;
    const/high16 v2, 0x600000

    if-ne v12, v2, :cond_3

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .local v19, "mimeType":Ljava/lang/String;
    if-eqz v19, :cond_3

    :try_start_0
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v19    # "mimeType":Ljava/lang/String;
    :cond_3
    :goto_1
    if-eqz v15, :cond_a

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    const/high16 v2, 0x600000

    if-ne v12, v2, :cond_4

    const-string v2, "file"

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "content"

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_4
    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v23, :cond_6

    invoke-virtual {v15}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v29

    .local v29, "ssp":Ljava/lang/String;
    :cond_5
    if-eqz v29, :cond_6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/PatternMatcher;

    .local v22, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {v22 .. v22}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .end local v22    # "p":Landroid/os/PatternMatcher;
    .end local v29    # "ssp":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v11, :cond_8

    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/IntentFilter$AuthorityEntry;

    .local v10, "a":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v10, v15}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v2

    if-ltz v2, :cond_7

    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v25

    .local v25, "port":I
    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v3

    if-ltz v25, :cond_c

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v6, v3, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .end local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v25    # "port":I
    :cond_8
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v23

    if-eqz v23, :cond_a

    invoke-virtual {v15}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v24

    .local v24, "path":Ljava/lang/String;
    :cond_9
    if-eqz v24, :cond_a

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/PatternMatcher;

    .restart local v22    # "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {v22 .. v22}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .end local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v22    # "p":Landroid/os/PatternMatcher;
    .end local v23    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v24    # "path":Ljava/lang/String;
    :cond_a
    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "N":I
    new-array v0, v9, [Landroid/content/ComponentName;

    move-object/from16 v28, v0

    .local v28, "set":[Landroid/content/ComponentName;
    const/4 v7, 0x0

    .local v7, "bestMatch":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_3
    move/from16 v0, v17

    if-ge v0, v9, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v0, v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    move-object/from16 v26, v0

    .local v26, "r":Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v28, v17

    move-object/from16 v0, v26

    iget v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    if-le v2, v7, :cond_b

    move-object/from16 v0, v26

    iget v7, v0, Landroid/content/pm/ResolveInfo;->match:I

    :cond_b
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v17    # "i":I
    .end local v26    # "r":Landroid/content/pm/ResolveInfo;
    .end local v28    # "set":[Landroid/content/ComponentName;
    .restart local v19    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v16

    .local v16, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v2, "ResolverActivity"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v6, 0x0

    goto/16 :goto_1

    .end local v16    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v19    # "mimeType":Ljava/lang/String;
    .restart local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v23    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .restart local v25    # "port":I
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_2

    .end local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v23    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v25    # "port":I
    .restart local v7    # "bestMatch":I
    .restart local v9    # "N":I
    .restart local v17    # "i":I
    .restart local v28    # "set":[Landroid/content/ComponentName;
    :cond_d
    if-eqz p3, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v2, v6, v7, v0, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v12    # "cat":I
    .end local v13    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "data":Landroid/net/Uri;
    .end local v17    # "i":I
    .end local v28    # "set":[Landroid/content/ComponentName;
    :cond_e
    :goto_4
    if-eqz p2, :cond_10

    if-eqz p3, :cond_12

    :try_start_1
    new-instance v21, Landroid/content/Intent;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .local v21, "newIntent":Landroid/content/Intent;
    new-instance v14, Landroid/content/ComponentName;

    const-string v2, "android"

    const-string v3, "com.android.internal.app.ResolverGuideActivity"

    invoke-direct {v14, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v14, "cn":Landroid/content/ComponentName;
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.INTENT"

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v2, 0x800000

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v20

    .local v20, "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-nez v20, :cond_f

    new-instance v20, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v20    # "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .restart local v20    # "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_f
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->skipMultiWindowLaunch(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .end local v14    # "cn":Landroid/content/ComponentName;
    .end local v20    # "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v21    # "newIntent":Landroid/content/Intent;
    :cond_10
    :goto_5
    return-void

    .restart local v6    # "filter":Landroid/content/IntentFilter;
    .restart local v7    # "bestMatch":I
    .restart local v9    # "N":I
    .restart local v12    # "cat":I
    .restart local v13    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15    # "data":Landroid/net/Uri;
    .restart local v17    # "i":I
    .restart local v28    # "set":[Landroid/content/ComponentName;
    :cond_11
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v8}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v27

    .local v27, "re":Landroid/os/RemoteException;
    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling setLastChosenActivity\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v12    # "cat":I
    .end local v13    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "data":Landroid/net/Uri;
    .end local v17    # "i":I
    .end local v27    # "re":Landroid/os/RemoteException;
    .end local v28    # "set":[Landroid/content/ComponentName;
    :catch_2
    move-exception v16

    .local v16, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "ResolverActivity"

    const-string v3, "Activity Not Found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v16    # "e":Landroid/content/ActivityNotFoundException;
    :catch_3
    move-exception v16

    .local v16, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    const-string v2, "ResolverActivity"

    const-string v3, "Class Not Found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v16    # "e":Ljava/lang/Exception;
    :cond_12
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_5

    :catch_4
    move-exception v16

    .local v16, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "ResolverActivity"

    const-string v3, "Activity Not Found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v5, p3, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-boolean v5, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v2}, Lcom/android/internal/app/ResolverActivity;->supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10405cd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v5, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    if-eqz v5, :cond_1

    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    if-ne p1, v5, :cond_1

    invoke-direct {p0, p3}, Lcom/android/internal/app/ResolverActivity;->RemoteShareRecentHistoryDefaultGridItemClick(I)V

    goto :goto_0

    :cond_1
    iget-boolean v5, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    if-eqz v5, :cond_2

    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

    if-ne p1, v5, :cond_2

    invoke-direct {p0, p3}, Lcom/android/internal/app/ResolverActivity;->RemoteShareRecentHistoryGridItemClick(I)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v0

    .local v0, "checkedPos":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_5

    move v1, v3

    .local v1, "hasValidSelection":Z
    :goto_1
    iget-boolean v5, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v5, :cond_6

    if-eqz v1, :cond_3

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    if-eq v5, v0, :cond_6

    :cond_3
    invoke-direct {p0, v1, v0, v3}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    :cond_4
    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    goto :goto_0

    .end local v1    # "hasValidSelection":Z
    :cond_5
    move v1, v4

    goto :goto_1

    .restart local v1    # "hasValidSelection":Z
    :cond_6
    invoke-virtual {p0, p3, v4, v3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "ResolverActivity"

    const-string v1, "onPause registered unreceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isRemoteShareServiceDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsRecentContactsReceiverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsRecentContactsReceiverRegistered:Z

    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->isSupportRemoteShare(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    if-ne v0, v3, :cond_3

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->sendRequesRecentContactsHistoryList()Z

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->addRemoteShareRecentHistoryGridView(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShare(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    iput-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->addRemoteShareRecentHistoryDefaultGridView(Landroid/content/Intent;)V

    :cond_4
    invoke-direct {p0, v2}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistoryDefault(I)V

    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistory(I)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mKgm:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v0

    .local v0, "checkedPos":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    move v1, v2

    .local v1, "hasValidSelection":Z
    :goto_0
    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    invoke-direct {p0, v1, v0, v2}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setSelection(I)V

    .end local v0    # "checkedPos":I
    .end local v1    # "hasValidSelection":Z
    :cond_1
    return-void

    .restart local v0    # "checkedPos":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "ResolverActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mItemLongClicked:Z

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isRemoteShareServiceDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsRecentContactsReceiverRegistered:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->registerRecentContactsReceiver()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    iput-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mItemLongClicked:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromUsbSettingsManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .local v0, "fromUsb":Z
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .end local v0    # "fromUsb":Z
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x3

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "personal_mode_enabled"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateModeSettingsValBeforeOnFocusChanged:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateModeSettingsValBeforeOnFocusChangedisChecked:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateModeSettingsValBeforeOnFocusChangedisChecked:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateModeSettingsValBeforeOnFocusChanged:I

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_enabled"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    goto :goto_0
.end method

.method resizeGrid()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    .local v0, "itemCount":I
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    return-void
.end method

.method public safelyStartActivity(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    if-nez v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    const/16 v4, -0x2710

    :try_start_0
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/internal/app/ResolverActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .local v2, "launchedFromPackage":Ljava/lang/String;
    :goto_1
    const-string v3, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to launch as uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", while running in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2    # "launchedFromPackage":Ljava/lang/String;
    :catch_1
    move-exception v1

    .local v1, "e2":Landroid/os/RemoteException;
    const-string v2, "??"

    .restart local v2    # "launchedFromPackage":Ljava/lang/String;
    goto :goto_1
.end method

.method public setSafeForwardingMode(Z)V
    .locals 0
    .param p1, "safeForwarding"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    return-void
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "package"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method startSelected(IZZ)V
    .locals 5
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "filtered"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-gez p1, :cond_1

    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->intentForPosition(IZ)Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/internal/app/ResolverActivity;->onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto :goto_0
.end method
