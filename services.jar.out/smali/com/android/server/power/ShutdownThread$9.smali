.class Lcom/android/server/power/ShutdownThread$9;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;Landroid/net/wifi/WifiManager;J[Z)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$9;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$9;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    iput-wide p3, p0, Lcom/android/server/power/ShutdownThread$9;->val$endTime:J

    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    const-string v14, "ShutdownThread"

    const-string v15, "!@Start shutdown radios"

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "sys.deviceOffReq"

    const-string v15, "1"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "sys.radio.shutdown"

    const-string v15, "true"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "nfc"

    invoke-static {v14}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v8

    .local v8, "nfc":Landroid/nfc/INfcAdapter;
    const-string v14, "phone"

    invoke-static {v14}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v10

    .local v10, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string v14, "bluetooth_manager"

    invoke-static {v14}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    .local v3, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/ShutdownThread$9;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/ShutdownThread$9;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/ShutdownThread$9;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v14

    const/16 v15, 0xb

    if-ne v14, v15, :cond_b

    :cond_0
    const/4 v2, 0x1

    .local v2, "WiFiOff":Z
    :goto_0
    if-nez v2, :cond_1

    const-string v14, "ShutdownThread"

    const-string v15, "Disabling WiFi..."

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .local v7, "msg":Landroid/os/Message;
    const/16 v14, 0xe6

    iput v14, v7, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/ShutdownThread$9;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14, v7}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .end local v7    # "msg":Landroid/os/Message;
    :cond_1
    const-string v14, "ShutdownThread"

    const-string v15, "Waiting for NFC, Bluetooth, Wi-Fi and Radio..."

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_2

    :try_start_0
    invoke-interface {v8}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    :cond_2
    const/4 v9, 0x1

    .local v9, "nfcOff":Z
    :goto_1
    if-nez v9, :cond_3

    const-string v14, "ShutdownThread"

    const-string v15, "Turning off NFC..."

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    invoke-interface {v8, v14}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    :try_start_1
    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->dumpInFile()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_3
    const/4 v4, 0x1

    .local v4, "bluetoothOff":Z
    if-eqz v10, :cond_5

    :try_start_2
    invoke-interface {v10}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v14

    if-nez v14, :cond_d

    :cond_5
    const/4 v11, 0x1

    .local v11, "radioOff":Z
    :goto_4
    if-nez v11, :cond_6

    const-string v14, "ShutdownThread"

    const-string v15, "Turning off cellular radios..."

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    :goto_5
    const-string v14, "ShutdownThread"

    const-string v15, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/ShutdownThread$9;->val$endTime:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-gez v14, :cond_a

    const-string v14, "ShutdownThread"

    const-string v15, "!@Skip bluetooth turned off for reconnection concept."

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v11, :cond_7

    :try_start_3
    invoke-interface {v10}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v14

    if-nez v14, :cond_e

    const/4 v11, 0x1

    :goto_7
    if-eqz v11, :cond_7

    const-string v14, "ShutdownThread"

    const-string v15, "!@Radio turned off."

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string v14, "DCGS"

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v14, "ril.deviceOffRes"

    const-string v15, "0"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, "repPhoneOff":Ljava/lang/String;
    const-string v14, "ril.deviceOffRes2"

    const-string v15, "0"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "repPhoneOff2":Ljava/lang/String;
    const-string v14, "1"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v14, "1"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v14, "ShutdownThread"

    const-string v15, "!@PhoneOff req resp"

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    .end local v12    # "repPhoneOff":Ljava/lang/String;
    .end local v13    # "repPhoneOff2":Ljava/lang/String;
    :cond_8
    if-nez v9, :cond_9

    :try_start_4
    invoke-interface {v8}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_f

    const/4 v9, 0x1

    :goto_8
    if-eqz v9, :cond_9

    const-string v14, "ShutdownThread"

    const-string v15, "!@NFC turned off."

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eqz v11, :cond_10

    if-eqz v4, :cond_10

    if-eqz v9, :cond_10

    const-string v14, "ShutdownThread"

    const-string v15, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    const/4 v15, 0x0

    const/16 v16, 0x1

    aput-boolean v16, v14, v15

    :cond_a
    return-void

    .end local v2    # "WiFiOff":Z
    .end local v4    # "bluetoothOff":Z
    .end local v9    # "nfcOff":Z
    .end local v11    # "radioOff":Z
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0

    .restart local v2    # "WiFiOff":Z
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v6

    .local v6, "ex":Landroid/os/RemoteException;
    const-string v14, "ShutdownThread"

    const-string v15, "RemoteException during NFC shutdown"

    invoke-static {v14, v15, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v9, 0x1

    .restart local v9    # "nfcOff":Z
    goto/16 :goto_2

    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .restart local v6    # "ex":Landroid/os/RemoteException;
    const-string v14, "ShutdownThread"

    const-string v15, "RemoteException during bluetooth permanent log dump"

    invoke-static {v14, v15, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto/16 :goto_3

    .end local v6    # "ex":Landroid/os/RemoteException;
    .restart local v4    # "bluetoothOff":Z
    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_4

    :catch_2
    move-exception v6

    .restart local v6    # "ex":Landroid/os/RemoteException;
    const-string v14, "ShutdownThread"

    const-string v15, "RemoteException during radio shutdown"

    invoke-static {v14, v15, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v11, 0x1

    .restart local v11    # "radioOff":Z
    goto/16 :goto_5

    .end local v6    # "ex":Landroid/os/RemoteException;
    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_7

    :catch_3
    move-exception v6

    .restart local v6    # "ex":Landroid/os/RemoteException;
    const-string v14, "ShutdownThread"

    const-string v15, "RemoteException during radio shutdown"

    invoke-static {v14, v15, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v11, 0x1

    goto/16 :goto_7

    .end local v6    # "ex":Landroid/os/RemoteException;
    :cond_f
    const/4 v9, 0x0

    goto :goto_8

    :catch_4
    move-exception v6

    .restart local v6    # "ex":Landroid/os/RemoteException;
    const-string v14, "ShutdownThread"

    const-string v15, "RemoteException during NFC shutdown"

    invoke-static {v14, v15, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v9, 0x1

    goto :goto_8

    .end local v6    # "ex":Landroid/os/RemoteException;
    :cond_10
    const-string v14, "ShutdownThread"

    const-string v15, "!@before sleep"

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v14, 0x1f4

    :try_start_5
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_9
    const-string v14, "ShutdownThread"

    const-string v15, "!@after sleep"

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "ShutdownThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "!@[Phone off retry:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/ShutdownThread$9;->val$endTime:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " radio="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " bluetooth="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " nfcOff="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " WiFiOff="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catch_5
    move-exception v5

    .local v5, "e":Ljava/lang/InterruptedException;
    const-string v14, "ShutdownThread"

    const-string v15, "InterruptedException"

    invoke-static {v14, v15, v5}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_9
.end method
