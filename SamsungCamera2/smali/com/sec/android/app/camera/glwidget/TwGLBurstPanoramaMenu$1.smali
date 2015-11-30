.class Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;
.super Landroid/os/Handler;
.source "TwGLBurstPanoramaMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 255
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 258
    :pswitch_0
    :try_start_0
    const-string v1, "TwGLBurstPanoramaMenu"

    const-string v2, "Inactivity timer is expired. finish."

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;->onPanoramaCaptureCancelled()V

    .line 260
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->reset(Z)V

    .line 261
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_PANORAMA_WARNING:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "TwGLBurstPanoramaMenu"

    const-string v2, "MSG arrived after the onDestro. Ignore exception"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :pswitch_1
    const-string v1, "TwGLBurstPanoramaMenu"

    const-string v2, "MESSAGE_PANORAMA_WARNING_LOW"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;->removeMessages(I)V

    .line 269
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;->removeMessages(I)V

    .line 270
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isScreenReaderActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 272
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_PANORAMA_WARNING:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 273
    :cond_1
    invoke-virtual {p0, v4, v8, v9}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 277
    :pswitch_2
    const-string v1, "TwGLBurstPanoramaMenu"

    const-string v2, "MESSAGE_PANORAMA_WARNING_HIGH"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;->removeMessages(I)V

    .line 279
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;->removeMessages(I)V

    .line 280
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_PANORAMA_WARNING:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 282
    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v5, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 286
    :pswitch_3
    const-string v1, "TwGLBurstPanoramaMenu"

    const-string v2, "MESSAGE_PANORAMA_PROCESSING"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 288
    :cond_2
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;->removeMessages(I)V

    goto/16 :goto_0

    .line 290
    :cond_3
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;->removeMessages(I)V

    .line 291
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_PANORAMA_PROCESSING:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 293
    invoke-virtual {p0, v6, v8, v9}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 298
    :pswitch_4
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;->removeMessages(I)V

    .line 299
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideGuideText()V

    goto/16 :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
