.class Lcom/sec/android/app/camera/CommonEngine$4;
.super Landroid/view/OrientationEventListener;
.source "CommonEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CommonEngine;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CommonEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CommonEngine;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 4033
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$4;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 4035
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 4036
    const-string v1, "CommonEngine"

    const-string v2, "onOrientationChanged: orientation - unknown orientation"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 4058
    :goto_0
    return-void

    .line 4040
    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/Util;->roundOrientation(I)I

    move-result v0

    .line 4041
    .local v0, "newOrientation":I
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$4;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$4;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4043
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$4;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mLastOrientation:I
    invoke-static {v1}, Lcom/sec/android/app/camera/CommonEngine;->access$1300(Lcom/sec/android/app/camera/CommonEngine;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 4044
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$4;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v1}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4045
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$4;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v1}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->sendOrientaionInfotoHAL(I)V

    .line 4057
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$4;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-static {p1}, Lcom/sec/android/app/camera/Util;->roundOrientation(I)I

    move-result v2

    # invokes: Lcom/sec/android/app/camera/CommonEngine;->setLastOrientation(I)V
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CommonEngine;->access$1400(Lcom/sec/android/app/camera/CommonEngine;I)V

    goto :goto_0
.end method
