.class Lcom/voovio/sweep/SweepView$8;
.super Ljava/lang/Object;
.source "SweepView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voovio/sweep/SweepView;->setSweep(Lcom/voovio/sweep/Sweep;)V
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
    iput-object p1, p0, Lcom/voovio/sweep/SweepView$8;->this$0:Lcom/voovio/sweep/SweepView;

    .line 998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/voovio/sweep/SweepView$8;->this$0:Lcom/voovio/sweep/SweepView;

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    invoke-virtual {v0}, Lcom/voovio/sweep/VoovioGeometry;->CreateVertexBuffer()V

    .line 1002
    iget-object v0, p0, Lcom/voovio/sweep/SweepView$8;->this$0:Lcom/voovio/sweep/SweepView;

    # getter for: Lcom/voovio/sweep/SweepView;->m_bPreloadImagesOnGPU:Z
    invoke-static {v0}, Lcom/voovio/sweep/SweepView;->access$6(Lcom/voovio/sweep/SweepView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/voovio/sweep/SweepView$8;->this$0:Lcom/voovio/sweep/SweepView;

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView$8;->this$0:Lcom/voovio/sweep/SweepView;

    # getter for: Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;
    invoke-static {v1}, Lcom/voovio/sweep/SweepView;->access$7(Lcom/voovio/sweep/SweepView;)Lcom/voovio/sweep/ResourceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/voovio/sweep/SweepView$8;->this$0:Lcom/voovio/sweep/SweepView;

    # getter for: Lcom/voovio/sweep/SweepView;->m_nHighResSampleSize:I
    invoke-static {v2}, Lcom/voovio/sweep/SweepView;->access$8(Lcom/voovio/sweep/SweepView;)I

    move-result v2

    iget-object v3, p0, Lcom/voovio/sweep/SweepView$8;->this$0:Lcom/voovio/sweep/SweepView;

    # getter for: Lcom/voovio/sweep/SweepView;->m_oBitmapPreferredConfig:Landroid/graphics/Bitmap$Config;
    invoke-static {v3}, Lcom/voovio/sweep/SweepView;->access$9(Lcom/voovio/sweep/SweepView;)Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/voovio/sweep/Sweep;->createHighResTextures(Lcom/voovio/sweep/ResourceManager;ILandroid/graphics/Bitmap$Config;)V

    .line 1009
    :goto_0
    iget-object v0, p0, Lcom/voovio/sweep/SweepView$8;->this$0:Lcom/voovio/sweep/SweepView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/voovio/sweep/SweepView;->access$11(Lcom/voovio/sweep/SweepView;Z)V

    .line 1010
    iget-object v0, p0, Lcom/voovio/sweep/SweepView$8;->this$0:Lcom/voovio/sweep/SweepView;

    # invokes: Lcom/voovio/sweep/SweepView;->start()V
    invoke-static {v0}, Lcom/voovio/sweep/SweepView;->access$12(Lcom/voovio/sweep/SweepView;)V

    .line 1011
    return-void

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/voovio/sweep/SweepView$8;->this$0:Lcom/voovio/sweep/SweepView;

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView$8;->this$0:Lcom/voovio/sweep/SweepView;

    # getter for: Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;
    invoke-static {v1}, Lcom/voovio/sweep/SweepView;->access$7(Lcom/voovio/sweep/SweepView;)Lcom/voovio/sweep/ResourceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/voovio/sweep/SweepView$8;->this$0:Lcom/voovio/sweep/SweepView;

    # getter for: Lcom/voovio/sweep/SweepView;->m_nLowResSampleSize:I
    invoke-static {v2}, Lcom/voovio/sweep/SweepView;->access$10(Lcom/voovio/sweep/SweepView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/voovio/sweep/Sweep;->createLowResTextures(Lcom/voovio/sweep/ResourceManager;I)V

    .line 1006
    iget-object v0, p0, Lcom/voovio/sweep/SweepView$8;->this$0:Lcom/voovio/sweep/SweepView;

    # getter for: Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;
    invoke-static {v0}, Lcom/voovio/sweep/SweepView;->access$7(Lcom/voovio/sweep/SweepView;)Lcom/voovio/sweep/ResourceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voovio/sweep/ResourceManager;->fillTexturePool()V

    goto :goto_0
.end method
