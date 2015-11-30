.class Lcom/sec/android/app/camera/Camera$8;
.super Landroid/content/BroadcastReceiver;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    .prologue
    .line 1558
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1561
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1562
    .local v2, "action":Ljava/lang/String;
    const-string v12, "Camera2"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onReceive ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$2000(Lcom/sec/android/app/camera/Camera;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 1565
    const-string v12, "Camera2"

    const-string v13, "onReceive - camera is destroying"

    invoke-static {v12, v13}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    :cond_0
    :goto_0
    return-void

    .line 1569
    :cond_1
    const-string v12, "com.sec.android.contextaware.HEADSET_PLUG"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1570
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const-string v12, "state"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const/4 v14, 0x1

    if-ne v12, v14, :cond_7

    const/4 v12, 0x1

    :goto_1
    # setter for: Lcom/sec/android/app/camera/Camera;->misConnectHeadSet:Z
    invoke-static {v13, v12}, Lcom/sec/android/app/camera/Camera;->access$2902(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 1580
    :cond_2
    const-string v12, "com.samsung.cover.OPEN"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1581
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 1582
    .local v6, "extra":Landroid/os/Bundle;
    const-string v12, "coverOpen"

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1583
    .local v5, "coverOpen":Z
    const-string v12, "Camera2"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onReceive - coverOpen = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12, v5}, Lcom/sec/android/app/camera/Camera;->setCoverModeChanged(Z)V

    .line 1587
    .end local v5    # "coverOpen":Z
    .end local v6    # "extra":Landroid/os/Bundle;
    :cond_3
    const-string v12, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1589
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$500(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 1590
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$500(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setWifiDirectStatus()V

    .line 1594
    :cond_5
    const-string v12, "android.intent.action.VIDEOCAPABILITY"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1595
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v13, 0x1

    # setter for: Lcom/sec/android/app/camera/Camera;->bRecordingFailByVideoController:Z
    invoke-static {v12, v13}, Lcom/sec/android/app/camera/Camera;->access$3002(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 1598
    :cond_6
    const-string v12, "android.intent.action.SIOP_LEVEL_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1599
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 1600
    .local v10, "myExtras":Landroid/os/Bundle;
    const-string v12, "flash_led_disable"

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1601
    .local v3, "bLimitFlash":Z
    const-string v12, "camera_recording_disable"

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1603
    .local v4, "bLimitRecording":Z
    if-eqz v3, :cond_8

    .line 1604
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/CameraSettings;->setTemperatureHighToUseFlash(Z)V

    .line 1605
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->setFlashOffInHighTemperature()V
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)V

    .line 1610
    :goto_2
    if-eqz v4, :cond_1b

    .line 1611
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v12

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 1612
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CommonEngine;->isRecorderStarting()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    .line 1613
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/CameraSettings;->setTemperatureHighToRecord(Z)V

    goto/16 :goto_0

    .line 1570
    .end local v3    # "bLimitFlash":Z
    .end local v4    # "bLimitRecording":Z
    .end local v10    # "myExtras":Landroid/os/Bundle;
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1607
    .restart local v3    # "bLimitFlash":Z
    .restart local v4    # "bLimitRecording":Z
    .restart local v10    # "myExtras":Landroid/os/Bundle;
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/CameraSettings;->setTemperatureHighToUseFlash(Z)V

    goto :goto_2

    .line 1616
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopVideoRecording()V

    .line 1617
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/Camera;->setResizeHandleDragVibration(Z)V

    .line 1618
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CommonEngine;->scheduleCamcorderRecordingStopSound()V

    .line 1620
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraSettings;->isTemperatureHighToRecord()Z

    move-result v12

    if-nez v12, :cond_a

    .line 1621
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c0012

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 1628
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/CameraSettings;->setTemperatureHighToRecord(Z)V

    .line 1629
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v12

    const/16 v13, 0x41

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1636
    .end local v3    # "bLimitFlash":Z
    .end local v4    # "bLimitRecording":Z
    .end local v10    # "myExtras":Landroid/os/Bundle;
    :cond_b
    :goto_4
    const-string v12, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    const-string v12, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    const-string v12, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 1639
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/Camera;->hideDlg(I)V

    .line 1640
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v12

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 1641
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_d

    .line 1642
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CommonEngine;->doCancelVideoRecordingSync()V

    .line 1643
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/Camera;->setResizeHandleDragVibration(Z)V

    .line 1644
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CommonEngine;->doCamcorderRecordingStopSound()V

    .line 1645
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CommonEngine;->doSwitchToCameraPreviewSync()V

    .line 1650
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v12

    const/16 v13, 0x1c

    if-ne v12, v13, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v12

    if-eqz v12, :cond_e

    .line 1652
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    .line 1653
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->unexpectedCancelGolfShot()V

    .line 1657
    :cond_e
    invoke-static {}, Landroid/media/MiniThumbFile;->reset()V

    .line 1658
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_10

    .line 1659
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$3100(Lcom/sec/android/app/camera/Camera;)Landroid/media/MediaMetadataRetriever;

    move-result-object v12

    if-eqz v12, :cond_f

    .line 1660
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$3100(Lcom/sec/android/app/camera/Camera;)Landroid/media/MediaMetadataRetriever;

    move-result-object v12

    invoke-virtual {v12}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1662
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    new-instance v13, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v13}, Landroid/media/MediaMetadataRetriever;-><init>()V

    # setter for: Lcom/sec/android/app/camera/Camera;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;
    invoke-static {v12, v13}, Lcom/sec/android/app/camera/Camera;->access$3102(Lcom/sec/android/app/camera/Camera;Landroid/media/MediaMetadataRetriever;)Landroid/media/MediaMetadataRetriever;

    .line 1665
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->resetStorageMedia()V

    .line 1666
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v12

    const/16 v13, 0x16

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1667
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/CameraSettings;->setChangeStorageSettingDialog(I)V

    .line 1668
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/Camera;->hideDlg(I)V

    .line 1670
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v12

    iget-object v12, v12, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v13

    const/16 v14, 0x16

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/camera/MenuBase;

    .line 1671
    .local v8, "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v8, :cond_11

    invoke-virtual {v8}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 1672
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1801
    .end local v8    # "menu":Lcom/sec/android/app/camera/MenuBase;
    :cond_11
    :goto_5
    const-string v12, "com.samsung.action.SHOWING_GLOBAL_ACTIONS"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 1802
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 1803
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v13, 0x1

    # setter for: Lcom/sec/android/app/camera/Camera;->mPreventCoverUIBroadCast:Z
    invoke-static {v12, v13}, Lcom/sec/android/app/camera/Camera;->access$3702(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 1804
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 1808
    :cond_12
    const-string v12, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 1809
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v12

    const/4 v13, 0x5

    if-ne v12, v13, :cond_15

    .line 1810
    const-string v12, "Camera2"

    const-string v13, "android.intent.action.WIFI_DISPLAY intent on SHARE_REMOTE_VIEWFINDER"

    invoke-static {v12, v13}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 1813
    .restart local v10    # "myExtras":Landroid/os/Bundle;
    const-string v12, "Camera2"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "state: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "state"

    invoke-virtual {v10, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    const-string v12, "state"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_33

    .line 1815
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCheckWifiDisplay:Z
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$3800(Lcom/sec/android/app/camera/Camera;)Z

    move-result v12

    if-nez v12, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mWifiDisplayDisconnectDialog:Landroid/app/AlertDialog;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$3900(Lcom/sec/android/app/camera/Camera;)Landroid/app/AlertDialog;

    move-result-object v12

    if-eqz v12, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mWifiDisplayDisconnectDialog:Landroid/app/AlertDialog;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$3900(Lcom/sec/android/app/camera/Camera;)Landroid/app/AlertDialog;

    move-result-object v12

    if-eqz v12, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mWifiDisplayDisconnectDialog:Landroid/app/AlertDialog;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$3900(Lcom/sec/android/app/camera/Camera;)Landroid/app/AlertDialog;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v12

    if-nez v12, :cond_14

    .line 1816
    :cond_13
    const-string v12, "Camera2"

    const-string v13, "showDlg WIFI_DISPLAY_DISCONNECT_DLG"

    invoke-static {v12, v13}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v13, 0x9

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/Camera;->showDlg(I)V

    .line 1819
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v13, 0x0

    # setter for: Lcom/sec/android/app/camera/Camera;->mCheckWifiDisplay:Z
    invoke-static {v12, v13}, Lcom/sec/android/app/camera/Camera;->access$3802(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 1820
    const-string v12, "Camera2"

    const-string v13, "mCheckWifiDisplay set false"

    invoke-static {v12, v13}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    .end local v10    # "myExtras":Landroid/os/Bundle;
    :cond_15
    :goto_6
    const-string v12, "Camera2"

    const-string v13, "android.intent.action.WIFI_DISPLAY finish intent"

    invoke-static {v12, v13}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 1831
    .restart local v10    # "myExtras":Landroid/os/Bundle;
    const-string v12, "state"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_16

    .line 1832
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v13, 0x0

    # setter for: Lcom/sec/android/app/camera/Camera;->mCheckActualWifiDisplay:Z
    invoke-static {v12, v13}, Lcom/sec/android/app/camera/Camera;->access$4002(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 1833
    const-string v12, "Camera2"

    const-string v13, "mCheckActualWifiDisplay set false"

    invoke-static {v12, v13}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    :cond_16
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 1838
    const-string v12, "mode"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_17

    .line 1839
    const-string v12, "Camera2"

    const-string v13, "WfdManager.MODE_SIDESYNC"

    invoke-static {v12, v13}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->showSideSyncToast()V

    .line 1841
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 1846
    .end local v10    # "myExtras":Landroid/os/Bundle;
    :cond_17
    const-string v12, "com.sec.android.sidesync.source.SIDESYNC_CHANGE_SINK_WORK"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 1847
    const-string v12, "Camera2"

    const-string v13, "intent is comming from com.sec.android.sidesync.source.SIDESYNC_CHANGE_SINK_WORK"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->showSideSyncToast()V

    .line 1849
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 1852
    :cond_18
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Camera_EnableSmsNotiPopup"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 1853
    const/4 v9, 0x0

    .line 1855
    .local v9, "messageDisplayData":Ljava/lang/String;
    const-string v12, "com.sec.mms.intent.action.SMS_RECEIVED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_34

    .line 1856
    const-string v12, "DisplayName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1858
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v13, 0x1

    invoke-virtual {v12, v13, v9}, Lcom/sec/android/app/camera/Camera;->makeToast(ILjava/lang/String;)V

    .line 1870
    .end local v9    # "messageDisplayData":Ljava/lang/String;
    :cond_19
    :goto_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1871
    const-string v12, "com.sktelecom.dmc.intent.action.DCMO_SET"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "CAMERA_ON"

    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_0

    .line 1872
    const-string v12, "Camera2"

    const-string v13, "INTENT_MSG_DCMO"

    invoke-static {v12, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto/16 :goto_0

    .line 1624
    .restart local v3    # "bLimitFlash":Z
    .restart local v4    # "bLimitRecording":Z
    .restart local v10    # "myExtras":Landroid/os/Bundle;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraSettings;->isTemperatureHighToRecord()Z

    move-result v12

    if-nez v12, :cond_a

    .line 1625
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c0014

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 1631
    :cond_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/CameraSettings;->setTemperatureHighToRecord(Z)V

    .line 1632
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v12

    const/16 v13, 0x41

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto/16 :goto_4

    .line 1674
    .end local v3    # "bLimitFlash":Z
    .end local v4    # "bLimitRecording":Z
    .end local v10    # "myExtras":Landroid/os/Bundle;
    :cond_1c
    const-string v12, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 1675
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CommonEngine;->isMediaRecorderRecording()Z

    move-result v12

    if-nez v12, :cond_1d

    .line 1676
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/app/camera/Camera;->checkStorage(ZZ)V

    goto/16 :goto_5

    .line 1678
    :cond_1d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v12

    const/16 v13, 0x16

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto/16 :goto_5

    .line 1680
    :cond_1e
    const-string v12, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    .line 1681
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v12

    if-eqz v12, :cond_1f

    .line 1682
    const-string v12, "Camera2"

    const-string v13, "do not update Thumbnail by BR"

    invoke-static {v12, v13}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1684
    :cond_1f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_20

    .line 1685
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v12

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v12, v12, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v12, :cond_11

    .line 1686
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->updateThumbnailButton()V

    goto/16 :goto_5

    .line 1689
    :cond_20
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEasyCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$3200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;

    move-result-object v12

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v12, v12, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v12, :cond_11

    .line 1690
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEasyCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$3200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->updateThumbnailButton()V

    goto/16 :goto_5

    .line 1694
    :cond_21
    const-string v12, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_22

    .line 1695
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->updateRemainCounter()V

    goto/16 :goto_5

    .line 1696
    :cond_22
    const-string v12, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_23

    .line 1697
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p2

    # invokes: Lcom/sec/android/app/camera/Camera;->handleBatteryChanged(Landroid/content/Intent;)V
    invoke-static {v12, v0}, Lcom/sec/android/app/camera/Camera;->access$3300(Lcom/sec/android/app/camera/Camera;Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 1698
    :cond_23
    const-string v12, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_25

    .line 1699
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->battLevel:I
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$3400(Lcom/sec/android/app/camera/Camera;)I

    move-result v12

    const/4 v13, 0x5

    if-gt v12, v13, :cond_24

    .line 1700
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 1701
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/Camera;->handleLowBattery(Z)V

    goto/16 :goto_5

    .line 1704
    :cond_24
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-boolean v12, v12, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v12, :cond_11

    .line 1705
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 1706
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v12

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v12

    if-nez v12, :cond_11

    .line 1707
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v13, 0x0

    # invokes: Lcom/sec/android/app/camera/Camera;->handlePluggedLowBattery(Z)V
    invoke-static {v12, v13}, Lcom/sec/android/app/camera/Camera;->access$3500(Lcom/sec/android/app/camera/Camera;Z)V

    goto/16 :goto_5

    .line 1712
    :cond_25
    const-string v12, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2b

    .line 1713
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->battLevel:I
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$3400(Lcom/sec/android/app/camera/Camera;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    iget v13, v13, Lcom/sec/android/app/camera/Camera;->mLowBatteryWarningLevel:I

    if-gt v12, v13, :cond_29

    .line 1714
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->battLevel:I
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$3400(Lcom/sec/android/app/camera/Camera;)I

    move-result v12

    const/4 v13, 0x5

    if-gt v12, v13, :cond_27

    .line 1715
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 1716
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v12, v12, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v12, :cond_26

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v12, v12, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v12

    if-eqz v12, :cond_26

    .line 1717
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v12, v12, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->dismiss()V

    .line 1719
    :cond_26
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/Camera;->handleLowBattery(Z)V

    goto/16 :goto_5

    .line 1722
    :cond_27
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 1723
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v12, v12, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v12, :cond_28

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v12, v12, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v12

    if-eqz v12, :cond_28

    .line 1724
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v12, v12, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->dismiss()V

    .line 1726
    :cond_28
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 1727
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v12

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v12

    if-nez v12, :cond_11

    .line 1728
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v13, 0x0

    # invokes: Lcom/sec/android/app/camera/Camera;->handlePluggedLowBattery(Z)V
    invoke-static {v12, v13}, Lcom/sec/android/app/camera/Camera;->access$3500(Lcom/sec/android/app/camera/Camera;Z)V

    goto/16 :goto_5

    .line 1733
    :cond_29
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v12, v12, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v12, :cond_2a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v12, v12, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v12

    if-eqz v12, :cond_2a

    .line 1734
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v12, v12, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->dismiss()V

    .line 1736
    :cond_2a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    goto/16 :goto_5

    .line 1738
    :cond_2b
    const-string v12, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2c

    .line 1739
    const-string v12, "Camera2"

    const-string v13, "INTENT_MSG_SECURITY"

    invoke-static {v12, v13}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1748
    :cond_2c
    const-string v12, "com.android.shoot.userchanged"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2d

    .line 1749
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mShareShot:Lcom/sec/android/app/camera/ShareShot;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$3600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/ShareShot;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/ShareShot;->refreshDeviceList()V

    goto/16 :goto_5

    .line 1750
    :cond_2d
    const-string v12, "com.android.shootshare.recvfile"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2e

    .line 1751
    const-string v12, "filepath"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1753
    .local v7, "filePath":Ljava/lang/String;
    if-eqz v7, :cond_11

    .line 1754
    new-instance v11, Ljava/util/Timer;

    invoke-direct {v11}, Ljava/util/Timer;-><init>()V

    .line 1755
    .local v11, "timer":Ljava/util/Timer;
    new-instance v12, Lcom/sec/android/app/camera/Camera$8$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v7}, Lcom/sec/android/app/camera/Camera$8$1;-><init>(Lcom/sec/android/app/camera/Camera$8;Ljava/lang/String;)V

    const-wide/16 v14, 0x1f4

    invoke-virtual {v11, v12, v14, v15}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_5

    .line 1765
    .end local v7    # "filePath":Ljava/lang/String;
    .end local v11    # "timer":Ljava/util/Timer;
    :cond_2e
    const-string v12, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_31

    .line 1766
    const-string v12, "Camera2"

    const-string v13, "onReceive shutdown"

    invoke-static {v12, v13}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CommonEngine;->isTimerCounting()Z

    move-result v12

    if-eqz v12, :cond_2f

    .line 1769
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CommonEngine;->doCancelShutterTimer()V

    .line 1773
    :cond_2f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CommonEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v12

    const/4 v13, 0x5

    if-ne v12, v13, :cond_11

    .line 1774
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CommonEngine;->getVideoRecordingTimeInSecond()I

    move-result v12

    const/4 v13, 0x1

    if-ge v12, v13, :cond_30

    .line 1775
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CommonEngine;->doCancelVideoRecordingSync()V

    .line 1780
    :goto_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/Camera;->setResizeHandleDragVibration(Z)V

    .line 1781
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CommonEngine;->doCamcorderRecordingStopSound()V

    goto/16 :goto_5

    .line 1777
    :cond_30
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/sec/android/app/camera/Camera;->mIsReocrdingStoppedForcely:Z

    .line 1778
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CommonEngine;->doStopVideoRecordingSync()V

    goto :goto_8

    .line 1783
    :cond_31
    const-string v12, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_32

    .line 1784
    const-string v12, "Camera2"

    const-string v13, "WIFI_P2P_CONNECTION_CHANGED_ACTION"

    invoke-static {v12, v13}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraSettings;->requestGroupInfo()V

    goto/16 :goto_5

    .line 1786
    :cond_32
    const-string v12, "android.intent.action.ACTION_ASSISTIVE_OFF"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 1787
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/CameraSettings;->setTorchLightStatus(I)V

    goto/16 :goto_5

    .line 1821
    .restart local v10    # "myExtras":Landroid/os/Bundle;
    :cond_33
    const-string v12, "state"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_15

    .line 1822
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v13, 0x1

    # setter for: Lcom/sec/android/app/camera/Camera;->mCheckWifiDisplay:Z
    invoke-static {v12, v13}, Lcom/sec/android/app/camera/Camera;->access$3802(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 1823
    const-string v12, "Camera2"

    const-string v13, "mCheckWifiDisplay set true"

    invoke-static {v12, v13}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v13, 0x1

    # setter for: Lcom/sec/android/app/camera/Camera;->mCheckActualWifiDisplay:Z
    invoke-static {v12, v13}, Lcom/sec/android/app/camera/Camera;->access$4002(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 1825
    const-string v12, "Camera2"

    const-string v13, "mCheckActualWifiDisplay set true"

    invoke-static {v12, v13}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1859
    .end local v10    # "myExtras":Landroid/os/Bundle;
    .restart local v9    # "messageDisplayData":Ljava/lang/String;
    :cond_34
    const-string v12, "com.sec.mms.intent.action.PUSHSMS_RECEIVED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_35

    .line 1860
    const-string v12, "DisplayName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1862
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v13, 0x2

    invoke-virtual {v12, v13, v9}, Lcom/sec/android/app/camera/Camera;->makeToast(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 1863
    :cond_35
    const-string v12, "com.sec.mms.intent.action.MMS_RECEIVED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 1864
    const-string v12, "DisplayName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1866
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/Camera$8;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v13, 0x3

    invoke-virtual {v12, v13, v9}, Lcom/sec/android/app/camera/Camera;->makeToast(ILjava/lang/String;)V

    goto/16 :goto_7
.end method
