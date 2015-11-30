.class Lcom/sec/android/app/camera/Camera$3;
.super Landroid/telephony/PhoneStateListener;
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
    .line 1251
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1254
    packed-switch p1, :pswitch_data_0

    .line 1279
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mIsCallStateRinging:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$2102(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 1280
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mdisableShutterSoundDuringCall:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$2202(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 1281
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    iput-boolean v1, v0, Lcom/sec/android/app/camera/Camera;->mCheckCalling:Z

    .line 1282
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    iput-boolean v1, v0, Lcom/sec/android/app/camera/Camera;->mCheckVoIPCalling:Z

    .line 1283
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    iput-boolean v1, v0, Lcom/sec/android/app/camera/Camera;->mCheckVTCalling:Z

    .line 1284
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mIsCallStateOffHook:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$2302(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 1285
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCallStatus(I)V

    .line 1290
    :cond_0
    :goto_0
    return-void

    .line 1257
    :pswitch_1
    const-string v0, "Camera2"

    const-string v1, "PhoneStateListener On Call"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mIsCallStateRinging:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/Camera;->access$2102(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 1259
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mdisableShutterSoundDuringCall:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/Camera;->access$2202(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 1260
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCallStatus(I)V

    .line 1262
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onSoundshotAddVoiceRecordingFinished()V

    goto :goto_0

    .line 1272
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mdisableShutterSoundDuringCall:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/Camera;->access$2202(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 1273
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mIsCallStateOffHook:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/Camera;->access$2302(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 1274
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCallStatus(I)V

    goto :goto_0

    .line 1254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
