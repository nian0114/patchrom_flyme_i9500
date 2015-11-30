.class Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu$1;
.super Landroid/os/Handler;
.source "TwGLSoundShotMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 123
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 140
    :goto_0
    :pswitch_0
    return-void

    .line 125
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->qar:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->getVisualizationBands()[I

    move-result-object v0

    .line 126
    .local v0, "mRecordingAmpitude":[I
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/Camera;->updateAudioRecordIndicatorlevel([I)V

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->updateRecordingAmplevel()V

    goto :goto_0

    .line 131
    .end local v0    # "mRecordingAmpitude":[I
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->RecordedTime:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;)I

    move-result v1

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->STORYRECORD_MAX_PROGRESSBAR_COUNT:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->access$300()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 132
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;

    const/4 v2, 0x1

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mFull:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->access$402(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;Z)Z

    .line 133
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->RecordedTime:I
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->access$202(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;I)I

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->RecordedTime:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mFull:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;)Z

    move-result v3

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->setProgressBar(IZ)V
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;IZ)V

    .line 136
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 137
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;

    # operator++ for: Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->RecordedTime:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->access$208(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;)I

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
