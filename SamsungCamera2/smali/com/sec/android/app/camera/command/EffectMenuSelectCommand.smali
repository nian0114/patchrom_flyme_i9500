.class public Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "EffectMenuSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectMenuSelectCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mEffect:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;I)V
    .locals 1
    .param p1, "context"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "commandid"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 39
    packed-switch p2, :pswitch_data_0

    .line 177
    :goto_0
    :pswitch_0
    return-void

    .line 41
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 44
    :pswitch_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 47
    :pswitch_3
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 50
    :pswitch_4
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 53
    :pswitch_5
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 56
    :pswitch_6
    const/16 v0, 0x18

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 59
    :pswitch_7
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 62
    :pswitch_8
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 65
    :pswitch_9
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 68
    :pswitch_a
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 71
    :pswitch_b
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 74
    :pswitch_c
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 77
    :pswitch_d
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 80
    :pswitch_e
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 83
    :pswitch_f
    const/16 v0, 0xd

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 86
    :pswitch_10
    const/16 v0, 0x16

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 89
    :pswitch_11
    const/16 v0, 0xe

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 92
    :pswitch_12
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 95
    :pswitch_13
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 98
    :pswitch_14
    const/16 v0, 0x11

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 101
    :pswitch_15
    const/16 v0, 0x12

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 104
    :pswitch_16
    const/16 v0, 0x13

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 107
    :pswitch_17
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 110
    :pswitch_18
    const/16 v0, 0x15

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 114
    :pswitch_19
    const/16 v0, 0x28

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 117
    :pswitch_1a
    const/16 v0, 0x29

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 120
    :pswitch_1b
    const/16 v0, 0x31

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 123
    :pswitch_1c
    const/16 v0, 0x2a

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 126
    :pswitch_1d
    const/16 v0, 0x2b

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 129
    :pswitch_1e
    const/16 v0, 0x2c

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 132
    :pswitch_1f
    const/16 v0, 0x32

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 135
    :pswitch_20
    const/16 v0, 0x2d

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 138
    :pswitch_21
    const/16 v0, 0x2e

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 141
    :pswitch_22
    const/16 v0, 0x2f

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 144
    :pswitch_23
    const/16 v0, 0x30

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 147
    :pswitch_24
    const/16 v0, 0x19

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 150
    :pswitch_25
    const/16 v0, 0x1a

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 154
    :pswitch_26
    const/16 v0, 0x1b

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 157
    :pswitch_27
    const/16 v0, 0x1c

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 160
    :pswitch_28
    const/16 v0, 0x1d

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 163
    :pswitch_29
    const/16 v0, 0x1e

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 166
    :pswitch_2a
    const/16 v0, 0x1f

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 169
    :pswitch_2b
    const/16 v0, 0x33

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 172
    :pswitch_2c
    const/16 v0, 0x34

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_24
        :pswitch_5
        :pswitch_25
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_2c
        :pswitch_2b
    .end packed-switch
.end method


# virtual methods
.method public execute()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-object v3, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 182
    const-string v3, "EffectMenuSelectCommand"

    const-string v4, "return isStartPreview.."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    :goto_0
    return v2

    .line 186
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    const-string v3, "EffectMenuSelectCommand"

    const-string v4, "return getIsLaunchGallery.."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 192
    const-string v3, "EffectMenuSelectCommand"

    const-string v4, "return isCapturing.."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    const/16 v4, 0x33

    if-ne v3, v4, :cond_4

    .line 197
    const-string v3, "EffectMenuSelectCommand"

    const-string v4, "return front dual tracking."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v3, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c017d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v3, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 203
    .end local v1    # "text":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    .line 205
    .local v0, "currentEffect":I
    iget-object v3, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v4, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->onEffectMenuSelect(I)V

    .line 206
    iget v3, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    if-ne v0, v3, :cond_5

    .line 207
    iget-object v3, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 210
    iget-object v2, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 212
    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method
