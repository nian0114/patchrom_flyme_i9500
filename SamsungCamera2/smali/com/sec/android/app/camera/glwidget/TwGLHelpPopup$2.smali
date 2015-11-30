.class Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$2;
.super Ljava/lang/Thread;
.source "TwGLHelpPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->onShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 474
    const-wide/16 v2, 0x9c4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 476
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$1500(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$1600(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$1700(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$1800(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c0221

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$1500(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c0221

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$1500(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 485
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
