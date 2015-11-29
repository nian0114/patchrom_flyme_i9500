.class Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IccCardProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccCardProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "iccCardProxyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/IccCardProxy;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/IccCardProxy;Lcom/android/internal/telephony/uicc/IccCardProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/IccCardProxy;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/IccCardProxy$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/IccCardProxy;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    # invokes: Lcom/android/internal/telephony/uicc/IccCardProxy;->prepareStartSimManagement()V
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$100(Lcom/android/internal/telephony/uicc/IccCardProxy;)V

    :cond_0
    return-void
.end method
