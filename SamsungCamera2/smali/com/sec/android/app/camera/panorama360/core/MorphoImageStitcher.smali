.class public Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
.super Ljava/lang/Object;
.source "MorphoImageStitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;,
        Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;,
        Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;,
        Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$GalleryData;,
        Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;,
        Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$BgColor;,
        Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;
    }
.end annotation


# static fields
.field public static final ALPHA_BLEND_IMAGE_FRAME_OFF:I = 0x0

.field public static final ALPHA_BLEND_IMAGE_FRAME_ON:I = 0x1

.field public static final ANIMATION_TYPE_CENTER_GUIDE_CAPTURE:I = 0x3

.field public static final ANIMATION_TYPE_CENTER_GUIDE_NONE:I = 0x0

.field public static final ANIMATION_TYPE_CENTER_GUIDE_START:I = 0x2

.field public static final ANIMATION_TYPE_CENTER_GUIDE_WAITING:I = 0x1

.field public static final CONTENT_TYPE_MORPHO_PANORAMA:I = 0x1

.field public static final CONTENT_TYPE_NONE:I = 0x0

.field public static final CONTENT_TYPE_PHOTO_SPHERE:I = 0x2

.field public static final CURRENT_IMAGE_FIX_AT_CENTER:I = 0x1

.field public static final CURRENT_IMAGE_FREE:I = 0x0

.field public static final CURRENT_IMAGE_FREE_NEAR_EQUATOR:I = 0x2

.field public static final DISP_TYPE_BACKGROUND:I = 0x2

.field public static final DISP_TYPE_NONE:I = 0x0

.field public static final DISP_TYPE_WIRE_FRAME:I = 0x1

.field public static final ERROR_GENERAL_ERROR:I = -0x80000000

.field public static final ERROR_IO:I = -0x7ffffff8

.field public static final ERROR_MALLOC:I = -0x7ffffffc

.field public static final ERROR_PARAM:I = -0x7fffffff

.field public static final ERROR_STATE:I = -0x7ffffffe

.field public static final ERROR_UNKNOWN:I = -0x40000000

.field public static final ERROR_UNSUPPORTED:I = -0x7ffffff0

.field public static final GUIDE_IMAGE_TYPE_CENTER:I = 0xa

.field public static final GUIDE_IMAGE_TYPE_CENTER_DISABLE:I = 0x10

.field public static final GUIDE_IMAGE_TYPE_CENTER_ENABLE:I = 0xf

.field public static final GUIDE_IMAGE_TYPE_CORNER:I = 0xb

.field public static final GUIDE_IMAGE_TYPE_CURRENT_CALIBRATION:I = 0xe

.field public static final GUIDE_IMAGE_TYPE_CURRENT_DISABLE:I = 0xd

.field public static final GUIDE_IMAGE_TYPE_CURRENT_ENABLE:I = 0xc

.field public static final GUIDE_IMAGE_TYPE_DIRECTION_LEFT:I = 0x2

.field public static final GUIDE_IMAGE_TYPE_DIRECTION_LEFT_ON:I = 0x6

.field public static final GUIDE_IMAGE_TYPE_DIRECTION_RIGHT:I = 0x4

.field public static final GUIDE_IMAGE_TYPE_DIRECTION_RIGHT_ON:I = 0x8

.field public static final GUIDE_IMAGE_TYPE_DIRECTION_UNDER:I = 0x5

.field public static final GUIDE_IMAGE_TYPE_DIRECTION_UNDER_ON:I = 0x9

.field public static final GUIDE_IMAGE_TYPE_DIRECTION_UPPER:I = 0x3

.field public static final GUIDE_IMAGE_TYPE_DIRECTION_UPPER_ON:I = 0x7

.field public static final GUIDE_IMAGE_TYPE_STOP_CENTER:I = 0x0

.field public static final GUIDE_IMAGE_TYPE_STOP_UPPER:I = 0x1

.field public static final GUIDE_TYPE_FREE:I = -0x1

.field public static final GUIDE_TYPE_HORIZONTAL:I = 0x0

.field public static final GUIDE_TYPE_RADIAL:I = 0x3

.field public static final GUIDE_TYPE_VANILLA:I = 0x4

.field public static final GUIDE_TYPE_VANILLA2:I = 0x5

.field public static final GUIDE_TYPE_VERTICAL:I = 0x1

.field public static final GUIDE_TYPE_WHIRLPOOL:I = 0x2

.field public static final MODE_STITCHING:I = 0x0

.field public static final MODE_VIEWING:I = 0x1

.field public static final MORPHO_DOPROCESS:I = 0x1

.field public static final MORPHO_OK:I = 0x0

.field private static final POINT_INFO_SIZE:I = 0x2

.field private static final POINT_X_OFFSET:I = 0x0

.field private static final POINT_Y_OFFSET:I = 0x1

.field public static final PROJECTION_TYPE_CYLINDRICAL_H:I = 0x3

.field public static final PROJECTION_TYPE_CYLINDRICAL_V:I = 0x4

.field public static final PROJECTION_TYPE_FISHEYE:I = 0x5

.field public static final PROJECTION_TYPE_MERCATOR_H:I = 0x0

.field public static final PROJECTION_TYPE_MERCATOR_V:I = 0x1

.field public static final PROJECTION_TYPE_PERSPECTIVE:I = 0x2

.field private static final RECT_BOTTOM_OFFSET:I = 0x3

.field private static final RECT_INFO_SIZE:I = 0x4

.field private static final RECT_LEFT_OFFSET:I = 0x0

.field private static final RECT_RIGHT_OFFSET:I = 0x2

.field private static final RECT_TOP_OFFSET:I = 0x1

.field public static final RENDER_MODE_OPEN_GL:I = 0x1

.field public static final RENDER_MODE_SOFT:I = 0x0

.field public static final ROTATE_0:I = 0x0

.field public static final ROTATE_180:I = 0x2

.field public static final ROTATE_270:I = 0x3

.field public static final ROTATE_90:I = 0x1

.field public static final SCENE_INDOOR:I = 0x1

.field public static final SCENE_OUTDOOR:I = 0x0

.field public static final SCROLL_LIMIT_TYPE_BOUNDARY_CENTER:I = 0x1

.field public static final SCROLL_LIMIT_TYPE_BOUNDARY_EDGE:I = 0x0

.field public static final SENSOR_TYPE_ACCELEROMETER:I = 0x3

.field public static final SENSOR_TYPE_CORRECTED_GYROSCOPE:I = 0x2

.field public static final SENSOR_TYPE_GYROSCOPE:I = 0x0

.field public static final SENSOR_TYPE_ROTATION_VECTOR:I = 0x1

.field public static final STATUS_2_3RD_LATITUDE_COMPLETE:I = 0xb

.field public static final STATUS_ALIGN_FAILURE:I = 0x3

.field public static final STATUS_GUIDE_ENDED:I = 0x2

.field public static final STATUS_OUT_OF_MEMORY:I = 0x1

.field public static final STATUS_STITCHING:I = 0x0

.field public static final STATUS_STOPPED_BY_ERROR:I = 0x4

.field public static final STATUS_WARNING_ALIGN_FAILURE:I = 0x8

.field public static final STATUS_WARNING_NEED_TO_STOP:I = 0x5

.field public static final STATUS_WARNING_ROTATED_CLOCKWISE:I = 0x9

.field public static final STATUS_WARNING_ROTATED_COUNTERCLOCKWISE:I = 0xa

.field public static final STATUS_WARNING_TOO_FAR:I = 0x7

.field public static final STATUS_WARNING_TOO_FAST:I = 0x6

.field public static final STATUS_WHOLE_SPHERE_COMPLETE:I = 0xc

.field public static final STILL_IMAGE_FORMAT_JPEG:I = 0x100

.field public static final STILL_IMAGE_FORMAT_YVU420SP:I = 0x11

.field private static final STITCH_INFO_ANGLE_OFFSET:I = 0x1

.field private static final STITCH_INFO_INFO_SIZE:I = 0x2

.field private static final STITCH_INFO_SCALE_OFFSET:I = 0x0

.field public static final TEXTURE_IMAGE_TYPE_BACKGROUND_SPHERE:I = 0x11

.field public static final TEXTURE_IMAGE_TYPE_BACKGROUND_SPHERE_MINI:I = 0x13

.field public static final TEXTURE_IMAGE_TYPE_GROUND_FLOOR:I = 0x12

.field public static final USE_IMAGE_FORCE:I = 0x1

.field public static final USE_IMAGE_NONE:I = -0x1

.field public static final USE_IMAGE_NORMAL:I = 0x0

.field public static final USE_SENSOR_FOR_ALIGNMENT_WHEN_FAILED:I = 0x0

.field public static final USE_SENSOR_FOR_GLOBAL_ALIGNMENT:I = 0x1

.field public static final VERSION_1:I = 0x0

.field public static final VERSION_2:I = 0x1

.field private static mFinished:Z


# instance fields
.field private mInitialized:Z

.field private mNative:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    :try_start_0
    const-string v1, "morpho_panorama_wa"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mFinished:Z

    return-void

    .line 20
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 21
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "MorphoImageStitcher"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v1, "MorphoImageStitcher"

    const-string v2, "can\'t loadLibrary"

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    .line 149
    iput-boolean v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mInitialized:Z

    .line 355
    invoke-direct {p0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->createNativeObject()I

    move-result v0

    .line 356
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 358
    sput-boolean v1, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mFinished:Z

    .line 359
    iput v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    .line 365
    :goto_0
    return-void

    .line 362
    :cond_0
    iput v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    .line 363
    const v0, -0x7ffffffc

    goto :goto_0
.end method

.method private final native createNativeObject()I
.end method

.method private final native deleteNativeObject(I)V
.end method

.method public static getContentType(Ljava/lang/String;)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 351
    invoke-static {p0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetContentType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    invoke-static {}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isFinished()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mFinished:Z

    return v0
.end method

.method private final native nativeAttach(I[BI[I[I)I
.end method

.method private final native nativeConvertImage(ILandroid/graphics/Bitmap;[BIIILjava/lang/String;)I
.end method

.method private final native nativeCreateOutputImage(IIIIILjava/lang/Object;[IZ)I
.end method

.method private final native nativeDecodeJpeg(ILjava/lang/String;[BLjava/lang/String;II)I
.end method

.method private final native nativeDecodePostview(ILjava/lang/String;[I[I[I[I[I)I
.end method

.method private final native nativeEnd(I)I
.end method

.method private final native nativeFinish(I)I
.end method

.method private final native nativeGetBoundingRect(I[I)I
.end method

.method private final native nativeGetClippingRect(I[I)I
.end method

.method private static final native nativeGetContentType(Ljava/lang/String;)I
.end method

.method private final native nativeGetGalleryDataOfAppSeg(I[B)I
.end method

.method private final native nativeGetGuideType(I[I)I
.end method

.method private final native nativeGetImage(I[BIIII)I
.end method

.method private final native nativeGetIsShootable(I[I)I
.end method

.method private final native nativeGetIsStop(I[I)I
.end method

.method private final native nativeGetPolesDispPosition(I[I[I)I
.end method

.method private final native nativeGetPostviewParam(ILcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;)I
.end method

.method private final native nativeGetPreviewImage(III[B[B)I
.end method

.method private final native nativeGetProjectionType(I[I)I
.end method

.method private final native nativeGetThumbnailImage(ILandroid/graphics/Bitmap;II)I
.end method

.method private final native nativeGetUseSensorAssist(II[I)I
.end method

.method private final native nativeGetUsedHeapSize(I[I)I
.end method

.method private static final native nativeGetVersion()Ljava/lang/String;
.end method

.method private final native nativeInitialize(ILcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;[I)I
.end method

.method private final native nativeRegisterStillImage(I[BIILjava/lang/String;)I
.end method

.method private final native nativeReleaseRegisteredImage(I)I
.end method

.method private final native nativeRenderPostview(IDDDI)I
.end method

.method private final native nativeRenderPostviewAngle(IDDDI)I
.end method

.method private final native nativeRenderPostviewDefault(II)I
.end method

.method private final native nativeRenderPreview(I[BIIII)I
.end method

.method private final native nativeRenderPreviewWithAnimation(I[BIIIIII)I
.end method

.method private final native nativeResetGL(II)I
.end method

.method private final native nativeSaveCreatedOutputImage(ILjava/lang/String;I[ILjava/lang/String;Ljava/lang/String;ZLcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;)I
.end method

.method private final native nativeSaveJpeg(ILjava/lang/String;[BLjava/lang/String;III)I
.end method

.method private final native nativeSaveOutputJpeg(ILjava/lang/String;IIIII[ILjava/lang/String;Ljava/lang/String;Z)I
.end method

.method private final native nativeSaveRegisteredImage(IZ[Ljava/lang/Object;)I
.end method

.method private final native nativeSetAngleMatrix(I[DI)I
.end method

.method private final native nativeSetDrawBgBlankMode(II)I
.end method

.method private final native nativeSetGalleryData(ILcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$GalleryData;II)I
.end method

.method private final native nativeSetGuideImage(IILandroid/graphics/Bitmap;)I
.end method

.method private final native nativeSetGuideType(II)I
.end method

.method private final native nativeSetListenerFromNative(ILandroid/app/Activity;)I
.end method

.method private final native nativeSetMotionlessThreshold(II)I
.end method

.method private final native nativeSetPostviewData(III)I
.end method

.method private final native nativeSetPostviewParam(ILcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;)I
.end method

.method private final native nativeSetProjectionType(II)I
.end method

.method private final native nativeSetScene(II)I
.end method

.method private final native nativeSetTextureShrinkRatio(II)I
.end method

.method private final native nativeSetUseReplayMode(II)I
.end method

.method private final native nativeSetUseSensorAssist(III)I
.end method

.method private final native nativeSetUseSensorThreshold(II)I
.end method

.method private final native nativeSetUseThreshold(II)I
.end method

.method private final native nativeStart(II)I
.end method

.method private final native nativeUndo(I)I
.end method

.method private final native nativereReRegisterTexture(I)I
.end method


# virtual methods
.method public attach([BI[I[I)I
    .locals 7
    .param p1, "input_image"    # [B
    .param p2, "use_image"    # I
    .param p3, "image_id"    # [I
    .param p4, "status"    # [I

    .prologue
    .line 425
    const/4 v6, 0x0

    .line 426
    .local v6, "ret":I
    monitor-enter p0

    .line 427
    :try_start_0
    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    .line 429
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeAttach(I[BI[I[I)I

    move-result v6

    .line 435
    :goto_0
    monitor-exit p0

    .line 436
    return v6

    .line 433
    :cond_0
    const v6, -0x7ffffffe

    goto :goto_0

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public convertImage(Landroid/graphics/Bitmap;[BIIILjava/lang/String;)I
    .locals 9
    .param p1, "dst"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "rotate"    # I
    .param p6, "format"    # Ljava/lang/String;

    .prologue
    .line 1223
    const/4 v8, 0x0

    .line 1225
    .local v8, "ret":I
    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    .line 1227
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeConvertImage(ILandroid/graphics/Bitmap;[BIIILjava/lang/String;)I

    move-result v8

    .line 1233
    :goto_0
    return v8

    .line 1231
    :cond_0
    const v8, -0x7ffffffe

    goto :goto_0
.end method

.method public createOutputImage(Landroid/graphics/Rect;Ljava/lang/Object;[IZ)I
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "listener"    # Ljava/lang/Object;
    .param p3, "crect"    # [I
    .param p4, "is_crop"    # Z

    .prologue
    .line 1148
    const/4 v9, 0x0

    .line 1150
    .local v9, "ret":I
    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    .line 1152
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeCreateOutputImage(IIIIILjava/lang/Object;[IZ)I

    move-result v9

    .line 1159
    :goto_0
    return v9

    .line 1156
    :cond_0
    const v9, -0x7ffffffe

    goto :goto_0
.end method

.method public decodeJpeg(Ljava/lang/String;[BLjava/lang/String;II)I
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "output_data"    # [B
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 1195
    const/4 v7, 0x0

    .line 1197
    .local v7, "ret":I
    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    .line 1199
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeDecodeJpeg(ILjava/lang/String;[BLjava/lang/String;II)I

    move-result v7

    .line 1205
    :goto_0
    return v7

    .line 1203
    :cond_0
    const v7, -0x7ffffffe

    goto :goto_0
.end method

.method public decodePostview(Ljava/lang/String;[I[I[I[I[I)I
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "out_width"    # [I
    .param p3, "out_height"    # [I
    .param p4, "exif_orientation"    # [I
    .param p5, "postview_data_size"    # [I
    .param p6, "gallery_data_size"    # [I

    .prologue
    .line 1084
    const/4 v8, 0x0

    .line 1086
    .local v8, "ret":I
    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    .line 1088
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeDecodePostview(ILjava/lang/String;[I[I[I[I[I)I

    move-result v8

    .line 1095
    :goto_0
    return v8

    .line 1092
    :cond_0
    const v8, -0x7ffffffe

    goto :goto_0
.end method

.method public end()I
    .locals 2

    .prologue
    .line 441
    const/4 v0, 0x0

    .line 443
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 445
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeEnd(I)I

    move-result v0

    .line 452
    :goto_0
    return v0

    .line 449
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public finish()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 385
    const/4 v0, 0x0

    .line 387
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_1

    .line 389
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mFinished:Z

    .line 390
    iget-boolean v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 391
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeFinish(I)I

    move-result v0

    .line 392
    iput-boolean v2, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mInitialized:Z

    .line 394
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->deleteNativeObject(I)V

    .line 395
    iput v2, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    .line 402
    :goto_0
    return v0

    .line 399
    :cond_1
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getBoundingRect(Landroid/graphics/Rect;)I
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    .line 586
    const/4 v1, 0x0

    .line 587
    .local v1, "ret":I
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 589
    .local v0, "rect_info":[I
    iget v2, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v2, :cond_2

    .line 591
    iget v2, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetBoundingRect(I[I)I

    move-result v1

    .line 592
    if-nez v1, :cond_0

    .line 594
    aget v2, v0, v6

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 605
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 607
    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 610
    :cond_1
    return v1

    .line 602
    :cond_2
    const v1, -0x7ffffffe

    goto :goto_0
.end method

.method public getClippingRect(Landroid/graphics/Rect;)I
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    .line 615
    const/4 v1, 0x0

    .line 616
    .local v1, "ret":I
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 618
    .local v0, "rect_info":[I
    iget v2, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v2, :cond_2

    .line 620
    iget v2, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetClippingRect(I[I)I

    move-result v1

    .line 621
    if-nez v1, :cond_0

    .line 623
    aget v2, v0, v6

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 634
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 636
    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 639
    :cond_1
    return v1

    .line 631
    :cond_2
    const v1, -0x7ffffffe

    goto :goto_0
.end method

.method public getGalleryDataOfAppSeg([B)I
    .locals 2
    .param p1, "gallery_data"    # [B

    .prologue
    .line 1100
    const/4 v0, 0x0

    .line 1102
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 1104
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetGalleryDataOfAppSeg(I[B)I

    move-result v0

    .line 1111
    :goto_0
    return v0

    .line 1108
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getGuideType([I)I
    .locals 2
    .param p1, "guide_type"    # [I

    .prologue
    .line 644
    const/4 v0, 0x0

    .line 646
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 648
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetGuideType(I[I)I

    move-result v0

    .line 655
    :goto_0
    return v0

    .line 652
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getImage([BLandroid/graphics/Rect;)I
    .locals 8
    .param p1, "output_image"    # [B
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 457
    const/4 v7, 0x0

    .line 459
    .local v7, "ret":I
    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    .line 461
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetImage(I[BIIII)I

    move-result v7

    .line 468
    :goto_0
    return v7

    .line 465
    :cond_0
    const v7, -0x7ffffffe

    goto :goto_0
.end method

.method public getIsShootable([I)I
    .locals 2
    .param p1, "is_shootable"    # [I

    .prologue
    .line 965
    const/4 v0, 0x0

    .line 967
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 969
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetIsShootable(I[I)I

    move-result v0

    .line 976
    :goto_0
    return v0

    .line 973
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getIsStop([I)I
    .locals 2
    .param p1, "is_stop"    # [I

    .prologue
    .line 949
    const/4 v0, 0x0

    .line 951
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 953
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetIsStop(I[I)I

    move-result v0

    .line 960
    :goto_0
    return v0

    .line 957
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getPolesDispPosition(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 7
    .param p1, "north"    # Landroid/graphics/Point;
    .param p2, "south"    # Landroid/graphics/Point;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1013
    const/4 v1, 0x0

    .line 1015
    .local v1, "ret":I
    iget v3, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v3, :cond_0

    .line 1017
    new-array v0, v6, [I

    .line 1018
    .local v0, "np":[I
    new-array v2, v6, [I

    .line 1019
    .local v2, "sp":[I
    iget v3, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v3, v0, v2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetPolesDispPosition(I[I[I)I

    move-result v1

    .line 1020
    aget v3, v0, v4

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 1021
    aget v3, v0, v5

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 1022
    aget v3, v2, v4

    iput v3, p2, Landroid/graphics/Point;->x:I

    .line 1023
    aget v3, v2, v5

    iput v3, p2, Landroid/graphics/Point;->y:I

    .line 1030
    .end local v0    # "np":[I
    .end local v2    # "sp":[I
    :goto_0
    return v1

    .line 1027
    :cond_0
    const v1, -0x7ffffffe

    goto :goto_0
.end method

.method public getPostviewParam(Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;)I
    .locals 2
    .param p1, "param"    # Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;
    .param p2, "def_param"    # Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;

    .prologue
    .line 981
    const/4 v0, 0x0

    .line 983
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 985
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetPostviewParam(ILcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;)I

    move-result v0

    .line 992
    :goto_0
    return v0

    .line 989
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getPreviewImage(II[B[B)I
    .locals 7
    .param p1, "output_width"    # I
    .param p2, "output_height"    # I
    .param p3, "output_image"    # [B
    .param p4, "input_image"    # [B

    .prologue
    .line 570
    const/4 v6, 0x0

    .line 572
    .local v6, "ret":I
    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    .line 574
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetPreviewImage(III[B[B)I

    move-result v6

    .line 581
    :goto_0
    return v6

    .line 578
    :cond_0
    const v6, -0x7ffffffe

    goto :goto_0
.end method

.method public getProjectionType([I)I
    .locals 2
    .param p1, "projection_type"    # [I

    .prologue
    .line 660
    const/4 v0, 0x0

    .line 662
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 664
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetProjectionType(I[I)I

    move-result v0

    .line 671
    :goto_0
    return v0

    .line 668
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getThumbnailImage(Landroid/graphics/Bitmap;II)I
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "image_id"    # I
    .param p3, "rotate"    # I

    .prologue
    .line 1209
    const/4 v0, 0x0

    .line 1211
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 1213
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetThumbnailImage(ILandroid/graphics/Bitmap;II)I

    move-result v0

    .line 1219
    :goto_0
    return v0

    .line 1217
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getUseSensorAssist(I[I)I
    .locals 2
    .param p1, "use_case"    # I
    .param p2, "enable"    # [I

    .prologue
    .line 692
    const/4 v0, 0x0

    .line 694
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 696
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetUseSensorAssist(II[I)I

    move-result v0

    .line 703
    :goto_0
    return v0

    .line 700
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getUsedHeapSize([I)I
    .locals 2
    .param p1, "used_heap_size"    # [I

    .prologue
    .line 676
    const/4 v0, 0x0

    .line 678
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 680
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetUsedHeapSize(I[I)I

    move-result v0

    .line 687
    :goto_0
    return v0

    .line 684
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public initialize(Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;[I)I
    .locals 2
    .param p1, "param"    # Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;
    .param p2, "buffer_size"    # [I

    .prologue
    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 372
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeInitialize(ILcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;[I)I

    move-result v0

    .line 373
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mInitialized:Z

    .line 380
    :goto_0
    return v0

    .line 377
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public reRegisterTexture()I
    .locals 2

    .prologue
    .line 554
    const/4 v0, 0x0

    .line 556
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 558
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativereReRegisterTexture(I)I

    move-result v0

    .line 565
    :goto_0
    return v0

    .line 562
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public registerStillImage([BIILjava/lang/String;)I
    .locals 7
    .param p1, "still_image"    # [B
    .param p2, "img_id"    # I
    .param p3, "format"    # I
    .param p4, "path"    # Ljava/lang/String;

    .prologue
    .line 1067
    const/4 v6, 0x0

    .line 1069
    .local v6, "ret":I
    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    .line 1071
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeRegisterStillImage(I[BIILjava/lang/String;)I

    move-result v6

    .line 1078
    :goto_0
    return v6

    .line 1075
    :cond_0
    const v6, -0x7ffffffe

    goto :goto_0
.end method

.method public releaseRegisteredImage()I
    .locals 2

    .prologue
    .line 1051
    const/4 v0, 0x0

    .line 1053
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 1055
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeReleaseRegisteredImage(I)I

    move-result v0

    .line 1062
    :goto_0
    return v0

    .line 1059
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public renderPostview(DDDI)I
    .locals 11
    .param p1, "x_rotate"    # D
    .param p3, "y_rotate"    # D
    .param p5, "scale"    # D
    .param p7, "disp_type"    # I

    .prologue
    .line 506
    const/4 v9, 0x0

    .line 508
    .local v9, "ret":I
    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    .line 510
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeRenderPostview(IDDDI)I

    move-result v9

    .line 517
    :goto_0
    return v9

    .line 514
    :cond_0
    const v9, -0x7ffffffe

    goto :goto_0
.end method

.method public renderPostviewAngle(DDDI)I
    .locals 11
    .param p1, "x_rotate"    # D
    .param p3, "y_rotate"    # D
    .param p5, "scale"    # D
    .param p7, "disp_type"    # I

    .prologue
    .line 522
    const/4 v9, 0x0

    .line 524
    .local v9, "ret":I
    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    .line 526
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeRenderPostviewAngle(IDDDI)I

    move-result v9

    .line 533
    :goto_0
    return v9

    .line 530
    :cond_0
    const v9, -0x7ffffffe

    goto :goto_0
.end method

.method public renderPostviewDefault(I)I
    .locals 2
    .param p1, "disp_type"    # I

    .prologue
    .line 538
    const/4 v0, 0x0

    .line 540
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 542
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeRenderPostviewDefault(II)I

    move-result v0

    .line 549
    :goto_0
    return v0

    .line 546
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public renderPreview([BIIII)I
    .locals 8
    .param p1, "input_img"    # [B
    .param p2, "image_id"    # I
    .param p3, "disp_type"    # I
    .param p4, "rotation"    # I
    .param p5, "device_rotation"    # I

    .prologue
    .line 473
    const/4 v7, 0x0

    .line 474
    .local v7, "ret":I
    monitor-enter p0

    .line 476
    :try_start_0
    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    .line 478
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeRenderPreview(I[BIIII)I

    move-result v7

    .line 484
    :goto_0
    monitor-exit p0

    .line 485
    return v7

    .line 482
    :cond_0
    const v7, -0x7ffffffe

    goto :goto_0

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public renderPreviewWithAnimation([BIIIIII)I
    .locals 10
    .param p1, "input_img"    # [B
    .param p2, "image_id"    # I
    .param p3, "disp_type"    # I
    .param p4, "rotation"    # I
    .param p5, "animation_type"    # I
    .param p6, "animation_progress"    # I
    .param p7, "device_rotate"    # I

    .prologue
    .line 490
    const/4 v9, 0x0

    .line 492
    .local v9, "ret":I
    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    .line 494
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeRenderPreviewWithAnimation(I[BIIIIII)I

    move-result v9

    .line 501
    :goto_0
    return v9

    .line 498
    :cond_0
    const v9, -0x7ffffffe

    goto :goto_0
.end method

.method public resetGL(I)I
    .locals 2
    .param p1, "is_delete_textures"    # I

    .prologue
    .line 1251
    const/4 v0, 0x0

    .line 1252
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 1254
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeResetGL(II)I

    move-result v0

    .line 1260
    :goto_0
    return v0

    .line 1258
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public saveCreatedOutputImage(Ljava/lang/String;I[ILjava/lang/String;Ljava/lang/String;ZLcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;)I
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "orientation"    # I
    .param p3, "output_size"    # [I
    .param p4, "first_date"    # Ljava/lang/String;
    .param p5, "last_date"    # Ljava/lang/String;
    .param p6, "addGallerySeg"    # Z
    .param p7, "exif_data"    # Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;

    .prologue
    .line 1164
    const/4 v9, 0x0

    .line 1166
    .local v9, "ret":I
    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    .line 1168
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSaveCreatedOutputImage(ILjava/lang/String;I[ILjava/lang/String;Ljava/lang/String;ZLcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;)I

    move-result v9

    .line 1175
    :goto_0
    return v9

    .line 1172
    :cond_0
    const v9, -0x7ffffffe

    goto :goto_0
.end method

.method public saveJpeg(Ljava/lang/String;[BLjava/lang/String;III)I
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "raw_data"    # [B
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "orientation"    # I

    .prologue
    .line 1180
    const/4 v8, 0x0

    .line 1182
    .local v8, "ret":I
    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    .line 1184
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSaveJpeg(ILjava/lang/String;[BLjava/lang/String;III)I

    move-result v8

    .line 1191
    :goto_0
    return v8

    .line 1188
    :cond_0
    const v8, -0x7ffffffe

    goto :goto_0
.end method

.method public saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;I[ILjava/lang/String;Ljava/lang/String;Z)I
    .locals 13
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "orientation"    # I
    .param p4, "output_size"    # [I
    .param p5, "first_date"    # Ljava/lang/String;
    .param p6, "last_date"    # Ljava/lang/String;
    .param p7, "addGallerySeg"    # Z

    .prologue
    .line 1132
    const/4 v12, 0x0

    .line 1134
    .local v12, "ret":I
    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    .line 1136
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move-object v2, p1

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSaveOutputJpeg(ILjava/lang/String;IIIII[ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v12

    .line 1143
    :goto_0
    return v12

    .line 1140
    :cond_0
    const v12, -0x7ffffffe

    goto :goto_0
.end method

.method public saveRegisteredImage(Z[Ljava/lang/Object;)I
    .locals 2
    .param p1, "is_save_still"    # Z
    .param p2, "save_preview_path"    # [Ljava/lang/Object;

    .prologue
    .line 1035
    const/4 v0, 0x0

    .line 1037
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 1039
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSaveRegisteredImage(IZ[Ljava/lang/Object;)I

    move-result v0

    .line 1046
    :goto_0
    return v0

    .line 1043
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setAngleMatrix([DI)I
    .locals 2
    .param p1, "matrix"    # [D
    .param p2, "sensor_type"    # I

    .prologue
    .line 805
    const/4 v0, 0x0

    .line 807
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 809
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetAngleMatrix(I[DI)I

    move-result v0

    .line 816
    :goto_0
    return v0

    .line 813
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setDrawBgBlankMode(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 1237
    const/4 v0, 0x0

    .line 1239
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 1241
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetDrawBgBlankMode(II)I

    move-result v0

    .line 1247
    :goto_0
    return v0

    .line 1245
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setGalleryData(Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$GalleryData;II)I
    .locals 2
    .param p1, "gallery_data"    # Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$GalleryData;
    .param p2, "rotation"    # I
    .param p3, "render_low_image"    # I

    .prologue
    .line 885
    const/4 v0, 0x0

    .line 887
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 889
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetGalleryData(ILcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$GalleryData;II)I

    move-result v0

    .line 896
    :goto_0
    return v0

    .line 893
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setGuideImage(ILandroid/graphics/Bitmap;)I
    .locals 2
    .param p1, "image_type"    # I
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 821
    const/4 v0, 0x0

    .line 823
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 825
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetGuideImage(IILandroid/graphics/Bitmap;)I

    move-result v0

    .line 832
    :goto_0
    return v0

    .line 829
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setGuideType(I)I
    .locals 2
    .param p1, "guide_type"    # I

    .prologue
    .line 725
    const/4 v0, 0x0

    .line 727
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 729
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetGuideType(II)I

    move-result v0

    .line 736
    :goto_0
    return v0

    .line 733
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setListenerFromNative(Landroid/app/Activity;)I
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 1116
    const/4 v0, 0x0

    .line 1118
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 1120
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetListenerFromNative(ILandroid/app/Activity;)I

    move-result v0

    .line 1127
    :goto_0
    return v0

    .line 1124
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setMotionlessThreshold(I)I
    .locals 2
    .param p1, "motionless_threshold"    # I

    .prologue
    .line 757
    const/4 v0, 0x0

    .line 759
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 761
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetMotionlessThreshold(II)I

    move-result v0

    .line 768
    :goto_0
    return v0

    .line 765
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setPostviewData(II)I
    .locals 2
    .param p1, "rotation"    # I
    .param p2, "render_low_image"    # I

    .prologue
    .line 869
    const/4 v0, 0x0

    .line 871
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 873
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetPostviewData(III)I

    move-result v0

    .line 880
    :goto_0
    return v0

    .line 877
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setPostviewParam(Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;)I
    .locals 2
    .param p1, "param"    # Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;
    .param p2, "def_param"    # Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;

    .prologue
    .line 997
    const/4 v0, 0x0

    .line 999
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 1001
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetPostviewParam(ILcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;)I

    move-result v0

    .line 1008
    :goto_0
    return v0

    .line 1005
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setProjectionType(I)I
    .locals 2
    .param p1, "projection_type"    # I

    .prologue
    .line 741
    const/4 v0, 0x0

    .line 743
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 745
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetProjectionType(II)I

    move-result v0

    .line 752
    :goto_0
    return v0

    .line 749
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setScene(I)I
    .locals 2
    .param p1, "scene"    # I

    .prologue
    .line 837
    const/4 v0, 0x0

    .line 839
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 841
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetScene(II)I

    move-result v0

    .line 848
    :goto_0
    return v0

    .line 845
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setTextureShrinkRatio(I)I
    .locals 2
    .param p1, "ratio"    # I

    .prologue
    .line 917
    const/4 v0, 0x0

    .line 919
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 921
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetTextureShrinkRatio(II)I

    move-result v0

    .line 928
    :goto_0
    return v0

    .line 925
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setUseReplayMode(I)I
    .locals 2
    .param p1, "enable"    # I

    .prologue
    .line 933
    const/4 v0, 0x0

    .line 935
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 937
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetUseReplayMode(II)I

    move-result v0

    .line 944
    :goto_0
    return v0

    .line 941
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setUseSensorAssist(II)I
    .locals 2
    .param p1, "use_case"    # I
    .param p2, "enable"    # I

    .prologue
    .line 901
    const/4 v0, 0x0

    .line 903
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 905
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetUseSensorAssist(III)I

    move-result v0

    .line 912
    :goto_0
    return v0

    .line 909
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setUseSensorThreshold(I)I
    .locals 2
    .param p1, "use_sensor_threshold"    # I

    .prologue
    .line 789
    const/4 v0, 0x0

    .line 791
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 793
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetUseSensorThreshold(II)I

    move-result v0

    .line 800
    :goto_0
    return v0

    .line 797
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setUseThreshold(I)I
    .locals 2
    .param p1, "use_threshold"    # I

    .prologue
    .line 773
    const/4 v0, 0x0

    .line 775
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 777
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetUseThreshold(II)I

    move-result v0

    .line 784
    :goto_0
    return v0

    .line 781
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public start(I)I
    .locals 2
    .param p1, "use_only_preview"    # I

    .prologue
    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, "ret":I
    monitor-enter p0

    .line 411
    :try_start_0
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 413
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeStart(II)I

    move-result v0

    .line 419
    :goto_0
    monitor-exit p0

    .line 420
    return v0

    .line 417
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0

    .line 419
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public undo()I
    .locals 2

    .prologue
    .line 853
    const/4 v0, 0x0

    .line 855
    .local v0, "ret":I
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    .line 857
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeUndo(I)I

    move-result v0

    .line 864
    :goto_0
    return v0

    .line 861
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method
