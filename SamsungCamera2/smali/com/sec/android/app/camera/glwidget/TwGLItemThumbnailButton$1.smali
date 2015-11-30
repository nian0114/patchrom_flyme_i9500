.class Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$1;
.super Ljava/lang/Object;
.source "TwGLItemThumbnailButton.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->refreshButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 8
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 219
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnClickListener;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 220
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/app/camera/Camera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v1

    .line 221
    .local v1, "currentEffect":I
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/app/camera/Camera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCommandId:I
    invoke-static {v7}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v2

    .line 222
    .local v2, "modeId":I
    if-ne v1, v2, :cond_1

    move v0, v4

    .line 223
    .local v0, "bEffectSelected":Z
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnClickListener;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-interface {v6, v7}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    move-result v3

    .line 224
    .local v3, "result":Z
    if-eqz v3, :cond_0

    .line 225
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLSelectButton;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 231
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLSelectButton;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/sec/android/glview/TwGLSelectButton;->setSelected(Z)V

    .line 232
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonHighlight:Lcom/sec/android/glview/TwGLNinePatch;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLNinePatch;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 237
    .end local v0    # "bEffectSelected":Z
    .end local v1    # "currentEffect":I
    .end local v2    # "modeId":I
    .end local v3    # "result":Z
    :cond_0
    :goto_1
    return v3

    .restart local v1    # "currentEffect":I
    .restart local v2    # "modeId":I
    :cond_1
    move v0, v5

    .line 222
    goto :goto_0

    .end local v1    # "currentEffect":I
    .end local v2    # "modeId":I
    :cond_2
    move v3, v5

    .line 237
    goto :goto_1
.end method
