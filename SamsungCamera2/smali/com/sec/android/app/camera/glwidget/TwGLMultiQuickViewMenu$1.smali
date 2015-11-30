.class Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$1;
.super Ljava/lang/Object;
.source "TwGLMultiQuickViewMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->initialize(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 102
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Lcom/sec/android/glview/TwGLList;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/glview/TwGLList;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 104
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->bScroll:Z
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->access$102(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;Z)Z

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->bScroll:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->launchGallery(I)V

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->bScroll:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->access$102(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;Z)Z

    :cond_3
    move v0, v1

    .line 113
    goto :goto_0
.end method
