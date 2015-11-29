.class public Lcom/android/internal/policy/impl/MzPhoneWindowManager;
.super Ljava/lang/Object;
.source "MzPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MzPhoneWindowManager$MzPolicyHandler;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mVloumeKeyConsumed:Z

.field private final mVolumeUPLongPress:Ljava/lang/Runnable;

.field private pw:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 2
    .param p1, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    const-string v0, "MzPhoneWindowManager"

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVolumeUPLongPress:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    new-instance v0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$MzPolicyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager$MzPolicyHandler;-><init>(Lcom/android/internal/policy/impl/MzPhoneWindowManager;Lcom/android/internal/policy/impl/MzPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public interceptPowerKeyForTelephony(ILandroid/view/KeyEvent;)V
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v5

    .local v5, "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v1, 0x0

    .local v1, "handled":Z
    const/4 v2, 0x0

    .local v2, "hungUp":Z
    if-eqz v5, :cond_1

    iget-object v8, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_1

    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    invoke-static {p1}, Landroid/telephony/MzTelephonyManager;->processKeyEvent(I)I

    move-result v4

    .local v4, "proceResult":I
    and-int/lit8 v8, v4, 0x1

    if-eqz v8, :cond_4

    move v1, v6

    :goto_0
    and-int/lit8 v8, v4, 0x10

    if-eqz v8, :cond_5

    move v2, v6

    .end local v4    # "proceResult":I
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    iget-object v6, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "intercpt_powerkey"

    const/4 v9, -0x3

    invoke-static {v6, v8, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .local v0, "appInterceptPowerkey":I
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    new-instance v3, Landroid/content/Intent;

    const-string v6, "alarmclock.intent.action.POWERKEY_CLICK"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v6, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "intercpt_powerkey"

    invoke-static {v6, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .end local v0    # "appInterceptPowerkey":I
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    if-nez v1, :cond_3

    :cond_3
    return-void

    .restart local v4    # "proceResult":I
    :cond_4
    move v1, v7

    goto :goto_0

    :cond_5
    move v2, v7

    goto :goto_1
.end method

.method public interceptVolumeKeyDownForTelephony(I)V
    .locals 5
    .param p1, "keyCode"    # I

    .prologue
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "InterceptVolumeKeyDownForTelephony    Down "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVolumeUPLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "InterceptVolumeKeyDownForTelephony    mVolumeUPLongPress "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVolumeUPLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "InterceptVolumeKeyDownForTelephony    mVolumeUPLongPress  has"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    goto :goto_0
.end method

.method public interceptVolumeKeyUpForTelephony(IZ)V
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z

    .prologue
    const/4 v3, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v2, "InterceptVolumeKeyUpForTelephony    up"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVolumeUPLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .end local v0    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_1
    const/16 v1, 0x19

    if-ne p1, v1, :cond_0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    goto :goto_0
.end method

.method public preventVolumeKeyForTelephony(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
