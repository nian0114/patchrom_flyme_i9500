.class public Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLIndicatorGroup.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 0
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 47
    return-void
.end method


# virtual methods
.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v0, 0x1

    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 54
    :cond_0
    iput-object p0, p1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 55
    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 56
    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 57
    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 58
    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    .line 59
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->updateAlpha()V

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public setVisibility(Lcom/sec/android/glview/TwGLView;I)V
    .locals 6
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "visibility"    # I

    .prologue
    const/4 v5, 0x1

    .line 65
    if-nez p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual {p1, p2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 70
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00b6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 72
    .local v1, "padding":I
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 73
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    .line 75
    .local v2, "v":Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 76
    int-to-float v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 77
    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    .line 78
    int-to-float v3, v1

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v1, v3

    goto :goto_1

    .line 81
    .end local v2    # "v":Lcom/sec/android/glview/TwGLView;
    :cond_2
    invoke-virtual {p1, v5}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    .line 82
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->updateAlpha()V

    goto :goto_0
.end method
