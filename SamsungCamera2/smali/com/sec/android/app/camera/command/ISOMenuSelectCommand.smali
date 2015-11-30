.class public Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "ISOMenuSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ISOMenuSelectCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mISO:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;I)V
    .locals 1
    .param p1, "context"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "commandid"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 36
    packed-switch p2, :pswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 38
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mISO:I

    goto :goto_0

    .line 41
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mISO:I

    goto :goto_0

    .line 44
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mISO:I

    goto :goto_0

    .line 47
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mISO:I

    goto :goto_0

    .line 50
    :pswitch_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mISO:I

    goto :goto_0

    .line 53
    :pswitch_5
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mISO:I

    goto :goto_0

    .line 56
    :pswitch_6
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mISO:I

    goto :goto_0

    .line 59
    :pswitch_7
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mISO:I

    goto :goto_0

    .line 62
    :pswitch_8
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mISO:I

    goto :goto_0

    .line 65
    :pswitch_9
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mISO:I

    goto :goto_0

    .line 68
    :pswitch_a
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mISO:I

    goto :goto_0

    .line 71
    :pswitch_b
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mISO:I

    goto :goto_0

    .line 74
    :pswitch_c
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mISO:I

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public execute()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 83
    iget-object v1, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const-string v1, "ISOMenuSelectCommand"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    return v0

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    const-string v1, "ISOMenuSelectCommand"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    const-string v1, "ISOMenuSelectCommand"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mISO:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onISOMenuSelect(I)V

    .line 99
    iget v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mZOrder:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 102
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
