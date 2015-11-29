.class Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;
.super Ljava/lang/Object;
.source "TwSweepActionListView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->requestAnimation(FFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V
    .locals 0

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1301
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1500(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    .line 1303
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->isEasyOneHandTriggerGesture()Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$1600(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1304
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2$1;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2$1;-><init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->post(Ljava/lang/Runnable;)Z

    .line 1353
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$1400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1354
    return-void

    .line 1324
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    const/high16 v1, -0x41000000    # -0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->isEasyOneHandTriggerGesture()Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$1600(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1326
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2$2;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2$2;-><init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1346
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionViewRemove()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V

    .line 1347
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$502(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Z)Z

    .line 1348
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mWaveBackground:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1800(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mWaveBackground:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1800(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->cancelRunningAnimator()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1290
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1285
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$1400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1286
    :cond_0
    return-void
.end method
