.class Lcom/sec/android/glview/TwGLContext$hoverclass;
.super Ljava/lang/Object;
.source "TwGLContext.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/glview/TwGLContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "hoverclass"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/TwGLContext;


# direct methods
.method private constructor <init>(Lcom/sec/android/glview/TwGLContext;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/sec/android/glview/TwGLContext$hoverclass;->this$0:Lcom/sec/android/glview/TwGLContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/glview/TwGLContext;Lcom/sec/android/glview/TwGLContext$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "x1"    # Lcom/sec/android/glview/TwGLContext$1;

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLContext$hoverclass;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext$hoverclass;->this$0:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext$hoverclass;->this$0:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLContext;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 369
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
