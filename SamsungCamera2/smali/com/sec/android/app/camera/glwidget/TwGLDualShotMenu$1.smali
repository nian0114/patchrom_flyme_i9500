.class Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;
.super Landroid/os/Handler;
.source "TwGLDualShotMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v1, 0x33

    const/4 v6, 0x4

    const-wide/16 v4, 0xc8

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 150
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 152
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    if-eq v0, v1, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    :cond_2
    const-string v0, "TwGLDualShotMenu"

    const-string v1, "Hide Boundry"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->hideBoundryRect()V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setGrowable(Z)V

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine;->setEffectVisibleSync(Z)V

    goto :goto_0

    .line 164
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->showBoundryRect()V

    goto/16 :goto_0

    .line 169
    :pswitch_2
    const-string v0, "TwGLDualShotMenu"

    const-string v1, "Dual Shot Progress Timer"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->access$1000(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_5

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->access$1100(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/glview/TwGLProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->access$1100(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/glview/TwGLProgressBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 175
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->access$1100(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/glview/TwGLProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 179
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->access$1200(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/glview/TwGLProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->access$1200(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/glview/TwGLProgressBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 183
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->access$1200(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/glview/TwGLProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
