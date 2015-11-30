.class public Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "CameraResolutionSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResolutionSelectCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mResolution:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;I)V
    .locals 1
    .param p1, "context"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "commandid"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 36
    packed-switch p2, :pswitch_data_0

    .line 151
    :goto_0
    :pswitch_0
    return-void

    .line 38
    :pswitch_1
    const/16 v0, 0x20

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 41
    :pswitch_2
    const/16 v0, 0x21

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 44
    :pswitch_3
    const/16 v0, 0x1e

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 47
    :pswitch_4
    const/16 v0, 0x24

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 50
    :pswitch_5
    const/16 v0, 0x2b

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 53
    :pswitch_6
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 56
    :pswitch_7
    const/16 v0, 0x2d

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 59
    :pswitch_8
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 62
    :pswitch_9
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 65
    :pswitch_a
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 68
    :pswitch_b
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 71
    :pswitch_c
    const/16 v0, 0x19

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 74
    :pswitch_d
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 77
    :pswitch_e
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 80
    :pswitch_f
    const/16 v0, 0x15

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 83
    :pswitch_10
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 86
    :pswitch_11
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 89
    :pswitch_12
    const/16 v0, 0x17

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 92
    :pswitch_13
    const/16 v0, 0x1a

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 95
    :pswitch_14
    const/16 v0, 0xd

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 98
    :pswitch_15
    const/16 v0, 0x1b

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 101
    :pswitch_16
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 104
    :pswitch_17
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 107
    :pswitch_18
    const/16 v0, 0x1c

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 110
    :pswitch_19
    const/16 v0, 0x18

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 113
    :pswitch_1a
    const/16 v0, 0x1f

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 116
    :pswitch_1b
    const/16 v0, 0x2e

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 119
    :pswitch_1c
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 122
    :pswitch_1d
    const/16 v0, 0xe

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 125
    :pswitch_1e
    const/16 v0, 0x1d

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 128
    :pswitch_1f
    const/16 v0, 0x26

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 131
    :pswitch_20
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 134
    :pswitch_21
    const/16 v0, 0x12

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 137
    :pswitch_22
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 140
    :pswitch_23
    const/16 v0, 0x29

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 143
    :pswitch_24
    const/16 v0, 0x25

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 146
    :pswitch_25
    const/16 v0, 0x27

    iput v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x8fc
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
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
        :pswitch_16
        :pswitch_17
        :pswitch_15
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_20
        :pswitch_0
        :pswitch_22
        :pswitch_21
        :pswitch_24
        :pswitch_1f
        :pswitch_25
        :pswitch_23
        :pswitch_7
        :pswitch_1b
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public execute()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 155
    iget-object v1, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    const-string v1, "ResolutionSelectCommand"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_0
    return v0

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    const-string v1, "ResolutionSelectCommand"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    const-string v1, "ResolutionSelectCommand"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mResolution:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onCameraResolutionMenuSelect(I)V

    .line 171
    iget v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mZOrder:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 174
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
