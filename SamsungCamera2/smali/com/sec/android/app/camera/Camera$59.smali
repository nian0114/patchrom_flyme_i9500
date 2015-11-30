.class Lcom/sec/android/app/camera/Camera$59;
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
    .line 7928
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$59;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 7930
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$59;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->hideDlg(I)V

    .line 7931
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$59;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isP2pEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7932
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$59;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->setWifiP2pEnabled()V

    .line 7934
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_DIRECT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7935
    .local v0, "localIntent":Landroid/content/Intent;
    const-string v1, "AUTO_FINISH"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7937
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$59;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 7939
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$59;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/android/app/camera/Camera;->mShowWifiDialog:Z

    .line 7940
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$59;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 7941
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$59;->this$0:Lcom/sec/android/app/camera/Camera;

    iput-boolean v3, v1, Lcom/sec/android/app/camera/Camera;->mIsFromSNS:Z

    .line 7943
    :cond_1
    return-void
.end method
