.class Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;
.super Landroid/os/Handler;
.source "TwGLVirtualTourMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v6, 0x7f0c016b

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v7, 0x0

    .line 258
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    if-nez v2, :cond_1

    .line 656
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 260
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandlerActiveFlag:Z
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_0

    .line 263
    :cond_3
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 265
    :sswitch_1
    const-string v2, "TwGLVirtualTourMenu"

    const-string v3, "Calibration started"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 267
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 268
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c02d7

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->resetStabilizer()V
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)V

    goto :goto_0

    .line 276
    :sswitch_3
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->restartInactivityTimer()V

    .line 277
    const-string v2, "TwGLVirtualTourMenu"

    const-string v3, "Calibration done"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setProgress(I)V
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)V

    .line 279
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)V

    .line 280
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 281
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 282
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 283
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 284
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    .line 285
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 286
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->handleShutterReleaseEvent()V

    .line 287
    :cond_4
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getRemainCount()I

    .line 288
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->mediaStorageDialog()V

    .line 289
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c02d6

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 290
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturing:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1102(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)Z

    .line 291
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturing:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->updateCapturingStatus(Z)V

    .line 292
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    const-string v3, "/.3DTour"

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/ImageSavingUtils;->getHiddenSavingDir(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "tempDir":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "3DTour_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "FileName":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mPs32Direction:[I

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->onImageCaptured(Ljava/lang/String;[I)V

    .line 295
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # operator++ for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1308(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    .line 296
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setRemainCounter()V
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)V

    .line 297
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1600(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    move-result v3

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientationForPicture:I
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1502(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)I

    goto/16 :goto_0

    .line 301
    .end local v0    # "FileName":Ljava/lang/String;
    .end local v1    # "tempDir":Ljava/lang/String;
    :sswitch_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 302
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->resetStabilizer()V
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)V

    goto/16 :goto_0

    .line 305
    :sswitch_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationInProgressCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    move-result v2

    rem-int/lit8 v2, v2, 0xe

    const/16 v3, 0xa

    if-gt v2, v3, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationInProgressCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    move-result v2

    rem-int/lit8 v2, v2, 0xe

    if-eqz v2, :cond_5

    .line 307
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    const/16 v3, 0xc

    # += operator for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressDegree:I
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1812(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)I

    .line 308
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressDegree:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    move-result v3

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setProgress(I)V
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)V

    .line 310
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # operator++ for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationInProgressCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1708(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    goto/16 :goto_0

    .line 313
    :sswitch_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    move-result-object v2

    const/16 v3, 0x168

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setProgress(I)V

    .line 314
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->restartInactivityTimer()V

    .line 315
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 316
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->handleShutterReleaseEvent()V

    .line 317
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturing:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1102(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)Z

    .line 318
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturing:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->updateCapturingStatus(Z)V

    .line 319
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    const-string v3, "/.3DTour"

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/ImageSavingUtils;->getHiddenSavingDir(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 320
    .restart local v1    # "tempDir":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "3DTour_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    .restart local v0    # "FileName":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mPs32Direction:[I

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->onImageCaptured(Ljava/lang/String;[I)V

    .line 322
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # operator++ for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1308(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    .line 323
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setRemainCounter()V
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)V

    .line 324
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    move-result v2

    if-lt v2, v8, :cond_7

    .line 325
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 327
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 328
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 337
    .end local v0    # "FileName":Ljava/lang/String;
    .end local v1    # "tempDir":Ljava/lang/String;
    :sswitch_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 338
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 339
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 340
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 341
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 342
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 343
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 344
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 345
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V
    invoke-static {v2, v8}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)V

    .line 346
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c02ce

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 350
    :sswitch_8
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    move-result v2

    if-lez v2, :cond_8

    .line 351
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->onDone(Z)V
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)V

    .line 355
    :goto_1
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    const v3, 0x7f0c02d5

    invoke-static {v2, v3, v5}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 353
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->onDone(Z)V
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)V

    goto :goto_1

    .line 359
    :sswitch_9
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 360
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 361
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 362
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 363
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 364
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 365
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 366
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 367
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V
    invoke-static {v2, v8}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)V

    .line 368
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c02d0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 371
    :sswitch_a
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 372
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 373
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 374
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 375
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 376
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 377
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 378
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 379
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V
    invoke-static {v2, v8}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)V

    .line 380
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c02d2

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 384
    :sswitch_b
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 385
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 386
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 387
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 388
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 389
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 390
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 391
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 392
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c02d6

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 393
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)V

    goto/16 :goto_0

    .line 397
    :sswitch_c
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setWarningArrowVisibleState(ZI)V
    invoke-static {v2, v7, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2600(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;ZI)V

    .line 398
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 399
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 400
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 401
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 402
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 403
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 404
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 405
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)V

    .line 406
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 407
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 408
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 409
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->resetStabilizer()V
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)V

    goto/16 :goto_0

    .line 428
    :sswitch_d
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->onDone(Z)V
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)V

    goto/16 :goto_0

    .line 476
    :sswitch_e
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    move-result v2

    if-lez v2, :cond_9

    .line 477
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->onDone(Z)V
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)V

    .line 481
    :goto_2
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    const v3, 0x7f0c02d3

    invoke-static {v2, v3, v5}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 479
    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->onDone(Z)V
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)V

    goto :goto_2

    .line 490
    :sswitch_f
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 491
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 492
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 493
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 494
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c02cd

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 495
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)V

    .line 496
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 497
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto/16 :goto_0

    .line 500
    :sswitch_10
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    .line 501
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    .line 502
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    .line 503
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 504
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c02cf

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 505
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(IZ)V
    invoke-static {v2, v7, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;IZ)V

    .line 506
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 507
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto/16 :goto_0

    .line 510
    :sswitch_11
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    .line 511
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    .line 512
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    .line 513
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 514
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c02d1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 515
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(IZ)V
    invoke-static {v2, v7, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;IZ)V

    .line 516
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 517
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto/16 :goto_0

    .line 524
    :sswitch_12
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 525
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 526
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 527
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 528
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 529
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 530
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c02d1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 531
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(IZ)V
    invoke-static {v2, v7, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;IZ)V

    .line 532
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 533
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 534
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto/16 :goto_0

    .line 537
    :sswitch_13
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 538
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 539
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 540
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 541
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 542
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 543
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c02cf

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 544
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(IZ)V
    invoke-static {v2, v7, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;IZ)V

    .line 545
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 546
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 547
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto/16 :goto_0

    .line 551
    :sswitch_14
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    iget v3, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setWarningArrowVisibleState(ZI)V
    invoke-static {v2, v5, v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2600(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;ZI)V

    .line 552
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 553
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto/16 :goto_0

    .line 556
    :sswitch_15
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setWarningArrowVisibleState(ZI)V
    invoke-static {v2, v7, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2600(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;ZI)V

    .line 557
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 558
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto/16 :goto_0

    .line 562
    :sswitch_16
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->onDone(Z)V
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)V

    goto/16 :goto_0

    .line 565
    :sswitch_17
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->onDone(Z)V
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)V

    goto/16 :goto_0

    .line 568
    :sswitch_18
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->onDone(Z)V
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)V

    .line 570
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    const v3, 0x7f0c02d3

    invoke-static {v2, v3, v5}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 573
    :sswitch_19
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->isActive()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 574
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->restart()V
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2900(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)V

    .line 576
    :cond_a
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 577
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->resetContinuousFileSequence()V

    .line 578
    :cond_b
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->on3DTourComplete()V

    .line 579
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->showThumbnailButton()V

    goto/16 :goto_0

    .line 582
    :sswitch_1a
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    move-result v2

    if-lez v2, :cond_c

    .line 583
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->onDone(Z)V
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)V

    .line 587
    :goto_3
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    const v3, 0x7f0c02d9

    invoke-static {v2, v3, v5}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 585
    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->onDone(Z)V
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)V

    goto :goto_3

    .line 604
    :sswitch_1b
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRemainingStepCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$3000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRemainingStepCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$3000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    .line 605
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 606
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 607
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 608
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 609
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c02d4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRemainingStepCount:I
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$3000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 610
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V
    invoke-static {v2, v8}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)V

    .line 611
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 612
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto/16 :goto_0

    .line 628
    :sswitch_1c
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 629
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 630
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 631
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    .line 632
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 633
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 634
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 635
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 636
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V
    invoke-static {v2, v8}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)V

    .line 637
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c02ce

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 640
    :sswitch_1d
    const/16 v2, 0xcc

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->removeMessages(I)V

    .line 641
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mPlayWarningArrowSound:Z
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$3100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 642
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_PANORAMA_WARNING:I

    invoke-virtual {v2, v3, v7}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 643
    const/16 v2, 0xcc

    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v2, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 647
    :sswitch_1e
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    move-result v2

    if-lez v2, :cond_d

    .line 648
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->onDone(Z)V
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)V

    goto/16 :goto_0

    .line 650
    :cond_d
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->onDone(Z)V
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)V

    goto/16 :goto_0

    .line 263
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0xa -> :sswitch_6
        0xb -> :sswitch_7
        0xc -> :sswitch_8
        0xd -> :sswitch_9
        0xe -> :sswitch_a
        0xf -> :sswitch_b
        0x10 -> :sswitch_c
        0x11 -> :sswitch_0
        0x12 -> :sswitch_d
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_e
        0x18 -> :sswitch_0
        0x19 -> :sswitch_f
        0x1a -> :sswitch_10
        0x1b -> :sswitch_11
        0x1c -> :sswitch_0
        0x1d -> :sswitch_0
        0x1e -> :sswitch_12
        0x1f -> :sswitch_13
        0x20 -> :sswitch_14
        0x21 -> :sswitch_14
        0x23 -> :sswitch_1a
        0x24 -> :sswitch_15
        0x25 -> :sswitch_0
        0x26 -> :sswitch_1c
        0x27 -> :sswitch_1e
        0xc8 -> :sswitch_16
        0xc9 -> :sswitch_17
        0xca -> :sswitch_18
        0xcb -> :sswitch_1b
        0xcc -> :sswitch_1d
        0x3e8 -> :sswitch_19
    .end sparse-switch
.end method
