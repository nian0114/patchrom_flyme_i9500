.class Lcom/sec/android/app/camera/Camera$60;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 7945
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$60;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 7947
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$60;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->hideDlg(I)V

    .line 7948
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$60;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->removeDialog(I)V

    .line 7950
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$60;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-boolean v0, v0, Lcom/sec/android/app/camera/Camera;->mShowWifiDialog:Z

    if-eqz v0, :cond_0

    .line 7951
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$60;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShareMode(I)V

    .line 7954
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$60;->this$0:Lcom/sec/android/app/camera/Camera;

    iput-boolean v1, v0, Lcom/sec/android/app/camera/Camera;->mShowWifiDialog:Z

    .line 7961
    return-void
.end method
