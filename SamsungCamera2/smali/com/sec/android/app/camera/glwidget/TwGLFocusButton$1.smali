.class Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$1;
.super Ljava/lang/Object;
.source "TwGLFocusButton.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLNinePatch;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Lcom/sec/android/glview/TwGLNinePatch;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Ready:Lcom/sec/android/glview/TwGLNinePatch;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Lcom/sec/android/glview/TwGLNinePatch;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Fail:Lcom/sec/android/glview/TwGLNinePatch;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Lcom/sec/android/glview/TwGLNinePatch;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 173
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 184
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/16 v1, 0xa

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->access$502(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;I)I

    .line 179
    return-void
.end method
