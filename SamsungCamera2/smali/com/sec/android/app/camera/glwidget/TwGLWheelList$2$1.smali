.class Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2$1;
.super Ljava/lang/Object;
.source "TwGLWheelList.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 252
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->onCenterItemChanged()V
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOnScrollListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOnScrollListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;->onScrollEnd()V

    .line 248
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 256
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 260
    return-void
.end method
