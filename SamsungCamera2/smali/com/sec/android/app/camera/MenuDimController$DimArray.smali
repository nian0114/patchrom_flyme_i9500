.class Lcom/sec/android/app/camera/MenuDimController$DimArray;
.super Ljava/lang/Object;
.source "MenuDimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/MenuDimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DimArray"
.end annotation


# instance fields
.field private mChangeArray:[Z

.field private mDimArray:[Z

.field private final mMenuId:I

.field final synthetic this$0:Lcom/sec/android/app/camera/MenuDimController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/MenuDimController;I)V
    .locals 4
    .param p2, "menuId"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x31

    .line 162
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mDimArray:[Z

    .line 160
    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mChangeArray:[Z

    .line 163
    iput p2, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mMenuId:I

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 165
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mDimArray:[Z

    aput-boolean v3, v1, v0

    .line 166
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mChangeArray:[Z

    aput-boolean v3, v1, v0

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method


# virtual methods
.method public getArray()[Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mDimArray:[Z

    return-object v0
.end method

.method public getMenuId()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mMenuId:I

    return v0
.end method

.method public getSavedSettingValue(I)I
    .locals 4
    .param p1, "menuid"    # I

    .prologue
    .line 353
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    # getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    .line 355
    .local v0, "dimReference":Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;
    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->getReferenceCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 357
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->getSettingsValue()I

    move-result v1

    .line 358
    .local v1, "settingValue":I
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    # getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .end local v1    # "settingValue":I
    :goto_0
    return v1

    .line 361
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->decreaseReferenceCount()V

    .line 364
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public restoreUserSettingValues(Z)V
    .locals 9
    .param p1, "exiting"    # Z

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0xb

    const/4 v6, 0x3

    const/4 v5, -0x1

    .line 370
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    # getter for: Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/MenuDimController;->access$100(Lcom/sec/android/app/camera/MenuDimController;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    .line 372
    .local v0, "cs":Lcom/sec/android/app/camera/CameraSettings;
    const/4 v1, 0x0

    .local v1, "key":I
    :goto_0
    const/16 v3, 0x31

    if-ge v1, v3, :cond_9

    .line 373
    if-eqz p1, :cond_0

    if-ne v1, v8, :cond_0

    .line 374
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v3

    if-eqz v3, :cond_3

    .line 375
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    # getter for: Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I
    invoke-static {v3}, Lcom/sec/android/app/camera/MenuDimController;->access$200(Lcom/sec/android/app/camera/MenuDimController;)I

    move-result v2

    .line 381
    .local v2, "savedValue":I
    :goto_1
    if-eq v2, v5, :cond_0

    .line 382
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    .line 384
    .end local v2    # "savedValue":I
    :cond_0
    if-eqz p1, :cond_1

    const/16 v3, 0xf

    if-ne v1, v3, :cond_1

    .line 385
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v3

    if-eqz v3, :cond_4

    .line 386
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    # getter for: Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I
    invoke-static {v3}, Lcom/sec/android/app/camera/MenuDimController;->access$300(Lcom/sec/android/app/camera/MenuDimController;)I

    move-result v2

    .line 392
    .restart local v2    # "savedValue":I
    :goto_2
    if-eq v2, v5, :cond_1

    .line 393
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    .line 396
    .end local v2    # "savedValue":I
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mChangeArray:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_5

    .line 372
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    :cond_3
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .restart local v2    # "savedValue":I
    goto :goto_1

    .line 389
    .end local v2    # "savedValue":I
    :cond_4
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .restart local v2    # "savedValue":I
    goto :goto_2

    .line 400
    .end local v2    # "savedValue":I
    :cond_5
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 427
    :pswitch_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 428
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 429
    invoke-virtual {v0, v2, p1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(IZ)V

    goto :goto_3

    .line 402
    .end local v2    # "savedValue":I
    :pswitch_2
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 403
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 404
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    goto :goto_3

    .line 407
    .end local v2    # "savedValue":I
    :pswitch_3
    const/16 v3, 0x6b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 408
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 409
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    goto :goto_3

    .line 412
    .end local v2    # "savedValue":I
    :pswitch_4
    const/16 v3, 0x74

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 413
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 414
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioZoom(I)V

    goto :goto_3

    .line 417
    .end local v2    # "savedValue":I
    :pswitch_5
    const/16 v3, 0xe

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 418
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 419
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setAutoContrast(I)V

    goto :goto_3

    .line 422
    .end local v2    # "savedValue":I
    :pswitch_6
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 423
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 424
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    goto :goto_3

    .line 432
    .end local v2    # "savedValue":I
    :pswitch_7
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 433
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 434
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    goto :goto_3

    .line 437
    .end local v2    # "savedValue":I
    :pswitch_8
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 438
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 439
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v3

    if-nez v3, :cond_6

    .line 440
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto :goto_3

    .line 442
    :cond_6
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto :goto_3

    .line 446
    .end local v2    # "savedValue":I
    :pswitch_9
    const/16 v3, 0x12

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 447
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 448
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setZoomValue(I)V

    goto/16 :goto_3

    .line 451
    .end local v2    # "savedValue":I
    :pswitch_a
    if-nez p1, :cond_2

    .line 452
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 453
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 454
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_3

    .line 458
    .end local v2    # "savedValue":I
    :pswitch_b
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 459
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 460
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_3

    .line 463
    .end local v2    # "savedValue":I
    :pswitch_c
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 464
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 465
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    goto/16 :goto_3

    .line 468
    .end local v2    # "savedValue":I
    :pswitch_d
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 469
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 470
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setExposureValue(I)V

    goto/16 :goto_3

    .line 473
    .end local v2    # "savedValue":I
    :pswitch_e
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 474
    .restart local v2    # "savedValue":I
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 475
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 476
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_3

    .line 478
    :cond_7
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 479
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 480
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_3

    .line 483
    :cond_8
    if-eq v2, v5, :cond_2

    .line 484
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_3

    .line 490
    .end local v2    # "savedValue":I
    :pswitch_f
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 491
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 492
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    goto/16 :goto_3

    .line 495
    .end local v2    # "savedValue":I
    :pswitch_10
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 496
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 497
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setTimer(I)V

    goto/16 :goto_3

    .line 500
    .end local v2    # "savedValue":I
    :pswitch_11
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 501
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 502
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setReview(I)V

    goto/16 :goto_3

    .line 505
    .end local v2    # "savedValue":I
    :pswitch_12
    const/16 v3, 0x16

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 506
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 507
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    goto/16 :goto_3

    .line 510
    .end local v2    # "savedValue":I
    :pswitch_13
    const/16 v3, 0x64

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 511
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 512
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto/16 :goto_3

    .line 515
    .end local v2    # "savedValue":I
    :pswitch_14
    const/16 v3, 0x65

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 516
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 517
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_3

    .line 522
    .end local v2    # "savedValue":I
    :pswitch_15
    const/16 v3, 0x15

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 523
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 524
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraShutterSound(I)V

    goto/16 :goto_3

    .line 527
    .end local v2    # "savedValue":I
    :pswitch_16
    const/16 v3, 0x26

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 528
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 529
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    goto/16 :goto_3

    .line 532
    .end local v2    # "savedValue":I
    :pswitch_17
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 533
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 534
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_3

    .line 537
    .end local v2    # "savedValue":I
    :pswitch_18
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 538
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 539
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setBurstMode(I)V

    goto/16 :goto_3

    .line 542
    .end local v2    # "savedValue":I
    :pswitch_19
    const/16 v3, 0x30

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 543
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 544
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setContextualFilename(I)V

    goto/16 :goto_3

    .line 547
    .end local v2    # "savedValue":I
    :pswitch_1a
    const/16 v3, 0x47

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 548
    .restart local v2    # "savedValue":I
    const-string v3, "MenuDimController"

    const-string v4, "Voice Command"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    if-eq v2, v5, :cond_2

    .line 550
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraVoiceCommand(I)V

    goto/16 :goto_3

    .line 553
    .end local v2    # "savedValue":I
    :pswitch_1b
    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 554
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 555
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    goto/16 :goto_3

    .line 558
    .end local v2    # "savedValue":I
    :pswitch_1c
    const/16 v3, 0x27

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 559
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 560
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setShareMode(I)V

    goto/16 :goto_3

    .line 563
    .end local v2    # "savedValue":I
    :pswitch_1d
    const/16 v3, 0x22

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 564
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 565
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSaveRichtone(I)V

    goto/16 :goto_3

    .line 568
    .end local v2    # "savedValue":I
    :pswitch_1e
    const/16 v3, 0x55

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 569
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 570
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    goto/16 :goto_3

    .line 573
    .end local v2    # "savedValue":I
    :pswitch_1f
    const/16 v3, 0x5a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 574
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 575
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setTouchToCapture(I)V

    goto/16 :goto_3

    .line 578
    .end local v2    # "savedValue":I
    :pswitch_20
    const/16 v3, 0x57

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 579
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 580
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setAutoNightDetectionMode(I)V

    goto/16 :goto_3

    .line 583
    .end local v2    # "savedValue":I
    :pswitch_21
    const/16 v3, 0x58

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 584
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 585
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setDualShotMode(I)V

    goto/16 :goto_3

    .line 588
    .end local v2    # "savedValue":I
    :pswitch_22
    const/16 v3, 0x14

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 589
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 590
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    goto/16 :goto_3

    .line 597
    .end local v2    # "savedValue":I
    :cond_9
    return-void

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_1c
        :pswitch_0
        :pswitch_3
        :pswitch_1d
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_20
        :pswitch_22
        :pswitch_21
        :pswitch_1f
        :pswitch_4
    .end packed-switch
.end method

.method public saveSetting(II)Z
    .locals 5
    .param p1, "menuid"    # I
    .param p2, "value"    # I

    .prologue
    .line 192
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    # getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    .line 193
    .local v0, "dimReference":Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;
    if-nez v0, :cond_0

    .line 194
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    # getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    invoke-direct {v3, v4, p2}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;-><init>(Lcom/sec/android/app/camera/MenuDimController;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const/4 v1, 0x1

    .line 198
    :goto_0
    return v1

    .line 197
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->increaseReferenceCount()V

    .line 198
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public varargs saveSettingMulti([I)V
    .locals 8
    .param p1, "indices"    # [I

    .prologue
    const/4 v6, 0x1

    .line 227
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v3, v0, v2

    .line 229
    .local v3, "index":I
    if-ltz v3, :cond_1

    const/16 v5, 0x31

    if-ge v3, v5, :cond_1

    move v5, v6

    :goto_1
    if-nez v5, :cond_2

    .line 342
    .end local v3    # "index":I
    :cond_0
    return-void

    .line 229
    .restart local v3    # "index":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 233
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    # getter for: Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v5}, Lcom/sec/android/app/camera/MenuDimController;->access$100(Lcom/sec/android/app/camera/MenuDimController;)Lcom/sec/android/app/camera/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    .line 235
    .local v1, "cs":Lcom/sec/android/app/camera/CameraSettings;
    packed-switch v3, :pswitch_data_0

    .line 227
    :goto_2
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    :pswitch_1
    const/16 v5, 0xd

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAntiShake()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 240
    :pswitch_2
    const/16 v5, 0xe

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAutoContrast()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 243
    :pswitch_3
    const/4 v5, 0x2

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 246
    :pswitch_4
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    invoke-virtual {p0, v6, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 249
    :pswitch_5
    const/16 v5, 0xa

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 252
    :pswitch_6
    const/16 v5, 0x8

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 255
    :pswitch_7
    const/16 v5, 0x12

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getZoomValue()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 258
    :pswitch_8
    const/4 v5, 0x3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 261
    :pswitch_9
    const/4 v5, 0x5

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 264
    :pswitch_a
    const/16 v5, 0xb

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureMeter()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 267
    :pswitch_b
    const/4 v5, 0x7

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getExposureValue()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 270
    :pswitch_c
    const/4 v5, 0x4

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 273
    :pswitch_d
    const/16 v5, 0x9

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 276
    :pswitch_e
    const/4 v5, 0x6

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 279
    :pswitch_f
    const/16 v5, 0x11

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 282
    :pswitch_10
    const/16 v5, 0x16

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 285
    :pswitch_11
    const/16 v5, 0x13

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 288
    :pswitch_12
    const/16 v5, 0x64

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 291
    :pswitch_13
    const/16 v5, 0x65

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 294
    :pswitch_14
    const/16 v5, 0x6b

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 297
    :pswitch_15
    const/16 v5, 0x74

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioZoom()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 300
    :pswitch_16
    const/16 v5, 0x26

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 303
    :pswitch_17
    const/16 v5, 0x10

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 306
    :pswitch_18
    const/16 v5, 0x2f

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 309
    :pswitch_19
    const/16 v5, 0x30

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getContextualFilename()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 312
    :pswitch_1a
    const/16 v5, 0x47

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 315
    :pswitch_1b
    const/16 v5, 0x15

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 318
    :pswitch_1c
    const/16 v5, 0x22

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSaveRichtone()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 321
    :pswitch_1d
    const/16 v5, 0x55

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 324
    :pswitch_1e
    const/16 v5, 0x5a

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getTouchToCapture()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 327
    :pswitch_1f
    const/16 v5, 0x57

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 330
    :pswitch_20
    const/16 v5, 0x58

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDualShotMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 333
    :pswitch_21
    const/16 v5, 0x27

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 336
    :pswitch_22
    const/16 v5, 0x14

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
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
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_1b
        :pswitch_16
        :pswitch_21
        :pswitch_0
        :pswitch_14
        :pswitch_1c
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_1f
        :pswitch_22
        :pswitch_20
        :pswitch_1e
        :pswitch_15
    .end packed-switch
.end method

.method public set(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "dimmed"    # Z

    .prologue
    .line 216
    if-ltz p1, :cond_1

    const/16 v0, 0x31

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    .line 224
    :cond_0
    :goto_1
    return-void

    .line 216
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 220
    :cond_2
    if-eqz p2, :cond_0

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mDimArray:[Z

    aput-boolean p2, v0, p1

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mChangeArray:[Z

    aput-boolean p2, v0, p1

    goto :goto_1
.end method

.method public setChangedOnly(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "changed"    # Z

    .prologue
    .line 206
    if-ltz p1, :cond_1

    const/16 v0, 0x31

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    .line 213
    :cond_0
    :goto_1
    return-void

    .line 206
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 210
    :cond_2
    if-eqz p2, :cond_0

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mChangeArray:[Z

    aput-boolean p2, v0, p1

    goto :goto_1
.end method

.method public varargs setDimMulti([I)V
    .locals 5
    .param p1, "indices"    # [I

    .prologue
    .line 345
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 346
    .local v2, "index":I
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->set(IZ)V

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    .end local v2    # "index":I
    :cond_0
    return-void
.end method
