.class Lcom/voovio/sweep/SweepView$9;
.super Ljava/lang/Object;
.source "SweepView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voovio/sweep/SweepView;->restore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voovio/sweep/SweepView;


# direct methods
.method constructor <init>(Lcom/voovio/sweep/SweepView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/voovio/sweep/SweepView$9;->this$0:Lcom/voovio/sweep/SweepView;

    .line 1103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1105
    iget-object v0, p0, Lcom/voovio/sweep/SweepView$9;->this$0:Lcom/voovio/sweep/SweepView;

    # invokes: Lcom/voovio/sweep/SweepView;->setCurrentEdge(I)V
    invoke-static {v0, v2}, Lcom/voovio/sweep/SweepView;->access$13(Lcom/voovio/sweep/SweepView;I)V

    .line 1106
    iget-object v0, p0, Lcom/voovio/sweep/SweepView$9;->this$0:Lcom/voovio/sweep/SweepView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    .line 1107
    iget-object v0, p0, Lcom/voovio/sweep/SweepView$9;->this$0:Lcom/voovio/sweep/SweepView;

    # invokes: Lcom/voovio/sweep/SweepView;->computeAvailableDirections()V
    invoke-static {v0}, Lcom/voovio/sweep/SweepView;->access$14(Lcom/voovio/sweep/SweepView;)V

    .line 1109
    iget-object v0, p0, Lcom/voovio/sweep/SweepView$9;->this$0:Lcom/voovio/sweep/SweepView;

    # invokes: Lcom/voovio/sweep/SweepView;->updateCameraValues()V
    invoke-static {v0}, Lcom/voovio/sweep/SweepView;->access$15(Lcom/voovio/sweep/SweepView;)V

    .line 1110
    iget-object v0, p0, Lcom/voovio/sweep/SweepView$9;->this$0:Lcom/voovio/sweep/SweepView;

    # invokes: Lcom/voovio/sweep/SweepView;->computeCurrentPosition()V
    invoke-static {v0}, Lcom/voovio/sweep/SweepView;->access$16(Lcom/voovio/sweep/SweepView;)V

    .line 1112
    iget-object v0, p0, Lcom/voovio/sweep/SweepView$9;->this$0:Lcom/voovio/sweep/SweepView;

    # getter for: Lcom/voovio/sweep/SweepView;->m_fCurFOV:F
    invoke-static {v0}, Lcom/voovio/sweep/SweepView;->access$17(Lcom/voovio/sweep/SweepView;)F

    move-result v0

    iget-object v1, p0, Lcom/voovio/sweep/SweepView$9;->this$0:Lcom/voovio/sweep/SweepView;

    # getter for: Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F
    invoke-static {v1}, Lcom/voovio/sweep/SweepView;->access$18(Lcom/voovio/sweep/SweepView;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/voovio/sweep/SweepView$9;->this$0:Lcom/voovio/sweep/SweepView;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView$9;->this$0:Lcom/voovio/sweep/SweepView;

    # getter for: Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F
    invoke-static {v1}, Lcom/voovio/sweep/SweepView;->access$18(Lcom/voovio/sweep/SweepView;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/voovio/sweep/SweepView;->access$19(Lcom/voovio/sweep/SweepView;F)V

    .line 1114
    iget-object v0, p0, Lcom/voovio/sweep/SweepView$9;->this$0:Lcom/voovio/sweep/SweepView;

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView$9;->this$0:Lcom/voovio/sweep/SweepView;

    # getter for: Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F
    invoke-static {v1}, Lcom/voovio/sweep/SweepView;->access$18(Lcom/voovio/sweep/SweepView;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setFov(F)V

    .line 1116
    iget-object v0, p0, Lcom/voovio/sweep/SweepView$9;->this$0:Lcom/voovio/sweep/SweepView;

    # invokes: Lcom/voovio/sweep/SweepView;->updateGLViewport(Z)V
    invoke-static {v0, v2}, Lcom/voovio/sweep/SweepView;->access$20(Lcom/voovio/sweep/SweepView;Z)V

    .line 1118
    iget-object v0, p0, Lcom/voovio/sweep/SweepView$9;->this$0:Lcom/voovio/sweep/SweepView;

    # getter for: Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/voovio/sweep/SweepView;->access$21(Lcom/voovio/sweep/SweepView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/voovio/sweep/SweepView$9;->this$0:Lcom/voovio/sweep/SweepView;

    # getter for: Lcom/voovio/sweep/SweepView;->m_oZoomChangedEventRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/voovio/sweep/SweepView;->access$22(Lcom/voovio/sweep/SweepView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1120
    :cond_0
    return-void
.end method
