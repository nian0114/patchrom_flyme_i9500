.class Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu$3;
.super Landroid/os/Handler;
.source "TwGLCamcorderRecordingMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 363
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorial2:Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorial2:Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;->setStepHide()V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 372
    :cond_1
    return-void
.end method
