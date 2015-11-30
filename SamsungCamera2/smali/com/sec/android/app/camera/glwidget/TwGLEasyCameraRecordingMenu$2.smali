.class Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu$2;
.super Landroid/os/Handler;
.source "TwGLEasyCameraRecordingMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 143
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorial2:Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorial2:Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;->setStepHide()V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 151
    :cond_1
    return-void
.end method
