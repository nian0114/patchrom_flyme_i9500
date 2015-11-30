.class public Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "RecordingModeSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecordingModeSelectCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mRecordingMode:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;I)V
    .locals 1
    .param p1, "context"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "commandid"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 37
    packed-switch p2, :pswitch_data_0

    .line 61
    :goto_0
    return-void

    .line 39
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mRecordingMode:I

    goto :goto_0

    .line 42
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mRecordingMode:I

    goto :goto_0

    .line 45
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mRecordingMode:I

    goto :goto_0

    .line 48
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mRecordingMode:I

    goto :goto_0

    .line 51
    :pswitch_4
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mRecordingMode:I

    goto :goto_0

    .line 54
    :pswitch_5
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mRecordingMode:I

    goto :goto_0

    .line 57
    :pswitch_6
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mRecordingMode:I

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0xc1c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public execute()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 65
    iget-object v1, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    const-string v1, "RecordingModeSelectCommand"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_0
    return v0

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    const-string v1, "RecordingModeSelectCommand"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mRecordingMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onRecordingModeMenuSelect(I)V

    .line 76
    iget v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mZOrder:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 79
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
