.class Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$1;
.super Ljava/lang/Object;
.source "TwGLItemDataButton.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->refreshButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 2
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-interface {v0, v1}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    move-result v0

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
