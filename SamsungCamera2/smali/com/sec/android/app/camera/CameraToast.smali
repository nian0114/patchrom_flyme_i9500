.class public Lcom/sec/android/app/camera/CameraToast;
.super Ljava/lang/Object;
.source "CameraToast.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;
    .locals 5
    .param p0, "context"    # Lcom/sec/android/app/camera/Camera;
    .param p1, "strId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 9
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 10
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0407

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 13
    :cond_0
    return-object v0
.end method

.method public static makeText(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 5
    .param p0, "context"    # Lcom/sec/android/app/camera/Camera;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 17
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 18
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0407

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 21
    :cond_0
    return-object v0
.end method
