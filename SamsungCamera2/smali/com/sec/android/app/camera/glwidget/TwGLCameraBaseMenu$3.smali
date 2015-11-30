.class Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu$3;
.super Ljava/lang/Object;
.source "TwGLCameraBaseMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideEffectMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;)V
    .locals 0

    .prologue
    .line 1805
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x4

    .line 1807
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadGroup:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1808
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadGroup:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1809
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getLightPipShotCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1810
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showThumbnailButton()V

    .line 1811
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1813
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showIndicators()V

    .line 1814
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1820
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1817
    return-void
.end method
