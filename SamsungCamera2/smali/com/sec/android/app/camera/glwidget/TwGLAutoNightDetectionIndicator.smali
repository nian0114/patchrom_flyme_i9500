.class public Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLAutoNightDetectionIndicator.java"


# static fields
.field public static final LOWLIGHT_DETECTED:I = 0x0

.field public static final LOWLIGHT_NOT_DETECTED:I = 0x2

.field public static final SMART_IS_DETECTED:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "TwGLAutoNightDetectionIndicator"


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 3
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 29
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f020403

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public setAutoNightDetectionIndicatorStatus(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 36
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 40
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 42
    :pswitch_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    goto :goto_0

    .line 54
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
