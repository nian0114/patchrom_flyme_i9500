.class public Lcom/sec/android/app/camera/CameraResolution;
.super Ljava/lang/Object;
.source "CameraResolution.java"


# static fields
.field public static final RESOLUTION_1024X576:I = 0x27

.field public static final RESOLUTION_1024X768:I = 0x25

.field public static final RESOLUTION_1080X1080:I = 0x2e

.field public static final RESOLUTION_1248X672:I = 0x1d

.field public static final RESOLUTION_1280X720:I = 0xe

.field public static final RESOLUTION_1280X720_60FPS:I = 0x2c

.field public static final RESOLUTION_1280X800:I = 0x16

.field public static final RESOLUTION_1280X960:I = 0xa

.field public static final RESOLUTION_1392X1392:I = 0x18

.field public static final RESOLUTION_1440X1080:I = 0x1f

.field public static final RESOLUTION_1536X864:I = 0x1c

.field public static final RESOLUTION_1600X1200:I = 0x8

.field public static final RESOLUTION_1600X960:I = 0x9

.field public static final RESOLUTION_1632X880:I = 0x1b

.field public static final RESOLUTION_176X144:I = 0x13

.field public static final RESOLUTION_1920X1080:I = 0xd

.field public static final RESOLUTION_1920X1080_60FPS:I = 0x2a

.field public static final RESOLUTION_2048X1104:I = 0x1a

.field public static final RESOLUTION_2048X1152:I = 0x17

.field public static final RESOLUTION_2048X1232:I = 0x7

.field public static final RESOLUTION_2048X1536:I = 0x6

.field public static final RESOLUTION_2448X2448:I = 0x2d

.field public static final RESOLUTION_2560X1440:I = 0x15

.field public static final RESOLUTION_2560X1536:I = 0x5

.field public static final RESOLUTION_2560X1920:I = 0x4

.field public static final RESOLUTION_2592X1944:I = 0x19

.field public static final RESOLUTION_3072X1856:I = 0x3

.field public static final RESOLUTION_3072X2304:I = 0x2

.field public static final RESOLUTION_3096X3096:I = 0x2b

.field public static final RESOLUTION_320X240:I = 0x12

.field public static final RESOLUTION_3264X1836:I = 0x14

.field public static final RESOLUTION_3264X1968:I = 0x1

.field public static final RESOLUTION_3264X2448:I = 0x0

.field public static final RESOLUTION_352X288:I = 0x11

.field public static final RESOLUTION_3840X2160:I = 0x28

.field public static final RESOLUTION_400X240:I = 0x10

.field public static final RESOLUTION_4096X2304:I = 0x24

.field public static final RESOLUTION_4096X3072:I = 0x1e

.field public static final RESOLUTION_4128X2322:I = 0x21

.field public static final RESOLUTION_4128X3096:I = 0x20

.field public static final RESOLUTION_640X360:I = 0x29

.field public static final RESOLUTION_640X480:I = 0xb

.field public static final RESOLUTION_720X480:I = 0xf

.field public static final RESOLUTION_800X450:I = 0x23

.field public static final RESOLUTION_800X480:I = 0xc

.field public static final RESOLUTION_960X540:I = 0x26

.field public static final RESOLUTION_960X720:I = 0x22


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(II)I
    .locals 4
    .param p0, "res1"    # I
    .param p1, "res2"    # I

    .prologue
    .line 616
    invoke-static {p0}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v2

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 617
    .local v1, "dw":I
    invoke-static {p0}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v3

    sub-int v0, v2, v3

    .line 619
    .local v0, "dh":I
    if-lez v1, :cond_1

    .line 628
    .end local v1    # "dw":I
    :cond_0
    :goto_0
    return v1

    .line 621
    .restart local v1    # "dw":I
    :cond_1
    if-nez v1, :cond_0

    .line 622
    if-lez v0, :cond_2

    move v1, v0

    .line 623
    goto :goto_0

    .line 624
    :cond_2
    if-nez v0, :cond_0

    .line 625
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCamcorderProfileQualityLevel(I)I
    .locals 1
    .param p0, "resolution"    # I

    .prologue
    .line 588
    sparse-switch p0, :sswitch_data_0

    .line 605
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 592
    :sswitch_0
    const/4 v0, 0x6

    goto :goto_0

    .line 595
    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 597
    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 599
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 601
    :sswitch_4
    const/4 v0, 0x7

    goto :goto_0

    .line 603
    :sswitch_5
    const/4 v0, 0x2

    goto :goto_0

    .line 588
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0xe -> :sswitch_1
        0xf -> :sswitch_2
        0x11 -> :sswitch_3
        0x12 -> :sswitch_4
        0x13 -> :sswitch_5
        0x2a -> :sswitch_0
        0x2c -> :sswitch_1
        0x2e -> :sswitch_0
    .end sparse-switch
.end method

.method public static getIntHeight(I)I
    .locals 1
    .param p0, "resid"    # I

    .prologue
    const/16 v0, 0x1e0

    .line 158
    packed-switch p0, :pswitch_data_0

    .line 243
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    return v0

    .line 161
    :pswitch_2
    const/16 v0, 0xc18

    goto :goto_0

    .line 163
    :pswitch_3
    const/16 v0, 0xc00

    goto :goto_0

    .line 166
    :pswitch_4
    const/16 v0, 0x990

    goto :goto_0

    .line 168
    :pswitch_5
    const/16 v0, 0x912

    goto :goto_0

    .line 171
    :pswitch_6
    const/16 v0, 0x900

    goto :goto_0

    .line 173
    :pswitch_7
    const/16 v0, 0x7b0

    goto :goto_0

    .line 175
    :pswitch_8
    const/16 v0, 0x798

    goto :goto_0

    .line 177
    :pswitch_9
    const/16 v0, 0x780

    goto :goto_0

    .line 179
    :pswitch_a
    const/16 v0, 0x740

    goto :goto_0

    .line 181
    :pswitch_b
    const/16 v0, 0x72c

    goto :goto_0

    .line 184
    :pswitch_c
    const/16 v0, 0x600

    goto :goto_0

    .line 186
    :pswitch_d
    const/16 v0, 0x5a0

    goto :goto_0

    .line 188
    :pswitch_e
    const/16 v0, 0x4d0

    goto :goto_0

    .line 190
    :pswitch_f
    const/16 v0, 0x4b0

    goto :goto_0

    .line 192
    :pswitch_10
    const/16 v0, 0x570

    goto :goto_0

    .line 194
    :pswitch_11
    const/16 v0, 0x480

    goto :goto_0

    .line 196
    :pswitch_12
    const/16 v0, 0x450

    goto :goto_0

    .line 202
    :pswitch_13
    const/16 v0, 0x438

    goto :goto_0

    .line 205
    :pswitch_14
    const/16 v0, 0x3c0

    goto :goto_0

    .line 207
    :pswitch_15
    const/16 v0, 0x370

    goto :goto_0

    .line 209
    :pswitch_16
    const/16 v0, 0x360

    goto :goto_0

    .line 211
    :pswitch_17
    const/16 v0, 0x320

    goto :goto_0

    .line 213
    :pswitch_18
    const/16 v0, 0x21c

    goto :goto_0

    .line 218
    :pswitch_19
    const/16 v0, 0x1c2

    goto :goto_0

    .line 222
    :pswitch_1a
    const/16 v0, 0x2d0

    goto :goto_0

    .line 224
    :pswitch_1b
    const/16 v0, 0x2a0

    goto :goto_0

    .line 228
    :pswitch_1c
    const/16 v0, 0x168

    goto :goto_0

    .line 231
    :pswitch_1d
    const/16 v0, 0xf0

    goto :goto_0

    .line 233
    :pswitch_1e
    const/16 v0, 0x90

    goto :goto_0

    .line 235
    :pswitch_1f
    const/16 v0, 0x300

    goto :goto_0

    .line 237
    :pswitch_20
    const/16 v0, 0x240

    goto :goto_0

    .line 239
    :pswitch_21
    const/16 v0, 0x870

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_a
        :pswitch_9
        :pswitch_c
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_14
        :pswitch_14
        :pswitch_1
        :pswitch_1
        :pswitch_13
        :pswitch_1a
        :pswitch_1
        :pswitch_1d
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
        :pswitch_b
        :pswitch_d
        :pswitch_17
        :pswitch_11
        :pswitch_10
        :pswitch_8
        :pswitch_12
        :pswitch_15
        :pswitch_16
        :pswitch_1b
        :pswitch_3
        :pswitch_13
        :pswitch_2
        :pswitch_5
        :pswitch_1a
        :pswitch_19
        :pswitch_6
        :pswitch_1f
        :pswitch_18
        :pswitch_20
        :pswitch_21
        :pswitch_1c
        :pswitch_13
        :pswitch_2
        :pswitch_1a
        :pswitch_4
        :pswitch_13
    .end packed-switch
.end method

.method public static getIntWidth(I)I
    .locals 1
    .param p0, "resid"    # I

    .prologue
    .line 78
    packed-switch p0, :pswitch_data_0

    .line 154
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 81
    :pswitch_1
    const/16 v0, 0x1020

    goto :goto_0

    .line 84
    :pswitch_2
    const/16 v0, 0x1000

    goto :goto_0

    .line 88
    :pswitch_3
    const/16 v0, 0xcc0

    goto :goto_0

    .line 90
    :pswitch_4
    const/16 v0, 0xc18

    goto :goto_0

    .line 93
    :pswitch_5
    const/16 v0, 0xc00

    goto :goto_0

    .line 95
    :pswitch_6
    const/16 v0, 0xa20

    goto :goto_0

    .line 99
    :pswitch_7
    const/16 v0, 0xa00

    goto :goto_0

    .line 101
    :pswitch_8
    const/16 v0, 0x990

    goto :goto_0

    .line 106
    :pswitch_9
    const/16 v0, 0x800

    goto :goto_0

    .line 109
    :pswitch_a
    const/16 v0, 0x780

    goto :goto_0

    .line 111
    :pswitch_b
    const/16 v0, 0x660

    goto :goto_0

    .line 114
    :pswitch_c
    const/16 v0, 0x640

    goto :goto_0

    .line 116
    :pswitch_d
    const/16 v0, 0x600

    goto :goto_0

    .line 118
    :pswitch_e
    const/16 v0, 0x5a0

    goto :goto_0

    .line 120
    :pswitch_f
    const/16 v0, 0x570

    goto :goto_0

    .line 125
    :pswitch_10
    const/16 v0, 0x500

    goto :goto_0

    .line 127
    :pswitch_11
    const/16 v0, 0x4e0

    goto :goto_0

    .line 129
    :pswitch_12
    const/16 v0, 0x438

    goto :goto_0

    .line 132
    :pswitch_13
    const/16 v0, 0x3c0

    goto :goto_0

    .line 135
    :pswitch_14
    const/16 v0, 0x320

    goto :goto_0

    .line 137
    :pswitch_15
    const/16 v0, 0x2d0

    goto :goto_0

    .line 140
    :pswitch_16
    const/16 v0, 0x280

    goto :goto_0

    .line 142
    :pswitch_17
    const/16 v0, 0x190

    goto :goto_0

    .line 144
    :pswitch_18
    const/16 v0, 0x140

    goto :goto_0

    .line 146
    :pswitch_19
    const/16 v0, 0xb0

    goto :goto_0

    .line 149
    :pswitch_1a
    const/16 v0, 0x400

    goto :goto_0

    .line 151
    :pswitch_1b
    const/16 v0, 0xf00

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_c
        :pswitch_c
        :pswitch_10
        :pswitch_16
        :pswitch_14
        :pswitch_a
        :pswitch_10
        :pswitch_15
        :pswitch_17
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_3
        :pswitch_7
        :pswitch_10
        :pswitch_9
        :pswitch_f
        :pswitch_6
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_11
        :pswitch_2
        :pswitch_e
        :pswitch_1
        :pswitch_1
        :pswitch_13
        :pswitch_14
        :pswitch_2
        :pswitch_1a
        :pswitch_13
        :pswitch_1a
        :pswitch_1b
        :pswitch_16
        :pswitch_a
        :pswitch_4
        :pswitch_10
        :pswitch_8
        :pswitch_12
    .end packed-switch
.end method

.method public static getResolutionFullString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 398
    packed-switch p0, :pswitch_data_0

    .line 483
    :pswitch_0
    const-string v0, "176x144"

    :goto_0
    return-object v0

    .line 400
    :pswitch_1
    const-string v0, "13.0M (4128x3096)"

    goto :goto_0

    .line 402
    :pswitch_2
    const-string v0, "9.1M (3096x3096)"

    goto :goto_0

    .line 404
    :pswitch_3
    const-string v0, "6M (2448x2448)"

    goto :goto_0

    .line 406
    :pswitch_4
    const-string v0, "w9.6M (4128x2322)"

    goto :goto_0

    .line 408
    :pswitch_5
    const-string v0, "13.0M (4096x3072)"

    goto :goto_0

    .line 410
    :pswitch_6
    const-string v0, "w9.4M (4096x2304)"

    goto :goto_0

    .line 412
    :pswitch_7
    const-string v0, "8.0M (3264x2448)"

    goto :goto_0

    .line 414
    :pswitch_8
    const-string v0, "w6.5M (3264x1968)"

    goto :goto_0

    .line 416
    :pswitch_9
    const-string v0, "w6.0M (3264x1836)"

    goto :goto_0

    .line 418
    :pswitch_a
    const-string v0, "7.1M (3072x2304)"

    goto :goto_0

    .line 420
    :pswitch_b
    const-string v0, "w5.7M (3072x1856)"

    goto :goto_0

    .line 422
    :pswitch_c
    const-string v0, "5.1M (2592x1944)"

    goto :goto_0

    .line 424
    :pswitch_d
    const-string v0, "5.0M (2560x1920)"

    goto :goto_0

    .line 426
    :pswitch_e
    const-string v0, "w4.0M (2560x1536)"

    goto :goto_0

    .line 428
    :pswitch_f
    const-string v0, "w3.7M (2560x1440)"

    goto :goto_0

    .line 430
    :pswitch_10
    const-string v0, "3.0M (2048x1536)"

    goto :goto_0

    .line 432
    :pswitch_11
    const-string v0, "w2.6M (2048x1232)"

    goto :goto_0

    .line 434
    :pswitch_12
    const-string v0, "w2.4M (2048x1152)"

    goto :goto_0

    .line 436
    :pswitch_13
    const-string v0, "w2.3M 2048x1104"

    goto :goto_0

    .line 439
    :pswitch_14
    const-string v0, "w2.0M (1920x1080)"

    goto :goto_0

    .line 441
    :pswitch_15
    const-string v0, "w1.5M (1632x880)"

    goto :goto_0

    .line 443
    :pswitch_16
    const-string v0, "2.0M (1600x1200)"

    goto :goto_0

    .line 445
    :pswitch_17
    const-string v0, "w1.6M (1600x960)"

    goto :goto_0

    .line 447
    :pswitch_18
    const-string v0, "w1.4M 1536x864"

    goto :goto_0

    .line 449
    :pswitch_19
    const-string v0, "1.9M (1392x1392)"

    goto :goto_0

    .line 451
    :pswitch_1a
    const-string v0, "1.6M (1440x1080)"

    goto :goto_0

    .line 453
    :pswitch_1b
    const-string v0, "1.3M (1280x960)"

    goto :goto_0

    .line 456
    :pswitch_1c
    const-string v0, "w1.0M (1280x800)"

    goto :goto_0

    .line 458
    :pswitch_1d
    const-string v0, "w0.5M (960x540)"

    goto :goto_0

    .line 460
    :pswitch_1e
    const-string v0, "w0.4M (800x480)"

    goto :goto_0

    .line 462
    :pswitch_1f
    const-string v0, "w0.4M (800x450)"

    goto :goto_0

    .line 464
    :pswitch_20
    const-string v0, "0.3M (640x480)"

    goto :goto_0

    .line 466
    :pswitch_21
    const-string v0, "w0.3M (640x360)"

    goto :goto_0

    .line 468
    :pswitch_22
    const-string v0, "w0.8M (1248x672)"

    goto :goto_0

    .line 471
    :pswitch_23
    const-string v0, "w0.9M (1280x720)"

    goto :goto_0

    .line 473
    :pswitch_24
    const-string v0, "0.7M (960x720)"

    goto :goto_0

    .line 475
    :pswitch_25
    const-string v0, "0.4M (720x480)"

    goto :goto_0

    .line 477
    :pswitch_26
    const-string v0, "400x240"

    goto :goto_0

    .line 479
    :pswitch_27
    const-string v0, "320x240"

    goto :goto_0

    .line 481
    :pswitch_28
    const-string v0, "176x144"

    goto :goto_0

    .line 398
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_16
        :pswitch_17
        :pswitch_1b
        :pswitch_20
        :pswitch_1e
        :pswitch_14
        :pswitch_23
        :pswitch_25
        :pswitch_26
        :pswitch_0
        :pswitch_27
        :pswitch_28
        :pswitch_9
        :pswitch_f
        :pswitch_1c
        :pswitch_12
        :pswitch_19
        :pswitch_c
        :pswitch_13
        :pswitch_15
        :pswitch_18
        :pswitch_22
        :pswitch_5
        :pswitch_1a
        :pswitch_1
        :pswitch_4
        :pswitch_24
        :pswitch_1f
        :pswitch_6
        :pswitch_0
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_21
        :pswitch_14
        :pswitch_2
        :pswitch_23
        :pswitch_3
        :pswitch_1c
    .end packed-switch
.end method

.method public static getResolutionID(Ljava/lang/String;)I
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x23

    .line 488
    const-string v1, "4128x3096"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 489
    const/16 v0, 0x20

    .line 583
    :cond_0
    :goto_0
    return v0

    .line 490
    :cond_1
    const-string v1, "3096x3096"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 491
    const/16 v0, 0x2b

    goto :goto_0

    .line 492
    :cond_2
    const-string v1, "4128x2322"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 493
    const/16 v0, 0x21

    goto :goto_0

    .line 494
    :cond_3
    const-string v1, "4096x3072"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 495
    const/16 v0, 0x1e

    goto :goto_0

    .line 496
    :cond_4
    const-string v1, "4096x2304"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 497
    const/16 v0, 0x24

    goto :goto_0

    .line 498
    :cond_5
    const-string v1, "3264x2448"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 499
    const/4 v0, 0x0

    goto :goto_0

    .line 500
    :cond_6
    const-string v1, "3264x1968"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 501
    const/4 v0, 0x1

    goto :goto_0

    .line 502
    :cond_7
    const-string v1, "3264x1836"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 503
    const/16 v0, 0x14

    goto :goto_0

    .line 504
    :cond_8
    const-string v1, "3072x2304"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 505
    const/4 v0, 0x2

    goto :goto_0

    .line 506
    :cond_9
    const-string v1, "3072x1856"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 507
    const/4 v0, 0x3

    goto :goto_0

    .line 508
    :cond_a
    const-string v1, "2592x1944"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 509
    const/16 v0, 0x19

    goto :goto_0

    .line 510
    :cond_b
    const-string v1, "2560x1920"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 511
    const/4 v0, 0x4

    goto :goto_0

    .line 512
    :cond_c
    const-string v1, "2560x1536"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 513
    const/4 v0, 0x5

    goto :goto_0

    .line 514
    :cond_d
    const-string v1, "2560x1440"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 515
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 516
    :cond_e
    const-string v1, "2048x1536"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 517
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 518
    :cond_f
    const-string v1, "2048x1232"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 519
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 520
    :cond_10
    const-string v1, "2048x1152"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 521
    const/16 v0, 0x17

    goto/16 :goto_0

    .line 522
    :cond_11
    const-string v1, "2048x1104"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 523
    const/16 v0, 0x1a

    goto/16 :goto_0

    .line 524
    :cond_12
    const-string v1, "1920x1080"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 525
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 526
    :cond_13
    const-string v1, "1920x1080_60FPS"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 527
    const/16 v0, 0x2a

    goto/16 :goto_0

    .line 528
    :cond_14
    const-string v1, "1440x1080"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 529
    const/16 v0, 0x1f

    goto/16 :goto_0

    .line 530
    :cond_15
    const-string v1, "1080x1080"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 531
    const/16 v0, 0x2e

    goto/16 :goto_0

    .line 532
    :cond_16
    const-string v1, "1632x880"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 533
    const/16 v0, 0x1b

    goto/16 :goto_0

    .line 534
    :cond_17
    const-string v1, "1600x1200"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 535
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 536
    :cond_18
    const-string v1, "1600x960"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 537
    const/16 v0, 0x9

    goto/16 :goto_0

    .line 538
    :cond_19
    const-string v1, "1536x864"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 539
    const/16 v0, 0x1c

    goto/16 :goto_0

    .line 540
    :cond_1a
    const-string v1, "1392x1392"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 541
    const/16 v0, 0x18

    goto/16 :goto_0

    .line 542
    :cond_1b
    const-string v1, "1280x960"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 543
    const/16 v0, 0xa

    goto/16 :goto_0

    .line 544
    :cond_1c
    const-string v1, "960x720"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 545
    const/16 v0, 0x22

    goto/16 :goto_0

    .line 546
    :cond_1d
    const-string v1, "800x480"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 547
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 548
    :cond_1e
    const-string v1, "800x450"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 550
    const-string v1, "640x480"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 551
    const/16 v0, 0xb

    goto/16 :goto_0

    .line 552
    :cond_1f
    const-string v1, "640x360"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 553
    const/16 v0, 0x29

    goto/16 :goto_0

    .line 554
    :cond_20
    const-string v1, "1280x800"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 555
    const/16 v0, 0x16

    goto/16 :goto_0

    .line 556
    :cond_21
    const-string v1, "1280x720"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 557
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 558
    :cond_22
    const-string v1, "1280x720_60FPS"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 559
    const/16 v0, 0x2c

    goto/16 :goto_0

    .line 560
    :cond_23
    const-string v1, "1248x672"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 561
    const/16 v0, 0x1d

    goto/16 :goto_0

    .line 562
    :cond_24
    const-string v1, "800x450"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 564
    const-string v0, "720x480"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 565
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 566
    :cond_25
    const-string v0, "400x240"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 567
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 568
    :cond_26
    const-string v0, "320x240"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 569
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 570
    :cond_27
    const-string v0, "176x144"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 571
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 572
    :cond_28
    const-string v0, "1024x768"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 573
    const/16 v0, 0x25

    goto/16 :goto_0

    .line 574
    :cond_29
    const-string v0, "1024x576"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 575
    const/16 v0, 0x27

    goto/16 :goto_0

    .line 576
    :cond_2a
    const-string v0, "960x540"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 577
    const/16 v0, 0x26

    goto/16 :goto_0

    .line 578
    :cond_2b
    const-string v0, "3840x2160"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 579
    const/16 v0, 0x28

    goto/16 :goto_0

    .line 580
    :cond_2c
    const-string v0, "2448x2448"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 581
    const/16 v0, 0x2d

    goto/16 :goto_0

    .line 583
    :cond_2d
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public static getResolutionString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 301
    packed-switch p0, :pswitch_data_0

    .line 393
    :pswitch_0
    const-string v0, "176x144"

    :goto_0
    return-object v0

    .line 303
    :pswitch_1
    const-string v0, "4128x3096"

    goto :goto_0

    .line 305
    :pswitch_2
    const-string v0, "3096x3096"

    goto :goto_0

    .line 307
    :pswitch_3
    const-string v0, "4128x2322"

    goto :goto_0

    .line 309
    :pswitch_4
    const-string v0, "4096x3072"

    goto :goto_0

    .line 311
    :pswitch_5
    const-string v0, "4096x2304"

    goto :goto_0

    .line 313
    :pswitch_6
    const-string v0, "3264x2448"

    goto :goto_0

    .line 315
    :pswitch_7
    const-string v0, "3264x1968"

    goto :goto_0

    .line 317
    :pswitch_8
    const-string v0, "3264x1836"

    goto :goto_0

    .line 319
    :pswitch_9
    const-string v0, "3072x2304"

    goto :goto_0

    .line 321
    :pswitch_a
    const-string v0, "3072x1856"

    goto :goto_0

    .line 323
    :pswitch_b
    const-string v0, "2592x1944"

    goto :goto_0

    .line 325
    :pswitch_c
    const-string v0, "2560x1920"

    goto :goto_0

    .line 327
    :pswitch_d
    const-string v0, "2560x1536"

    goto :goto_0

    .line 329
    :pswitch_e
    const-string v0, "2560x1440"

    goto :goto_0

    .line 331
    :pswitch_f
    const-string v0, "2048x1536"

    goto :goto_0

    .line 333
    :pswitch_10
    const-string v0, "2048x1232"

    goto :goto_0

    .line 335
    :pswitch_11
    const-string v0, "2048x1152"

    goto :goto_0

    .line 337
    :pswitch_12
    const-string v0, "2048x1104"

    goto :goto_0

    .line 340
    :pswitch_13
    const-string v0, "1920x1080"

    goto :goto_0

    .line 342
    :pswitch_14
    const-string v0, "1632x880"

    goto :goto_0

    .line 344
    :pswitch_15
    const-string v0, "1600x1200"

    goto :goto_0

    .line 346
    :pswitch_16
    const-string v0, "1600x960"

    goto :goto_0

    .line 348
    :pswitch_17
    const-string v0, "1536x864"

    goto :goto_0

    .line 350
    :pswitch_18
    const-string v0, "1392x1392"

    goto :goto_0

    .line 352
    :pswitch_19
    const-string v0, "1440x1080"

    goto :goto_0

    .line 354
    :pswitch_1a
    const-string v0, "1080x1080"

    goto :goto_0

    .line 356
    :pswitch_1b
    const-string v0, "1280x960"

    goto :goto_0

    .line 358
    :pswitch_1c
    const-string v0, "1280x800"

    goto :goto_0

    .line 360
    :pswitch_1d
    const-string v0, "960x540"

    goto :goto_0

    .line 362
    :pswitch_1e
    const-string v0, "800x480"

    goto :goto_0

    .line 364
    :pswitch_1f
    const-string v0, "800x450"

    goto :goto_0

    .line 366
    :pswitch_20
    const-string v0, "640x480"

    goto :goto_0

    .line 368
    :pswitch_21
    const-string v0, "640x360"

    goto :goto_0

    .line 370
    :pswitch_22
    const-string v0, "1248x672"

    goto :goto_0

    .line 373
    :pswitch_23
    const-string v0, "1280x720"

    goto :goto_0

    .line 375
    :pswitch_24
    const-string v0, "960x720"

    goto :goto_0

    .line 377
    :pswitch_25
    const-string v0, "720x480"

    goto :goto_0

    .line 379
    :pswitch_26
    const-string v0, "400x240"

    goto :goto_0

    .line 381
    :pswitch_27
    const-string v0, "320x240"

    goto :goto_0

    .line 383
    :pswitch_28
    const-string v0, "176x144"

    goto :goto_0

    .line 385
    :pswitch_29
    const-string v0, "1024x768"

    goto :goto_0

    .line 387
    :pswitch_2a
    const-string v0, "1024x576"

    goto :goto_0

    .line 389
    :pswitch_2b
    const-string v0, "3840x2160"

    goto/16 :goto_0

    .line 391
    :pswitch_2c
    const-string v0, "2448x2448"

    goto/16 :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_15
        :pswitch_16
        :pswitch_1b
        :pswitch_20
        :pswitch_1e
        :pswitch_13
        :pswitch_23
        :pswitch_25
        :pswitch_26
        :pswitch_0
        :pswitch_27
        :pswitch_28
        :pswitch_8
        :pswitch_e
        :pswitch_1c
        :pswitch_11
        :pswitch_18
        :pswitch_b
        :pswitch_12
        :pswitch_14
        :pswitch_17
        :pswitch_22
        :pswitch_4
        :pswitch_19
        :pswitch_1
        :pswitch_3
        :pswitch_24
        :pswitch_1f
        :pswitch_5
        :pswitch_29
        :pswitch_1d
        :pswitch_2a
        :pswitch_2b
        :pswitch_21
        :pswitch_13
        :pswitch_2
        :pswitch_23
        :pswitch_2c
        :pswitch_1a
    .end packed-switch
.end method

.method public static isSquareResolution(I)Z
    .locals 1
    .param p0, "resid"    # I

    .prologue
    .line 632
    packed-switch p0, :pswitch_data_0

    .line 638
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 636
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 632
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isWideResolution(I)Z
    .locals 1
    .param p0, "resid"    # I

    .prologue
    .line 247
    packed-switch p0, :pswitch_data_0

    .line 296
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 274
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
