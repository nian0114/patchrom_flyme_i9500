.class public final Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ErrorCallback"
.end annotation


# static fields
.field private static final CAMERA_ERROR_DTP:I = 0x3ea

.field private static final CAMERA_ERROR_MSG_NO_ERROR:I = 0x0

.field private static final CAMERA_ERROR_WRONG_FW:I = 0x3e8


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CommonEngine;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0

    .prologue
    .line 671
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILcom/sec/android/seccamera/SecCamera;)V
    .locals 8
    .param p1, "error"    # I
    .param p2, "camera"    # Lcom/sec/android/seccamera/SecCamera;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/16 v5, -0xb

    const/4 v4, 0x6

    const/4 v3, 0x1

    .line 677
    sget-boolean v0, Lcom/sec/android/app/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 678
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrorCallback.onError ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 686
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->closeCamera()V

    .line 766
    :cond_0
    :goto_1
    return-void

    .line 680
    :cond_1
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrorCallback.onError ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 690
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 693
    sparse-switch p1, :sswitch_data_0

    .line 763
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, -0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->finishOnError(I)V

    goto :goto_1

    .line 695
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    goto :goto_1

    .line 699
    :sswitch_1
    const-string v0, "CommonEngine"

    const-string v1, "onError : CAMERA_ERROR_WRONG_FW"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 702
    :sswitch_2
    const-string v0, "CommonEngine"

    const-string v1, "!!!Camera retry!!! - start!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    sget-boolean v0, Lcom/sec/android/app/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 704
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_6

    .line 705
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v0

    if-nez v0, :cond_3

    .line 706
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/Camera;->finishOnError(I)V

    .line 715
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    if-ne v0, v7, :cond_4

    .line 716
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getVideoRecordingTimeInSecond()I

    move-result v0

    if-ge v0, v3, :cond_7

    .line 717
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doCancelVideoRecordingSync()V

    .line 723
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camera;->setResizeHandleDragVibration(Z)V

    .line 724
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doCamcorderRecordingStopSound()V

    .line 725
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 726
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->releaseMediaRecorder()V

    .line 729
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopEngineSync()V

    .line 730
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartEngineAsync()V

    .line 731
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->waitForEngineStartingThread()V

    .line 732
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doPostInitSync()V

    .line 733
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetAllParamsSync()V

    .line 734
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartDualEngineSync()V

    .line 735
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    .line 736
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartPreviewAsync()V

    .line 737
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStartDualPreviewSync()V

    .line 738
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->waitForStartPreviewThreadComplete()V

    .line 739
    const-string v0, "CommonEngine"

    const-string v1, "!!!Camera retry!!! before return"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 709
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eqz v0, :cond_3

    .line 710
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/Camera;->finishOnError(I)V

    goto/16 :goto_2

    .line 719
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopVideoRecordingSync()V

    goto :goto_3

    .line 742
    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, -0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->finishOnError(I)V

    goto/16 :goto_1

    .line 745
    :sswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    if-ne v0, v7, :cond_8

    .line 746
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getVideoRecordingTimeInSecond()I

    move-result v0

    if-ge v0, v3, :cond_a

    .line 747
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doCancelVideoRecordingSync()V

    .line 751
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPreviewSync()V

    .line 753
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camera;->setResizeHandleDragVibration(Z)V

    .line 754
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doCamcorderRecordingStopSound()V

    .line 755
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    if-ne v0, v6, :cond_9

    .line 756
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->releaseMediaRecorder()V

    .line 757
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPreviewSync()V

    .line 759
    :cond_9
    const-string v0, "CommonEngine"

    const-string v1, "onError : CAMERA_ERROR_DTP!"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v1, -0xd

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->finishOnError(I)V

    goto/16 :goto_1

    .line 749
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopVideoRecordingSync()V

    goto :goto_4

    .line 693
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_3
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_4
    .end sparse-switch
.end method
