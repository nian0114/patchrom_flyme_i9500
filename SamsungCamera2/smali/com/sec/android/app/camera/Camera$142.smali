.class Lcom/sec/android/app/camera/Camera$142;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->showDataUsageWarningDialog(I)V
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
    .line 16205
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$142;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 16207
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$142;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mDataCheckPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 16208
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$142;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDataWarningType()I

    move-result v0

    if-nez v0, :cond_1

    .line 16209
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$142;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getContextualFilename()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 16210
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$142;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setContextualFilename(I)V

    .line 16211
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$142;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->setContextualFilename(I)V

    .line 16220
    :cond_0
    :goto_0
    return-void

    .line 16213
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$142;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDataWarningType()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 16214
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$142;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setContextualFilename(I)V

    .line 16215
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$142;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->setContextualFilename(I)V

    goto :goto_0

    .line 16216
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$142;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDataWarningType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 16217
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$142;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    .line 16218
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$142;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onHelpPopupSelect(I)V

    goto :goto_0
.end method
