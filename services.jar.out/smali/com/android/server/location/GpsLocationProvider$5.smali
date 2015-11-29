.class Lcom/android/server/location/GpsLocationProvider$5;
.super Landroid/content/BroadcastReceiver;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receive broadcast intent, action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V
    invoke-static {v7, v10}, Lcom/android/server/location/GpsLocationProvider;->access$700(Lcom/android/server/location/GpsLocationProvider;Z)V

    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-virtual {v7, p2}, Lcom/android/server/location/GpsLocationProvider;->extension_mBroadcastReciever(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    .local v1, "bundle":Landroid/os/Bundle;
    const-string v7, "result_mask"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const-string v8, "packet_data"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    const-string v9, "packet_length"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V
    invoke-static {v7, v8, v9}, Lcom/android/server/location/GpsLocationProvider;->access$1900(Lcom/android/server/location/GpsLocationProvider;[BI)V

    :cond_1
    return-void

    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_2
    const-string v7, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->hibernate()V
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider;->access$800(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_0

    :cond_3
    const-string v7, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$900(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/location/GpsLocationProvider;->extension_checkWapPushMsg(Z)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V
    invoke-static {v7, p2}, Lcom/android/server/location/GpsLocationProvider;->access$1000(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v7, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$900(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/location/GpsLocationProvider;->extension_checkWapPushMsg(Z)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V
    invoke-static {v7, p2}, Lcom/android/server/location/GpsLocationProvider;->access$1100(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "noConnectivity"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v5, 0x1

    .local v5, "networkState":I
    :goto_1
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .local v3, "info":Landroid/net/NetworkInfo;
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider;->access$1200(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .local v2, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-virtual {v7, v5, v3}, Lcom/android/server/location/GpsLocationProvider;->updateNetworkState(ILandroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .end local v2    # "connManager":Landroid/net/ConnectivityManager;
    .end local v3    # "info":Landroid/net/NetworkInfo;
    .end local v5    # "networkState":I
    :cond_6
    const/4 v5, 0x2

    .restart local v5    # "networkState":I
    goto :goto_1

    .end local v5    # "networkState":I
    :cond_7
    const-string v7, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->updateLowPowerMode()V
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)V

    goto/16 :goto_0

    :cond_9
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_a
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider;->access$1200(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .local v6, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    .local v4, "mccMnc":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider;->access$1400(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->access$1500(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/Properties;

    move-result-object v9

    # invokes: Lcom/android/server/location/GpsLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V
    invoke-static {v7, p1, v9}, Lcom/android/server/location/GpsLocationProvider;->access$1600(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Context;Ljava/util/Properties;)V

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider;->access$1800(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/internal/location/GpsNetInitiatedHandler;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mSuplEsEnabled:Z
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->access$1700(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setSuplEsEnabled(Z)V

    monitor-exit v8

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method
