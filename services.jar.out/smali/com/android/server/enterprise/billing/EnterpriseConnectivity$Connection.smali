.class Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
.super Lcom/android/internal/util/StateMachine;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;,
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;,
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;,
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;,
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;
    }
.end annotation


# static fields
.field private static final DISABLED:I = 0x0

.field private static final ENABLED:I = 0x1

.field private static final EVENT_APN_AVAILABLE:I = 0x3f0

.field private static final EVENT_APN_UNAVAILABLE:I = 0x3f1

.field private static final EVENT_BASE:I = 0x3e8

.field private static final EVENT_CONNECTED:I = 0x44d

.field private static final EVENT_CONNECTION_ENABLED_CHANGED:I = 0x3ee

.field private static final EVENT_CONNECTIVITY_ACTION:I = 0x3e9

.field private static final EVENT_DATABASE_CHANGED:I = 0x3ea

.field private static final EVENT_DATA_ENABLED_CHANGED:I = 0x3f3

.field private static final EVENT_DEFAULT_NETWORK_CHANGED:I = 0x3f2

.field private static final EVENT_DISCONNECTED:I = 0x44e

.field private static final EVENT_ENABLE_CHANGED:I = 0x3eb

.field private static final EVENT_FALLBACK_CHANGED:I = 0x3ec

.field private static final EVENT_LOCALE_CHANGED:I = 0x3f4

.field private static final EVENT_NOTIFICATION_DISMISSED:I = 0x3f7

.field private static final EVENT_RETRY_CONNECTION:I = 0x3f8

.field private static final EVENT_ROAMING_STATE_CHANGED:I = 0x3ef

.field private static final EVENT_USER_BACKGROUND:I = 0x3f6

.field private static final EVENT_USER_FOREGROUND:I = 0x3f5

.field private static final EVENT_WIFI_OFFLOAD_CHANGED:I = 0x3ed

.field private static final MAX_CONTAINERS:I = 0xa


# instance fields
.field private mApn:Ljava/lang/String;

.field private mApnAvailable:Z

.field private mBlockChain:Z

.field private mConnectedState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

.field private mConnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

.field private mConnectionEnabled:Z

.field private mDataEnabled:Z

.field private mDefRouteEnabled:Z

.field private mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

.field private mDefaultState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

.field private mDisconnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

.field private mEnabled:Z

.field private mFallbackToDefault:Z

.field private mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

.field private mIface:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;

.field private mLookupEnabled:Z

.field private mMarkChain:Z

.field private mMasqEnabled:Z

.field private mNetId:I

.field private mNetworkType:I

.field private mNotifying:Z

.field private mOffloadToWifi:Z

.field private mRejectDefaultEnabled:Z

.field private mRequest:Landroid/net/NetworkRequest;

.field private mRetryCount:I

.field private mRoamingDataAllowed:Z

.field private mState:Landroid/net/NetworkInfo$State;

.field private mUids:Ljava/util/concurrent/ConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserHandles:Ljava/util/List;

.field final synthetic this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 4
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EntConnectivity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUserHandles:Ljava/util/List;

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApnAvailable:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mFallbackToDefault:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mMasqEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mLookupEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefRouteEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRejectDefaultEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNotifying:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mMarkChain:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mBlockChain:Z

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectedState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDisconnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    iput-object p0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mLock:Ljava/lang/Object;

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mLooper:Landroid/os/Looper;
    invoke-static {p1, p3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1102(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Landroid/os/Looper;)Landroid/os/Looper;

    iput-object p2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->connectivityType(Ljava/lang/String;)I
    invoke-static {p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mState:Landroid/net/NetworkInfo$State;

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUids:Ljava/util/concurrent/ConcurrentSkipListSet;

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectedState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDisconnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setInitialState(Lcom/android/internal/util/State;)V

    iput-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRequest:Landroid/net/NetworkRequest;

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->createChains(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->initSettingsAndUids()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->contains(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isOffloadedToMobile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNotifying:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNotifying:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isOffloadedToWifi()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->showNotification()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->eventToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->addBlockChain(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->onConnect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectedState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mFallbackToDefault:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->deleteBlockChain(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOnConnection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isAllowed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setContainersForConnection()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->changeUidRules(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/concurrent/ConcurrentSkipListSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUids:Ljava/util/concurrent/ConcurrentSkipListSet;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getSettings()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getOffloadToWifi()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isDataPossible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getConnectionEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getRoamingDataAllowed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->onDisconnect()V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableDefaultRoute(Z)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableRejectDefault(Z)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableEnterpriseLookup(Z)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDisconnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setDnsForSystemServices(Z)V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method private declared-synchronized addBlockChain(Ljava/lang/String;)V
    .locals 3
    .param p1, "mark"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mBlockChain:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/os/INetworkManagementService;->updateEnterpriseBlockChain(Ljava/lang/String;Z)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mBlockChain:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error addBlockChain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized addMarkChain(Ljava/lang/String;)V
    .locals 4
    .param p1, "mark"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mMarkChain:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetId:I

    const/4 v3, 0x1

    invoke-interface {v1, p1, v2, v3}, Landroid/os/INetworkManagementService;->updateEnterpriseMarkChain(Ljava/lang/String;IZ)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mMarkChain:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error addMarkChain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private addUidEntry(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/Integer;
    .param p2, "apn"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mBufferedWriter:Ljava/io/BufferedWriter;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/io/BufferedWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mBufferedWriter:Ljava/io/BufferedWriter;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/io/BufferedWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mBufferedWriter:Ljava/io/BufferedWriter;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/io/BufferedWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error addUidEntry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private changeUidRules(Ljava/util/Collection;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "uids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    const/4 v13, 0x1

    const/4 v12, 0x0

    new-instance v6, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v6, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>(Ljava/util/Collection;)V

    .local v6, "newUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v10, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>(Ljava/util/Collection;)V

    .local v10, "union":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v11, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUids:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-interface {v10, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v8, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    .local v8, "uidsToAdd":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v9, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v9}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    .local v9, "uidsToDel":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .local v7, "uid":Ljava/lang/Integer;
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUids:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v11, v7}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUids:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v11, v7}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v9, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v7    # "uid":Ljava/lang/Integer;
    :cond_2
    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v11

    if-lez v11, :cond_4

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v11

    new-array v0, v11, [I

    .local v0, "addUids":[I
    const/4 v4, 0x0

    .local v4, "index":I
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .local v2, "i":Ljava/lang/Integer;
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v0, v4

    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_1

    .end local v2    # "i":Ljava/lang/Integer;
    :cond_3
    invoke-direct {p0, v0, v13}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setUidMarkRules([IZ)V

    invoke-direct {p0, v0, v13}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setUidBlockRules([IZ)V

    .end local v0    # "addUids":[I
    .end local v4    # "index":I
    :cond_4
    if-eqz v9, :cond_6

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v11

    if-lez v11, :cond_6

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v11

    new-array v1, v11, [I

    .local v1, "delUids":[I
    const/4 v4, 0x0

    .restart local v4    # "index":I
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .restart local v2    # "i":Ljava/lang/Integer;
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v1, v4

    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_2

    .end local v2    # "i":Ljava/lang/Integer;
    :cond_5
    invoke-direct {p0, v1, v12}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setUidMarkRules([IZ)V

    invoke-direct {p0, v1, v12}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setUidBlockRules([IZ)V

    .end local v1    # "delUids":[I
    .end local v4    # "index":I
    :cond_6
    return-void
.end method

.method private contains(I)Z
    .locals 2
    .param p1, "reqUid"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUids:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized deleteBlockChain(Ljava/lang/String;)V
    .locals 3
    .param p1, "mark"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mBlockChain:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/INetworkManagementService;->updateEnterpriseBlockChain(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mBlockChain:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error deleteBlockChain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized deleteMarkChain(Ljava/lang/String;)V
    .locals 4
    .param p1, "mark"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mMarkChain:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetId:I

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Landroid/os/INetworkManagementService;->updateEnterpriseMarkChain(Ljava/lang/String;IZ)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mMarkChain:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error deleteMarkChain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private enableDefaultRoute(Z)V
    .locals 3
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefRouteEnabled:Z

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isInactive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetId:I

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->setDefaultNetId(I)V

    const-string v0, "added enterprise default route "

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setDnsForSystemServices(Z)V

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefRouteEnabled:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setDnsForSystemServices(Z)V

    iput-boolean v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefRouteEnabled:Z

    goto :goto_0
.end method

.method private enableEnterpriseLookup(Z)V
    .locals 3
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mLookupEnabled:Z

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding enterprise lookup - ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->addEnterpriseLookup(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mLookupEnabled:Z

    :cond_0
    return-void

    :cond_1
    const-string v0, "error adding enterprise lookup: interface is null"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing enterprise lookup - ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->removeEnterpriseLookup(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "error removing enterprise lookup: interface is null"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableEnterpriseMasq(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mMasqEnabled:Z

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding enterprise masq - ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->addEnterpriseMasq(Ljava/lang/String;)V

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mMasqEnabled:Z

    :cond_0
    return-void

    :cond_1
    const-string v0, "error adding enterprise masq: interface is null"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing enterprise masq - ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->removeEnterpriseMasq(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "error removing enterprise masq: interface is null"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableRejectDefault(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRejectDefaultEnabled:Z

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->addRejectDefault(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "added reject default "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRejectDefaultEnabled:Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->removeRejectDefault(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removed reject default "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private eventToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .prologue
    sparse-switch p1, :sswitch_data_0

    const-string v0, "UNKNOWN EVENT"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "EVENT_CONNECTIVITY_ACTION"

    goto :goto_0

    :sswitch_1
    const-string v0, "EVENT_DATA_ENABLED_CHANGED"

    goto :goto_0

    :sswitch_2
    const-string v0, "EVENT_ENABLE_CHANGED"

    goto :goto_0

    :sswitch_3
    const-string v0, "EVENT_DATABASE_CHANGED"

    goto :goto_0

    :sswitch_4
    const-string v0, "EVENT_CONNECTION_ENABLED_CHANGED"

    goto :goto_0

    :sswitch_5
    const-string v0, "EVENT_WIFI_OFFLOAD_CHANGED"

    goto :goto_0

    :sswitch_6
    const-string v0, "EVENT_FALLBACK_CHANGED"

    goto :goto_0

    :sswitch_7
    const-string v0, "EVENT_ROAMING_STATE_CHANGED"

    goto :goto_0

    :sswitch_8
    const-string v0, "EVENT_LOCALE_CHANGED"

    goto :goto_0

    :sswitch_9
    const-string v0, "EVENT_NOTIFICATION_DISMISSED"

    goto :goto_0

    :sswitch_a
    const-string v0, "EVENT_DEFAULT_NETWORK_CHANGED"

    goto :goto_0

    :sswitch_b
    const-string v0, "EVENT_APN_AVAILABLE"

    goto :goto_0

    :sswitch_c
    const-string v0, "EVENT_APN_UNAVAILABLE"

    goto :goto_0

    :sswitch_d
    const-string v0, "EVENT_USER_FOREGROUND"

    goto :goto_0

    :sswitch_e
    const-string v0, "EVENT_USER_BACKGROUND"

    goto :goto_0

    :sswitch_f
    const-string v0, "EVENT_RETRY_CONNECTION"

    goto :goto_0

    :sswitch_10
    const-string v0, "EVENT_CONNECTED"

    goto :goto_0

    :sswitch_11
    const-string v0, "EVENT_DISCONNECTED"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_3
        0x3eb -> :sswitch_2
        0x3ec -> :sswitch_6
        0x3ed -> :sswitch_5
        0x3ee -> :sswitch_4
        0x3ef -> :sswitch_7
        0x3f0 -> :sswitch_b
        0x3f1 -> :sswitch_c
        0x3f2 -> :sswitch_a
        0x3f3 -> :sswitch_1
        0x3f4 -> :sswitch_8
        0x3f5 -> :sswitch_d
        0x3f6 -> :sswitch_e
        0x3f7 -> :sswitch_9
        0x3f8 -> :sswitch_f
        0x44d -> :sswitch_10
        0x44e -> :sswitch_11
    .end sparse-switch
.end method

.method private getConnectionEnabled()Z
    .locals 2

    .prologue
    const-string v0, "getConnectionEnabled"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProvider:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProvider:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->isTurnedOn(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private getDataEnabled()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    return v0
.end method

.method private getEnabled()Z
    .locals 2

    .prologue
    const-string v0, "getEnabled"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProvider:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProvider:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->isSplitBillingEnabled(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private getFallbackToDefault()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method private getOffloadToWifi()Z
    .locals 2

    .prologue
    const-string v0, "getOffloadToWifi"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProvider:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProvider:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->isWifiFallbackAllowed(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private getRoamingDataAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    iget-object v1, v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProvider:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProvider:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->isRoamingAllowed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSettings()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setContainersForConnection()V

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getConnectionEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getFallbackToDefault()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mFallbackToDefault:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getOffloadToWifi()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getRoamingDataAllowed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z

    return-void
.end method

.method private getSystemServices()[I
    .locals 1

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f5
        0x3fb
    .end array-data
.end method

.method private getUidsForApn(Ljava/lang/String;Z)Ljava/util/Collection;
    .locals 12
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "writeToFile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .local v6, "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "uidApnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProvider:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProvider:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->getUidApnTypeMapping()Ljava/util/Map;

    move-result-object v5

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getUidsForApn apn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", writeToFile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/system/uidapn"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mFile:Ljava/io/File;
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1702(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Ljava/io/File;)Ljava/io/File;

    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/FileWriter;

    iget-object v10, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mFile:Ljava/io/File;
    invoke-static {v10}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/io/File;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mBufferedWriter:Ljava/io/BufferedWriter;
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1602(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Ljava/io/BufferedWriter;)Ljava/io/BufferedWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .local v4, "uid":Ljava/lang/Integer;
    if-eqz p2, :cond_4

    invoke-direct {p0, v4, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->addUidEntry(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "uid":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error: getUidsForApn "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    if-eqz p2, :cond_6

    :try_start_1
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mBufferedWriter:Ljava/io/BufferedWriter;
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/io/BufferedWriter;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setReadable result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mFile:Ljava/io/File;
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/io/File;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_2
    return-object v6

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error: writeToFile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private initSettingsAndUids()V
    .locals 2

    .prologue
    const-string v1, "initSettingsAndUids"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getSettings()V

    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mState:Landroid/net/NetworkInfo$State;

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setContainersForConnection()V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUids:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->clear()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getUidsFromDb(Z)Ljava/util/Collection;

    move-result-object v0

    .local v0, "newUids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->changeUidRules(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUids:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private isAllowed()Z
    .locals 4

    .prologue
    iget-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isWifiActive()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    const/4 v0, 0x1

    .local v0, "allowed":Z
    :goto_0
    if-nez v0, :cond_3

    const-string v1, ""

    .local v1, "reason":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - mEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isWifiActive()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - mOffloadToWifi "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - isWifiActive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isWifiActive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed due to"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .end local v1    # "reason":Ljava/lang/String;
    :cond_3
    return v0

    .end local v0    # "allowed":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isApnAvailable()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .local v0, "available":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnSvc:Landroid/net/IConnectivityManager;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    invoke-interface {v4, v5}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    move v1, v0

    .end local v0    # "available":Z
    .end local v3    # "info":Landroid/net/NetworkInfo;
    .local v1, "available":I
    :goto_0
    return v1

    .end local v1    # "available":I
    .restart local v0    # "available":Z
    .restart local v3    # "info":Landroid/net/NetworkInfo;
    :cond_0
    move v1, v0

    .restart local v1    # "available":I
    goto :goto_0

    .end local v1    # "available":I
    .end local v3    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error iisApnAvailable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v0

    .restart local v1    # "available":I
    goto :goto_0

    .end local v1    # "available":I
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    move v1, v0

    .restart local v1    # "available":I
    goto :goto_0
.end method

.method private isDataPossible()Z
    .locals 5

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isApnAvailable()Z

    move-result v0

    .local v0, "available":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getDataEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z

    if-eqz v3, :cond_5

    const/4 v1, 0x1

    .local v1, "possible":Z
    :goto_0
    if-nez v1, :cond_4

    const-string v2, ""

    .local v2, "reason":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - mDataEnabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - mConnectionEnabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - mRoamingDataAllowed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-nez v0, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - isApnAvailable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not possible due to"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .end local v2    # "reason":Ljava/lang/String;
    :cond_4
    return v1

    .end local v1    # "possible":Z
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private isNetworkConnected()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .local v0, "connected":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnSvc:Landroid/net/IConnectivityManager;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    invoke-interface {v4, v5}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    move v1, v0

    .end local v0    # "connected":Z
    .end local v3    # "info":Landroid/net/NetworkInfo;
    .local v1, "connected":I
    :goto_0
    return v1

    .end local v1    # "connected":I
    .restart local v0    # "connected":Z
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error isNetworkConnected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v0

    .restart local v1    # "connected":I
    goto :goto_0

    .end local v1    # "connected":I
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    move v1, v0

    .restart local v1    # "connected":I
    goto :goto_0
.end method

.method private isOffloadedToMobile()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mFallbackToDefault:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isMobileActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOffloadedToWifi()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isWifiActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mark(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized onConnect(Ljava/lang/String;)V
    .locals 9
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v6, "onConnect"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enterprise link iface - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableEnterpriseMasq(Z)V

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableEnterpriseLookup(Z)V

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->addMarkChain(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUids:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    move-result v6

    new-array v5, v6, [I

    .local v5, "uids":[I
    const/4 v3, 0x0

    .local v3, "index":I
    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUids:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    move v4, v3

    .end local v3    # "index":I
    .local v4, "index":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .local v1, "i":Ljava/lang/Integer;
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v4

    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_0

    .end local v1    # "i":Ljava/lang/Integer;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->updateEnterpriseSysProp()V

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isConnected()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableDefaultRoute(Z)V

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableRejectDefault(Z)V

    :cond_1
    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->VDBG:Z
    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1300()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is CONNECTED"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "index":I
    .end local v5    # "uids":[I
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error onConnect: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private declared-synchronized onDisconnect()V
    .locals 9

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v6, "onDisconnect"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUids:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    move-result v6

    new-array v5, v6, [I

    .local v5, "uids":[I
    const/4 v3, 0x0

    .local v3, "index":I
    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUids:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    move v4, v3

    .end local v3    # "index":I
    .local v4, "index":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .local v1, "i":Ljava/lang/Integer;
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v4

    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_0

    .end local v1    # "i":Ljava/lang/Integer;
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->deleteMarkChain(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableEnterpriseLookup(Z)V

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableEnterpriseMasq(Z)V

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableDefaultRoute(Z)V

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableRejectDefault(Z)V

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->updateEnterpriseSysProp()V

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->VDBG:Z
    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1300()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is DISCONNECTED"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "index":I
    .end local v5    # "uids":[I
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error onDisconnect: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private setContainersForConnection()V
    .locals 3

    .prologue
    :try_start_0
    const-string v1, "setContainersForConnection"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProvider:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProvider:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->getContainersForConnection(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setUserHandle(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error setContainersForConnection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDnsForSystemServices(Z)V
    .locals 2
    .param p1, "set"    # Z

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "set"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dns for single handle uids"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getSystemServices()[I

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setUidDnsRules([IZ)V

    return-void

    :cond_0
    const-string v0, "clear"

    goto :goto_0
.end method

.method private setUidBlockRules([IZ)V
    .locals 3
    .param p1, "uids"    # [I
    .param p2, "block"    # Z

    .prologue
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/os/INetworkManagementService;->blockEnterpriseUids([ILjava/lang/String;)V

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_1

    const-string v1, "blocking"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uids "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/os/INetworkManagementService;->unblockEnterpriseUids([ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_2

    const-string v1, "adding"

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " block rules: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v1, "unblocking"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v1, "removing"

    goto :goto_3
.end method

.method private setUidDnsRules([IZ)V
    .locals 3
    .param p1, "uids"    # [I
    .param p2, "set"    # Z

    .prologue
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    const-string v1, "adding"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DNS rules for - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string v1, "removing"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string v1, "adding"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DNS rules: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "removing"

    goto :goto_2
.end method

.method private setUidMarkRules([IZ)V
    .locals 3
    .param p1, "uids"    # [I
    .param p2, "mark"    # Z

    .prologue
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    const-string v1, "adding"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mark rules for - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/os/INetworkManagementService;->markEnterpriseUids([ILjava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string v1, "removing"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/os/INetworkManagementService;->unmarkEnterpriseUids([ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_2

    const-string v1, "adding"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mark rules: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "removing"

    goto :goto_2
.end method

.method private showNotification()V
    .locals 9

    .prologue
    const v5, 0x10407cd

    const/4 v1, 0x0

    .local v1, "deleteIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isNetworkConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    const v2, 0x10800f9

    .local v2, "icon":I
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "msg":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .local v0, "bldr":Landroid/app/Notification$Builder;
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x10407cc

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v4, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v4

    const-string v5, "EntConnectivity"

    iget v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNotifying:Z

    .end local v0    # "bldr":Landroid/app/Notification$Builder;
    .end local v2    # "icon":I
    .end local v3    # "msg":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isOffloadedToWifi()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v4

    const-string v5, "EntConnectivity"

    iget v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isOffloadedToMobile()Z

    move-result v4

    if-eqz v4, :cond_4

    const v2, 0x10800f9

    .restart local v2    # "icon":I
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .end local v2    # "icon":I
    .end local v3    # "msg":Ljava/lang/String;
    :cond_4
    const v2, 0x10800f8

    .restart local v2    # "icon":I
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getRoamingDataAllowed()Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x10407cf

    :goto_2
    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .end local v3    # "msg":Ljava/lang/String;
    :cond_5
    const v4, 0x10407d0

    goto :goto_2

    .end local v2    # "icon":I
    :cond_6
    iget-boolean v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNotifying:Z

    if-eqz v4, :cond_1

    const v2, 0x10800f7

    .restart local v2    # "icon":I
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x10407ce

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "msg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.server.enterprise.billing.notification_dismissed"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x10000000

    invoke-static {v4, v5, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private showToast(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;)V
    .locals 3
    .param p1, "nw"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;

    .prologue
    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->VDBG:Z
    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private declared-synchronized turnOffConnection()Z
    .locals 5

    .prologue
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, "result":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRequest:Landroid/net/NetworkRequest;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnSvc:Landroid/net/IConnectivityManager;
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRequest:Landroid/net/NetworkRequest;

    invoke-interface {v3, v4}, Landroid/net/IConnectivityManager;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRequest:Landroid/net/NetworkRequest;

    const-string v3, "network request released"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mFile:Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "File delete result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mFile:Ljava/io/File;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v1, 0x1

    move v2, v1

    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    monitor-exit p0

    return v2

    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "error turnOffConnection: "

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    .restart local v2    # "result":I
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "result":I
    :catchall_0
    move-exception v3

    move v2, v1

    .restart local v2    # "result":I
    goto :goto_0
.end method

.method private declared-synchronized turnOnConnection()Z
    .locals 9

    .prologue
    monitor-enter p0

    const/4 v7, 0x0

    .local v7, "result":Z
    :try_start_0
    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    .local v1, "netCap":Landroid/net/NetworkCapabilities;
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRequest:Landroid/net/NetworkRequest;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnSvc:Landroid/net/IConnectivityManager;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;

    move-result-object v0

    new-instance v2, Landroid/os/Messenger;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mLooper:Landroid/os/Looper;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const/4 v3, 0x0

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    const/16 v5, 0x1c

    invoke-interface/range {v0 .. v5}, Landroid/net/IConnectivityManager;->requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRequest:Landroid/net/NetworkRequest;

    const-string v0, "network request issued"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 v7, 0x1

    move v8, v7

    .end local v1    # "netCap":Landroid/net/NetworkCapabilities;
    .end local v7    # "result":Z
    .local v8, "result":I
    :goto_1
    monitor-exit p0

    return v8

    .end local v8    # "result":I
    .restart local v1    # "netCap":Landroid/net/NetworkCapabilities;
    .restart local v7    # "result":Z
    :cond_0
    :try_start_1
    const-string v0, "network request already issued"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v1    # "netCap":Landroid/net/NetworkCapabilities;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error turnOnConnection: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v8, v7

    .restart local v8    # "result":I
    goto :goto_1

    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "result":I
    :catchall_0
    move-exception v0

    move v8, v7

    .restart local v8    # "result":I
    goto :goto_1
.end method

.method private updateEnterpriseSysProp()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnSvc:Landroid/net/IConnectivityManager;
    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;

    move-result-object v2

    const/16 v3, 0x1c

    invoke-interface {v2, v3}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v1

    .local v1, "link":Landroid/net/LinkProperties;
    if-nez v1, :cond_0

    const-string v2, "net.enterprise.ent1"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "link":Landroid/net/LinkProperties;
    :goto_0
    return-void

    .restart local v1    # "link":Landroid/net/LinkProperties;
    :cond_0
    const-string v2, "net.enterprise.ent1"

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEnterpriseSysProp: ent1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "link":Landroid/net/LinkProperties;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error updateEnterpriseSysProp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected createChains(Ljava/lang/String;)V
    .locals 3
    .param p1, "mark"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/os/INetworkManagementService;->makeEnterpriseChains(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error createChains: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeChains(Ljava/lang/String;)V

    return-void
.end method

.method public getApn()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectivityType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    return v0
.end method

.method public getUidsFromDb(Z)Ljava/util/Collection;
    .locals 1
    .param p1, "writeToFile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getUidsForApn(Ljava/lang/String;Z)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getUserHandle()Ljava/util/List;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUsers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUserHandles:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUserHandles:Ljava/util/List;

    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectedState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnectionEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z

    return v0
.end method

.method public isDisconnected()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    return v0
.end method

.method public isFallbackToDefault()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mFallbackToDefault:Z

    return v0
.end method

.method public isOffloadToWifi()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    return v0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->VDBG:Z
    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->logd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->VDBG:Z
    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->logv(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized onActiveNetworkChanged(I)V
    .locals 1
    .param p1, "activeNetwork"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->onActiveNetworkChanged(I)V

    const/16 v0, 0x3f2

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onApnAvailableChanged(Z)V
    .locals 1
    .param p1, "available"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApnAvailable:Z

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_1

    const/16 v0, 0x3f0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApnAvailable:Z

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x3f1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    goto :goto_0
.end method

.method public declared-synchronized onNetworkChanged(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;)V
    .locals 4
    .param p1, "nw"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->onNetworkChanged(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3f2

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;->isEnterprise()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$7;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;->getNetworkId()I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connected netid is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connected link is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;->getLink()Landroid/net/LinkProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;->getLink()Landroid/net/LinkProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;->getLink()Landroid/net/LinkProperties;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x44d

    iget v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetId:I

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;->getLink()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(IIILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkWrapper;->getNetworkId()I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnected netid is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    const/16 v0, 0x44e

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected removeChains(Ljava/lang/String;)V
    .locals 3
    .param p1, "mark"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/INetworkManagementService;->makeEnterpriseChains(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error makeEnterpriseChain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$900(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDataEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/16 v1, 0x3f3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUserHandle(Ljava/util/List;)V
    .locals 2
    .param p1, "userHandle"    # Ljava/util/List;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUserHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1000(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUserHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUserHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mState:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
