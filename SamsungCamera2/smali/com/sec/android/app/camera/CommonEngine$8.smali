.class Lcom/sec/android/app/camera/CommonEngine$8;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CommonEngine;->doStartVideoRecordingAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CommonEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0

    .prologue
    .line 6702
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, -0x4

    const/4 v4, 0x1

    .line 6705
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$3600(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 6706
    const-string v2, "CommonEngine"

    const-string v3, "SecMediaRecorder is not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6707
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    .line 6757
    :goto_0
    return-void

    .line 6711
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z
    invoke-static {v2, v4}, Lcom/sec/android/app/camera/CommonEngine;->access$3702(Lcom/sec/android/app/camera/CommonEngine;Z)Z

    .line 6712
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->disableAlertSound()V

    .line 6715
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 6716
    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6724
    :cond_1
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v2

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6725
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$3600(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->start()V

    .line 6726
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$3600(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v3}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->registerRecordingSurface(Lcom/sec/android/seccamera/SecCamera;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6745
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.CpuGovernorService.action.IOBUSY_VOTE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6747
    .local v1, "ioBusyVoteIntent":Landroid/content/Intent;
    const-string v2, "com.android.server.CpuGovernorService.voteType"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6748
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 6750
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.chaton.util.ACTION_VIDEO_RECORDING_START"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 6751
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.camera.DISABLE_VIBRATOR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 6752
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/CommonEngine;->setSystemSoundEffect()V
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$3800(Lcom/sec/android/app/camera/CommonEngine;)V

    .line 6753
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->getSystemSoundEffect()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6754
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->disableSystemSoundEffect()V

    .line 6756
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 6717
    .end local v1    # "ioBusyVoteIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 6719
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "CommonEngine"

    const-string v3, "Could not sleep. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 6728
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$3600(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->start()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 6730
    :catch_1
    move-exception v0

    .line 6731
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "CommonEngine"

    const-string v3, "Could not start media recorder. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6732
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->releaseMediaRecorder()V

    .line 6734
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopVideoRecording()V

    .line 6735
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartPreview()V

    .line 6736
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartDualPreview()V

    .line 6738
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isRecordingFailByVideoController()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6739
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    const/16 v3, -0xc

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 6741
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
