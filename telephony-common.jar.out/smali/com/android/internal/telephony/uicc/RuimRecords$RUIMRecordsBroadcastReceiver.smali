.class Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RuimRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RUIMRecordsBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/RuimRecords$1;

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 322
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.samsung.intent.action.Slot1setCardDataInit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v2, "com.samsung.intent.action.Slot1setCardDataInit"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 325
    const-string v1, "gsm.sim.selectnetwork"

    const-string v2, "CDMA"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    # invokes: Lcom/android/internal/telephony/uicc/RuimRecords;->setCardDataInit()V
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    const-string v1, "com.samsung.intent.action.Slot1SwitchCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 328
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 329
    const-string v1, "DCGS"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "DCGGS"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v2, "com.samsung.intent.action.Slot1SwitchCompleted"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    # invokes: Lcom/android/internal/telephony/uicc/RuimRecords;->setCardDataInit()V
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    goto :goto_0

    .line 335
    :cond_3
    const-string v1, "com.samsung.intent.action.Slot1OnCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 337
    const-string v1, "DCGS"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "DCGGS"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v2, "com.samsung.intent.action.Slot1OnCompleted"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    # invokes: Lcom/android/internal/telephony/uicc/RuimRecords;->setCardDataInit()V
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    goto :goto_0
.end method
