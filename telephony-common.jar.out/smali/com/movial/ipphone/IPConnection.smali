.class public Lcom/movial/ipphone/IPConnection;
.super Lcom/android/internal/telephony/Connection;
.source "IPConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/movial/ipphone/IPConnection$1;,
        Lcom/movial/ipphone/IPConnection$MyHandler;
    }
.end annotation


# static fields
.field static final DTMF_DELAY_MELLIS:I = 0x190

.field static final EVENT_DTMF_DONE:I = 0x1

.field static final EVENT_NEXT_POST_DIAL:I = 0x3

.field static final EVENT_PAUSE_DONE:I = 0x2

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final PAUSE_DELAY_FIRST_MILLIS:I = 0x64

.field static final PAUSE_DELAY_MILLIS:I = 0xbb8

.field static final WAKELOCK_SAFETY_TIMEOUT:I = 0x7530

.field static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field address:Ljava/lang/String;

.field cause:I

.field cnapName:Ljava/lang/String;

.field cnapNamePresentation:I

.field connectTime:J

.field connectTimeReal:J

.field createTime:J

.field dialString:Ljava/lang/String;

.field disconnectTime:J

.field disconnected:Z

.field duration:J

.field h:Landroid/os/Handler;

.field holdingStartTime:J

.field inConf:Z

.field index:I

.field isIncoming:Z

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPreciseCause:I

.field nextPostDialChar:I

.field numberPresentation:I

.field owner:Lcom/movial/ipphone/IPCallTracker;

.field parent:Lcom/movial/ipphone/IPCall;

.field postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field postDialString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/movial/ipphone/IPCallTracker;Lcom/movial/ipphone/SessionCall;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ct"    # Lcom/movial/ipphone/IPCallTracker;
    .param p3, "sessioncall"    # Lcom/movial/ipphone/SessionCall;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 180
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 74
    const-string v0, "IPConnection"

    iput-object v0, p0, Lcom/movial/ipphone/IPConnection;->TAG:Ljava/lang/String;

    .line 75
    iput-boolean v4, p0, Lcom/movial/ipphone/IPConnection;->DBG:Z

    .line 112
    iput v3, p0, Lcom/movial/ipphone/IPConnection;->cause:I

    .line 113
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/movial/ipphone/IPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 114
    iput v4, p0, Lcom/movial/ipphone/IPConnection;->numberPresentation:I

    .line 115
    iput v4, p0, Lcom/movial/ipphone/IPConnection;->cnapNamePresentation:I

    .line 116
    iput v3, p0, Lcom/movial/ipphone/IPConnection;->mPreciseCause:I

    .line 181
    const-string v0, "IPConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MT IPconnection. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/movial/ipphone/SessionCall;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPConnection;->createWakeLock(Landroid/content/Context;)V

    .line 184
    invoke-direct {p0}, Lcom/movial/ipphone/IPConnection;->acquireWakeLock()V

    .line 186
    iput-object p2, p0, Lcom/movial/ipphone/IPConnection;->owner:Lcom/movial/ipphone/IPCallTracker;

    .line 187
    new-instance v0, Lcom/movial/ipphone/IPConnection$MyHandler;

    iget-object v1, p0, Lcom/movial/ipphone/IPConnection;->owner:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/movial/ipphone/IPConnection$MyHandler;-><init>(Lcom/movial/ipphone/IPConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/movial/ipphone/IPConnection;->h:Landroid/os/Handler;

    .line 189
    iget-object v0, p3, Lcom/movial/ipphone/SessionCall;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/movial/ipphone/IPConnection;->address:Ljava/lang/String;

    .line 190
    iget-object v0, p3, Lcom/movial/ipphone/SessionCall;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/movial/ipphone/IPConnection;->cnapName:Ljava/lang/String;

    .line 192
    iput-boolean v4, p0, Lcom/movial/ipphone/IPConnection;->isIncoming:Z

    .line 193
    iput-boolean v3, p0, Lcom/movial/ipphone/IPConnection;->disconnected:Z

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/movial/ipphone/IPConnection;->createTime:J

    .line 196
    iget v0, p3, Lcom/movial/ipphone/SessionCall;->index:I

    iput v0, p0, Lcom/movial/ipphone/IPConnection;->index:I

    .line 197
    iput-boolean v3, p0, Lcom/movial/ipphone/IPConnection;->inConf:Z

    .line 199
    iget v0, p3, Lcom/movial/ipphone/SessionCall;->numberPresentation:I

    iput v0, p0, Lcom/movial/ipphone/IPConnection;->numberPresentation:I

    .line 201
    iget-object v0, p3, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    invoke-direct {p0, v0}, Lcom/movial/ipphone/IPConnection;->parentFromSessionState(Lcom/movial/ipphone/SessionCall$State;)Lcom/movial/ipphone/IPCall;

    move-result-object v0

    iput-object v0, p0, Lcom/movial/ipphone/IPConnection;->parent:Lcom/movial/ipphone/IPCall;

    .line 202
    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->parent:Lcom/movial/ipphone/IPCall;

    iget-object v1, p3, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPConnection;->parseSessionState(Lcom/movial/ipphone/SessionCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/movial/ipphone/IPCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 203
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/movial/ipphone/IPCallTracker;Lcom/movial/ipphone/IPCall;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "ct"    # Lcom/movial/ipphone/IPCallTracker;
    .param p4, "parent"    # Lcom/movial/ipphone/IPCall;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 74
    const-string v0, "IPConnection"

    iput-object v0, p0, Lcom/movial/ipphone/IPConnection;->TAG:Ljava/lang/String;

    .line 75
    iput-boolean v1, p0, Lcom/movial/ipphone/IPConnection;->DBG:Z

    .line 112
    iput v2, p0, Lcom/movial/ipphone/IPConnection;->cause:I

    .line 113
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/movial/ipphone/IPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 114
    iput v1, p0, Lcom/movial/ipphone/IPConnection;->numberPresentation:I

    .line 115
    iput v1, p0, Lcom/movial/ipphone/IPConnection;->cnapNamePresentation:I

    .line 116
    iput v2, p0, Lcom/movial/ipphone/IPConnection;->mPreciseCause:I

    .line 157
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPConnection;->createWakeLock(Landroid/content/Context;)V

    .line 158
    invoke-direct {p0}, Lcom/movial/ipphone/IPConnection;->acquireWakeLock()V

    .line 160
    iput-object p3, p0, Lcom/movial/ipphone/IPConnection;->owner:Lcom/movial/ipphone/IPCallTracker;

    .line 161
    new-instance v0, Lcom/movial/ipphone/IPConnection$MyHandler;

    iget-object v1, p0, Lcom/movial/ipphone/IPConnection;->owner:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/movial/ipphone/IPConnection$MyHandler;-><init>(Lcom/movial/ipphone/IPConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/movial/ipphone/IPConnection;->h:Landroid/os/Handler;

    .line 163
    iput-object p2, p0, Lcom/movial/ipphone/IPConnection;->dialString:Ljava/lang/String;

    .line 164
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/movial/ipphone/IPConnection;->address:Ljava/lang/String;

    .line 165
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/movial/ipphone/IPConnection;->postDialString:Ljava/lang/String;

    .line 167
    iput-boolean v2, p0, Lcom/movial/ipphone/IPConnection;->isIncoming:Z

    .line 168
    iput-boolean v2, p0, Lcom/movial/ipphone/IPConnection;->disconnected:Z

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/movial/ipphone/IPConnection;->createTime:J

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/movial/ipphone/IPConnection;->index:I

    .line 173
    iput-boolean v2, p0, Lcom/movial/ipphone/IPConnection;->inConf:Z

    .line 175
    iput-object p4, p0, Lcom/movial/ipphone/IPConnection;->parent:Lcom/movial/ipphone/IPCall;

    .line 176
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/movial/ipphone/IPCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/movial/ipphone/IPConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPConnection;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/movial/ipphone/IPConnection;->processNextPostDialChar()V

    return-void
.end method

.method static synthetic access$100(Lcom/movial/ipphone/IPConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPConnection;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/movial/ipphone/IPConnection;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 4

    .prologue
    .line 606
    const-string v0, "acquireWakeLock"

    invoke-direct {p0, v0}, Lcom/movial/ipphone/IPConnection;->log(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 608
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 601
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 602
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "IPConnection"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/movial/ipphone/IPConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 603
    return-void
.end method

.method private isConnectingInOrOut()Z
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->parent:Lcom/movial/ipphone/IPCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->parent:Lcom/movial/ipphone/IPCall;

    iget-object v1, p0, Lcom/movial/ipphone/IPConnection;->owner:Lcom/movial/ipphone/IPCallTracker;

    iget-object v1, v1, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->parent:Lcom/movial/ipphone/IPCall;

    iget-object v0, v0, Lcom/movial/ipphone/IPCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->parent:Lcom/movial/ipphone/IPCall;

    iget-object v0, v0, Lcom/movial/ipphone/IPCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 620
    const-string v0, "IPConnection"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return-void
.end method

.method private onConnectedInOrOut()V
    .locals 4

    .prologue
    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/movial/ipphone/IPConnection;->connectTime:J

    .line 290
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/movial/ipphone/IPConnection;->connectTimeReal:J

    .line 291
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/movial/ipphone/IPConnection;->duration:J

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectedInOrOut: connectTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/movial/ipphone/IPConnection;->connectTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/movial/ipphone/IPConnection;->log(Ljava/lang/String;)V

    .line 295
    iget-boolean v0, p0, Lcom/movial/ipphone/IPConnection;->isIncoming:Z

    if-nez v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/movial/ipphone/IPConnection;->processNextPostDialChar()V

    .line 299
    :cond_0
    invoke-direct {p0}, Lcom/movial/ipphone/IPConnection;->releaseWakeLock()V

    .line 300
    return-void
.end method

.method private onStartedHolding()V
    .locals 2

    .prologue
    .line 303
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/movial/ipphone/IPConnection;->holdingStartTime:J

    .line 304
    return-void
.end method

.method private parentFromSessionState(Lcom/movial/ipphone/SessionCall$State;)Lcom/movial/ipphone/IPCall;
    .locals 3
    .param p1, "state"    # Lcom/movial/ipphone/SessionCall$State;

    .prologue
    .line 273
    sget-object v0, Lcom/movial/ipphone/IPConnection$1;->$SwitchMap$com$movial$ipphone$SessionCall$State:[I

    invoke-virtual {p1}, Lcom/movial/ipphone/SessionCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 284
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :pswitch_0
    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->owner:Lcom/movial/ipphone/IPCallTracker;

    iget-object v0, v0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    .line 282
    :goto_0
    return-object v0

    .line 279
    :pswitch_1
    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->owner:Lcom/movial/ipphone/IPCallTracker;

    iget-object v0, v0, Lcom/movial/ipphone/IPCallTracker;->backgroundCall:Lcom/movial/ipphone/IPCall;

    goto :goto_0

    .line 282
    :pswitch_2
    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->owner:Lcom/movial/ipphone/IPCallTracker;

    iget-object v0, v0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    goto :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private processNextPostDialChar()V
    .locals 9

    .prologue
    .line 507
    const/4 v1, 0x0

    .line 510
    .local v1, "c":C
    iget-object v6, p0, Lcom/movial/ipphone/IPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v6, v7, :cond_1

    .line 511
    const-string v6, "processNextPostDialChar: postDialState == CANCELLED"

    invoke-direct {p0, v6}, Lcom/movial/ipphone/IPConnection;->log(Ljava/lang/String;)V

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    iget-object v6, p0, Lcom/movial/ipphone/IPConnection;->postDialString:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/movial/ipphone/IPConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/movial/ipphone/IPConnection;->nextPostDialChar:I

    if-gt v6, v7, :cond_4

    .line 516
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/movial/ipphone/IPConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 517
    const/4 v1, 0x0

    .line 535
    :cond_3
    iget-object v6, p0, Lcom/movial/ipphone/IPConnection;->owner:Lcom/movial/ipphone/IPCallTracker;

    iget-object v6, v6, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    iget-object v4, v6, Lcom/movial/ipphone/IPPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 539
    .local v4, "postDialHandler":Landroid/os/Registrant;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v3

    .local v3, "notifyMessage":Landroid/os/Message;
    if-eqz v3, :cond_0

    .line 542
    iget-object v5, p0, Lcom/movial/ipphone/IPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 543
    .local v5, "state":Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 544
    .local v0, "ar":Landroid/os/AsyncResult;
    iput-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 545
    iput-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 548
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 550
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 521
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "notifyMessage":Landroid/os/Message;
    .end local v4    # "postDialHandler":Landroid/os/Registrant;
    .end local v5    # "state":Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/movial/ipphone/IPConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 523
    iget-object v6, p0, Lcom/movial/ipphone/IPConnection;->postDialString:Ljava/lang/String;

    iget v7, p0, Lcom/movial/ipphone/IPConnection;->nextPostDialChar:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/movial/ipphone/IPConnection;->nextPostDialChar:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 525
    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPConnection;->processPostDialChar(C)Z

    move-result v2

    .line 527
    .local v2, "isValid":Z
    if-nez v2, :cond_3

    .line 529
    iget-object v6, p0, Lcom/movial/ipphone/IPConnection;->h:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 530
    const-string v6, "IPConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processNextPostDialChar: c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isn\'t valid!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processPostDialChar(C)Z
    .locals 6
    .param p1, "c"    # C

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 556
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    iget-object v1, p0, Lcom/movial/ipphone/IPConnection;->owner:Lcom/movial/ipphone/IPCallTracker;

    iget v2, p0, Lcom/movial/ipphone/IPConnection;->index:I

    invoke-virtual {v1, v2, p1}, Lcom/movial/ipphone/IPCallTracker;->sendDtmf(IC)V

    .line 558
    iget-object v1, p0, Lcom/movial/ipphone/IPConnection;->h:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 584
    :goto_0
    return v0

    .line 559
    :cond_0
    const/16 v1, 0x2c

    if-ne p1, v1, :cond_2

    .line 566
    iget v1, p0, Lcom/movial/ipphone/IPConnection;->nextPostDialChar:I

    if-ne v1, v0, :cond_1

    .line 569
    iget-object v1, p0, Lcom/movial/ipphone/IPConnection;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/movial/ipphone/IPConnection;->h:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 575
    :cond_1
    iget-object v1, p0, Lcom/movial/ipphone/IPConnection;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/movial/ipphone/IPConnection;->h:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 577
    :cond_2
    const/16 v1, 0x3b

    if-ne p1, v1, :cond_3

    .line 578
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 579
    :cond_3
    const/16 v1, 0x4e

    if-ne p1, v1, :cond_4

    .line 580
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 582
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 611
    iget-object v1, p0, Lcom/movial/ipphone/IPConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 612
    :try_start_0
    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    const-string v0, "releaseWakeLock"

    invoke-direct {p0, v0}, Lcom/movial/ipphone/IPConnection;->log(Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 616
    :cond_0
    monitor-exit v1

    .line 617
    return-void

    .line 616
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 4
    .param p1, "s"    # Lcom/android/internal/telephony/Connection$PostDialState;

    .prologue
    const/4 v3, 0x4

    .line 493
    iget-object v1, p0, Lcom/movial/ipphone/IPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v1, :cond_1

    .line 495
    invoke-direct {p0}, Lcom/movial/ipphone/IPConnection;->acquireWakeLock()V

    .line 496
    iget-object v1, p0, Lcom/movial/ipphone/IPConnection;->h:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 497
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/movial/ipphone/IPConnection;->h:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 503
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/movial/ipphone/IPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 504
    return-void

    .line 498
    :cond_1
    iget-object v1, p0, Lcom/movial/ipphone/IPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq p1, v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/movial/ipphone/IPConnection;->h:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 501
    invoke-direct {p0}, Lcom/movial/ipphone/IPConnection;->releaseWakeLock()V

    goto :goto_0
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    .prologue
    .line 398
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/movial/ipphone/IPConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 399
    return-void
.end method

.method fakeHoldBeforeDial()V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->parent:Lcom/movial/ipphone/IPCall;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->parent:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v0, p0}, Lcom/movial/ipphone/IPCall;->detach(Lcom/movial/ipphone/IPConnection;)V

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->owner:Lcom/movial/ipphone/IPCallTracker;

    iget-object v0, v0, Lcom/movial/ipphone/IPCallTracker;->backgroundCall:Lcom/movial/ipphone/IPCall;

    iput-object v0, p0, Lcom/movial/ipphone/IPConnection;->parent:Lcom/movial/ipphone/IPCall;

    .line 592
    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->parent:Lcom/movial/ipphone/IPCall;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, p0, v1}, Lcom/movial/ipphone/IPCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 594
    invoke-direct {p0}, Lcom/movial/ipphone/IPConnection;->onStartedHolding()V

    .line 595
    return-void
.end method

.method public fallbackVT()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 630
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "IPConnection"

    const-string v1, "[IPConn] UNEXPECTED; mPartialWakeLock is held when finalizing."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/movial/ipphone/IPConnection;->releaseWakeLock()V

    .line 212
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->parent:Lcom/movial/ipphone/IPCall;

    return-object v0
.end method

.method public getCallFailCause()I
    .locals 1

    .prologue
    .line 625
    const/4 v0, 0x0

    return v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->cnapName:Ljava/lang/String;

    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Lcom/movial/ipphone/IPConnection;->cnapNamePresentation:I

    return v0
.end method

.method public getConnectTime()J
    .locals 2

    .prologue
    .line 427
    iget-wide v0, p0, Lcom/movial/ipphone/IPConnection;->connectTime:J

    return-wide v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 423
    iget-wide v0, p0, Lcom/movial/ipphone/IPConnection;->createTime:J

    return-wide v0
.end method

.method public getDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->dialString:Ljava/lang/String;

    return-object v0
.end method

.method public getDisconnectCause()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lcom/movial/ipphone/IPConnection;->cause:I

    return v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .prologue
    .line 431
    iget-wide v0, p0, Lcom/movial/ipphone/IPConnection;->disconnectTime:J

    return-wide v0
.end method

.method public getDurationMillis()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 435
    iget-wide v2, p0, Lcom/movial/ipphone/IPConnection;->connectTimeReal:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 440
    :goto_0
    return-wide v0

    .line 437
    :cond_0
    iget-wide v2, p0, Lcom/movial/ipphone/IPConnection;->duration:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 438
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/movial/ipphone/IPConnection;->connectTimeReal:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 440
    :cond_1
    iget-wide v0, p0, Lcom/movial/ipphone/IPConnection;->duration:J

    goto :goto_0
.end method

.method public getHoldDurationMillis()J
    .locals 4

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/movial/ipphone/IPConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 446
    const-wide/16 v0, 0x0

    .line 448
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/movial/ipphone/IPConnection;->holdingStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Lcom/movial/ipphone/IPConnection;->index:I

    return v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Lcom/movial/ipphone/IPConnection;->numberPresentation:I

    return v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    .prologue
    .line 634
    iget v0, p0, Lcom/movial/ipphone/IPConnection;->mPreciseCause:I

    return v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->postDialString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/movial/ipphone/IPConnection;->nextPostDialChar:I

    if-gt v0, v1, :cond_1

    .line 365
    :cond_0
    const-string v0, ""

    .line 367
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->postDialString:Ljava/lang/String;

    iget v1, p0, Lcom/movial/ipphone/IPConnection;->nextPostDialChar:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/movial/ipphone/IPConnection;->disconnected:Z

    if-eqz v0, :cond_0

    .line 463
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    .line 465
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    goto :goto_0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x0

    return-object v0
.end method

.method public hangup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/movial/ipphone/IPConnection;->disconnected:Z

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->owner:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v0, p0}, Lcom/movial/ipphone/IPCallTracker;->hangup(Lcom/movial/ipphone/IPConnection;)V

    .line 349
    return-void

    .line 347
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/movial/ipphone/IPConnection;->isIncoming:Z

    return v0
.end method

.method public isMultiparty()Z
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method onDisconnect(I)Z
    .locals 6
    .param p1, "cause"    # I

    .prologue
    .line 323
    iput p1, p0, Lcom/movial/ipphone/IPConnection;->cause:I

    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "result":Z
    iget-boolean v1, p0, Lcom/movial/ipphone/IPConnection;->disconnected:Z

    if-nez v1, :cond_0

    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/movial/ipphone/IPConnection;->disconnectTime:J

    .line 328
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/movial/ipphone/IPConnection;->connectTimeReal:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/movial/ipphone/IPConnection;->duration:J

    .line 329
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/movial/ipphone/IPConnection;->disconnected:Z

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnect: cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPConnection;->log(Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/movial/ipphone/IPConnection;->owner:Lcom/movial/ipphone/IPCallTracker;

    iget-object v1, v1, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v1, p0}, Lcom/movial/ipphone/IPPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 335
    iget-object v1, p0, Lcom/movial/ipphone/IPConnection;->parent:Lcom/movial/ipphone/IPCall;

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/movial/ipphone/IPConnection;->parent:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1, p0}, Lcom/movial/ipphone/IPCall;->connectionDisconnected(Lcom/movial/ipphone/IPConnection;)Z

    move-result v0

    .line 339
    :cond_0
    invoke-direct {p0}, Lcom/movial/ipphone/IPConnection;->releaseWakeLock()V

    .line 340
    return v0
.end method

.method onHangupLocal()V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x3

    iput v0, p0, Lcom/movial/ipphone/IPConnection;->cause:I

    .line 320
    return-void
.end method

.method parseSessionState(Lcom/movial/ipphone/SessionCall$State;)Lcom/android/internal/telephony/Call$State;
    .locals 3
    .param p1, "state"    # Lcom/movial/ipphone/SessionCall$State;

    .prologue
    .line 307
    sget-object v0, Lcom/movial/ipphone/IPConnection$1;->$SwitchMap$com$movial$ipphone$SessionCall$State:[I

    invoke-virtual {p1}, Lcom/movial/ipphone/SessionCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 314
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    .line 313
    :goto_0
    return-object v0

    .line 309
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 310
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 311
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 312
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 313
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public proceedAfterWaitChar()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IPConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/movial/ipphone/IPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/movial/ipphone/IPConnection;->log(Ljava/lang/String;)V

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/movial/ipphone/IPConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 394
    invoke-direct {p0}, Lcom/movial/ipphone/IPConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 371
    iget-object v1, p0, Lcom/movial/ipphone/IPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_0

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IPConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/movial/ipphone/IPConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPConnection;->log(Ljava/lang/String;)V

    .line 386
    :goto_0
    return-void

    .line 376
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/movial/ipphone/IPConnection;->postDialString:Ljava/lang/String;

    iget v2, p0, Lcom/movial/ipphone/IPConnection;->nextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/movial/ipphone/IPConnection;->postDialString:Ljava/lang/String;

    .line 383
    const/4 v1, 0x0

    iput v1, p0, Lcom/movial/ipphone/IPConnection;->nextPostDialChar:I

    .line 384
    const-string v1, "IPConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proceedAfterWildChar: new postDialString is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/movial/ipphone/IPConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-direct {p0}, Lcom/movial/ipphone/IPConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method public separate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 353
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 474
    iput p1, p0, Lcom/movial/ipphone/IPConnection;->index:I

    .line 475
    return-void
.end method

.method public update(Lcom/movial/ipphone/SessionCall$State;)Z
    .locals 10
    .param p1, "state"    # Lcom/movial/ipphone/SessionCall$State;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 215
    invoke-virtual {p0}, Lcom/movial/ipphone/IPConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_0

    sget-object v8, Lcom/movial/ipphone/SessionCall$State;->DISCONNECTED:Lcom/movial/ipphone/SessionCall$State;

    if-eq p1, v8, :cond_0

    .line 218
    :try_start_0
    invoke-virtual {p0}, Lcom/movial/ipphone/IPConnection;->hangup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return v7

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update HANGUP FAILED. "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/movial/ipphone/IPConnection;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    .line 228
    .local v0, "changed":Z
    invoke-direct {p0}, Lcom/movial/ipphone/IPConnection;->isConnectingInOrOut()Z

    move-result v4

    .line 229
    .local v4, "wasConnectingInOrOut":Z
    invoke-virtual {p0}, Lcom/movial/ipphone/IPConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_4

    move v5, v6

    .line 231
    .local v5, "wasHolding":Z
    :goto_1
    iget-object v3, p0, Lcom/movial/ipphone/IPConnection;->parent:Lcom/movial/ipphone/IPCall;

    .line 232
    .local v3, "oldParent":Lcom/movial/ipphone/IPCall;
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPConnection;->parentFromSessionState(Lcom/movial/ipphone/SessionCall$State;)Lcom/movial/ipphone/IPCall;

    move-result-object v2

    .line 234
    .local v2, "newParent":Lcom/movial/ipphone/IPCall;
    iget-object v8, p0, Lcom/movial/ipphone/IPConnection;->parent:Lcom/movial/ipphone/IPCall;

    if-eq v2, v8, :cond_5

    .line 235
    iget-object v8, p0, Lcom/movial/ipphone/IPConnection;->parent:Lcom/movial/ipphone/IPCall;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/movial/ipphone/IPConnection;->parent:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v8, p0}, Lcom/movial/ipphone/IPCall;->detach(Lcom/movial/ipphone/IPConnection;)V

    .line 236
    :cond_1
    invoke-virtual {p0, p1}, Lcom/movial/ipphone/IPConnection;->parseSessionState(Lcom/movial/ipphone/SessionCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v2, p0, v8}, Lcom/movial/ipphone/IPCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 237
    iput-object v2, p0, Lcom/movial/ipphone/IPConnection;->parent:Lcom/movial/ipphone/IPCall;

    .line 238
    const/4 v0, 0x1

    .line 243
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update: oldParent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", newParent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", hasNewParent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eq v2, v3, :cond_6

    :goto_3
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", wasConnectingInOrOut="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", wasHolding="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isConnectingInOrOut="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/movial/ipphone/IPConnection;->isConnectingInOrOut()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", changed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/movial/ipphone/IPConnection;->log(Ljava/lang/String;)V

    .line 251
    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/movial/ipphone/IPConnection;->isConnectingInOrOut()Z

    move-result v6

    if-nez v6, :cond_2

    .line 252
    invoke-direct {p0}, Lcom/movial/ipphone/IPConnection;->onConnectedInOrOut()V

    .line 255
    :cond_2
    if-eqz v0, :cond_3

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/movial/ipphone/IPConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_3

    .line 256
    invoke-direct {p0}, Lcom/movial/ipphone/IPConnection;->onStartedHolding()V

    :cond_3
    move v7, v0

    .line 259
    goto/16 :goto_0

    .end local v2    # "newParent":Lcom/movial/ipphone/IPCall;
    .end local v3    # "oldParent":Lcom/movial/ipphone/IPCall;
    .end local v5    # "wasHolding":Z
    :cond_4
    move v5, v7

    .line 229
    goto/16 :goto_1

    .line 240
    .restart local v2    # "newParent":Lcom/movial/ipphone/IPCall;
    .restart local v3    # "oldParent":Lcom/movial/ipphone/IPCall;
    .restart local v5    # "wasHolding":Z
    :cond_5
    iget-object v8, p0, Lcom/movial/ipphone/IPConnection;->parent:Lcom/movial/ipphone/IPCall;

    invoke-virtual {p0, p1}, Lcom/movial/ipphone/IPConnection;->parseSessionState(Lcom/movial/ipphone/SessionCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v8, p0, v9}, Lcom/movial/ipphone/IPCall;->update(Lcom/movial/ipphone/IPConnection;Lcom/android/internal/telephony/Call$State;)Z

    move-result v0

    goto/16 :goto_2

    :cond_6
    move v6, v7

    .line 243
    goto :goto_3
.end method

.method updateParent()Z
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/movial/ipphone/IPConnection;->parent:Lcom/movial/ipphone/IPCall;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, p0, v1}, Lcom/movial/ipphone/IPCall;->update(Lcom/movial/ipphone/IPConnection;Lcom/android/internal/telephony/Call$State;)Z

    move-result v0

    return v0
.end method
