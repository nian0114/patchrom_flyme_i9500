.class public Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;
.super Ljava/lang/Object;
.source "MorphoSensorFusion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;
    }
.end annotation


# static fields
.field public static final MAXIMUM_DATA_SIZE:I = 0x200

.field public static final MODE_USE_ACCELEROMETER_AND_MAGNETIC_FIELD:I = 0x3

.field public static final MODE_USE_ALL_SENSORS:I = 0x0

.field public static final MODE_USE_GYROSCOPE:I = 0x1

.field public static final MODE_USE_GYROSCOPE_AND_ROTATION_VECTOR:I = 0x4

.field public static final MODE_USE_GYROSCOPE_WITH_ACCELEROMETER:I = 0x2

.field public static final OFFSET_MODE_DYNAMIC:I = 0x1

.field public static final OFFSET_MODE_STATIC:I = 0x0

.field public static final ROTATE_0:I = 0x0

.field public static final ROTATE_180:I = 0x2

.field public static final ROTATE_270:I = 0x3

.field public static final ROTATE_90:I = 0x1

.field public static final SENSOR_TYPE_ACCELEROMETER:I = 0x1

.field public static final SENSOR_TYPE_GYROSCOPE:I = 0x0

.field public static final SENSOR_TYPE_MAGNETIC_FIELD:I = 0x2

.field public static final SENSOR_TYPE_ROTATION_VECTOR:I = 0x3

.field public static final STATE_CALC_OFFSET:I = 0x0

.field public static final STATE_PROCESS:I = 0x1


# instance fields
.field private mNative:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    :try_start_0
    const-string v1, "morpho_sensor_fusion"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 14
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 15
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    .line 71
    invoke-direct {p0}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->createNativeObject()I

    move-result v0

    .line 72
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 74
    iput v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    iput v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    .line 79
    const v0, -0x7ffffffc

    goto :goto_0
.end method

.method private final native calc(I)I
.end method

.method private final native createNativeObject()I
.end method

.method private final native deleteNativeObject(I)V
.end method

.method private final native finish(I)I
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->nativeGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final native initialize(I)I
.end method

.method private static final native nativeGetVersion()Ljava/lang/String;
.end method

.method private final native outputRotationAngle(I[D)I
.end method

.method private final native outputRotationMatrix3x3(II[D)I
.end method

.method private final native setAppState(II)I
.end method

.method private final native setMode(II)I
.end method

.method private final native setOffset(ILcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;I)I
.end method

.method private final native setOffsetMode(II)I
.end method

.method private final native setRotation(II)I
.end method

.method private final native setSensorData(I[Ljava/lang/Object;I)I
.end method

.method private final native setSensorReliability(III)I
.end method


# virtual methods
.method public calc()I
    .locals 2

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    if-eqz v1, :cond_0

    .line 217
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->calc(I)I

    move-result v0

    .line 223
    :goto_0
    return v0

    .line 221
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public finish()I
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 101
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    if-eqz v1, :cond_0

    .line 103
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->finish(I)I

    move-result v0

    .line 104
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->deleteNativeObject(I)V

    .line 105
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    .line 111
    :goto_0
    return v0

    .line 109
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public initialize()I
    .locals 2

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    if-eqz v1, :cond_0

    .line 88
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->initialize(I)I

    move-result v0

    .line 94
    :goto_0
    return v0

    .line 92
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public outputRotationAngle([D)I
    .locals 2
    .param p1, "angle"    # [D

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    if-eqz v1, :cond_0

    .line 245
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->outputRotationAngle(I[D)I

    move-result v0

    .line 251
    :goto_0
    return v0

    .line 249
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public outputRotationMatrix3x3(I[D)I
    .locals 2
    .param p1, "sensor_type"    # I
    .param p2, "dst_mat"    # [D

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    if-eqz v1, :cond_0

    .line 231
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->outputRotationMatrix3x3(II[D)I

    move-result v0

    .line 237
    :goto_0
    return v0

    .line 235
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setAppState(I)I
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    if-eqz v1, :cond_0

    .line 133
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->setAppState(II)I

    move-result v0

    .line 139
    :goto_0
    return v0

    .line 137
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setMode(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    if-eqz v1, :cond_0

    .line 119
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->setMode(II)I

    move-result v0

    .line 125
    :goto_0
    return v0

    .line 123
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setOffset(Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;I)I
    .locals 2
    .param p1, "data"    # Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;
    .param p2, "sensor_type"    # I

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    if-eqz v1, :cond_0

    .line 189
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->setOffset(ILcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;I)I

    move-result v0

    .line 195
    :goto_0
    return v0

    .line 193
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setOffsetMode(I)I
    .locals 2
    .param p1, "offset_mode"    # I

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    if-eqz v1, :cond_0

    .line 175
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->setOffsetMode(II)I

    move-result v0

    .line 181
    :goto_0
    return v0

    .line 179
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setRotation(I)I
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    if-eqz v1, :cond_0

    .line 147
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->setRotation(II)I

    move-result v0

    .line 153
    :goto_0
    return v0

    .line 151
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setSensorData([Ljava/lang/Object;I)I
    .locals 2
    .param p1, "data"    # [Ljava/lang/Object;
    .param p2, "sensor_type"    # I

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    if-eqz v1, :cond_0

    .line 203
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->setSensorData(I[Ljava/lang/Object;I)I

    move-result v0

    .line 209
    :goto_0
    return v0

    .line 207
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setSensorReliability(II)I
    .locals 2
    .param p1, "rel"    # I
    .param p2, "sensor_type"    # I

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    if-eqz v1, :cond_0

    .line 161
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion;->setSensorReliability(III)I

    move-result v0

    .line 167
    :goto_0
    return v0

    .line 165
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method
