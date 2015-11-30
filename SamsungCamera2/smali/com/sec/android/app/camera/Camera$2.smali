.class Lcom/sec/android/app/camera/Camera$2;
.super Landroid/os/Handler;
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
    .line 953
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 956
    const-string v10, "Camera2"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleMessage :: msg.what = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 1246
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 959
    :pswitch_1
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 960
    const-string v10, "Camera2"

    const-string v11, "processBack. FILE_SAVING_PROGRESS_BACK"

    invoke-static {v10, v11}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 963
    :pswitch_2
    const-string v10, "Camera2"

    const-string v11, "delay end!"

    invoke-static {v10, v11}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->isVoiceInputSettingOn()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 965
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->startVoiceRecognizer()V

    .line 967
    :cond_1
    const-string v10, "Camera2"

    const-string v11, "START_VOICE_RECOGNIZER"

    invoke-static {v10, v11}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 970
    :pswitch_3
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->isInLockTaskMode()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 971
    const-string v10, "Camera2"

    const-string v11, "Keep camera app for screen pinning"

    invoke-static {v10, v11}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->restartInactivityTimer()V

    goto :goto_0

    .line 975
    :cond_2
    const-string v10, "Camera2"

    const-string v11, "Inactivity timer is expired. finish."

    invoke-static {v10, v11}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto :goto_0

    .line 979
    :pswitch_4
    const-string v10, "Camera2"

    const-string v11, "Overheat popup timer is expired. finish."

    invoke-static {v10, v11}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto :goto_0

    .line 983
    :pswitch_5
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 984
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLContext;->resumeOrientationListener()V

    .line 985
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 987
    :cond_3
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v10, v10, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    if-eqz v10, :cond_0

    .line 988
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v10, v10, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/4 v11, 0x5

    # getter for: Lcom/sec/android/app/camera/Camera;->SET_DIRTY_DURATION:I
    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$200()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 991
    :pswitch_6
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # ++operator for: Lcom/sec/android/app/camera/Camera;->mDirtyCount:I
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$304(Lcom/sec/android/app/camera/Camera;)I

    move-result v10

    const/4 v11, 0x7

    if-ge v10, v11, :cond_5

    .line 992
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 993
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 994
    :cond_4
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v10, v10, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    if-eqz v10, :cond_0

    .line 995
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v10, v10, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/4 v11, 0x5

    # getter for: Lcom/sec/android/app/camera/Camera;->SET_DIRTY_DURATION:I
    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$200()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 997
    :cond_5
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v11, 0x0

    # setter for: Lcom/sec/android/app/camera/Camera;->mDirtyCount:I
    invoke-static {v10, v11}, Lcom/sec/android/app/camera/Camera;->access$302(Lcom/sec/android/app/camera/Camera;I)I

    goto/16 :goto_0

    .line 1001
    :pswitch_7
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->restartTouchAF()V

    goto/16 :goto_0

    .line 1006
    :pswitch_8
    :try_start_0
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->stopAFHideRectTimer()V

    .line 1007
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CommonEngine;->setHalfShutter(Z)V

    .line 1008
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v10

    const/16 v11, 0x2a

    if-eq v10, v11, :cond_0

    .line 1010
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CommonEngine;->setFocusModeAuto()V

    .line 1012
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CommonEngine;->scheduleAutoFocus()V

    .line 1013
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getFaceCount()I

    move-result v10

    if-nez v10, :cond_0

    .line 1014
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$500(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1016
    :catch_0
    move-exception v10

    goto/16 :goto_0

    .line 1021
    :pswitch_9
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isShutterPressed()Z

    move-result v10

    if-nez v10, :cond_7

    :cond_6
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mHardKeyStatus:I
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)I

    move-result v10

    # getter for: Lcom/sec/android/app/camera/Camera;->CA_HARDKEY_FULL_PRESS:I
    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$800()I

    move-result v11

    if-ne v10, v11, :cond_0

    .line 1022
    :cond_7
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v10

    if-nez v10, :cond_0

    .line 1023
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->startSingleBurstShot()V

    goto/16 :goto_0

    .line 1028
    :pswitch_a
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderFastMotionEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1029
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v11, 0x1

    # setter for: Lcom/sec/android/app/camera/Camera;->mRecordingStopAvailable:Z
    invoke-static {v10, v11}, Lcom/sec/android/app/camera/Camera;->access$902(Lcom/sec/android/app/camera/Camera;Z)Z

    goto/16 :goto_0

    .line 1033
    :pswitch_b
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->hideFocusRect()V

    .line 1034
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->stopAFHideRectTimer()V

    goto/16 :goto_0

    .line 1038
    :pswitch_c
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_8

    .line 1039
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v10, v10, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v11, 0x18

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1041
    :cond_8
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->stopGolfShotDetectingTimer()V

    goto/16 :goto_0

    .line 1046
    :pswitch_d
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1047
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->initializeCamera()V

    .line 1048
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionChanged(Z)V

    .line 1049
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->initIntentFilter()V
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    .line 1052
    :pswitch_e
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->isBurstShotStarted()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1055
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1056
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v11, 0x1a

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1057
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v11, 0x1a

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 1058
    :cond_9
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1059
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    goto/16 :goto_0

    .line 1064
    :cond_a
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CommonEngine;->isNeedUpdate()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1065
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$1100(Lcom/sec/android/app/camera/Camera;)Landroid/widget/Toast;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 1066
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$1100(Lcom/sec/android/app/camera/Camera;)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->cancel()V

    .line 1067
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v11, 0x0

    # setter for: Lcom/sec/android/app/camera/Camera;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v10, v11}, Lcom/sec/android/app/camera/Camera;->access$1102(Lcom/sec/android/app/camera/Camera;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 1069
    :cond_b
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v11, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const v12, 0x7f0c02a4

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v11

    # setter for: Lcom/sec/android/app/camera/Camera;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v10, v11}, Lcom/sec/android/app/camera/Camera;->access$1102(Lcom/sec/android/app/camera/Camera;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 1070
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$1100(Lcom/sec/android/app/camera/Camera;)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 1072
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v11, 0x1a

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v10

    if-nez v10, :cond_c

    .line 1073
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v11, 0x1a

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 1074
    :cond_c
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v10

    if-nez v10, :cond_d

    .line 1075
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v11, 0x3

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 1079
    :cond_d
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v10, v10, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    if-eqz v10, :cond_0

    .line 1080
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v10, v10, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v11, 0xc

    const-wide/16 v12, 0xbb8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1082
    :cond_e
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$1100(Lcom/sec/android/app/camera/Camera;)Landroid/widget/Toast;

    move-result-object v10

    if-eqz v10, :cond_f

    .line 1083
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$1100(Lcom/sec/android/app/camera/Camera;)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->cancel()V

    .line 1084
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v11, 0x0

    # setter for: Lcom/sec/android/app/camera/Camera;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v10, v11}, Lcom/sec/android/app/camera/Camera;->access$1102(Lcom/sec/android/app/camera/Camera;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 1086
    :cond_f
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v11, 0x1a

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 1087
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v11, 0x1a

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 1088
    :cond_10
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1089
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    goto/16 :goto_0

    .line 1097
    :pswitch_f
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const-string v11, "power"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 1098
    .local v5, "manager":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Landroid/os/PowerManager;->goToSleep(J)V

    goto/16 :goto_0

    .line 1101
    .end local v5    # "manager":Landroid/os/PowerManager;
    :pswitch_10
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const-string v11, "reviewon"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/Camera;->onLaunchGalleryForImage(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1104
    :pswitch_11
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->setFlashOffInHighTemperature()V
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    .line 1107
    :pswitch_12
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # ++operator for: Lcom/sec/android/app/camera/Camera;->mWifiDisplayBridgeStatusCheckCount:I
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$1304(Lcom/sec/android/app/camera/Camera;)I

    move-result v10

    const/16 v11, 0x1e

    if-ge v10, v11, :cond_12

    .line 1108
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v11, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mDisplayManager:Landroid/hardware/display/DisplayManager;
    invoke-static {v11}, Lcom/sec/android/app/camera/Camera;->access$1500(Lcom/sec/android/app/camera/Camera;)Landroid/hardware/display/DisplayManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/hardware/display/DisplayManager;->getWifiDisplayBridgeStatus()I

    move-result v11

    # setter for: Lcom/sec/android/app/camera/Camera;->mCheckWifiDisplayBridgeStatus:I
    invoke-static {v10, v11}, Lcom/sec/android/app/camera/Camera;->access$1402(Lcom/sec/android/app/camera/Camera;I)I

    .line 1110
    const-string v10, "Camera2"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mWifiDisplayBridgeStatusCheckCount: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mWifiDisplayBridgeStatusCheckCount:I
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$1300(Lcom/sec/android/app/camera/Camera;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const-string v10, "Camera2"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mCheckWifiDisplayBridgeStatus: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCheckWifiDisplayBridgeStatus:I
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$1400(Lcom/sec/android/app/camera/Camera;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCheckWifiDisplayBridgeStatus:I
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$1400(Lcom/sec/android/app/camera/Camera;)I

    move-result v10

    if-nez v10, :cond_11

    .line 1114
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v10, v10, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    if-eqz v10, :cond_0

    .line 1115
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v10, v10, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v11, 0x10

    const-wide/16 v12, 0x64

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1117
    :cond_11
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->enableWifiDisplay()V
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$1600(Lcom/sec/android/app/camera/Camera;)V

    .line 1118
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v11, 0x0

    # setter for: Lcom/sec/android/app/camera/Camera;->mWifiDisplayBridgeStatusCheckCount:I
    invoke-static {v10, v11}, Lcom/sec/android/app/camera/Camera;->access$1302(Lcom/sec/android/app/camera/Camera;I)I

    .line 1119
    const/16 v10, 0x10

    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/Camera$2;->removeMessages(I)V

    goto/16 :goto_0

    .line 1122
    :cond_12
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->enableWifiDisplay()V
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$1600(Lcom/sec/android/app/camera/Camera;)V

    .line 1123
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v11, 0x0

    # setter for: Lcom/sec/android/app/camera/Camera;->mWifiDisplayBridgeStatusCheckCount:I
    invoke-static {v10, v11}, Lcom/sec/android/app/camera/Camera;->access$1302(Lcom/sec/android/app/camera/Camera;I)I

    .line 1124
    const/16 v10, 0x10

    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/Camera$2;->removeMessages(I)V

    goto/16 :goto_0

    .line 1129
    :pswitch_13
    :try_start_1
    const-string v10, "Camera2"

    const-string v11, "Update thumbnail"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v10

    if-eqz v10, :cond_13

    .line 1131
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v10

    const/16 v11, 0x26

    if-ne v10, v11, :cond_14

    .line 1132
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->updateThumbnailButton()V

    .line 1141
    :cond_13
    :goto_1
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CommonEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1142
    const-string v10, "Camera2"

    const-string v11, "Insert contextual tag to DB"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    new-instance v9, Landroid/content/ContentValues;

    const/4 v10, 0x2

    invoke-direct {v9, v10}, Landroid/content/ContentValues;-><init>(I)V

    .line 1144
    .local v9, "values":Landroid/content/ContentValues;
    const-string v10, "weather_ID"

    iget-object v11, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/Camera;->getWeather()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1145
    const-string v10, "city_ID"

    iget-object v11, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/Camera;->getCityId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1146
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v11}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CommonEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v9, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1149
    .end local v9    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v3

    .line 1150
    .local v3, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string v10, "Camera2"

    const-string v11, "Not enough space in database"

    invoke-static {v10, v11}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const v11, 0x7f0c0184

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1135
    .end local v3    # "e":Landroid/database/sqlite/SQLiteFullException;
    :cond_14
    :try_start_2
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v11}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CommonEngine;->getOrientationOnTake()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CommonEngine;->calculateOrientationForPicture(I)I

    move-result v6

    .line 1136
    .local v6, "orientation":I
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->updateThumbnailButton(I)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 1155
    .end local v6    # "orientation":I
    :pswitch_14
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CommonEngine;->isOverHeated()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1157
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->handleDeviceOverheat()V

    goto/16 :goto_0

    .line 1161
    :pswitch_15
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # operator++ for: Lcom/sec/android/app/camera/Camera;->mConvertingProgress:I
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$1708(Lcom/sec/android/app/camera/Camera;)I

    move-result v10

    const/4 v11, 0x5

    if-ge v10, v11, :cond_15

    .line 1162
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mConvertingProgressingPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mConvertingProgress:I
    invoke-static {v11}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)I

    move-result v11

    mul-int/lit8 v11, v11, 0x14

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setPostCaptureProgress(I)V

    .line 1163
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v10, v10, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v11, 0x13

    const-wide/16 v12, 0x3e8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1165
    :cond_15
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v11, 0x0

    # setter for: Lcom/sec/android/app/camera/Camera;->mConvertingProgress:I
    invoke-static {v10, v11}, Lcom/sec/android/app/camera/Camera;->access$1702(Lcom/sec/android/app/camera/Camera;I)I

    .line 1166
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v10, v10, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v11, 0x13

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1170
    :pswitch_16
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v11, 0x0

    # setter for: Lcom/sec/android/app/camera/Camera;->mConvertingProgress:I
    invoke-static {v10, v11}, Lcom/sec/android/app/camera/Camera;->access$1702(Lcom/sec/android/app/camera/Camera;I)I

    .line 1171
    const/4 v7, 0x0

    .line 1173
    .local v7, "outFilePath":Ljava/lang/String;
    :try_start_3
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v10, v10, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v11, 0x13

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1174
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->hideConvertingProgressBar()V
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$1900(Lcom/sec/android/app/camera/Camera;)V

    .line 1175
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v7

    .line 1180
    if-eqz v7, :cond_0

    .line 1181
    const-string v10, "/"

    invoke-virtual {v7, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1182
    .local v2, "displayname":Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "."

    invoke-virtual {v2, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1183
    .local v8, "title":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1184
    .local v0, "dateTaken":J
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/sec/android/app/camera/CommonEngine;->setLastCapturedFileName(Ljava/lang/String;)V

    .line 1186
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1187
    .restart local v9    # "values":Landroid/content/ContentValues;
    const-string v10, "title"

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    const-string v10, "_display_name"

    invoke-virtual {v9, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    const-string v10, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1190
    const-string v10, "mime_type"

    const-string v11, "video/mp4"

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    const-string v10, "_data"

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1194
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->onImageStoringCompleted()V

    goto/16 :goto_0

    .line 1176
    .end local v0    # "dateTaken":J
    .end local v2    # "displayname":Ljava/lang/String;
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "values":Landroid/content/ContentValues;
    :catch_2
    move-exception v3

    .line 1177
    .local v3, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 1198
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .end local v7    # "outFilePath":Ljava/lang/String;
    :pswitch_17
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$2000(Lcom/sec/android/app/camera/Camera;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 1199
    const-string v10, "Camera2"

    const-string v11, "CHANGE_STORAGE_MESSAGE - camera is destroying"

    invoke-static {v10, v11}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1202
    :cond_16
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "enterprise_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1203
    .local v4, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/RestrictionPolicy;->isSDCardWriteAllowed()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1204
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/Camera;->showDlg(I)V

    goto/16 :goto_0

    .line 1207
    .end local v4    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :pswitch_18
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const v11, 0x7f0c0024

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1210
    :pswitch_19
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/Camera;->setBroadcastCoverUI(Z)V

    goto/16 :goto_0

    .line 1214
    :pswitch_1a
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->closeCoverCamera()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1215
    const-string v10, "Camera2"

    const-string v11, "retry closeCoverCamera"

    invoke-static {v10, v11}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v10, v10, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v11, 0x1b

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1217
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v10, v10, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v11, 0x1b

    const-wide/16 v12, 0x1f4

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1222
    :pswitch_1b
    :try_start_4
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->restoreTransitionAnimation()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 1223
    :catch_3
    move-exception v3

    .line 1224
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1228
    .end local v3    # "e":Ljava/lang/Exception;
    :pswitch_1c
    const-string v10, "Camera2"

    const-string v11, "COVER_MODE_CHANGED"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->onVideoRecordingStop()V

    .line 1230
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CommonEngine;->scheduleHideCoverCamera()V

    goto/16 :goto_0

    .line 1233
    :pswitch_1d
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v10, v10, Lcom/sec/android/app/camera/Camera;->mTutorial1:Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;

    if-eqz v10, :cond_17

    .line 1234
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v10, v10, Lcom/sec/android/app/camera/Camera;->mTutorial1:Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->setStepHide()V

    .line 1236
    :cond_17
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto/16 :goto_0

    .line 1239
    :pswitch_1e
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->isRecordingMenuTop()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1240
    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto/16 :goto_0

    .line 957
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_c
        :pswitch_1
        :pswitch_1b
        :pswitch_1a
        :pswitch_2
        :pswitch_1d
        :pswitch_1e
        :pswitch_1c
    .end packed-switch
.end method
