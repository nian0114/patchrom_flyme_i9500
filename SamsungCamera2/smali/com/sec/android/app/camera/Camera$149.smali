.class Lcom/sec/android/app/camera/Camera$149;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->showAquaShotKeySelectDialog()V
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
    .line 16343
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$149;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 16345
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$149;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/camera/Camera;->mShowAuqaKeySelectDialog:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$7002(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 16346
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$149;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setVolumeKeyAs(I)V

    .line 16347
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$149;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 16348
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$149;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    .line 16349
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$149;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->updateRemainCounter()V

    .line 16350
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$149;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mAquaShotKeySelectDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$7100(Lcom/sec/android/app/camera/Camera;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 16351
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$149;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/camera/Camera;->mAquaShotKeySelectDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$7102(Lcom/sec/android/app/camera/Camera;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 16352
    return-void
.end method
