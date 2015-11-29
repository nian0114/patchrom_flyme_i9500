.class public Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
.super Ljava/lang/Object;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$7;,
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;,
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;,
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;
    }
.end annotation


# static fields
.field private static final ACTION_DATA_STATE:Ljava/lang/String; = "android.intent.action.ANY_DATA_STATE"

.field private static final ACTION_LOCALE_CHANGED:Ljava/lang/String; = "android.intent.action.LOCALE_CHANGED"

.field private static final ACTION_NOTI_DISMISSED:Ljava/lang/String; = "com.android.server.enterprise.billing.notification_dismissed"

.field private static final ACTION_TYPE_APN_UID:Ljava/lang/String; = "com.android.server.enterprise.billing.mapping_modified"

.field private static final ACTION_TYPE_CONNECTION_CHANGED:Ljava/lang/String; = "com.android.server.enterprise.billing.profile_turn_on_status_modified"

.field private static final ACTION_TYPE_ENABLED:Ljava/lang/String; = "com.android.server.enterprise.billing.action_enable_status_modified"

.field private static final ACTION_TYPE_FALLBACK:Ljava/lang/String; = "settings_data_fallback_enabled"

.field private static final ACTION_TYPE_OFFLOAD_TO_WIFI:Ljava/lang/String; = "com.android.server.enterprise.billing.wifi_fallback_modified"

.field private static final ACTION_TYPE_ROAMING_ALLOWED:Ljava/lang/String; = "com.android.server.enterprise.billing.roaming_modified"

.field private static final ACTION_USER_SWITCHED:Ljava/lang/String; = "android.intent.action.USER_SWITCHED"

.field private static final DBG:Z = true

.field private static final EXTRA_APN_TYPE:Ljava/lang/String; = "ent_type"

.field private static final TAG:Ljava/lang/String; = "EntConnectivity"

.field private static final TEST_WITH_SINGLE_CONTAINER:Z = false

.field private static final UID_APN_FILE_PATH:Ljava/lang/String; = "/data/system/uidapn"

.field private static final VDBG:Z


# instance fields
.field private mBufferedWriter:Ljava/io/BufferedWriter;

.field private final mConnSvc:Landroid/net/IConnectivityManager;

.field private mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDataStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mDatabaseChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mEntProvider:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

.field private mFile:Ljava/io/File;

.field private final mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mLooper:Landroid/os/Looper;

.field private final mNMSvc:Landroid/os/INetworkManagementService;

.field private final mNotiDismissedReceiver:Landroid/content/BroadcastReceiver;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->VDBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;Landroid/os/Looper;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nmSvc"    # Landroid/os/INetworkManagementService;
    .param p3, "connSvc"    # Landroid/net/IConnectivityManager;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$2;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNotiDismissedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$3;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$3;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mDataStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$5;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$5;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mDatabaseChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$6;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$6;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mUserChangedReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;

    iput-object p3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnSvc:Landroid/net/IConnectivityManager;

    iput-object p4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mLooper:Landroid/os/Looper;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mLooper:Landroid/os/Looper;

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProvider:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mDatabaseChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.enterprise.billing.mapping_modified"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mDatabaseChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.enterprise.billing.wifi_fallback_modified"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mDatabaseChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.enterprise.billing.profile_turn_on_status_modified"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mDatabaseChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.enterprise.billing.action_enable_status_modified"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mDatabaseChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "settings_data_fallback_enabled"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mDatabaseChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.enterprise.billing.roaming_modified"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mDataStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mUserChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNotiDismissedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.enterprise.billing.notification_dismissed"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
    .param p1, "x1"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->connectivityType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->VDBG:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/io/BufferedWriter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mBufferedWriter:Ljava/io/BufferedWriter;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Ljava/io/BufferedWriter;)Ljava/io/BufferedWriter;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
    .param p1, "x1"    # Ljava/io/BufferedWriter;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mBufferedWriter:Ljava/io/BufferedWriter;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProvider:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnSvc:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V

    return-void
.end method

.method private connectivityType(Ljava/lang/String;)I
    .locals 1
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_1

    const-string v0, "ent1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    :goto_0
    return v0

    :cond_0
    const-string v0, "ent2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1d

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private feature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_1

    const-string v0, "ent1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "enableENT1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ent2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "enableENT2"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ignoreNetworkCallbacks(ILandroid/net/LinkProperties;)Z
    .locals 4
    .param p1, "callbackType"    # I
    .param p2, "link"    # Landroid/net/LinkProperties;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v2

    :pswitch_1
    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    move v2, v1

    goto :goto_0

    :pswitch_2
    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception ignoreNetworkCallbacks: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x80001
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isAnyConnected()Z
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .local v0, "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .end local v0    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isDefaultNetwork(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final slogd(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const-string v0, "EntConnectivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final sloge(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const-string v0, "EntConnectivity"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final slogv(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EntConnectivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getActiveEnterpriseNetworkType(Ljava/lang/String;)I
    .locals 7
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .local v0, "activeType":I
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnSvc:Landroid/net/IConnectivityManager;

    invoke-interface {v5}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .local v4, "info":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .end local v4    # "info":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .local v1, "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getApn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isAllowed()Z
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getConnectivityType()I

    move-result v0

    .end local v0    # "activeType":I
    .end local v1    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    :cond_2
    return v0

    .end local v3    # "i$":Ljava/util/Iterator;
    .restart local v0    # "activeType":I
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error getActiveEnterpriseNetworkType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getEnterpriseNetworkType(II)I
    .locals 3
    .param p1, "uid"    # I
    .param p2, "def"    # I

    .prologue
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .local v0, "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->contains(I)Z
    invoke-static {v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isDisconnected()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isFallbackToDefault()Z

    move-result v2

    if-eqz v2, :cond_1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isOffloadedToMobile()Z
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isOffloadToWifi()Z

    move-result v2

    if-eqz v2, :cond_3

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isOffloadedToWifi()Z
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v2

    if-eqz v2, :cond_3

    .end local v0    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .end local p2    # "def":I
    :cond_2
    :goto_0
    return p2

    .restart local v0    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .restart local p2    # "def":I
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getConnectivityType()I

    move-result p2

    goto :goto_0
.end method

.method public getUidsForApnType(Ljava/lang/String;)[I
    .locals 7
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-object v4

    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .local v0, "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getApn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getUidsFromDb(Z)Ljava/util/Collection;

    move-result-object v5

    .local v5, "uids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v6

    new-array v4, v6, [I

    .local v4, "uidArr":[I
    const/4 v2, 0x0

    .local v2, "index":I
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, "uid":I
    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getUserHandleForConnection(I)Ljava/util/List;
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .local v0, "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getConnectivityType()I

    move-result v3

    if-ne p1, v3, :cond_2

    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getUserHandle()Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public getUsersForNetwork(I)[I
    .locals 6
    .param p1, "networkType"    # I

    .prologue
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .local v0, "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getConnectivityType()I

    move-result v5

    if-ne v5, p1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getUserHandle()Ljava/util/List;

    move-result-object v4

    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [I

    .local v3, "ret":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .end local v1    # "i":I
    .end local v3    # "ret":[I
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    const/4 v3, 0x0

    :cond_2
    return-object v3
.end method

.method public isAnyConnectionAllowed()Z
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .local v0, "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isAllowed()Z
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .end local v0    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAnyConnectionEnabled()Z
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .local v0, "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .end local v0    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEntApnEnabled(I)Z
    .locals 4
    .param p1, "connectionType"    # I

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .local v0, "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getConnectivityType()I

    move-result v3

    if-ne v3, p1, :cond_0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isAllowed()Z
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v3

    if-eqz v3, :cond_1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isDataPossible()Z
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .end local v0    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    :cond_1
    return v2
.end method

.method public onActiveNetworkChanged(I)V
    .locals 3
    .param p1, "activeNetwork"    # I

    .prologue
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .local v0, "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->onActiveNetworkChanged(I)V

    goto :goto_0

    .end local v0    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    :cond_0
    return-void
.end method

.method public onNetworkChanged(Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;ILandroid/net/LinkProperties;I)V
    .locals 10
    .param p1, "ni"    # Landroid/net/NetworkInfo;
    .param p2, "nc"    # Landroid/net/NetworkCapabilities;
    .param p3, "netId"    # I
    .param p4, "lp"    # Landroid/net/LinkProperties;
    .param p5, "notification"    # I

    .prologue
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-direct {p0, p5, p4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->ignoreNetworkCallbacks(ILandroid/net/LinkProperties;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V

    .local v0, "networkWrapper":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .local v7, "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->onNetworkChanged(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v0    # "networkWrapper":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;
    .end local v7    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .end local v9    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception onNetworkChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public systemReady()V
    .locals 6

    .prologue
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v4, "ent1"

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mLooper:Landroid/os/Looper;

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Ljava/lang/String;Landroid/os/Looper;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .local v0, "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->start()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " started"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    :cond_0
    return-void
.end method
