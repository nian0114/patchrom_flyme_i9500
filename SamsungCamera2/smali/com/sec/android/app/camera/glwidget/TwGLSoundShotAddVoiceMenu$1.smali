.class Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$1;
.super Ljava/lang/Object;
.source "TwGLSoundShotAddVoiceMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 468
    packed-switch p1, :pswitch_data_0

    .line 482
    :goto_0
    return-void

    .line 470
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_POS_X:[I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->access$200()[I

    move-result-object v1

    aget v1, v1, v4

    int-to-float v1, v1

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_POS_Y:[I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->access$300()[I

    move-result-object v2

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FFZ)V

    goto :goto_0

    .line 473
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_POS_X:[I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->access$200()[I

    move-result-object v1

    aget v1, v1, v3

    int-to-float v1, v1

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_POS_Y:[I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->access$300()[I

    move-result-object v2

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FFZ)V

    goto :goto_0

    .line 476
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_POS_X:[I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->access$200()[I

    move-result-object v1

    aget v1, v1, v5

    int-to-float v1, v1

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_POS_Y:[I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->access$300()[I

    move-result-object v2

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FFZ)V

    goto :goto_0

    .line 479
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_POS_X:[I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->access$200()[I

    move-result-object v1

    aget v1, v1, v6

    int-to-float v1, v1

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_POS_Y:[I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->access$300()[I

    move-result-object v2

    aget v2, v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FFZ)V

    goto :goto_0

    .line 468
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
