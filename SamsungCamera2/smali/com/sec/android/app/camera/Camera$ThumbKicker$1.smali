.class Lcom/sec/android/app/camera/Camera$ThumbKicker$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera$ThumbKicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/Camera$ThumbKicker;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera$ThumbKicker;)V
    .locals 0

    .prologue
    .line 1302
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$ThumbKicker$1;->this$1:Lcom/sec/android/app/camera/Camera$ThumbKicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1304
    const-string v1, "Camera2"

    const-string v2, "mThumbSuspendKicker.run()"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_THUMBWORKER_SUSPEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1306
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$ThumbKicker$1;->this$1:Lcom/sec/android/app/camera/Camera$ThumbKicker;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera$ThumbKicker;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1307
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$ThumbKicker$1;->this$1:Lcom/sec/android/app/camera/Camera$ThumbKicker;

    # getter for: Lcom/sec/android/app/camera/Camera$ThumbKicker;->mThumbSuspendKickerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera$ThumbKicker;->access$2500(Lcom/sec/android/app/camera/Camera$ThumbKicker;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$ThumbKicker$1;->this$1:Lcom/sec/android/app/camera/Camera$ThumbKicker;

    # getter for: Lcom/sec/android/app/camera/Camera$ThumbKicker;->mThumbSuspendKicker:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera$ThumbKicker;->access$2400(Lcom/sec/android/app/camera/Camera$ThumbKicker;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1308
    return-void
.end method
