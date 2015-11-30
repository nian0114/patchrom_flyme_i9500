.class final Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FaceDetectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CommonEngine;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0

    .prologue
    .line 789
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CommonEngine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p2, "x1"    # Lcom/sec/android/app/camera/CommonEngine$1;

    .prologue
    .line 789
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Lcom/sec/android/seccamera/SecCamera$Face;Lcom/sec/android/seccamera/SecCamera;)V
    .locals 3
    .param p1, "faces"    # [Lcom/sec/android/seccamera/SecCamera$Face;
    .param p2, "camera"    # Lcom/sec/android/seccamera/SecCamera;

    .prologue
    const/4 v2, 0x1

    .line 791
    # getter for: Lcom/sec/android/app/camera/CommonEngine;->m_bIsTouchAutoFocusing:Z
    invoke-static {}, Lcom/sec/android/app/camera/CommonEngine;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mOnFacePositionChangedListener:Lcom/sec/android/app/camera/CommonEngine$OnFacePositionChangedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mOnFacePositionChangedListener:Lcom/sec/android/app/camera/CommonEngine$OnFacePositionChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 797
    :cond_3
    array-length v0, p1

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getFaceCount()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 798
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->bFaceRectHidden:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->access$402(Lcom/sec/android/app/camera/CommonEngine;Z)Z

    .line 799
    array-length v0, p1

    if-nez v0, :cond_5

    .line 800
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->stopHideFaceRectTimer()V

    .line 805
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->bFaceRectHidden:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$400(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v0

    if-eq v0, v2, :cond_0

    .line 808
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mOnFacePositionChangedListener:Lcom/sec/android/app/camera/CommonEngine$OnFacePositionChangedListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/CommonEngine$OnFacePositionChangedListener;->onFacePositionChanged([Lcom/sec/android/seccamera/SecCamera$Face;)V

    goto :goto_0

    .line 802
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->startHideFaceRectTimer()V

    goto :goto_1
.end method
