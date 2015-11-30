.class Lcom/sec/android/app/camera/CommonEngine$10$1;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CommonEngine$10;->onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/CommonEngine$10;

.field final synthetic val$jpegData:[B


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CommonEngine$10;[B)V
    .locals 0

    .prologue
    .line 7129
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iput-object p2, p0, Lcom/sec/android/app/camera/CommonEngine$10$1;->val$jpegData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    .prologue
    .line 7131
    const-string v3, "CommonEngine"

    const-string v8, "starting save..."

    invoke-static {v3, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v8, v8, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CommonEngine;->getOrientationOnTake()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/sec/android/app/camera/CommonEngine;->calculateOrientationForPicture(I)I

    move-result v24

    .line 7134
    .local v24, "orientationForPicture":I
    const-string v3, "CommonEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "storeImage - orientationForPicture : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7135
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/camera/Util;->convertToExifInterfaceOrientation(I)I

    move-result v11

    .line 7136
    .local v11, "orientationForExif":I
    const-string v3, "CommonEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "storeImage - ExifInterface Orientation : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v3, :cond_0

    .line 7139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CaptureData;->clear()V

    .line 7140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v8, 0x0

    iput-object v8, v3, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 7144
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    new-instance v8, Lcom/sec/android/app/camera/CaptureData;

    invoke-direct {v8}, Lcom/sec/android/app/camera/CaptureData;-><init>()V

    iput-object v8, v3, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 7145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->val$jpegData:[B

    const/16 v9, 0x1e0

    const/16 v10, 0x168

    invoke-static {v9, v10}, Lcom/sec/android/glview/TwGLUtil;->calculateSampleSize(II)I

    move-result v9

    invoke-virtual {v3, v8, v9}, Lcom/sec/android/app/camera/CaptureData;->setCaptureData([BI)V

    .line 7146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/CaptureData;->setOrientation(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 7154
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/Camera;->updateRecordingSnapThumbnail(I)V

    .line 7155
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getSecureMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7156
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/app/camera/Camera;->enterSecureMode:Z

    .line 7157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->showThumbnailButton()V

    .line 7159
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 7160
    .local v6, "dateTaken":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v7, v3}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 7161
    .local v22, "name":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ".jpg"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7164
    .local v5, "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/ImageSavingUtils;->getCoverModeImageSavingDir(I)Ljava/lang/String;

    move-result-object v4

    .line 7175
    .local v4, "directory":Ljava/lang/String;
    :goto_1
    new-instance v15, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7176
    .local v15, "f":Ljava/io/File;
    const/16 v17, 0x0

    .line 7177
    .local v17, "filenumber":I
    :goto_2
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 7178
    const-string v3, "CommonEngine"

    const-string v8, "Duplicated file name found"

    invoke-static {v3, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "("

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "filenumber":I
    .local v18, "filenumber":I
    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ".jpg"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7182
    const-string v3, "CommonEngine"

    const-string v8, "New file name created"

    invoke-static {v3, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7183
    new-instance v15, Ljava/io/File;

    .end local v15    # "f":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v15    # "f":Ljava/io/File;
    move/from16 v17, v18

    .end local v18    # "filenumber":I
    .restart local v17    # "filenumber":I
    goto :goto_2

    .line 7147
    .end local v4    # "directory":Ljava/lang/String;
    .end local v5    # "filename":Ljava/lang/String;
    .end local v6    # "dateTaken":J
    .end local v15    # "f":Ljava/io/File;
    .end local v17    # "filenumber":I
    .end local v22    # "name":Ljava/lang/String;
    :catch_0
    move-exception v23

    .line 7148
    .local v23, "oom":Ljava/lang/OutOfMemoryError;
    const-string v3, "CommonEngine"

    const-string v8, "Out of memory while creating bitmap."

    invoke-static {v3, v8}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 7149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v3, :cond_2

    .line 7150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CaptureData;->clear()V

    .line 7151
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v8, 0x0

    iput-object v8, v3, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    goto/16 :goto_0

    .line 7169
    .end local v23    # "oom":Ljava/lang/OutOfMemoryError;
    .restart local v5    # "filename":Ljava/lang/String;
    .restart local v6    # "dateTaken":J
    .restart local v22    # "name":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v3

    if-nez v3, :cond_4

    .line 7170
    sget-object v4, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .restart local v4    # "directory":Ljava/lang/String;
    goto/16 :goto_1

    .line 7172
    .end local v4    # "directory":Ljava/lang/String;
    :cond_4
    sget-object v4, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .restart local v4    # "directory":Ljava/lang/String;
    goto/16 :goto_1

    .line 7188
    .restart local v15    # "f":Ljava/io/File;
    .restart local v17    # "filenumber":I
    :cond_5
    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->val$jpegData:[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v3 .. v13}, Lcom/sec/android/app/camera/ImageSavingUtils;->addImage(ILjava/lang/String;Ljava/lang/String;JLandroid/location/Location;Landroid/graphics/Bitmap;[BIII)Z

    .line 7190
    new-instance v26, Landroid/content/ContentValues;

    const/16 v3, 0xa

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 7192
    .local v26, "values":Landroid/content/ContentValues;
    const-string v3, "_display_name"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7193
    const-string v3, "datetaken"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7194
    const-string v3, "mime_type"

    const-string v8, "image/jpeg"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7195
    const-string v3, "orientation"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7196
    const-string v3, "_data"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7198
    const/16 v16, 0x0

    .line 7202
    .local v16, "fileUri":Landroid/net/Uri;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v21

    .line 7203
    .local v21, "location":Landroid/location/Location;
    if-eqz v21, :cond_6

    .line 7205
    const-string v3, "CommonEngine"

    const-string v8, "Insert contextual tag"

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7207
    const-string v14, "weather_ID"

    .line 7208
    .local v14, "WEATHER_ID":Ljava/lang/String;
    const-string v2, "city_ID"

    .line 7210
    .local v2, "CITY_ID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getWeather()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCityId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7213
    const-string v3, "latitude"

    invoke-virtual/range {v21 .. v21}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 7214
    const-string v3, "longitude"

    invoke-virtual/range {v21 .. v21}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 7218
    .end local v2    # "CITY_ID":Ljava/lang/String;
    .end local v14    # "WEATHER_ID":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/sec/android/app/camera/CommonEngine;->access$4800(Lcom/sec/android/app/camera/CommonEngine;)Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v26

    invoke-virtual {v3, v8, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 7220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/sec/android/app/camera/CommonEngine;->access$4800(Lcom/sec/android/app/camera/CommonEngine;)Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    move-object/from16 v0, v16

    invoke-static {v3, v0, v8, v9}, Lcom/sec/android/app/camera/ImageSavingUtils;->setImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)V

    .line 7221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v3, :cond_8

    .line 7222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/sec/android/app/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 7230
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->isSecureKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 7231
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/CameraSettings;->addSnapshotUriListInSecureMode(Landroid/net/Uri;)V

    .line 7233
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/sec/android/app/camera/Camera;->doShareFileforShareShot(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 7256
    .end local v21    # "location":Landroid/location/Location;
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 7257
    return-void

    .line 7235
    :catch_1
    move-exception v25

    .line 7236
    .local v25, "sfe":Landroid/database/sqlite/SQLiteFullException;
    const-string v3, "CommonEngine"

    const-string v8, "Not enough space in database"

    invoke-static {v3, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v3, :cond_8

    .line 7238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v8, Lcom/sec/android/app/camera/CommonEngine$10$1$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/sec/android/app/camera/CommonEngine$10$1$1;-><init>(Lcom/sec/android/app/camera/CommonEngine$10$1;)V

    invoke-virtual {v3, v8}, Lcom/sec/android/app/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 7244
    .end local v25    # "sfe":Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v20

    .line 7245
    .local v20, "ise":Ljava/lang/IllegalStateException;
    const-string v3, "CommonEngine"

    const-string v8, "Unable to create new file. SD card removed"

    invoke-static {v3, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v3, :cond_8

    .line 7247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v8, Lcom/sec/android/app/camera/CommonEngine$10$1$2;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/sec/android/app/camera/CommonEngine$10$1$2;-><init>(Lcom/sec/android/app/camera/CommonEngine$10$1;)V

    invoke-virtual {v3, v8}, Lcom/sec/android/app/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 7253
    .end local v20    # "ise":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v19

    .line 7254
    .local v19, "iae":Ljava/lang/IllegalArgumentException;
    const-string v3, "CommonEngine"

    const-string v8, "ContentResolver insert failed"

    invoke-static {v3, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
