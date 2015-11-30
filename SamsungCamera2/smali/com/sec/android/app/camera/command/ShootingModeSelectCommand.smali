.class public Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "ShootingModeSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShootingModeSelectCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mShootingMode:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;I)V
    .locals 1
    .param p1, "context"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "commandid"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 37
    packed-switch p2, :pswitch_data_0

    .line 116
    :goto_0
    :pswitch_0
    return-void

    .line 39
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 42
    :pswitch_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 45
    :pswitch_3
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 48
    :pswitch_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 51
    :pswitch_5
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 54
    :pswitch_6
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 57
    :pswitch_7
    const/16 v0, 0xd

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 60
    :pswitch_8
    const/16 v0, 0xe

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 63
    :pswitch_9
    const/16 v0, 0x11

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 66
    :pswitch_a
    const/16 v0, 0x17

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 69
    :pswitch_b
    const/16 v0, 0x27

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 72
    :pswitch_c
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 75
    :pswitch_d
    const/16 v0, 0x18

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 78
    :pswitch_e
    const/16 v0, 0x19

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 81
    :pswitch_f
    const/16 v0, 0x22

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 84
    :pswitch_10
    const/16 v0, 0x1f

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 87
    :pswitch_11
    const/16 v0, 0x23

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 90
    :pswitch_12
    const/16 v0, 0x25

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 93
    :pswitch_13
    const/16 v0, 0x26

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 96
    :pswitch_14
    const/16 v0, 0x1c

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 99
    :pswitch_15
    const/16 v0, 0x28

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 102
    :pswitch_16
    const/16 v0, 0x2a

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 105
    :pswitch_17
    const/16 v0, 0x2b

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 108
    :pswitch_18
    const/16 v0, 0x2c

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 111
    :pswitch_19
    const/16 v0, 0x30

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_c
        :pswitch_a
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_b
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method


# virtual methods
.method public execute()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 120
    iget-object v1, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    const-string v1, "ShootingModeSelectCommand"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 126
    const-string v1, "ShootingModeSelectCommand"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 131
    const-string v1, "ShootingModeSelectCommand"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->isPkgEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_5

    .line 140
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_1

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    .line 145
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPkgEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 149
    iget v1, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    sparse-switch v1, :sswitch_data_0

    .line 177
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 151
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "com.arcsoft.picturesbest.app"

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "com.arcsoft.picturesbest.app"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->showApplicationDisabledPopup(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "com.arcsoft.picmovie"

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "com.arcsoft.picmovie"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->showApplicationDisabledPopup(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "com.arcsoft.picaction.app"

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "com.arcsoft.picaction.app"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->showApplicationDisabledPopup(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "com.arcsoft.demo.piclear"

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "com.arcsoft.demo.piclear"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->showApplicationDisabledPopup(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x19 -> :sswitch_0
        0x1f -> :sswitch_2
        0x22 -> :sswitch_3
        0x26 -> :sswitch_1
    .end sparse-switch
.end method
