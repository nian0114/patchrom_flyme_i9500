.class Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;
.super Landroid/os/Handler;
.source "TwGLPanorama360Menu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)V
    .locals 0

    .prologue
    .line 1507
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1510
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1560
    :cond_0
    :goto_0
    return-void

    .line 1513
    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 1514
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;

    .line 1515
    .local v1, "result":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget v5, v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mAttachStatus:I

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcMoveToNextStateByAttachStatus(I)V
    invoke-static {v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$3600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;I)V

    .line 1517
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v4

    if-ne v4, v2, :cond_8

    .line 1518
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$3700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v4

    const/16 v5, 0xbb8

    if-ge v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$3700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 1520
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorLockObj:Ljava/lang/Object;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$3800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1521
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isShootable:Z
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$3900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Z

    move-result v5

    if-nez v5, :cond_2

    iget v5, v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mIsStootable:I

    if-ne v5, v2, :cond_2

    .line 1522
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mContextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$4000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    .line 1523
    .local v0, "cur_save_strage":I
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mSaveStorage:I
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$4100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)I

    move-result v5

    if-eq v5, v0, :cond_1

    .line 1524
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mSaveStorage:I
    invoke-static {v5, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$4102(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;I)I

    .line 1525
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v6, v6, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->checkAvailableStorage()Z
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$4300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z

    move-result v6

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mIsEnoughSpace:Z
    invoke-static {v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$4202(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Z)Z

    .line 1527
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mIsEnoughSpace:Z
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$4200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1528
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$4400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1529
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$4500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1534
    .end local v0    # "cur_save_strage":I
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mIsEnoughSpace:Z
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$4200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mGuideDialogVisibility:Z
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1535
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isShootable:Z
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$3900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mIsStootable:I

    if-nez v5, :cond_3

    .line 1536
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$4400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1537
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$4500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1539
    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget v6, v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mIsStootable:I

    if-ne v6, v2, :cond_6

    :goto_2
    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isShootable:Z
    invoke-static {v5, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$3902(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Z)Z

    .line 1540
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isShootable:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$3900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Z

    move-result v3

    # |= operator for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isStartShooting:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$4876(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;I)Z

    .line 1541
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isShootable:Z
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$3900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1542
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcResetShootingWaitProcess()V
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)V

    .line 1547
    :cond_4
    :goto_3
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1531
    .restart local v0    # "cur_save_strage":I
    :cond_5
    :try_start_1
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->showNotEnoughSpaceMsg()V
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$4600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)V

    goto :goto_1

    .end local v0    # "cur_save_strage":I
    :cond_6
    move v2, v3

    .line 1539
    goto :goto_2

    .line 1545
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    const/4 v3, 0x0

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$3702(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1550
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 1551
    iget v2, v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mImageID:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mShootingNum:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$3400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)I

    move-result v2

    if-lez v2, :cond_0

    .line 1552
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 1510
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
