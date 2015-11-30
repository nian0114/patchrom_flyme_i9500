.class public Lcom/sec/android/app/camera/MenuDimController;
.super Ljava/lang/Object;
.source "MenuDimController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/MenuDimController$DimArray;,
        Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;
    }
.end annotation


# static fields
.field public static final AUTOCONTRAST:I = 0x7

.field public static final AUTO_NIGHT_DETECTION:I = 0x28

.field public static final BRIGHTNESS:I = 0x6

.field public static final BURST_SETTINGS:I = 0x22

.field public static final CAMCORDER_ANTISHAKE:I = 0x1f

.field public static final CAMCORDER_AUDIOZOOM:I = 0x2c

.field public static final CAMCORDER_RESOLUTION:I = 0x1a

.field public static final CAMCORDER_SELF_SWITCH:I = 0x18

.field public static final CAMERA_ANTI_SHAKE:I = 0x5

.field public static final CAMERA_MODE:I = 0x0

.field public static final CAMERA_QUALITY:I = 0x21

.field public static final CAMERA_RESOLUTION:I = 0x11

.field public static final CONTEXTUAL_FILENAME:I = 0x23

.field public static final CONTEXT_MENU_HELP:I = 0x30

.field public static final DUAL_MODE:I = 0x26

.field public static final DUAL_SHOT_MODE:I = 0x2a

.field public static final EFFECT:I = 0xa

.field public static final EFFECT_DOWNLOAD_BUTTON:I = 0x2e

.field public static final EFFECT_MANAGER_BUTTON:I = 0x2f

.field public static final EXPOSURE_VALUE:I = 0x10

.field public static final FACE_DETECTION:I = 0x27

.field public static final FLASH_MODE:I = 0xd

.field public static final FLIP:I = 0x1c

.field public static final FOCUS_MODE:I = 0xe

.field public static final GPS:I = 0x29

.field public static final GUIDELINE:I = 0x16

.field public static final IMAGE_VIEWER:I = 0x17

.field public static final ISO:I = 0x9

.field public static final MENUID_SETTINGS:I = 0x2d

.field public static final METERING:I = 0xf

.field public static final NUM_OF_DIM_BUTTONS:I = 0x31

.field public static final QUICK_SETTINGS:I = 0x25

.field public static final RECORDING:I = 0x2

.field public static final RECORDING_MODE:I = 0x19

.field public static final REFRESH:I = 0x1e

.field public static final REVIEW:I = 0x14

.field public static final SAVE_RICHTONE:I = 0x20

.field public static final SCENE_MODE:I = 0x8

.field public static final SHARE_MODE:I = 0x1d

.field public static final SHOOTING_MODE:I = 0x3

.field public static final SHUTTER:I = 0x1

.field public static final SHUTTER_SOUND:I = 0x1b

.field public static final SMILE_SHOT:I = 0xc

.field public static final STORAGE:I = 0x15

.field private static final TAG:Ljava/lang/String; = "MenuDimController"

.field public static final TIMER:I = 0x13

.field public static final TOUCH_TO_CAPTURE:I = 0x2b

.field public static final VOICECOMMAND:I = 0x24

.field public static final WHITEBALANCE:I = 0x12

.field public static final ZOOM:I = 0xb


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/glview/TwGLView;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckSceneModeSet:Z

.field private mCurrentDimArray:[Z

.field private mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/MenuDimController$DimArray;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousFlashValue:I

.field private mPreviousMeteringValue:I

.field private mUserSettingValueList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 2
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/16 v0, 0x31

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    .line 112
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    .line 114
    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    .line 115
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    .line 116
    iput v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I

    .line 122
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/MenuDimController;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/MenuDimController;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/MenuDimController;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/MenuDimController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/MenuDimController;

    .prologue
    .line 41
    iget v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/MenuDimController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/MenuDimController;

    .prologue
    .line 41
    iget v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I

    return v0
.end method

.method private merge([Z)V
    .locals 4
    .param p1, "array"    # [Z

    .prologue
    .line 2167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x31

    if-ge v0, v1, :cond_0

    .line 2168
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v2, v2, v0

    aget-boolean v3, p1, v0

    or-int/2addr v2, v3

    aput-boolean v2, v1, v0

    .line 2167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2170
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addButton(Lcom/sec/android/glview/TwGLView;)V
    .locals 1
    .param p1, "button"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 614
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    monitor-exit p0

    return-void

    .line 614
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 601
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 602
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    monitor-exit p0

    return-void

    .line 601
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDim(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 781
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v0, v0, p1

    .line 785
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDimArray([Z)V
    .locals 3
    .param p1, "dimArray"    # [Z

    .prologue
    const/4 v2, 0x0

    .line 606
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    const/16 v1, 0x31

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 607
    return-void
.end method

.method public getSavedUserSettingValues(I)I
    .locals 3
    .param p1, "menuId"    # I

    .prologue
    .line 798
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    .line 800
    .local v0, "dimReference":Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;
    if-eqz v0, :cond_0

    .line 801
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->getSettingsValue()I

    move-result v1

    .line 803
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getkeyFromCommandId(I)I
    .locals 1
    .param p1, "commandId"    # I

    .prologue
    .line 622
    const/4 v0, -0x1

    .line 624
    .local v0, "key":I
    sparse-switch p1, :sswitch_data_0

    .line 762
    :goto_0
    return v0

    .line 626
    :sswitch_0
    const/4 v0, 0x0

    .line 627
    goto :goto_0

    .line 629
    :sswitch_1
    const/16 v0, 0x2d

    .line 630
    goto :goto_0

    .line 632
    :sswitch_2
    const/4 v0, 0x1

    .line 633
    goto :goto_0

    .line 635
    :sswitch_3
    const/4 v0, 0x2

    .line 636
    goto :goto_0

    .line 638
    :sswitch_4
    const/4 v0, 0x3

    .line 639
    goto :goto_0

    .line 641
    :sswitch_5
    const/16 v0, 0x8

    .line 642
    goto :goto_0

    .line 645
    :sswitch_6
    const/16 v0, 0xd

    .line 646
    goto :goto_0

    .line 648
    :sswitch_7
    const/16 v0, 0x11

    .line 649
    goto :goto_0

    .line 651
    :sswitch_8
    const/16 v0, 0xe

    .line 652
    goto :goto_0

    .line 654
    :sswitch_9
    const/16 v0, 0x13

    .line 655
    goto :goto_0

    .line 657
    :sswitch_a
    const/16 v0, 0x10

    .line 658
    goto :goto_0

    .line 660
    :sswitch_b
    const/16 v0, 0xa

    .line 661
    goto :goto_0

    .line 663
    :sswitch_c
    const/16 v0, 0x12

    .line 664
    goto :goto_0

    .line 666
    :sswitch_d
    const/16 v0, 0x9

    .line 667
    goto :goto_0

    .line 669
    :sswitch_e
    const/16 v0, 0xf

    .line 670
    goto :goto_0

    .line 672
    :sswitch_f
    const/4 v0, 0x5

    .line 673
    goto :goto_0

    .line 675
    :sswitch_10
    const/4 v0, 0x7

    .line 676
    goto :goto_0

    .line 678
    :sswitch_11
    const/16 v0, 0x14

    .line 679
    goto :goto_0

    .line 681
    :sswitch_12
    const/16 v0, 0xb

    .line 682
    goto :goto_0

    .line 684
    :sswitch_13
    const/16 v0, 0x16

    .line 685
    goto :goto_0

    .line 687
    :sswitch_14
    const/16 v0, 0x15

    .line 688
    goto :goto_0

    .line 690
    :sswitch_15
    const/16 v0, 0x17

    .line 691
    goto :goto_0

    .line 693
    :sswitch_16
    const/16 v0, 0x19

    .line 694
    goto :goto_0

    .line 696
    :sswitch_17
    const/16 v0, 0x1a

    .line 697
    goto :goto_0

    .line 699
    :sswitch_18
    const/16 v0, 0x1f

    .line 700
    goto :goto_0

    .line 702
    :sswitch_19
    const/16 v0, 0x2c

    .line 703
    goto :goto_0

    .line 705
    :sswitch_1a
    const/16 v0, 0x1d

    .line 706
    goto :goto_0

    .line 708
    :sswitch_1b
    const/16 v0, 0x1c

    .line 709
    goto :goto_0

    .line 711
    :sswitch_1c
    const/16 v0, 0x21

    .line 712
    goto :goto_0

    .line 714
    :sswitch_1d
    const/16 v0, 0x22

    .line 715
    goto :goto_0

    .line 717
    :sswitch_1e
    const/16 v0, 0x23

    .line 718
    goto :goto_0

    .line 720
    :sswitch_1f
    const/16 v0, 0x24

    .line 721
    goto :goto_0

    .line 723
    :sswitch_20
    const/16 v0, 0x1b

    .line 724
    goto :goto_0

    .line 726
    :sswitch_21
    const/16 v0, 0x20

    .line 727
    goto :goto_0

    .line 729
    :sswitch_22
    const/16 v0, 0x25

    .line 730
    goto :goto_0

    .line 732
    :sswitch_23
    const/16 v0, 0x26

    .line 733
    goto :goto_0

    .line 735
    :sswitch_24
    const/16 v0, 0x27

    .line 736
    goto :goto_0

    .line 738
    :sswitch_25
    const/16 v0, 0x2b

    .line 739
    goto :goto_0

    .line 741
    :sswitch_26
    const/16 v0, 0x28

    .line 742
    goto :goto_0

    .line 744
    :sswitch_27
    const/16 v0, 0x2a

    .line 745
    goto :goto_0

    .line 747
    :sswitch_28
    const/16 v0, 0x29

    .line 748
    goto :goto_0

    .line 750
    :sswitch_29
    const/16 v0, 0x30

    .line 751
    goto :goto_0

    .line 753
    :sswitch_2a
    const/16 v0, 0x2e

    .line 754
    goto :goto_0

    .line 756
    :sswitch_2b
    const/16 v0, 0x2f

    .line 757
    goto :goto_0

    .line 624
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x3 -> :sswitch_6
        0x4 -> :sswitch_7
        0x5 -> :sswitch_8
        0x6 -> :sswitch_9
        0x7 -> :sswitch_a
        0x8 -> :sswitch_b
        0x9 -> :sswitch_c
        0xa -> :sswitch_d
        0xb -> :sswitch_e
        0xd -> :sswitch_f
        0xe -> :sswitch_10
        0x10 -> :sswitch_1c
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_28
        0x15 -> :sswitch_20
        0x16 -> :sswitch_14
        0x1b -> :sswitch_1
        0x1d -> :sswitch_15
        0x20 -> :sswitch_2
        0x22 -> :sswitch_21
        0x24 -> :sswitch_0
        0x33 -> :sswitch_1b
        0x35 -> :sswitch_1a
        0x3f -> :sswitch_1d
        0x40 -> :sswitch_1e
        0x41 -> :sswitch_3
        0x42 -> :sswitch_22
        0x47 -> :sswitch_1f
        0x56 -> :sswitch_24
        0x57 -> :sswitch_23
        0x5d -> :sswitch_26
        0x60 -> :sswitch_27
        0x62 -> :sswitch_25
        0xbb8 -> :sswitch_16
        0xbb9 -> :sswitch_17
        0xbbf -> :sswitch_18
        0xbc4 -> :sswitch_6
        0xbc7 -> :sswitch_19
        0xe75 -> :sswitch_29
        0x232e -> :sswitch_2b
        0x232f -> :sswitch_2a
    .end sparse-switch
.end method

.method public processDim()V
    .locals 3

    .prologue
    .line 2154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x31

    if-ge v0, v2, :cond_0

    .line 2155
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/MenuDimController;->setDim(IZ)V

    .line 2154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2158
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2159
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/MenuDimController$DimArray;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2160
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getArray()[Z

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/MenuDimController;->merge([Z)V

    goto :goto_1

    .line 2163
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 2164
    return-void
.end method

.method public declared-synchronized refreshButtonDim(II)V
    .locals 13
    .param p1, "menuid"    # I
    .param p2, "modeid"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 828
    monitor-enter p0

    :try_start_0
    const-string v8, "MenuDimController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refreshButtonDim: menuid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " modeid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v8, :cond_0

    .line 833
    const-string v8, "MenuDimController"

    const-string v9, "ActivityContext is null"

    invoke-static {v8, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2151
    :goto_0
    monitor-exit p0

    return-void

    .line 838
    :cond_0
    :try_start_1
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    .line 839
    .local v0, "cs":Lcom/sec/android/app/camera/CameraSettings;
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    .line 841
    .local v1, "dimArray":Lcom/sec/android/app/camera/MenuDimController$DimArray;
    if-eqz v1, :cond_1

    .line 842
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->restoreUserSettingValues(Z)V

    .line 843
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getMenuId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    const-string v8, "MenuDimController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoring user setting values. CameraResolutionChanged = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolutionChanged()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " CamcorderResolutionChanged = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolutionChanged()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_1
    new-instance v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    .end local v1    # "dimArray":Lcom/sec/android/app/camera/MenuDimController$DimArray;
    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;-><init>(Lcom/sec/android/app/camera/MenuDimController;I)V

    .line 849
    .restart local v1    # "dimArray":Lcom/sec/android/app/camera/MenuDimController$DimArray;
    sparse-switch p1, :sswitch_data_0

    .line 2088
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->isConnectHeadSet()Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x74

    if-ne p1, v8, :cond_3

    .line 2089
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x2c

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2090
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x2c

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 2091
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x2c

    aput v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 2094
    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2095
    :cond_4
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x19

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2096
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x19

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 2099
    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2100
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x26

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2103
    :cond_6
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCameraMode()Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isTemperatureHighToRecord()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2104
    :cond_7
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/4 v10, 0x2

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2107
    :cond_8
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2108
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2111
    :cond_9
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v9, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/Camera;->isKNOXMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2112
    const/16 v8, 0x8

    new-array v8, v8, [I

    fill-array-data v8, :array_1

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2113
    const/4 v8, 0x7

    new-array v8, v8, [I

    fill-array-data v8, :array_2

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 2114
    const/4 v8, 0x7

    new-array v8, v8, [I

    fill-array-data v8, :array_3

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 2117
    :cond_a
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v9, "com.sec.android.gallery3d"

    invoke-static {v8, v9}, Lcom/sec/android/app/camera/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 2119
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_4

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2120
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x14

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 2121
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x1d

    aput v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 2122
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setReview(I)V

    .line 2124
    :cond_b
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getSecureMode()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 2126
    const/4 v8, 0x5

    new-array v8, v8, [I

    fill-array-data v8, :array_5

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2129
    const/4 v8, 0x4

    new-array v8, v8, [I

    fill-array-data v8, :array_6

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 2130
    const/4 v8, 0x4

    new-array v8, v8, [I

    fill-array-data v8, :array_7

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 2132
    :cond_c
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v9, "com.samsung.helphub"

    invoke-static {v8, v9}, Lcom/sec/android/app/camera/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 2133
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.samsung.helphub.HELP"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2134
    .local v3, "intent":Landroid/content/Intent;
    const-string v8, "helphub:section"

    const-string v9, "camera"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2135
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 2136
    .local v5, "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_d

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v11, :cond_e

    .line 2137
    :cond_d
    const-string v8, "MenuDimController"

    const-string v9, "<OMY>Util.isPkgEnabled1"

    invoke-static {v8, v9}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x30

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2139
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x30

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 2140
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x30

    aput v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 2143
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_e
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v8}, Lcom/sec/android/app/camera/Util;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 2144
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x24

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2145
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x24

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 2146
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x24

    aput v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 2148
    :cond_f
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2150
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuDimController;->processDim()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 828
    .end local v0    # "cs":Lcom/sec/android/app/camera/CameraSettings;
    .end local v1    # "dimArray":Lcom/sec/android/app/camera/MenuDimController$DimArray;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 851
    .restart local v0    # "cs":Lcom/sec/android/app/camera/CameraSettings;
    .restart local v1    # "dimArray":Lcom/sec/android/app/camera/MenuDimController$DimArray;
    :sswitch_0
    :try_start_2
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v8

    if-nez v8, :cond_2

    .line 852
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 853
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x1c

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 854
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x1c

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 855
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    .line 857
    :cond_10
    if-eqz p2, :cond_2

    .line 859
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v8

    const/16 v9, 0x28

    if-ne v8, v9, :cond_11

    .line 864
    const/16 v8, 0xd

    new-array v8, v8, [I

    fill-array-data v8, :array_8

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 867
    const/16 v8, 0xb

    new-array v8, v8, [I

    fill-array-data v8, :array_9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 869
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_a

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 882
    :goto_2
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    goto/16 :goto_1

    .line 875
    :cond_11
    const/16 v8, 0xc

    new-array v8, v8, [I

    fill-array-data v8, :array_b

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 878
    const/16 v8, 0xb

    new-array v8, v8, [I

    fill-array-data v8, :array_c

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 880
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_d

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto :goto_2

    .line 893
    :sswitch_1
    if-nez p2, :cond_2

    .line 894
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_e

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 895
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_f

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 896
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x24

    aput v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 900
    :sswitch_2
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v8

    if-nez v8, :cond_13

    .line 901
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v9, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/Camera;->isKNOXMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 906
    :cond_12
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x2a

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 907
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x2a

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 908
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x2a

    aput v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 911
    :cond_13
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 912
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x1c

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 913
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x1c

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 914
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    .line 923
    :cond_14
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 1446
    :pswitch_1
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x20

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1448
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 1449
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x27

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1450
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x27

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1451
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x27

    aput v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1454
    :cond_15
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-nez v8, :cond_16

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_37

    .line 1455
    :cond_16
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    .line 925
    :pswitch_2
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_10

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 926
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_11

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 927
    const/4 v8, 0x7

    new-array v8, v8, [I

    fill-array-data v8, :array_12

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 930
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    .line 931
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    .line 937
    :pswitch_3
    const/4 v8, 0x4

    new-array v8, v8, [I

    fill-array-data v8, :array_13

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 938
    const/4 v8, 0x4

    new-array v8, v8, [I

    fill-array-data v8, :array_14

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 939
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_15

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 940
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 944
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_1

    .line 973
    :pswitch_4
    const/16 v8, 0xb

    new-array v8, v8, [I

    fill-array-data v8, :array_16

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 975
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_17

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 977
    const/16 v8, 0x8

    new-array v8, v8, [I

    fill-array-data v8, :array_18

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 981
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-nez v8, :cond_17

    .line 986
    :goto_3
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 987
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 999
    :goto_4
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_1

    .line 982
    :cond_17
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x27

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 983
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x27

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 984
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x27

    aput v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto :goto_3

    .line 989
    :cond_18
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v8

    if-ne v8, v11, :cond_19

    .line 990
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_4

    .line 992
    :cond_19
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_4

    .line 1008
    :pswitch_5
    const/16 v8, 0xe

    new-array v8, v8, [I

    fill-array-data v8, :array_19

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1010
    const/16 v8, 0xd

    new-array v8, v8, [I

    fill-array-data v8, :array_1a

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1013
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_1b

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1014
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    .line 1016
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 1017
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1026
    :goto_5
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    .line 1032
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_1

    .line 1020
    :cond_1a
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_5

    .line 1035
    :pswitch_6
    const/16 v8, 0xe

    new-array v8, v8, [I

    fill-array-data v8, :array_1c

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1037
    const/16 v8, 0xd

    new-array v8, v8, [I

    fill-array-data v8, :array_1d

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1039
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_1e

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1040
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 1041
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1050
    :goto_6
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    .line 1056
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    .line 1062
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_1

    .line 1044
    :cond_1b
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_6

    .line 1066
    :pswitch_7
    const/16 v8, 0xe

    new-array v8, v8, [I

    fill-array-data v8, :array_1f

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1068
    const/16 v8, 0xd

    new-array v8, v8, [I

    fill-array-data v8, :array_20

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1070
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_21

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1071
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 1072
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1080
    :goto_7
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    .line 1081
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_1

    .line 1074
    :cond_1c
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_7

    .line 1084
    :pswitch_8
    const/16 v8, 0x13

    new-array v8, v8, [I

    fill-array-data v8, :array_22

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1086
    const/16 v8, 0x12

    new-array v8, v8, [I

    fill-array-data v8, :array_23

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1088
    const/16 v8, 0xd

    new-array v8, v8, [I

    fill-array-data v8, :array_24

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1089
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    .line 1091
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 1092
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1096
    :goto_8
    const-string v8, "800x450"

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v7

    .line 1097
    .local v7, "resolutionId":I
    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 1098
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    .line 1099
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_1

    .line 1094
    .end local v7    # "resolutionId":I
    :cond_1d
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_8

    .line 1102
    :pswitch_9
    const/16 v8, 0xf

    new-array v8, v8, [I

    fill-array-data v8, :array_25

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1104
    const/16 v8, 0xe

    new-array v8, v8, [I

    fill-array-data v8, :array_26

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1106
    const/16 v8, 0xb

    new-array v8, v8, [I

    fill-array-data v8, :array_27

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1107
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 1108
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1112
    :goto_9
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    .line 1118
    const-string v8, "3264x1836"

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v6

    .line 1124
    .local v6, "res_id":I
    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_1

    .line 1110
    .end local v6    # "res_id":I
    :cond_1e
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_9

    .line 1128
    :pswitch_a
    const/16 v8, 0xb

    new-array v8, v8, [I

    fill-array-data v8, :array_28

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1129
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_29

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1130
    const/16 v8, 0x8

    new-array v8, v8, [I

    fill-array-data v8, :array_2a

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1131
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 1132
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1136
    :goto_a
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setAutoContrast(I)V

    goto/16 :goto_1

    .line 1134
    :cond_1f
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_a

    .line 1139
    :pswitch_b
    const/4 v8, 0x7

    new-array v8, v8, [I

    fill-array-data v8, :array_2b

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1140
    const/4 v8, 0x6

    new-array v8, v8, [I

    fill-array-data v8, :array_2c

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1141
    const/4 v8, 0x4

    new-array v8, v8, [I

    fill-array-data v8, :array_2d

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1142
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_20

    .line 1143
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1151
    :goto_b
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    goto/16 :goto_1

    .line 1146
    :cond_20
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_b

    .line 1154
    :pswitch_c
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_2e

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1155
    const/16 v8, 0x8

    new-array v8, v8, [I

    fill-array-data v8, :array_2f

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1156
    const/4 v8, 0x6

    new-array v8, v8, [I

    fill-array-data v8, :array_30

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1163
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_21

    .line 1164
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1173
    :goto_c
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    goto/16 :goto_1

    .line 1167
    :cond_21
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_c

    .line 1181
    :pswitch_d
    const/16 v8, 0xd

    new-array v8, v8, [I

    fill-array-data v8, :array_31

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1183
    const/16 v8, 0xc

    new-array v8, v8, [I

    fill-array-data v8, :array_32

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1185
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_33

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1187
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_22

    .line 1188
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    .line 1190
    :cond_22
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    .line 1194
    :pswitch_e
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_34

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1196
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_35

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1198
    const/16 v8, 0x8

    new-array v8, v8, [I

    fill-array-data v8, :array_36

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1200
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 1201
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    .line 1203
    :cond_23
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    .line 1207
    :pswitch_f
    const/16 v8, 0xc

    new-array v8, v8, [I

    fill-array-data v8, :array_37

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1209
    const/16 v8, 0xb

    new-array v8, v8, [I

    fill-array-data v8, :array_38

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1211
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_39

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1213
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    .line 1216
    :pswitch_10
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_3a

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1217
    const/16 v8, 0x8

    new-array v8, v8, [I

    fill-array-data v8, :array_3b

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1218
    const/4 v8, 0x6

    new-array v8, v8, [I

    fill-array-data v8, :array_3c

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1219
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_24

    .line 1220
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    .line 1222
    :cond_24
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    .line 1232
    :pswitch_11
    const/16 v8, 0xc

    new-array v8, v8, [I

    fill-array-data v8, :array_3d

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1234
    const/16 v8, 0xc

    new-array v8, v8, [I

    fill-array-data v8, :array_3e

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1237
    const/16 v8, 0xb

    new-array v8, v8, [I

    fill-array-data v8, :array_3f

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1238
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_25

    .line 1239
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    .line 1241
    :cond_25
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    .line 1245
    :pswitch_12
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_26

    .line 1246
    const/16 v8, 0xb

    new-array v8, v8, [I

    fill-array-data v8, :array_40

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1247
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_41

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1248
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_42

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1254
    :goto_d
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_27

    .line 1255
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    .line 1250
    :cond_26
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_43

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1251
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_44

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1252
    const/16 v8, 0x8

    new-array v8, v8, [I

    fill-array-data v8, :array_45

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto :goto_d

    .line 1257
    :cond_27
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v8

    if-ne v8, v11, :cond_28

    .line 1258
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    .line 1260
    :cond_28
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    .line 1265
    :pswitch_13
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_46

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1266
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_47

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1267
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_48

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1268
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_29

    .line 1269
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    .line 1271
    :cond_29
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    .line 1275
    :pswitch_14
    const/16 v8, 0xd

    new-array v8, v8, [I

    fill-array-data v8, :array_49

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1277
    const/16 v8, 0xc

    new-array v8, v8, [I

    fill-array-data v8, :array_4a

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1279
    const/16 v8, 0x8

    new-array v8, v8, [I

    fill-array-data v8, :array_4b

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1281
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 1282
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    .line 1284
    :cond_2a
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    .line 1288
    :pswitch_15
    const/16 v8, 0xc

    new-array v8, v8, [I

    fill-array-data v8, :array_4c

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1289
    const/16 v8, 0xb

    new-array v8, v8, [I

    fill-array-data v8, :array_4d

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1290
    const/16 v8, 0x8

    new-array v8, v8, [I

    fill-array-data v8, :array_4e

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1292
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 1293
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x27

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1294
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x27

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1295
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x27

    aput v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1298
    :cond_2b
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 1299
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    .line 1301
    :cond_2c
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v8

    if-ne v8, v11, :cond_2d

    .line 1302
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    .line 1304
    :cond_2d
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    .line 1309
    :pswitch_16
    const/16 v8, 0xd

    new-array v8, v8, [I

    fill-array-data v8, :array_4f

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1310
    const/16 v8, 0xc

    new-array v8, v8, [I

    fill-array-data v8, :array_50

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1311
    const/16 v8, 0x8

    new-array v8, v8, [I

    fill-array-data v8, :array_51

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1312
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    .line 1313
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    .line 1316
    :pswitch_17
    const/16 v8, 0x10

    new-array v8, v8, [I

    fill-array-data v8, :array_52

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1318
    const/16 v8, 0xf

    new-array v8, v8, [I

    fill-array-data v8, :array_53

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1320
    const/16 v8, 0xb

    new-array v8, v8, [I

    fill-array-data v8, :array_54

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1321
    const-string v8, "1920x1080"

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v7

    .line 1322
    .restart local v7    # "resolutionId":I
    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 1323
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 1324
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1328
    :goto_e
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_1

    .line 1326
    :cond_2e
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_e

    .line 1331
    .end local v7    # "resolutionId":I
    :pswitch_18
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setSoundShotMode(I)V

    .line 1340
    const/4 v8, 0x6

    new-array v8, v8, [I

    fill-array-data v8, :array_55

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1341
    const/4 v8, 0x6

    new-array v8, v8, [I

    fill-array-data v8, :array_56

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1342
    const/16 v8, 0xe

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setChangedOnly(IZ)V

    .line 1343
    const/4 v8, 0x5

    new-array v8, v8, [I

    fill-array-data v8, :array_57

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1344
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v8

    if-nez v8, :cond_2f

    .line 1345
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x1b

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1346
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x1b

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1347
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x1b

    aput v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1368
    :cond_2f
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v8

    if-nez v8, :cond_30

    .line 1369
    const-string v8, "ro.csc.country_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "JP"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_30

    .line 1370
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraShutterSound(I)V

    .line 1376
    :cond_30
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_31

    .line 1377
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x27

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1378
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x27

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1379
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x27

    aput v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1382
    :cond_31
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_32

    .line 1383
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    .line 1385
    :cond_32
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v8

    if-ne v8, v11, :cond_33

    .line 1386
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    .line 1388
    :cond_33
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    .line 1393
    :pswitch_19
    const/16 v8, 0x10

    new-array v8, v8, [I

    fill-array-data v8, :array_58

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1397
    const/16 v8, 0xf

    new-array v8, v8, [I

    fill-array-data v8, :array_59

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1401
    const/16 v8, 0xd

    new-array v8, v8, [I

    fill-array-data v8, :array_5a

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1403
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_34

    .line 1404
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1408
    :goto_f
    const-string v8, "800x450"

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v7

    .line 1409
    .restart local v7    # "resolutionId":I
    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_1

    .line 1406
    .end local v7    # "resolutionId":I
    :cond_34
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_f

    .line 1413
    :pswitch_1a
    const/16 v8, 0x13

    new-array v8, v8, [I

    fill-array-data v8, :array_5b

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1415
    const/16 v8, 0x12

    new-array v8, v8, [I

    fill-array-data v8, :array_5c

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1417
    const/16 v8, 0xf

    new-array v8, v8, [I

    fill-array-data v8, :array_5d

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1420
    const-string v8, "3264x2448"

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 1421
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    .line 1424
    :pswitch_1b
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_5e

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1425
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_5f

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1426
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_60

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 1429
    :pswitch_1c
    const/16 v8, 0x11

    new-array v8, v8, [I

    fill-array-data v8, :array_61

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1431
    const/16 v8, 0xe

    new-array v8, v8, [I

    fill-array-data v8, :array_62

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1432
    const/16 v8, 0xe

    new-array v8, v8, [I

    fill-array-data v8, :array_63

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1433
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_35

    .line 1434
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1442
    :goto_10
    const-string v8, "2048x1152"

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v7

    .line 1443
    .restart local v7    # "resolutionId":I
    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_1

    .line 1436
    .end local v7    # "resolutionId":I
    :cond_35
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v8

    if-ne v8, v11, :cond_36

    .line 1437
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_10

    .line 1439
    :cond_36
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_10

    .line 1457
    :cond_37
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v8

    if-ne v8, v11, :cond_38

    .line 1458
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    .line 1460
    :cond_38
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    .line 1472
    :sswitch_3
    if-eqz p2, :cond_3a

    .line 1474
    iget-boolean v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    if-nez v8, :cond_39

    .line 1475
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    .line 1476
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    .line 1477
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureMeter()I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I

    .line 1480
    :cond_39
    packed-switch p2, :pswitch_data_1

    .line 1586
    :goto_11
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    .line 1587
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setAutoContrast(I)V

    goto/16 :goto_1

    .line 1482
    :pswitch_1d
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_64

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1483
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_65

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1484
    const/4 v8, 0x6

    new-array v8, v8, [I

    fill-array-data v8, :array_66

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1486
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1491
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto :goto_11

    .line 1494
    :pswitch_1e
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_67

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1495
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_68

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1496
    const/4 v8, 0x5

    new-array v8, v8, [I

    fill-array-data v8, :array_69

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1497
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    .line 1498
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto :goto_11

    .line 1501
    :pswitch_1f
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_6a

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1502
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_6b

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1503
    const/4 v8, 0x6

    new-array v8, v8, [I

    fill-array-data v8, :array_6c

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1505
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto :goto_11

    .line 1508
    :pswitch_20
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_6d

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1509
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_6e

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1510
    const/4 v8, 0x6

    new-array v8, v8, [I

    fill-array-data v8, :array_6f

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1512
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    .line 1513
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_11

    .line 1516
    :pswitch_21
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_70

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1517
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_71

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1518
    const/4 v8, 0x5

    new-array v8, v8, [I

    fill-array-data v8, :array_72

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1520
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    .line 1521
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setExposureValue(I)V

    .line 1522
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_11

    .line 1525
    :pswitch_22
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_73

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1526
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_74

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1527
    const/4 v8, 0x6

    new-array v8, v8, [I

    fill-array-data v8, :array_75

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1528
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 1529
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_11

    .line 1532
    :pswitch_23
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_76

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1533
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_77

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1534
    const/4 v8, 0x6

    new-array v8, v8, [I

    fill-array-data v8, :array_78

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1535
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 1536
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_11

    .line 1539
    :pswitch_24
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_79

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1540
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_7a

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1541
    const/4 v8, 0x6

    new-array v8, v8, [I

    fill-array-data v8, :array_7b

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1542
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_11

    .line 1545
    :pswitch_25
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_7c

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1546
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_7d

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1547
    const/4 v8, 0x6

    new-array v8, v8, [I

    fill-array-data v8, :array_7e

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1549
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_11

    .line 1552
    :pswitch_26
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_7f

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1553
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_80

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1554
    const/4 v8, 0x6

    new-array v8, v8, [I

    fill-array-data v8, :array_81

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1555
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_11

    .line 1558
    :pswitch_27
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_82

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1559
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_83

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1560
    const/4 v8, 0x6

    new-array v8, v8, [I

    fill-array-data v8, :array_84

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1564
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1565
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_11

    .line 1568
    :pswitch_28
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_85

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1569
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_86

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1570
    const/4 v8, 0x6

    new-array v8, v8, [I

    fill-array-data v8, :array_87

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1571
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 1572
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_11

    .line 1575
    :pswitch_29
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_88

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1576
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_89

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1577
    const/4 v8, 0x5

    new-array v8, v8, [I

    fill-array-data v8, :array_8a

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1579
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_11

    .line 1590
    :cond_3a
    iget-boolean v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    if-eqz v8, :cond_2

    .line 1591
    iget v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    .line 1592
    iget v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    .line 1593
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    goto/16 :goto_1

    .line 1598
    :sswitch_4
    if-eqz p2, :cond_2

    .line 1599
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/4 v10, 0x5

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1600
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/4 v10, 0x5

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1601
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    goto/16 :goto_1

    .line 1605
    :sswitch_5
    if-ne p2, v11, :cond_2

    .line 1606
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x9

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1607
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x9

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1608
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x9

    aput v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 1612
    :sswitch_6
    if-ne p2, v11, :cond_2

    .line 1613
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x10

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1614
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x10

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1615
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x10

    aput v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 1619
    :sswitch_7
    if-eqz p2, :cond_3b

    .line 1625
    const/4 v8, 0x3

    new-array v8, v8, [I

    fill-array-data v8, :array_8b

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1626
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_8c

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1627
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    .line 1630
    :cond_3b
    if-ne p2, v11, :cond_3f

    .line 1631
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x2c

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1632
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x2c

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1633
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x2c

    aput v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1634
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    .line 1635
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    .line 1636
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_3d

    .line 1637
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x1a

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1638
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x1a

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1640
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3c

    .line 1641
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v7

    .line 1645
    .restart local v7    # "resolutionId":I
    :goto_12
    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_1

    .line 1643
    .end local v7    # "resolutionId":I
    :cond_3c
    const/16 v7, 0x13

    .restart local v7    # "resolutionId":I
    goto :goto_12

    .line 1647
    .end local v7    # "resolutionId":I
    :cond_3d
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x1a

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1648
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x1a

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1650
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3e

    .line 1651
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v7

    .line 1655
    .restart local v7    # "resolutionId":I
    :goto_13
    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_1

    .line 1653
    .end local v7    # "resolutionId":I
    :cond_3e
    const/16 v7, 0x13

    .restart local v7    # "resolutionId":I
    goto :goto_13

    .line 1657
    .end local v7    # "resolutionId":I
    :cond_3f
    const/4 v8, 0x6

    if-ne p2, v8, :cond_40

    .line 1658
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    goto/16 :goto_1

    .line 1659
    :cond_40
    if-nez p2, :cond_42

    .line 1660
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    .line 1661
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_41

    .line 1662
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1663
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x1a

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1664
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x1a

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1665
    const/16 v8, 0x13

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_1

    .line 1668
    :cond_41
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1669
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x1a

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1670
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x1a

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1671
    const/16 v8, 0x13

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_1

    .line 1674
    :cond_42
    if-ne p2, v12, :cond_43

    .line 1675
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_8d

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1676
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_8e

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1677
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x2c

    aput v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1678
    const-string v8, "1280x720"

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 1679
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    goto/16 :goto_1

    .line 1680
    :cond_43
    const/4 v8, 0x3

    if-ne p2, v8, :cond_44

    .line 1681
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_8f

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1682
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_90

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1683
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x2c

    aput v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1684
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    .line 1685
    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_1

    .line 1686
    :cond_44
    const/4 v8, 0x4

    if-ne p2, v8, :cond_2

    .line 1687
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    .line 1688
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_91

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1689
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_92

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1690
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x2c

    aput v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 1699
    :sswitch_8
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v9, "enterprise_policy"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1700
    .local v2, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v8

    if-eqz v8, :cond_45

    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v9, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/Camera;->isKNOXMode(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_45

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/enterprise/RestrictionPolicy;->isSDCardWriteAllowed()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1701
    :cond_45
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x15

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1702
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x15

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_1

    .line 1706
    .end local v2    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :sswitch_9
    if-ne p2, v11, :cond_47

    .line 1707
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->isFromSmusician()Z

    move-result v8

    if-eqz v8, :cond_46

    .line 1708
    const/16 v8, 0xf

    new-array v8, v8, [I

    fill-array-data v8, :array_93

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1709
    const/16 v8, 0xf

    new-array v8, v8, [I

    fill-array-data v8, :array_94

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1710
    const/4 v8, 0x5

    new-array v8, v8, [I

    fill-array-data v8, :array_95

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1711
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    .line 1712
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->isPanoramaFromSmusician()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1713
    const/16 v8, 0x17

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_1

    .line 1715
    :cond_46
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_96

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1716
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_97

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1717
    const/4 v8, 0x5

    new-array v8, v8, [I

    fill-array-data v8, :array_98

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1718
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    goto/16 :goto_1

    .line 1720
    :cond_47
    if-ne p2, v12, :cond_49

    .line 1721
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v8

    if-eqz v8, :cond_48

    .line 1722
    const/16 v8, 0x10

    new-array v8, v8, [I

    fill-array-data v8, :array_99

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1723
    const/16 v8, 0xe

    new-array v8, v8, [I

    fill-array-data v8, :array_9a

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1724
    const/4 v8, 0x4

    new-array v8, v8, [I

    fill-array-data v8, :array_9b

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1725
    const/16 v8, 0x13

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_1

    .line 1727
    :cond_48
    const/16 v8, 0xd

    new-array v8, v8, [I

    fill-array-data v8, :array_9c

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1728
    const/16 v8, 0xc

    new-array v8, v8, [I

    fill-array-data v8, :array_9d

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1729
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_9e

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 1731
    :cond_49
    const/4 v8, 0x3

    if-ne p2, v8, :cond_4b

    .line 1733
    const/16 v8, 0x10

    new-array v8, v8, [I

    fill-array-data v8, :array_9f

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1737
    const/16 v8, 0xd

    new-array v8, v8, [I

    fill-array-data v8, :array_a0

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1738
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_a1

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1739
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    .line 1740
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4a

    .line 1741
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v7

    .line 1745
    .restart local v7    # "resolutionId":I
    :goto_14
    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_1

    .line 1743
    .end local v7    # "resolutionId":I
    :cond_4a
    const/16 v7, 0x13

    .restart local v7    # "resolutionId":I
    goto :goto_14

    .line 1746
    .end local v7    # "resolutionId":I
    :cond_4b
    const/4 v8, 0x4

    if-ne p2, v8, :cond_2

    .line 1748
    const/16 v8, 0xe

    new-array v8, v8, [I

    fill-array-data v8, :array_a2

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1752
    const/16 v8, 0xc

    new-array v8, v8, [I

    fill-array-data v8, :array_a3

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1753
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_a4

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 1757
    :sswitch_a
    if-nez p2, :cond_2

    .line 1758
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x17

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1759
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x17

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_1

    .line 1763
    :sswitch_b
    const/16 v8, 0xd

    if-eq p2, v8, :cond_4c

    const/16 v8, 0x1f

    if-eq p2, v8, :cond_4c

    const/16 v8, 0xe

    if-eq p2, v8, :cond_4c

    .line 1764
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x1f

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1765
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x1f

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1766
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    .line 1768
    :cond_4c
    const/16 v8, 0x28

    if-ne p2, v8, :cond_4f

    .line 1769
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v8

    const/4 v9, 0x5

    if-eq v8, v9, :cond_4d

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v8

    if-eqz v8, :cond_50

    .line 1770
    :cond_4d
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v8

    if-eqz v8, :cond_4e

    .line 1771
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getRecordingButtonDimmed()Z

    move-result v8

    if-nez v8, :cond_4e

    .line 1772
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setRecordingButtonDimmed(Z)V

    .line 1775
    :cond_4e
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x26

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1780
    :cond_4f
    :goto_15
    invoke-static {p2}, Lcom/sec/android/app/camera/CameraResolution;->isSquareResolution(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1781
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x19

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1782
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x19

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1783
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x19

    aput v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 1777
    :cond_50
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x26

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto :goto_15

    .line 1787
    :sswitch_c
    if-ne p2, v11, :cond_2

    .line 1788
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_a5

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1789
    const/4 v8, 0x7

    new-array v8, v8, [I

    fill-array-data v8, :array_a6

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1790
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    .line 1803
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    .line 1804
    .local v4, "menuResourceDepot":Lcom/sec/android/app/camera/MenuResourceDepot;
    const/16 v8, 0xbc1

    invoke-virtual {v4, v8}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v8

    if-gt v8, v11, :cond_51

    .line 1805
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x1a

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1807
    :cond_51
    const/16 v8, 0x65

    invoke-virtual {v4, v8}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v8

    if-gt v8, v11, :cond_2

    .line 1808
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x11

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_1

    .line 1813
    .end local v4    # "menuResourceDepot":Lcom/sec/android/app/camera/MenuResourceDepot;
    :sswitch_d
    if-ne p2, v11, :cond_54

    .line 1814
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStartreset()Z

    move-result v8

    if-nez v8, :cond_52

    .line 1815
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/4 v10, 0x3

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1817
    :cond_52
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_a7

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1819
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_a8

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1821
    const/16 v8, 0x8

    new-array v8, v8, [I

    fill-array-data v8, :array_a9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1822
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    .line 1824
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v8

    if-eqz v8, :cond_53

    .line 1825
    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1836
    :goto_16
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v8

    const/16 v9, 0x33

    if-ne v8, v9, :cond_2

    .line 1837
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_1

    .line 1827
    :cond_53
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_16

    .line 1841
    :cond_54
    iget-object v8, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v8

    if-eqz v8, :cond_2

    .line 1842
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x26

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_1

    .line 1847
    :sswitch_e
    if-ne p2, v11, :cond_2

    .line 1848
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_aa

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1849
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_ab

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1850
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x8

    aput v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1851
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    goto/16 :goto_1

    .line 1855
    :sswitch_f
    if-ne p2, v11, :cond_2

    .line 1856
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_ac

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1857
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_ad

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1858
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_ae

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 1862
    :sswitch_10
    if-eqz p2, :cond_55

    .line 1872
    const/4 v8, 0x3

    new-array v8, v8, [I

    fill-array-data v8, :array_af

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1873
    const/4 v8, 0x3

    new-array v8, v8, [I

    fill-array-data v8, :array_b0

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1874
    const/4 v8, 0x3

    new-array v8, v8, [I

    fill-array-data v8, :array_b1

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1878
    :cond_55
    const/4 v8, 0x3

    if-ne p2, v8, :cond_56

    .line 1879
    const/4 v8, 0x6

    new-array v8, v8, [I

    fill-array-data v8, :array_b2

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1880
    const/4 v8, 0x6

    new-array v8, v8, [I

    fill-array-data v8, :array_b3

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1881
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_b4

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1882
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    goto/16 :goto_1

    .line 1883
    :cond_56
    const/4 v8, 0x5

    if-ne p2, v8, :cond_57

    .line 1901
    const/4 v8, 0x6

    new-array v8, v8, [I

    fill-array-data v8, :array_b5

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1904
    const/4 v8, 0x3

    new-array v8, v8, [I

    fill-array-data v8, :array_b6

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1905
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x24

    aput v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 1906
    :cond_57
    if-ne p2, v12, :cond_58

    .line 1907
    const/4 v8, 0x7

    new-array v8, v8, [I

    fill-array-data v8, :array_b7

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1908
    const/4 v8, 0x6

    new-array v8, v8, [I

    fill-array-data v8, :array_b8

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1909
    const/4 v8, 0x3

    new-array v8, v8, [I

    fill-array-data v8, :array_b9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1910
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    goto/16 :goto_1

    .line 1911
    :cond_58
    if-ne p2, v11, :cond_2

    .line 1912
    const/4 v8, 0x5

    new-array v8, v8, [I

    fill-array-data v8, :array_ba

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1913
    const/4 v8, 0x5

    new-array v8, v8, [I

    fill-array-data v8, :array_bb

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1914
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_bc

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1915
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    goto/16 :goto_1

    .line 1921
    :sswitch_11
    packed-switch p2, :pswitch_data_2

    goto/16 :goto_1

    .line 1923
    :pswitch_2a
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_bd

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1924
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_be

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_1

    .line 1927
    :pswitch_2b
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_bf

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1928
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_c0

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1929
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setAutoNightDetectionMode(I)V

    goto/16 :goto_1

    .line 1932
    :pswitch_2c
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_c1

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1933
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_c2

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_1

    .line 1936
    :pswitch_2d
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_c3

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1937
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_c4

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_1

    .line 1942
    :sswitch_12
    packed-switch p2, :pswitch_data_3

    :pswitch_2e
    goto/16 :goto_1

    .line 1944
    :pswitch_2f
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_c5

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1945
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_c6

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_1

    .line 1948
    :pswitch_30
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_c7

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1949
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_c8

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_1

    .line 1952
    :pswitch_31
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_c9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1953
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_ca

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_1

    .line 1958
    :sswitch_13
    packed-switch p2, :pswitch_data_4

    goto/16 :goto_1

    .line 1960
    :pswitch_32
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_cb

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1961
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_cc

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_1

    .line 1964
    :pswitch_33
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_cd

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1965
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_ce

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_1

    .line 1970
    :sswitch_14
    packed-switch p2, :pswitch_data_5

    .line 1992
    :pswitch_34
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_cf

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1993
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_d0

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_1

    .line 1972
    :pswitch_35
    const/16 v8, 0x8

    new-array v8, v8, [I

    fill-array-data v8, :array_d1

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1973
    const/16 v8, 0x8

    new-array v8, v8, [I

    fill-array-data v8, :array_d2

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_1

    .line 1976
    :pswitch_36
    const/16 v8, 0x8

    new-array v8, v8, [I

    fill-array-data v8, :array_d3

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1977
    const/16 v8, 0x8

    new-array v8, v8, [I

    fill-array-data v8, :array_d4

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_1

    .line 1980
    :pswitch_37
    const/4 v8, 0x7

    new-array v8, v8, [I

    fill-array-data v8, :array_d5

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1981
    const/4 v8, 0x7

    new-array v8, v8, [I

    fill-array-data v8, :array_d6

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_1

    .line 1984
    :pswitch_38
    const/16 v8, 0x8

    new-array v8, v8, [I

    fill-array-data v8, :array_d7

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1985
    const/16 v8, 0x8

    new-array v8, v8, [I

    fill-array-data v8, :array_d8

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_1

    .line 1988
    :pswitch_39
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_d9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1989
    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_da

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_1

    .line 2000
    :sswitch_15
    if-ne p2, v11, :cond_2

    .line 2001
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0xd

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2002
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0xd

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 2003
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_1

    .line 2009
    :sswitch_16
    if-ne p2, v11, :cond_2

    .line 2010
    const/4 v8, 0x3

    new-array v8, v8, [I

    fill-array-data v8, :array_db

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2011
    const/4 v8, 0x3

    new-array v8, v8, [I

    fill-array-data v8, :array_dc

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 2012
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x24

    aput v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 2013
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraShutterSound(I)V

    goto/16 :goto_1

    .line 2034
    :sswitch_17
    if-ne p2, v11, :cond_2

    .line 2035
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_dd

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2036
    const/16 v8, 0x9

    new-array v8, v8, [I

    fill-array-data v8, :array_de

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 2037
    const/16 v8, 0x8

    new-array v8, v8, [I

    fill-array-data v8, :array_df

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 2038
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setAutoContrast(I)V

    goto/16 :goto_1

    .line 2043
    :sswitch_18
    rem-int/lit8 v8, p2, 0x2

    if-eqz v8, :cond_2

    .line 2044
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2045
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 2046
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 2051
    :sswitch_19
    if-eqz p2, :cond_2

    .line 2052
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x22

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2053
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x22

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 2054
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x22

    aput v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 2059
    :sswitch_1a
    if-nez p2, :cond_59

    .line 2060
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x15

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2061
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x15

    aput v10, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 2062
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x15

    aput v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 2069
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_1

    .line 2072
    :cond_59
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_1

    .line 2077
    :sswitch_1b
    invoke-static {p2}, Lcom/sec/android/app/camera/CameraResolution;->isSquareResolution(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2078
    const/4 v8, 0x6

    new-array v8, v8, [I

    fill-array-data v8, :array_e0

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2079
    const/4 v8, 0x6

    new-array v8, v8, [I

    fill-array-data v8, :array_e1

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 2080
    const/4 v8, 0x6

    new-array v8, v8, [I

    fill-array-data v8, :array_e2

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 849
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_9
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x4 -> :sswitch_1b
        0x6 -> :sswitch_19
        0x8 -> :sswitch_0
        0xa -> :sswitch_4
        0xd -> :sswitch_5
        0xe -> :sswitch_6
        0x16 -> :sswitch_8
        0x1d -> :sswitch_a
        0x24 -> :sswitch_c
        0x27 -> :sswitch_10
        0x2f -> :sswitch_e
        0x41 -> :sswitch_1
        0x56 -> :sswitch_d
        0x57 -> :sswitch_f
        0x59 -> :sswitch_17
        0x64 -> :sswitch_7
        0x65 -> :sswitch_b
        0x75 -> :sswitch_18
        0x77 -> :sswitch_1a
        0xc9 -> :sswitch_11
        0xca -> :sswitch_12
        0xcb -> :sswitch_13
        0xcc -> :sswitch_14
        0x12c -> :sswitch_15
        0x136 -> :sswitch_16
    .end sparse-switch

    .line 2108
    :array_0
    .array-data 4
        0x1
        0x3
    .end array-data

    .line 2112
    :array_1
    .array-data 4
        0x3
        0x1d
        0x22
        0x24
        0x29
        0x23
        0x19
        0x30
    .end array-data

    .line 2113
    :array_2
    .array-data 4
        0x3
        0x1d
        0x22
        0x24
        0x29
        0x23
        0x19
    .end array-data

    .line 2114
    :array_3
    .array-data 4
        0x3
        0x1d
        0x22
        0x24
        0x29
        0x23
        0x19
    .end array-data

    .line 2119
    :array_4
    .array-data 4
        0x14
        0x1d
    .end array-data

    .line 2126
    :array_5
    .array-data 4
        0x30
        0x29
        0x23
        0x1d
        0x24
    .end array-data

    .line 2129
    :array_6
    .array-data 4
        0x29
        0x23
        0x1d
        0x24
    .end array-data

    .line 2130
    :array_7
    .array-data 4
        0x29
        0x23
        0x1d
        0x24
    .end array-data

    .line 864
    :array_8
    .array-data 4
        0x2
        0x22
        0xd
        0xe
        0x1f
        0x9
        0xf
        0x19
        0x12
        0x10
        0x27
        0x28
        0x14
    .end array-data

    .line 867
    :array_9
    .array-data 4
        0x22
        0xd
        0xe
        0x1f
        0x9
        0xf
        0x12
        0x10
        0x27
        0x28
        0x14
    .end array-data

    .line 869
    :array_a
    .array-data 4
        0x22
        0xd
        0x9
        0xf
        0x12
        0x10
        0x27
        0x28
        0x14
    .end array-data

    .line 875
    :array_b
    .array-data 4
        0x22
        0xd
        0xe
        0x1f
        0x9
        0xf
        0x19
        0x12
        0x10
        0x27
        0x28
        0x14
    .end array-data

    .line 878
    :array_c
    .array-data 4
        0x22
        0xd
        0xe
        0x1f
        0x9
        0xf
        0x12
        0x10
        0x27
        0x28
        0x14
    .end array-data

    .line 880
    :array_d
    .array-data 4
        0x22
        0xd
        0x9
        0xf
        0x12
        0x10
        0x27
        0x28
        0x14
    .end array-data

    .line 894
    :array_e
    .array-data 4
        0x2
        0x24
    .end array-data

    .line 895
    :array_f
    .array-data 4
        0x2
        0x24
    .end array-data

    .line 923
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_e
        :pswitch_11
        :pswitch_0
        :pswitch_b
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_18
        :pswitch_0
        :pswitch_1a
        :pswitch_8
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_16
        :pswitch_1b
        :pswitch_13
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1c
    .end packed-switch

    .line 925
    :array_10
    .array-data 4
        0x8
        0xd
        0x11
        0x9
        0x5
        0x21
        0x22
        0x27
        0x28
        0x20
    .end array-data

    .line 926
    :array_11
    .array-data 4
        0x8
        0xd
        0x11
        0x9
        0x5
        0x21
        0x22
        0x27
        0x28
    .end array-data

    .line 927
    :array_12
    .array-data 4
        0x8
        0xd
        0x9
        0x5
        0x22
        0x27
        0x28
    .end array-data

    .line 937
    :array_13
    .array-data 4
        0x15
        0x21
        0x13
        0xd
    .end array-data

    .line 938
    :array_14
    .array-data 4
        0x15
        0x21
        0x13
        0xd
    .end array-data

    .line 939
    :array_15
    .array-data 4
        0x13
        0xd
    .end array-data

    .line 973
    :array_16
    .array-data 4
        0xb
        0x8
        0x24
        0xd
        0xe
        0x13
        0x21
        0x22
        0x28
        0x20
        0x1d
    .end array-data

    .line 975
    :array_17
    .array-data 4
        0xb
        0x8
        0x24
        0xd
        0xe
        0x13
        0x21
        0x22
        0x28
        0x1d
    .end array-data

    .line 977
    :array_18
    .array-data 4
        0x21
        0xb
        0x8
        0x24
        0x22
        0x28
        0x13
        0x1d
    .end array-data

    .line 1008
    :array_19
    .array-data 4
        0x8
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x5
        0x21
        0x22
        0x14
        0x27
        0x28
        0x20
    .end array-data

    .line 1010
    :array_1a
    .array-data 4
        0x8
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x5
        0x21
        0x22
        0x14
        0x27
        0x28
    .end array-data

    .line 1013
    :array_1b
    .array-data 4
        0x8
        0x9
        0x5
        0x22
        0x12
        0x10
        0x14
        0x28
        0x13
    .end array-data

    .line 1035
    :array_1c
    .array-data 4
        0x8
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x5
        0x21
        0x22
        0x14
        0x27
        0x28
        0x20
    .end array-data

    .line 1037
    :array_1d
    .array-data 4
        0x8
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x5
        0x21
        0x22
        0x14
        0x27
        0x28
    .end array-data

    .line 1039
    :array_1e
    .array-data 4
        0x8
        0x9
        0x5
        0x12
        0x10
        0x22
        0x14
        0x28
        0x13
    .end array-data

    .line 1066
    :array_1f
    .array-data 4
        0x8
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x5
        0x21
        0x22
        0x14
        0x27
        0x28
        0x20
    .end array-data

    .line 1068
    :array_20
    .array-data 4
        0x8
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x5
        0x21
        0x22
        0x14
        0x27
        0x28
    .end array-data

    .line 1070
    :array_21
    .array-data 4
        0x8
        0x9
        0x5
        0x13
        0x12
        0x10
        0x22
        0x14
        0x27
        0x28
    .end array-data

    .line 1084
    :array_22
    .array-data 4
        0xb
        0x8
        0xd
        0x9
        0xe
        0x12
        0x10
        0x1f
        0x20
        0x1d
        0x5
        0x21
        0x22
        0x14
        0x11
        0x27
        0x28
        0x29
        0x23
    .end array-data

    .line 1086
    :array_23
    .array-data 4
        0xb
        0x8
        0xd
        0x9
        0xe
        0x12
        0x10
        0x1f
        0x1d
        0x5
        0x21
        0x22
        0x14
        0x11
        0x27
        0x28
        0x29
        0x23
    .end array-data

    .line 1088
    :array_24
    .array-data 4
        0xb
        0x8
        0x9
        0x12
        0x10
        0x5
        0x22
        0x14
        0x27
        0x28
        0x29
        0x23
        0x1d
    .end array-data

    .line 1102
    :array_25
    .array-data 4
        0xb
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x20
        0x12
        0x5
        0xf
        0x22
        0x27
        0x28
        0x9
    .end array-data

    .line 1104
    :array_26
    .array-data 4
        0xb
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x12
        0x5
        0xf
        0x22
        0x27
        0x28
        0x9
    .end array-data

    .line 1106
    :array_27
    .array-data 4
        0xb
        0x8
        0xd
        0x10
        0x13
        0x12
        0x5
        0x22
        0x27
        0x28
        0x9
    .end array-data

    .line 1128
    :array_28
    .array-data 4
        0x8
        0xd
        0x10
        0xe
        0x13
        0x12
        0x7
        0x22
        0x27
        0x28
        0x20
    .end array-data

    .line 1129
    :array_29
    .array-data 4
        0x8
        0xd
        0x10
        0xe
        0x13
        0x12
        0x7
        0x22
        0x27
        0x28
    .end array-data

    .line 1130
    :array_2a
    .array-data 4
        0x8
        0xd
        0x10
        0x13
        0x12
        0x22
        0x27
        0x28
    .end array-data

    .line 1139
    :array_2b
    .array-data 4
        0x8
        0xe
        0x12
        0x22
        0x27
        0x28
        0x20
    .end array-data

    .line 1140
    :array_2c
    .array-data 4
        0x8
        0xe
        0x12
        0x22
        0x27
        0x28
    .end array-data

    .line 1141
    :array_2d
    .array-data 4
        0x8
        0x12
        0x22
        0x28
    .end array-data

    .line 1154
    :array_2e
    .array-data 4
        0x8
        0xd
        0xe
        0x12
        0x22
        0x27
        0x28
        0x20
        0x26
    .end array-data

    .line 1155
    :array_2f
    .array-data 4
        0x8
        0xd
        0xe
        0x12
        0x22
        0x27
        0x28
        0x26
    .end array-data

    .line 1156
    :array_30
    .array-data 4
        0x8
        0xd
        0x12
        0x22
        0x28
        0x26
    .end array-data

    .line 1181
    :array_31
    .array-data 4
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x12
        0x9
        0x5
        0x22
        0x27
        0x28
        0x20
    .end array-data

    .line 1183
    :array_32
    .array-data 4
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x12
        0x9
        0x5
        0x22
        0x27
        0x28
    .end array-data

    .line 1185
    :array_33
    .array-data 4
        0x8
        0xd
        0x10
        0x13
        0x12
        0x9
        0x5
        0x22
        0x27
        0x28
    .end array-data

    .line 1194
    :array_34
    .array-data 4
        0x8
        0xd
        0x10
        0xe
        0x12
        0x5
        0x22
        0x27
        0x28
        0x20
    .end array-data

    .line 1196
    :array_35
    .array-data 4
        0x8
        0xd
        0x10
        0xe
        0x12
        0x5
        0x22
        0x27
        0x28
    .end array-data

    .line 1198
    :array_36
    .array-data 4
        0x8
        0xd
        0x10
        0x12
        0x5
        0x22
        0x27
        0x28
    .end array-data

    .line 1207
    :array_37
    .array-data 4
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x12
        0x5
        0x22
        0x27
        0x28
        0x20
    .end array-data

    .line 1209
    :array_38
    .array-data 4
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x12
        0x5
        0x22
        0x27
        0x28
    .end array-data

    .line 1211
    :array_39
    .array-data 4
        0x8
        0xd
        0x10
        0x13
        0x12
        0x5
        0x22
        0x27
        0x28
    .end array-data

    .line 1216
    :array_3a
    .array-data 4
        0x8
        0xd
        0x11
        0xe
        0x13
        0x22
        0x27
        0x28
        0x20
    .end array-data

    .line 1217
    :array_3b
    .array-data 4
        0x8
        0xd
        0x11
        0xe
        0x13
        0x22
        0x27
        0x28
    .end array-data

    .line 1218
    :array_3c
    .array-data 4
        0x8
        0xd
        0x13
        0x22
        0x27
        0x28
    .end array-data

    .line 1232
    :array_3d
    .array-data 4
        0x8
        0xd
        0x10
        0xe
        0x12
        0x7
        0x5
        0x9
        0xf
        0x22
        0x27
        0x28
    .end array-data

    .line 1234
    :array_3e
    .array-data 4
        0x8
        0xd
        0x10
        0xe
        0x12
        0x7
        0x5
        0x9
        0xf
        0x22
        0x27
        0x28
    .end array-data

    .line 1237
    :array_3f
    .array-data 4
        0x8
        0xd
        0x10
        0x12
        0x7
        0x5
        0x22
        0x9
        0xf
        0x27
        0x28
    .end array-data

    .line 1246
    :array_40
    .array-data 4
        0x27
        0x8
        0xd
        0xe
        0x12
        0x7
        0x5
        0x22
        0x28
        0x20
        0x9
    .end array-data

    .line 1247
    :array_41
    .array-data 4
        0x27
        0x8
        0xd
        0xe
        0x12
        0x7
        0x5
        0x22
        0x28
        0x9
    .end array-data

    .line 1248
    :array_42
    .array-data 4
        0x27
        0x8
        0xd
        0x12
        0x7
        0x5
        0x22
        0x28
        0x9
    .end array-data

    .line 1250
    :array_43
    .array-data 4
        0x8
        0xd
        0xe
        0x12
        0x7
        0x5
        0x22
        0x28
        0x20
        0x9
    .end array-data

    .line 1251
    :array_44
    .array-data 4
        0x8
        0xd
        0xe
        0x12
        0x7
        0x5
        0x22
        0x28
        0x9
    .end array-data

    .line 1252
    :array_45
    .array-data 4
        0x8
        0xd
        0x12
        0x7
        0x5
        0x22
        0x28
        0x9
    .end array-data

    .line 1265
    :array_46
    .array-data 4
        0x8
        0xe
        0x22
        0x27
        0x28
        0x20
        0x13
        0x14
        0x9
        0x1c
    .end array-data

    .line 1266
    :array_47
    .array-data 4
        0x8
        0xe
        0x22
        0x27
        0x28
        0x20
        0x13
        0x14
        0x9
        0x1c
    .end array-data

    .line 1267
    :array_48
    .array-data 4
        0x8
        0xe
        0x22
        0x27
        0x28
        0x20
        0x13
        0x14
        0x9
        0x1c
    .end array-data

    .line 1275
    :array_49
    .array-data 4
        0x8
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
        0x27
        0x28
        0x20
    .end array-data

    .line 1277
    :array_4a
    .array-data 4
        0x8
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
        0x27
        0x28
    .end array-data

    .line 1279
    :array_4b
    .array-data 4
        0x10
        0xd
        0x12
        0x9
        0xf
        0x22
        0x27
        0x28
    .end array-data

    .line 1288
    :array_4c
    .array-data 4
        0x8
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
        0x28
        0x20
    .end array-data

    .line 1289
    :array_4d
    .array-data 4
        0x8
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
        0x28
    .end array-data

    .line 1290
    :array_4e
    .array-data 4
        0x10
        0xd
        0x12
        0x9
        0xf
        0x22
        0x5
        0x28
    .end array-data

    .line 1309
    :array_4f
    .array-data 4
        0x8
        0xd
        0x10
        0x12
        0x9
        0xf
        0x5
        0xe
        0x7
        0x22
        0x27
        0x28
        0x20
    .end array-data

    .line 1310
    :array_50
    .array-data 4
        0x8
        0xd
        0x10
        0x12
        0x9
        0xf
        0x5
        0xe
        0x7
        0x22
        0x27
        0x28
    .end array-data

    .line 1311
    :array_51
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0x22
        0x5
        0x27
        0x28
    .end array-data

    .line 1316
    :array_52
    .array-data 4
        0xb
        0x8
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x5
        0x21
        0x22
        0x14
        0x11
        0x27
        0x28
        0x20
    .end array-data

    .line 1318
    :array_53
    .array-data 4
        0xb
        0x8
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x5
        0x21
        0x22
        0x14
        0x11
        0x27
        0x28
    .end array-data

    .line 1320
    :array_54
    .array-data 4
        0xb
        0x8
        0x9
        0x5
        0x13
        0x12
        0x10
        0x22
        0x14
        0x27
        0x28
    .end array-data

    .line 1340
    :array_55
    .array-data 4
        0x24
        0x13
        0x22
        0x28
        0x14
        0x20
    .end array-data

    .line 1341
    :array_56
    .array-data 4
        0x24
        0x13
        0x22
        0x28
        0x14
        0xe
    .end array-data

    .line 1343
    :array_57
    .array-data 4
        0x24
        0x13
        0x22
        0x28
        0x14
    .end array-data

    .line 1393
    :array_58
    .array-data 4
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x9
        0x12
        0x5
        0xf
        0x22
        0x27
        0x28
        0x20
        0x1d
        0xb
    .end array-data

    .line 1397
    :array_59
    .array-data 4
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x9
        0x12
        0x5
        0xf
        0x22
        0x27
        0x28
        0x1d
        0xb
    .end array-data

    .line 1401
    :array_5a
    .array-data 4
        0x8
        0xd
        0x10
        0x13
        0x9
        0x12
        0x5
        0xf
        0x22
        0x27
        0x28
        0x1d
        0xb
    .end array-data

    .line 1413
    :array_5b
    .array-data 4
        0xb
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x20
        0x14
        0x5
        0x9
        0xf
        0x22
        0x27
        0x28
        0x16
        0x24
        0x1d
        0x2b
    .end array-data

    .line 1415
    :array_5c
    .array-data 4
        0xb
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x14
        0x5
        0x9
        0xf
        0x22
        0x27
        0x28
        0x16
        0x24
        0x1d
        0x2b
    .end array-data

    .line 1417
    :array_5d
    .array-data 4
        0xb
        0x8
        0xd
        0x10
        0x13
        0x14
        0x5
        0x9
        0x22
        0x27
        0x28
        0x16
        0x24
        0x1d
        0x2b
    .end array-data

    .line 1424
    :array_5e
    .array-data 4
        0x8
        0x13
        0x5
        0x22
        0x27
        0x28
        0x1d
        0x20
        0x14
        0x23
    .end array-data

    .line 1425
    :array_5f
    .array-data 4
        0x8
        0x13
        0x5
        0x22
        0x27
        0x28
        0x1d
        0x20
        0x14
        0x23
    .end array-data

    .line 1426
    :array_60
    .array-data 4
        0x8
        0x13
        0x5
        0x22
        0x27
        0x28
        0x1d
        0x20
        0x14
        0x23
    .end array-data

    .line 1429
    :array_61
    .array-data 4
        0x1
        0x22
        0xe
        0x28
        0x1d
        0x11
        0x20
        0x2b
        0xb
        0x13
        0xa
        0x27
        0x24
        0xd
        0x9
        0xf
        0x10
    .end array-data

    .line 1431
    :array_62
    .array-data 4
        0x22
        0xe
        0x28
        0x1d
        0x11
        0x2b
        0xb
        0x13
        0x27
        0x24
        0xd
        0x9
        0xf
        0x10
    .end array-data

    .line 1432
    :array_63
    .array-data 4
        0x22
        0xe
        0x28
        0x1d
        0x2b
        0xb
        0x13
        0xa
        0x27
        0x24
        0xd
        0x9
        0xf
        0x10
    .end array-data

    .line 1480
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1e
        :pswitch_25
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
    .end packed-switch

    .line 1482
    :array_64
    .array-data 4
        0x3
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1483
    :array_65
    .array-data 4
        0x3
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1484
    :array_66
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    .line 1494
    :array_67
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1495
    :array_68
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1496
    :array_69
    .array-data 4
        0x10
        0x12
        0x9
        0xe
        0x22
    .end array-data

    .line 1501
    :array_6a
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1502
    :array_6b
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1503
    :array_6c
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    .line 1508
    :array_6d
    .array-data 4
        0x3
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1509
    :array_6e
    .array-data 4
        0x3
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1510
    :array_6f
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    .line 1516
    :array_70
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1517
    :array_71
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1518
    :array_72
    .array-data 4
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    .line 1525
    :array_73
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1526
    :array_74
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1527
    :array_75
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    .line 1532
    :array_76
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1533
    :array_77
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1534
    :array_78
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    .line 1539
    :array_79
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1540
    :array_7a
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1541
    :array_7b
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    .line 1545
    :array_7c
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1546
    :array_7d
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1547
    :array_7e
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    .line 1552
    :array_7f
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1553
    :array_80
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1554
    :array_81
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    .line 1558
    :array_82
    .array-data 4
        0x3
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1559
    :array_83
    .array-data 4
        0x3
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1560
    :array_84
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    .line 1568
    :array_85
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1569
    :array_86
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1570
    :array_87
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    .line 1575
    :array_88
    .array-data 4
        0x3
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1576
    :array_89
    .array-data 4
        0x3
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1577
    :array_8a
    .array-data 4
        0x10
        0x12
        0x9
        0xe
        0x22
    .end array-data

    .line 1625
    :array_8b
    .array-data 4
        0x1d
        0x26
        0x1f
    .end array-data

    .line 1626
    :array_8c
    .array-data 4
        0x1d
        0x1f
    .end array-data

    .line 1675
    :array_8d
    .array-data 4
        0x1a
        0x2c
    .end array-data

    .line 1676
    :array_8e
    .array-data 4
        0x1a
        0x2c
    .end array-data

    .line 1681
    :array_8f
    .array-data 4
        0x2c
        0x1a
    .end array-data

    .line 1682
    :array_90
    .array-data 4
        0x2c
        0x1a
    .end array-data

    .line 1688
    :array_91
    .array-data 4
        0x1a
        0x2c
    .end array-data

    .line 1689
    :array_92
    .array-data 4
        0x1a
        0x2c
    .end array-data

    .line 1708
    :array_93
    .array-data 4
        0x3
        0xa
        0x26
        0x0
        0x2
        0x22
        0x1d
        0x1a
        0x19
        0x1f
        0x2c
        0x17
        0x14
        0x27
        0x11
    .end array-data

    .line 1709
    :array_94
    .array-data 4
        0x3
        0xa
        0x26
        0x0
        0x2
        0x22
        0x1d
        0x1a
        0x19
        0x1f
        0x2c
        0x17
        0x14
        0x27
        0x11
    .end array-data

    .line 1710
    :array_95
    .array-data 4
        0x22
        0x1d
        0x19
        0x17
        0x14
    .end array-data

    .line 1715
    :array_96
    .array-data 4
        0x2
        0x22
        0x1d
        0x1a
        0x19
        0x1f
        0x2c
        0x17
        0x14
    .end array-data

    .line 1716
    :array_97
    .array-data 4
        0x2
        0x22
        0x1d
        0x1a
        0x19
        0x1f
        0x2c
        0x17
        0x14
    .end array-data

    .line 1717
    :array_98
    .array-data 4
        0x22
        0x1d
        0x19
        0x17
        0x14
    .end array-data

    .line 1722
    :array_99
    .array-data 4
        0x3
        0x1
        0x22
        0x1d
        0x11
        0x5
        0x1a
        0x19
        0x1f
        0x17
        0x14
        0x27
        0x28
        0x26
        0xa
        0x2b
    .end array-data

    .line 1723
    :array_9a
    .array-data 4
        0x3
        0x1
        0x22
        0x1d
        0x11
        0x5
        0x1a
        0x19
        0x1f
        0x17
        0x14
        0x27
        0x28
        0x2b
    .end array-data

    .line 1724
    :array_9b
    .array-data 4
        0x5
        0x27
        0x28
        0x2b
    .end array-data

    .line 1727
    :array_9c
    .array-data 4
        0x3
        0x1
        0x22
        0x1d
        0x11
        0x5
        0x19
        0x17
        0x14
        0x27
        0x28
        0x26
        0x2b
    .end array-data

    .line 1728
    :array_9d
    .array-data 4
        0x3
        0x1
        0x22
        0x1d
        0x11
        0x5
        0x19
        0x17
        0x14
        0x27
        0x28
        0x2b
    .end array-data

    .line 1729
    :array_9e
    .array-data 4
        0x22
        0x1d
        0x5
        0x19
        0x17
        0x14
        0x27
        0x28
        0x2b
    .end array-data

    .line 1733
    :array_9f
    .array-data 4
        0x3
        0x1
        0x22
        0x1d
        0x11
        0x5
        0x1a
        0x19
        0x1f
        0x17
        0x14
        0x27
        0x28
        0x26
        0xa
        0x2b
    .end array-data

    .line 1737
    :array_a0
    .array-data 4
        0x3
        0x1
        0x22
        0x1d
        0x5
        0x1a
        0x19
        0x1f
        0x17
        0x14
        0x27
        0x28
        0x2b
    .end array-data

    .line 1738
    :array_a1
    .array-data 4
        0x22
        0x1d
        0x5
        0x19
        0x17
        0x14
        0x27
        0x28
        0x2b
    .end array-data

    .line 1748
    :array_a2
    .array-data 4
        0x3
        0x1
        0x22
        0x1d
        0x11
        0x5
        0x19
        0x17
        0x14
        0x27
        0x28
        0x26
        0xa
        0x2b
    .end array-data

    .line 1752
    :array_a3
    .array-data 4
        0x3
        0x1
        0x22
        0x1d
        0x11
        0x5
        0x19
        0x17
        0x14
        0x27
        0x28
        0x2b
    .end array-data

    .line 1753
    :array_a4
    .array-data 4
        0x22
        0x1d
        0x5
        0x19
        0x17
        0x14
        0x27
        0x28
        0x2b
    .end array-data

    .line 1788
    :array_a5
    .array-data 4
        0xd
        0xe
        0x8
        0x5
        0x1f
        0x7
        0x9
        0xf
        0x2c
    .end array-data

    .line 1789
    :array_a6
    .array-data 4
        0xd
        0x8
        0x5
        0x7
        0x9
        0xf
        0x2c
    .end array-data

    .line 1817
    :array_a7
    .array-data 4
        0x22
        0xe
        0x5
        0x1f
        0x19
        0x1c
        0x27
        0x14
        0x28
        0x2c
    .end array-data

    .line 1819
    :array_a8
    .array-data 4
        0x22
        0x5
        0x1f
        0x19
        0x1c
        0x27
        0x14
        0x28
        0x2c
    .end array-data

    .line 1821
    :array_a9
    .array-data 4
        0x22
        0x5
        0x19
        0x1c
        0x27
        0x14
        0x28
        0x2c
    .end array-data

    .line 1848
    :array_aa
    .array-data 4
        0x8
        0x15
    .end array-data

    .line 1849
    :array_ab
    .array-data 4
        0x8
        0x15
    .end array-data

    .line 1856
    :array_ac
    .array-data 4
        0x5
        0x9
    .end array-data

    .line 1857
    :array_ad
    .array-data 4
        0x5
        0x9
    .end array-data

    .line 1858
    :array_ae
    .array-data 4
        0x5
        0x9
    .end array-data

    .line 1872
    :array_af
    .array-data 4
        0x14
        0x19
        0x22
    .end array-data

    .line 1873
    :array_b0
    .array-data 4
        0x14
        0x19
        0x22
    .end array-data

    .line 1874
    :array_b1
    .array-data 4
        0x14
        0x19
        0x22
    .end array-data

    .line 1879
    :array_b2
    .array-data 4
        0x2
        0x1a
        0x1f
        0x2c
        0x17
        0x19
    .end array-data

    .line 1880
    :array_b3
    .array-data 4
        0x2
        0x1a
        0x1f
        0x2c
        0x17
        0x19
    .end array-data

    .line 1881
    :array_b4
    .array-data 4
        0x2c
        0x19
    .end array-data

    .line 1901
    :array_b5
    .array-data 4
        0x3
        0x24
        0x0
        0x26
        0x2e
        0x2f
    .end array-data

    .line 1904
    :array_b6
    .array-data 4
        0x24
        0x0
        0x26
    .end array-data

    .line 1907
    :array_b7
    .array-data 4
        0x2
        0x3
        0x1a
        0x1f
        0x2c
        0x12
        0x19
    .end array-data

    .line 1908
    :array_b8
    .array-data 4
        0x2
        0x1a
        0x1f
        0x2c
        0x12
        0x19
    .end array-data

    .line 1909
    :array_b9
    .array-data 4
        0x2c
        0x12
        0x19
    .end array-data

    .line 1912
    :array_ba
    .array-data 4
        0x2
        0x1a
        0x2c
        0x1f
        0x19
    .end array-data

    .line 1913
    :array_bb
    .array-data 4
        0x2
        0x1a
        0x2c
        0x1f
        0x19
    .end array-data

    .line 1914
    :array_bc
    .array-data 4
        0x2c
        0x19
    .end array-data

    .line 1921
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
    .end packed-switch

    .line 1923
    :array_bd
    .array-data 4
        0x3
        0x2
        0x25
        0x2d
        0xa
        0x26
        0x0
        0x28
        0xd
    .end array-data

    .line 1924
    :array_be
    .array-data 4
        0x3
        0x2
        0x25
        0x2d
        0xa
        0x26
        0x0
        0x28
        0xd
    .end array-data

    .line 1927
    :array_bf
    .array-data 4
        0x3
        0x2
        0x25
        0x2d
        0xa
        0x26
        0x0
        0x28
        0xd
    .end array-data

    .line 1928
    :array_c0
    .array-data 4
        0x3
        0x2
        0x25
        0x2d
        0xa
        0x26
        0x0
        0x28
        0xd
    .end array-data

    .line 1932
    :array_c1
    .array-data 4
        0x3
        0x2
        0x1
        0x25
        0x2d
        0xa
        0x26
        0x0
        0x28
        0xd
    .end array-data

    .line 1933
    :array_c2
    .array-data 4
        0x3
        0x2
        0x1
        0x25
        0x2d
        0xa
        0x26
        0x0
        0x28
        0xd
    .end array-data

    .line 1936
    :array_c3
    .array-data 4
        0x3
        0x2
        0x1
        0x25
        0x2d
        0xa
        0x26
        0x0
        0x28
        0xd
    .end array-data

    .line 1937
    :array_c4
    .array-data 4
        0x3
        0x2
        0x1
        0x25
        0x2d
        0xa
        0x26
        0x0
        0x28
        0xd
    .end array-data

    .line 1942
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2e
        :pswitch_2e
        :pswitch_30
        :pswitch_2e
        :pswitch_31
    .end packed-switch

    .line 1944
    :array_c5
    .array-data 4
        0x3
        0x1
        0x25
        0x2d
        0xa
        0x26
        0x0
        0x28
        0xd
    .end array-data

    .line 1945
    :array_c6
    .array-data 4
        0x3
        0x1
        0x25
        0x2d
        0xa
        0x26
        0x0
        0x28
        0xd
    .end array-data

    .line 1948
    :array_c7
    .array-data 4
        0x3
        0x2
        0x1
        0x25
        0x2d
        0xa
        0x26
        0x0
        0x28
        0xd
    .end array-data

    .line 1949
    :array_c8
    .array-data 4
        0x3
        0x2
        0x1
        0x25
        0x2d
        0xa
        0x26
        0x0
        0x28
        0xd
    .end array-data

    .line 1952
    :array_c9
    .array-data 4
        0x3
        0x2
        0x1
        0x25
        0x2d
        0xa
        0x26
        0x0
        0x28
        0xd
    .end array-data

    .line 1953
    :array_ca
    .array-data 4
        0x3
        0x2
        0x1
        0x25
        0x2d
        0xa
        0x26
        0x0
        0x28
        0xd
    .end array-data

    .line 1958
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_32
        :pswitch_33
    .end packed-switch

    .line 1960
    :array_cb
    .array-data 4
        0x2
        0x1
        0x25
        0x2d
        0xa
        0x26
        0x0
        0x28
        0xd
    .end array-data

    .line 1961
    :array_cc
    .array-data 4
        0x2
        0x1
        0x25
        0x2d
        0xa
        0x26
        0x0
        0x28
        0xd
    .end array-data

    .line 1964
    :array_cd
    .array-data 4
        0x3
        0x2
        0x1
        0x25
        0x2d
        0xa
        0x26
        0x0
        0x28
        0xd
    .end array-data

    .line 1965
    :array_ce
    .array-data 4
        0x3
        0x2
        0x1
        0x25
        0x2d
        0xa
        0x26
        0x0
        0x28
        0xd
    .end array-data

    .line 1970
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_35
        :pswitch_36
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_37
        :pswitch_34
        :pswitch_38
        :pswitch_39
    .end packed-switch

    .line 1992
    :array_cf
    .array-data 4
        0x3
        0x2
        0x1
        0x25
        0x2d
        0xa
        0x26
        0x0
        0x28
    .end array-data

    .line 1993
    :array_d0
    .array-data 4
        0x3
        0x2
        0x1
        0x25
        0x2d
        0xa
        0x26
        0x0
        0x28
    .end array-data

    .line 1972
    :array_d1
    .array-data 4
        0x3
        0x2
        0x1
        0x25
        0x2d
        0xa
        0x0
        0x28
    .end array-data

    .line 1973
    :array_d2
    .array-data 4
        0x3
        0x2
        0x1
        0x25
        0x2d
        0xa
        0x0
        0x28
    .end array-data

    .line 1976
    :array_d3
    .array-data 4
        0x3
        0x2
        0x1
        0x25
        0x2d
        0xa
        0x26
        0x28
    .end array-data

    .line 1977
    :array_d4
    .array-data 4
        0x3
        0x2
        0x1
        0x25
        0x2d
        0xa
        0x26
        0x28
    .end array-data

    .line 1980
    :array_d5
    .array-data 4
        0x3
        0x2
        0x1
        0x25
        0x2d
        0x26
        0x28
    .end array-data

    .line 1981
    :array_d6
    .array-data 4
        0x3
        0x2
        0x1
        0x25
        0x2d
        0x26
        0x28
    .end array-data

    .line 1984
    :array_d7
    .array-data 4
        0x3
        0x2
        0x25
        0x2d
        0xa
        0x26
        0x0
        0x28
    .end array-data

    .line 1985
    :array_d8
    .array-data 4
        0x3
        0x2
        0x25
        0x2d
        0xa
        0x26
        0x0
        0x28
    .end array-data

    .line 1988
    :array_d9
    .array-data 4
        0x3
        0x2
        0x1
        0x25
        0x2d
        0xa
        0x26
        0x0
        0x28
        0xd
    .end array-data

    .line 1989
    :array_da
    .array-data 4
        0x3
        0x2
        0x1
        0x25
        0x2d
        0xa
        0x26
        0x0
        0x28
        0xd
    .end array-data

    .line 2010
    :array_db
    .array-data 4
        0x1b
        0x2
        0x24
    .end array-data

    .line 2011
    :array_dc
    .array-data 4
        0x1b
        0x2
        0x24
    .end array-data

    .line 2035
    :array_dd
    .array-data 4
        0xb
        0x8
        0xa
        0x10
        0x13
        0x12
        0x7
        0x22
        0x28
    .end array-data

    .line 2036
    :array_de
    .array-data 4
        0xb
        0x8
        0xa
        0x10
        0x13
        0x12
        0x7
        0x22
        0x28
    .end array-data

    .line 2037
    :array_df
    .array-data 4
        0xb
        0x8
        0xa
        0x10
        0x13
        0x12
        0x22
        0x28
    .end array-data

    .line 2078
    :array_e0
    .array-data 4
        0x3
        0x26
        0xa
        0x22
        0x27
        0x8
    .end array-data

    .line 2079
    :array_e1
    .array-data 4
        0x3
        0x26
        0xa
        0x22
        0x27
        0x8
    .end array-data

    .line 2080
    :array_e2
    .array-data 4
        0x3
        0x26
        0xa
        0x22
        0x27
        0x8
    .end array-data
.end method

.method public declared-synchronized removeButton(Lcom/sec/android/glview/TwGLView;)V
    .locals 1
    .param p1, "button"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 618
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    monitor-exit p0

    return-void

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetDim()V
    .locals 2

    .prologue
    .line 766
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 767
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 769
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x31

    if-ge v0, v1, :cond_0

    .line 770
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/MenuDimController;->setDim(IZ)V

    .line 769
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 772
    :cond_0
    return-void
.end method

.method public restoreUserSettingValues()V
    .locals 3

    .prologue
    .line 789
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 790
    .local v0, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/MenuDimController$DimArray;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 791
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->restoreUserSettingValues(Z)V

    goto :goto_0

    .line 793
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 794
    return-void
.end method

.method declared-synchronized setDim(IZ)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "dimmed"    # Z

    .prologue
    .line 775
    monitor-enter p0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aput-boolean p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    :cond_0
    monitor-exit p0

    return-void

    .line 775
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDimArray([Z)V
    .locals 3
    .param p1, "dimArray"    # [Z

    .prologue
    const/4 v2, 0x0

    .line 610
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    const/16 v1, 0x31

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 611
    return-void
.end method

.method public varargs setSettingDefault([I)V
    .locals 8
    .param p1, "indices"    # [I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2174
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    .line 2176
    .local v1, "cs":Lcom/sec/android/app/camera/CameraSettings;
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_3

    aget v3, v0, v2

    .line 2177
    .local v3, "index":I
    packed-switch v3, :pswitch_data_0

    .line 2176
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2179
    :pswitch_1
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    goto :goto_1

    .line 2183
    :pswitch_2
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto :goto_1

    .line 2187
    :pswitch_3
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    goto :goto_1

    .line 2193
    :pswitch_4
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraFocusMode()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_1

    .line 2196
    :pswitch_5
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    goto :goto_1

    .line 2199
    :pswitch_6
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setExposureValue(I)V

    goto :goto_1

    .line 2202
    :pswitch_7
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setAutoContrast(I)V

    goto :goto_1

    .line 2205
    :pswitch_8
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto :goto_1

    .line 2208
    :pswitch_9
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    goto :goto_1

    .line 2211
    :pswitch_a
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setTimer(I)V

    goto :goto_1

    .line 2214
    :pswitch_b
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setReview(I)V

    goto :goto_1

    .line 2217
    :pswitch_c
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v5

    if-ne v5, v7, :cond_2

    .line 2218
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v5

    if-ne v5, v7, :cond_0

    .line 2219
    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto :goto_1

    .line 2220
    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v5

    if-ne v5, v7, :cond_1

    .line 2221
    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto :goto_1

    .line 2223
    :cond_1
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto :goto_1

    .line 2226
    :cond_2
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto :goto_1

    .line 2230
    :pswitch_d
    const-string v5, "1920x1080"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto :goto_1

    .line 2233
    :pswitch_e
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    goto :goto_1

    .line 2236
    :pswitch_f
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderAntishake()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    goto :goto_1

    .line 2239
    :pswitch_10
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderAudioZoom()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioZoom(I)V

    goto :goto_1

    .line 2242
    :pswitch_11
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    goto :goto_1

    .line 2245
    :pswitch_12
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setBurstMode(I)V

    goto :goto_1

    .line 2248
    :pswitch_13
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setContextualFilename(I)V

    goto :goto_1

    .line 2251
    :pswitch_14
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setShareMode(I)V

    goto/16 :goto_1

    .line 2254
    :pswitch_15
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraVoiceCommand(I)V

    goto/16 :goto_1

    .line 2257
    :pswitch_16
    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CameraSettings;->setSaveRichtone(I)V

    goto/16 :goto_1

    .line 2260
    :pswitch_17
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    goto/16 :goto_1

    .line 2263
    :pswitch_18
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setTouchToCapture(I)V

    goto/16 :goto_1

    .line 2266
    :pswitch_19
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setAutoNightDetectionMode(I)V

    goto/16 :goto_1

    .line 2269
    :pswitch_1a
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    goto/16 :goto_1

    .line 2272
    :pswitch_1b
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    goto/16 :goto_1

    .line 2275
    :pswitch_1c
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setZoomValue(I)V

    goto/16 :goto_1

    .line 2278
    :pswitch_1d
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    goto/16 :goto_1

    .line 2281
    :pswitch_1e
    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CameraSettings;->setCameraShutterSound(I)V

    goto/16 :goto_1

    .line 2284
    :pswitch_1f
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_1

    .line 2287
    :pswitch_20
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    goto/16 :goto_1

    .line 2294
    .end local v3    # "index":I
    :cond_3
    return-void

    .line 2177
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1a
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_3
        :pswitch_8
        :pswitch_1c
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_20
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_1e
        :pswitch_11
        :pswitch_14
        :pswitch_0
        :pswitch_f
        :pswitch_16
        :pswitch_1f
        :pswitch_12
        :pswitch_13
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_19
        :pswitch_1b
        :pswitch_0
        :pswitch_18
        :pswitch_10
    .end packed-switch
.end method

.method public declared-synchronized synchronizeDim()V
    .locals 6

    .prologue
    .line 807
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v4, 0x31

    if-ge v1, v4, :cond_3

    .line 808
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    .line 809
    .local v3, "view":Lcom/sec/android/glview/TwGLView;
    instance-of v4, v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-eqz v4, :cond_1

    .line 810
    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->getkeyFromCommandId(I)I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 811
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->isDim()Z

    move-result v5

    if-eq v4, v5, :cond_0

    .line 812
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setDim(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 807
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "view":Lcom/sec/android/glview/TwGLView;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 816
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->getkeyFromCommandId(I)I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 817
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->isDim()Z

    move-result v5

    if-eq v4, v5, :cond_0

    .line 818
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setDim(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 807
    .end local v3    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 824
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    monitor-exit p0

    return-void
.end method
