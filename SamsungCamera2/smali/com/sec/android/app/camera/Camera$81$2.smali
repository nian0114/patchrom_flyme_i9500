.class Lcom/sec/android/app/camera/Camera$81$2;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera$81;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/Camera$81;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera$81;)V
    .locals 0

    .prologue
    .line 9130
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$81$2;->this$1:Lcom/sec/android/app/camera/Camera$81;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 9132
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$81$2;->this$1:Lcom/sec/android/app/camera/Camera$81;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$81;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$81$2;->this$1:Lcom/sec/android/app/camera/Camera$81;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$81;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 9133
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$81$2;->this$1:Lcom/sec/android/app/camera/Camera$81;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$81;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x56

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$81$2;->this$1:Lcom/sec/android/app/camera/Camera$81;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera$81;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 9140
    :cond_0
    :goto_0
    return-void

    .line 9135
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$81$2;->this$1:Lcom/sec/android/app/camera/Camera$81;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$81;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$81$2;->this$1:Lcom/sec/android/app/camera/Camera$81;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$81;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9136
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$81$2;->this$1:Lcom/sec/android/app/camera/Camera$81;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$81;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9137
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$81$2;->this$1:Lcom/sec/android/app/camera/Camera$81;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$81;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleSetSingleEffect()V

    goto :goto_0
.end method
