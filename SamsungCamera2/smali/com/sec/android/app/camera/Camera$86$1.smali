.class Lcom/sec/android/app/camera/Camera$86$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera$86;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/Camera$86;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera$86;)V
    .locals 0

    .prologue
    .line 14666
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$86$1;->this$1:Lcom/sec/android/app/camera/Camera$86;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 14668
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$86$1;->this$1:Lcom/sec/android/app/camera/Camera$86;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$86;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->bPauseAudioPlayback:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$6200(Lcom/sec/android/app/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 14669
    const-string v0, "Camera2"

    const-string v1, "resumeAudioPlayback after focus"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 14670
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$86$1;->this$1:Lcom/sec/android/app/camera/Camera$86;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$86;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$4200(Lcom/sec/android/app/camera/Camera;)Landroid/media/AudioManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14671
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$86$1;->this$1:Lcom/sec/android/app/camera/Camera$86;

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$86;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$86$1;->this$1:Lcom/sec/android/app/camera/Camera$86;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$86;->this$0:Lcom/sec/android/app/camera/Camera;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    # setter for: Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/Camera;->access$4202(Lcom/sec/android/app/camera/Camera;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 14672
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$86$1;->this$1:Lcom/sec/android/app/camera/Camera$86;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$86;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$4200(Lcom/sec/android/app/camera/Camera;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$86$1;->this$1:Lcom/sec/android/app/camera/Camera$86;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera$86;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 14674
    :cond_1
    return-void
.end method
