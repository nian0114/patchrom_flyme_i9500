.class Lcom/sec/android/app/camera/Camera$58;
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
    .line 7907
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$58;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 7909
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$58;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sec.android.directconnect"

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7910
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$58;->this$0:Lcom/sec/android/app/camera/Camera;

    const-string v2, "com.sec.android.directconnect"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->showApplicationDisabledPopup(Ljava/lang/String;)V

    .line 7922
    :cond_0
    :goto_0
    return-void

    .line 7913
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$58;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-boolean v1, v1, Lcom/sec/android/app/camera/Camera;->mShowWifiDialog:Z

    if-eqz v1, :cond_0

    .line 7914
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$58;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->hideDlg(I)V

    .line 7915
    const/4 v0, 0x1

    .line 7916
    .local v0, "mstate":I
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$58;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/sec/android/app/camera/CameraSettings;->androidBeamController(ZI)V

    .line 7917
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$58;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/Camera;->setEnableDirectConnect(Z)V

    .line 7919
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$58;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->showRemoteViewfinderNfcConnectScreen()V

    .line 7920
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$58;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/android/app/camera/Camera;->mShowWifiDialog:Z

    goto :goto_0
.end method
