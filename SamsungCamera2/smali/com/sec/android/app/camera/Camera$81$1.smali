.class Lcom/sec/android/app/camera/Camera$81$1;
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
    .line 9093
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$81$1;->this$1:Lcom/sec/android/app/camera/Camera$81;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 9096
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$81$1;->this$1:Lcom/sec/android/app/camera/Camera$81;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$81;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showMenu()V

    .line 9097
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$81$1;->this$1:Lcom/sec/android/app/camera/Camera$81;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$81;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$81$1;->this$1:Lcom/sec/android/app/camera/Camera$81;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera$81;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9098
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$81$1;->this$1:Lcom/sec/android/app/camera/Camera$81;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$81;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$81$1;->this$1:Lcom/sec/android/app/camera/Camera$81;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera$81;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$500(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9099
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$81$1;->this$1:Lcom/sec/android/app/camera/Camera$81;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$81;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    # invokes: Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$4800(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/MenuBase;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9103
    :goto_0
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseMenu-loading**EndU["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 9104
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total-CameraUILoading(TSP)**EndU["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 9106
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$81$1;->this$1:Lcom/sec/android/app/camera/Camera$81;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$81;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$2000(Lcom/sec/android/app/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9107
    const-string v0, "Camera2"

    const-string v1, "BaseMenu loading - camera is destroying"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 9125
    :cond_0
    :goto_1
    return-void

    .line 9111
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$81$1;->this$1:Lcom/sec/android/app/camera/Camera$81;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$81;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mShareShot:Lcom/sec/android/app/camera/ShareShot;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$3600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/ShareShot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShareShot;->wakeupToSnSMod()V

    .line 9112
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$81$1;->this$1:Lcom/sec/android/app/camera/Camera$81;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$81;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 9113
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$81$1;->this$1:Lcom/sec/android/app/camera/Camera$81;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$81;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$81$1;->this$1:Lcom/sec/android/app/camera/Camera$81;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera$81;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->handleCameraModeChanged(I)V

    .line 9114
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$81$1;->this$1:Lcom/sec/android/app/camera/Camera$81;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$81;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x56

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$81$1;->this$1:Lcom/sec/android/app/camera/Camera$81;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera$81;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 9123
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$81$1;->this$1:Lcom/sec/android/app/camera/Camera$81;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$81;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isPanoramaFromSmusician()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9124
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$81$1;->this$1:Lcom/sec/android/app/camera/Camera$81;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$81;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    goto :goto_1

    .line 9118
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$81$1;->this$1:Lcom/sec/android/app/camera/Camera$81;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$81;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9119
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$81$1;->this$1:Lcom/sec/android/app/camera/Camera$81;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$81;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9120
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$81$1;->this$1:Lcom/sec/android/app/camera/Camera$81;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$81;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleSetSingleEffect()V

    goto :goto_2

    .line 9100
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
