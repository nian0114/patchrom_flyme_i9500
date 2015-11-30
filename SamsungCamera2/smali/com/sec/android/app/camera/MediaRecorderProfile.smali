.class public Lcom/sec/android/app/camera/MediaRecorderProfile;
.super Ljava/lang/Object;
.source "MediaRecorderProfile.java"


# static fields
.field private static final PROFILE_1080_1080:I = 0xd

.field private static final PROFILE_1280_720:I = 0x2

.field private static final PROFILE_1280_720_60FPS:I = 0xc

.field private static final PROFILE_1440_1080:I = 0x1

.field private static final PROFILE_176_144:I = 0x6

.field private static final PROFILE_1920_1080:I = 0x0

.field private static final PROFILE_1920_1080_60FPS:I = 0xb

.field private static final PROFILE_320_240:I = 0x5

.field private static final PROFILE_3840_2160:I = 0x9

.field private static final PROFILE_640_360:I = 0xa

.field private static final PROFILE_640_480:I = 0x4

.field private static final PROFILE_720_480:I = 0x3

.field private static final PROFILE_800_450_Animated_Scene:I = 0x8

.field private static final PROFILE_MMS:I = 0x7

.field private static final PROPERTY_AUDIO_BITRATE:I = 0x7

.field private static final PROPERTY_AUDIO_ENCORDER:I = 0x6

.field private static final PROPERTY_AUDIO_NUM_CHANNELS:I = 0x8

.field private static final PROPERTY_AUDIO_SAMPLINGRATE:I = 0x9

.field private static final PROPERTY_VIDEO_BITRATE_FINE:I = 0x2

.field private static final PROPERTY_VIDEO_BITRATE_NORMAL:I = 0x3

.field private static final PROPERTY_VIDEO_BITRATE_SUPERFINE:I = 0x1

.field private static final PROPERTY_VIDEO_ENCORDER:I = 0x0

.field private static final PROPERTY_VIDEO_FRAME_RATE:I = 0x4

.field private static final PROPERTY_VIDEO_OUTPUT_FORMAT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MediaRecorderProfile"


# instance fields
.field public final mAudioBitrate:I

.field public final mAudioChannels:I

.field public final mAudioEncoder:I

.field public final mAudioSamplingRate:I

.field private mDualProfileTable:[[I

.field public final mOutputFormat:I

.field private mProfileTable:[[I

.field public final mVideoBitrate:I

.field public final mVideoEncoder:I

.field public final mVideoFps:I

.field public final mVideoHeight:I

.field public final mVideoWidth:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;I)V
    .locals 12
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "quality"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/16 v7, 0xa

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/16 v4, 0xe

    new-array v4, v4, [[I

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    aput-object v5, v4, v10

    new-array v5, v7, [I

    fill-array-data v5, :array_1

    aput-object v5, v4, v8

    new-array v5, v7, [I

    fill-array-data v5, :array_2

    aput-object v5, v4, v11

    const/4 v5, 0x3

    new-array v6, v7, [I

    fill-array-data v6, :array_3

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_4

    aput-object v5, v4, v9

    const/4 v5, 0x5

    new-array v6, v7, [I

    fill-array-data v6, :array_5

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-array v6, v7, [I

    fill-array-data v6, :array_6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-array v6, v7, [I

    fill-array-data v6, :array_7

    aput-object v6, v4, v5

    const/16 v5, 0x8

    new-array v6, v7, [I

    fill-array-data v6, :array_8

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-array v6, v7, [I

    fill-array-data v6, :array_9

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_a

    aput-object v5, v4, v7

    const/16 v5, 0xb

    new-array v6, v7, [I

    fill-array-data v6, :array_b

    aput-object v6, v4, v5

    const/16 v5, 0xc

    new-array v6, v7, [I

    fill-array-data v6, :array_c

    aput-object v6, v4, v5

    const/16 v5, 0xd

    new-array v6, v7, [I

    fill-array-data v6, :array_d

    aput-object v6, v4, v5

    iput-object v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    .line 148
    const/16 v4, 0xe

    new-array v4, v4, [[I

    new-array v5, v7, [I

    fill-array-data v5, :array_e

    aput-object v5, v4, v10

    new-array v5, v7, [I

    fill-array-data v5, :array_f

    aput-object v5, v4, v8

    new-array v5, v7, [I

    fill-array-data v5, :array_10

    aput-object v5, v4, v11

    const/4 v5, 0x3

    new-array v6, v7, [I

    fill-array-data v6, :array_11

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_12

    aput-object v5, v4, v9

    const/4 v5, 0x5

    new-array v6, v7, [I

    fill-array-data v6, :array_13

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-array v6, v7, [I

    fill-array-data v6, :array_14

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-array v6, v7, [I

    fill-array-data v6, :array_15

    aput-object v6, v4, v5

    const/16 v5, 0x8

    new-array v6, v7, [I

    fill-array-data v6, :array_16

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-array v6, v7, [I

    fill-array-data v6, :array_17

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_18

    aput-object v5, v4, v7

    const/16 v5, 0xb

    new-array v6, v7, [I

    fill-array-data v6, :array_19

    aput-object v6, v4, v5

    const/16 v5, 0xc

    new-array v6, v7, [I

    fill-array-data v6, :array_1a

    aput-object v6, v4, v5

    const/16 v5, 0xd

    new-array v6, v7, [I

    fill-array-data v6, :array_1b

    aput-object v6, v4, v5

    iput-object v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mDualProfileTable:[[I

    .line 223
    const/4 v0, 0x3

    .line 224
    .local v0, "propertyIndex":I
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v2

    .line 225
    .local v2, "resolutionId":I
    const/4 v1, 0x3

    .line 228
    .local v1, "qualityIndex":I
    sparse-switch v2, :sswitch_data_0

    .line 266
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 278
    :goto_1
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 279
    const/16 v0, 0x8

    .line 280
    const-string v4, "800x450"

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    .line 292
    :cond_0
    :goto_2
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderRecordingMMSMode()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x12

    if-ne v2, v4, :cond_5

    .line 293
    iput v11, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoEncoder:I

    .line 298
    :goto_3
    const/4 v3, 0x0

    .line 299
    .local v3, "use_gpu_filter":Z
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v4

    if-eq v4, v8, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v4

    if-eqz v4, :cond_2

    .line 300
    :cond_1
    const/4 v3, 0x1

    .line 302
    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderRecordingMMSMode()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 303
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Message_MmsModeCaptureVideoBitRate"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_6

    .line 304
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Message_MmsModeCaptureVideoBitRate"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    .line 320
    :goto_4
    if-eqz v3, :cond_a

    .line 321
    iget-object v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mDualProfileTable:[[I

    aget-object v4, v4, v0

    aget v4, v4, v9

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoFps:I

    .line 326
    :goto_5
    iget-object v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x5

    aget v4, v4, v5

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mOutputFormat:I

    .line 327
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    .line 328
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    .line 331
    iget-object v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x6

    aget v4, v4, v5

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioEncoder:I

    .line 332
    iget-object v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x7

    aget v4, v4, v5

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioBitrate:I

    .line 333
    iget-object v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v4, v4, v0

    const/16 v5, 0x8

    aget v4, v4, v5

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioChannels:I

    .line 334
    iget-object v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v4, v4, v0

    const/16 v5, 0x9

    aget v4, v4, v5

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioSamplingRate:I

    .line 335
    return-void

    .line 230
    .end local v3    # "use_gpu_filter":Z
    :sswitch_0
    const/16 v0, 0xb

    .line 231
    goto/16 :goto_0

    .line 233
    :sswitch_1
    const/16 v0, 0xc

    .line 234
    goto/16 :goto_0

    .line 236
    :sswitch_2
    const/4 v0, 0x0

    .line 237
    goto/16 :goto_0

    .line 239
    :sswitch_3
    const/4 v0, 0x1

    .line 240
    goto/16 :goto_0

    .line 243
    :sswitch_4
    const/4 v0, 0x2

    .line 244
    goto/16 :goto_0

    .line 247
    :sswitch_5
    const/4 v0, 0x3

    .line 248
    goto/16 :goto_0

    .line 250
    :sswitch_6
    const/4 v0, 0x4

    .line 251
    goto/16 :goto_0

    .line 253
    :sswitch_7
    const/16 v0, 0xa

    .line 254
    goto/16 :goto_0

    .line 256
    :sswitch_8
    const/4 v0, 0x5

    .line 257
    goto/16 :goto_0

    .line 259
    :sswitch_9
    const/4 v0, 0x6

    .line 260
    goto/16 :goto_0

    .line 262
    :sswitch_a
    const/16 v0, 0x9

    goto/16 :goto_0

    .line 268
    :pswitch_0
    const/4 v1, 0x1

    .line 269
    goto/16 :goto_1

    .line 271
    :pswitch_1
    const/4 v1, 0x2

    .line 272
    goto/16 :goto_1

    .line 274
    :pswitch_2
    const/4 v1, 0x3

    goto/16 :goto_1

    .line 281
    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v4

    if-ne v4, v8, :cond_0

    .line 282
    const/4 v0, 0x7

    .line 284
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 285
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_2

    .line 287
    :cond_4
    const/16 v2, 0x13

    goto/16 :goto_2

    .line 295
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v4, v4, v0

    aget v4, v4, v10

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoEncoder:I

    goto/16 :goto_3

    .line 306
    .restart local v3    # "use_gpu_filter":Z
    :cond_6
    if-eqz v3, :cond_7

    .line 307
    iget-object v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mDualProfileTable:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    goto/16 :goto_4

    .line 309
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    goto/16 :goto_4

    .line 313
    :cond_8
    if-eqz v3, :cond_9

    .line 314
    iget-object v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mDualProfileTable:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    goto/16 :goto_4

    .line 316
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    goto/16 :goto_4

    .line 323
    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v4, v4, v0

    aget v4, v4, v9

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoFps:I

    goto/16 :goto_5

    .line 73
    :array_0
    .array-data 4
        0x2
        0x1036640
        0xe4e1c0
        0xc65d40
        0x1e
        0x2
        0x3
        0x1f400
        0x2
        0xbb80
    .end array-data

    :array_1
    .array-data 4
        0x2
        0xc65d40
        0xa7d8c0
        0x895440
        0x1e
        0x2
        0x3
        0x1f400
        0x2
        0xbb80
    .end array-data

    :array_2
    .array-data 4
        0x2
        0xb71b00
        0x989680
        0x7a1200
        0x1e
        0x2
        0x3
        0x1f400
        0x2
        0xbb80
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x34a0a8
        0x2b3e50
        0x231090
        0x1e
        0x2
        0x3
        0x1f400
        0x2
        0xbb80
    .end array-data

    :array_4
    .array-data 4
        0x2
        0x2ef770
        0x26f4a8
        0x1eceb8
        0x1e
        0x2
        0x3
        0x1f400
        0x2
        0xbb80
    .end array-data

    :array_5
    .array-data 4
        0x2
        0xbb418
        0x9c7e8
        0x7e770
        0x1e
        0x2
        0x3
        0x1f400
        0x2
        0xbb80
    .end array-data

    :array_6
    .array-data 4
        0x2
        0x5dc00
        0x4e200
        0x3e800
        0x1e
        0x2
        0x3
        0x1f400
        0x2
        0xbb80
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x17764
        0x17764
        0x17764
        0xf
        0x1
        0x1
        0x2fa8
        0x1
        0x1f40
    .end array-data

    :array_8
    .array-data 4
        0x2
        0x36ee80
        0x2dc6c0
        0x1e8480
        0xf
        0x2
        0x3
        0x1f400
        0x2
        0xbb80
    .end array-data

    :array_9
    .array-data 4
        0x2
        0x2dc6c00
        0x2dc6c00
        0x2dc6c00
        0x1e
        0x2
        0x3
        0x1f400
        0x2
        0xbb80
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x2ef770
        0x26f4a8
        0x1eceb8
        0x1e
        0x2
        0x3
        0x1f400
        0x2
        0xbb80
    .end array-data

    :array_b
    .array-data 4
        0x2
        0xd59f80
        0xe4e1c0
        0xc65d40
        0x3c
        0x2
        0x3
        0x1f400
        0x2
        0xbb80
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x989680
        0x989680
        0x7a1200
        0x3c
        0x2
        0x3
        0x1f400
        0x2
        0xbb80
    .end array-data

    :array_d
    .array-data 4
        0x2
        0xb71b00
        0x989680
        0x7a1200
        0x1e
        0x2
        0x3
        0x1f400
        0x2
        0xbb80
    .end array-data

    .line 148
    :array_e
    .array-data 4
        0x2
        0xd59f80
        0xb71b00
        0x989680
        0x18
        0x2
        0x3
        0x1f400
        0x2
        0xbb80
    .end array-data

    :array_f
    .array-data 4
        0x2
        0xa1be40
        0x864700
        0x6ddd00
        0x18
        0x2
        0x3
        0x1f400
        0x2
        0xbb80
    .end array-data

    :array_10
    .array-data 4
        0x2
        0x9477d0
        0x7a1200
        0x61a800
        0x18
        0x2
        0x3
        0x1f400
        0x2
        0xbb80
    .end array-data

    :array_11
    .array-data 4
        0x2
        0x2a1958
        0x229778
        0x1c0bb0
        0x18
        0x2
        0x3
        0x1f400
        0x2
        0xbb80
    .end array-data

    :array_12
    .array-data 4
        0x2
        0x2625a0
        0x1f2890
        0x18a498
        0x18
        0x2
        0x3
        0x1f400
        0x2
        0xbb80
    .end array-data

    :array_13
    .array-data 4
        0x2
        0x97db0
        0x7d3e8
        0x65130
        0x18
        0x2
        0x3
        0x1f400
        0x2
        0xbb80
    .end array-data

    :array_14
    .array-data 4
        0x2
        0x5dc00
        0x4e200
        0x3e800
        0x1e
        0x2
        0x3
        0x1f400
        0x2
        0xbb80
    .end array-data

    :array_15
    .array-data 4
        0x1
        0x17764
        0x17764
        0x17764
        0xf
        0x1
        0x1
        0x2fa8
        0x1
        0x1f40
    .end array-data

    :array_16
    .array-data 4
        0x2
        0x36ee80
        0x2dc6c0
        0x1e8480
        0xf
        0x2
        0x3
        0x1f400
        0x2
        0xbb80
    .end array-data

    :array_17
    .array-data 4
        0x2
        0x2dc6c00
        0x2dc6c0
        0x1e8480
        0x1e
        0x2
        0x3
        0x1f400
        0x2
        0xbb80
    .end array-data

    :array_18
    .array-data 4
        0x2
        0x2625a0
        0x1f2890
        0x18a498
        0x18
        0x2
        0x3
        0x1f400
        0x2
        0xbb80
    .end array-data

    :array_19
    .array-data 4
        0x2
        0xd59f80
        0xe4e1c0
        0xc65d40
        0x3c
        0x2
        0x3
        0x1f400
        0x2
        0xbb80
    .end array-data

    :array_1a
    .array-data 4
        0x2
        0x989680
        0x989680
        0x7a1200
        0x3c
        0x2
        0x3
        0x1f400
        0x2
        0xbb80
    .end array-data

    :array_1b
    .array-data 4
        0x2
        0xb71b00
        0x989680
        0x7a1200
        0x1e
        0x2
        0x3
        0x1f400
        0x2
        0xbb80
    .end array-data

    .line 228
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_6
        0xd -> :sswitch_2
        0xe -> :sswitch_4
        0xf -> :sswitch_5
        0x12 -> :sswitch_8
        0x13 -> :sswitch_9
        0x1f -> :sswitch_3
        0x23 -> :sswitch_5
        0x28 -> :sswitch_a
        0x29 -> :sswitch_7
        0x2a -> :sswitch_0
        0x2c -> :sswitch_1
        0x2e -> :sswitch_4
    .end sparse-switch

    .line 266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
