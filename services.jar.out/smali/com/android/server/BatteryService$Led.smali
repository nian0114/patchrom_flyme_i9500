.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation


# instance fields
.field private final mBatteryFullARGB:I

.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/lights/Light;

.field private final mBatteryLowARGB:I

.field private final mBatteryMediumARGB:I

.field private mLedStatus:I

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lights"    # Lcom/android/server/lights/LightsManager;

    .prologue
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    return-void
.end method


# virtual methods
.method public updateLightsLocked()V
    .locals 13

    .prologue
    const/16 v12, 0xe

    const/16 v11, 0xd

    const/16 v10, 0xa

    const/16 v9, 0xb

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$2300(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v6

    iget v4, v6, Landroid/os/BatteryProperties;->batteryLevel:I

    .local v4, "level":I
    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$2300(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v6

    iget v5, v6, Landroid/os/BatteryProperties;->batteryStatus:I

    .local v5, "status":I
    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$2300(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v6

    iget v3, v6, Landroid/os/BatteryProperties;->batteryHealth:I

    .local v3, "health":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int v1, v6, v7

    .local v1, "currentMinutes":I
    const/4 v2, 0x0

    .local v2, "dormantModeOn":Z
    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDormantOnOff:Z
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDormantDisableLED:Z
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$900(Lcom/android/server/BatteryService;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDormantAlways:Z
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$1000(Lcom/android/server/BatteryService;)Z

    move-result v6

    if-eqz v6, :cond_3

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Dormant mode is always on"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_0
    :goto_0
    const/4 v6, 0x4

    if-ne v6, v5, :cond_7

    const/4 v6, 0x3

    if-eq v6, v3, :cond_1

    const/4 v6, 0x6

    if-eq v6, v3, :cond_1

    const/4 v6, 0x7

    if-eq v6, v3, :cond_1

    const/16 v6, 0x8

    if-ne v6, v3, :cond_7

    :cond_1
    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-nez v2, :cond_7

    iget v6, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    if-eq v9, v6, :cond_6

    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v6, v8, v9, v8, v8}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    iput v9, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v6

    const-string v7, "turn on LED for not charging"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDormantStartMinutes:I
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$2400(Lcom/android/server/BatteryService;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDormantEndMinutes:I
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$2500(Lcom/android/server/BatteryService;)I

    move-result v7

    if-gt v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDormantStartMinutes:I
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$2400(Lcom/android/server/BatteryService;)I

    move-result v6

    if-gt v6, v1, :cond_4

    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDormantEndMinutes:I
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$2500(Lcom/android/server/BatteryService;)I

    move-result v6

    if-ge v1, v6, :cond_4

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Dormant mode is on"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDormantStartMinutes:I
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$2400(Lcom/android/server/BatteryService;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDormantEndMinutes:I
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$2500(Lcom/android/server/BatteryService;)I

    move-result v7

    if-le v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDormantStartMinutes:I
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$2400(Lcom/android/server/BatteryService;)I

    move-result v6

    if-le v6, v1, :cond_5

    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDormantEndMinutes:I
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$2500(Lcom/android/server/BatteryService;)I

    move-result v6

    if-ge v1, v6, :cond_0

    :cond_5
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Dormant mode is on"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_6
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v6

    const-string v7, "stay LED for not charging"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    const/4 v6, 0x2

    if-ne v6, v5, :cond_9

    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-nez v2, :cond_9

    iget v6, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    if-eq v10, v6, :cond_8

    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v6, v8, v10, v8, v8}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    iput v10, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v6

    const-string v7, "turn on LED for charging"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v6

    const-string v7, "stay LED for charging"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    const/4 v6, 0x5

    if-ne v6, v5, :cond_b

    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v6

    if-eqz v6, :cond_b

    if-nez v2, :cond_b

    iget v6, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    if-eq v12, v6, :cond_a

    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v6, v8, v12, v8, v8}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    iput v12, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v6

    const-string v7, "turn on LED for fully charged"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v6

    const-string v7, "stay LED for fully charged"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$2600(Lcom/android/server/BatteryService;)I

    move-result v6

    if-gt v4, v6, :cond_d

    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Z

    move-result v6

    if-eqz v6, :cond_d

    if-nez v2, :cond_d

    iget v6, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    if-eq v11, v6, :cond_c

    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v6, v8, v11, v8, v8}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    iput v11, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v6

    const-string v7, "turn on LED for low battery"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_c
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v6

    const-string v7, "stay LED for low battery"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_d
    iget v6, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v6}, Lcom/android/server/lights/Light;->turnOff()V

    iput v8, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v6

    const-string v7, "turn off LED"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
