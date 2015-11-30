.class Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$1;
.super Landroid/view/OrientationEventListener;
.source "TwGLEasyCameraModeMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    const/4 v3, 0x1

    .line 423
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    invoke-static {p1}, Lcom/sec/android/glview/TwGLUtil;->getGLOrientationBySystemOrientation(I)I

    move-result v0

    .line 427
    .local v0, "newOrientation":I
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mLastOrientation:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->access$1100(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;)I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 428
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mLastOrientation:I
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->access$1102(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;I)I

    .line 429
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mLastOrientation:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->access$1100(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;)I

    move-result v2

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->init(ZI)V
    invoke-static {v1, v3, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->access$1200(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;ZI)V

    goto :goto_0

    .line 431
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mCheckModeView:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->access$1300(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mLastOrientation:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->access$1100(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;)I

    move-result v2

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->init(ZI)V
    invoke-static {v1, v3, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->access$1200(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;ZI)V

    goto :goto_0
.end method
