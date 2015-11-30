.class public Lcom/sec/android/app/camera/CheckMemory;
.super Ljava/lang/Object;
.source "CheckMemory.java"


# static fields
.field public static final CANNOT_STAT_ERROR:I = -0x2

.field public static final LOW_STORAGE_THRESHOLD:J = 0x4100000L

.field public static final NO_STORAGE_ERROR:I = -0x1

.field private static NUM_OF_QUALITIES:I = 0x0

.field private static NUM_OF_RESOLUTIONS:I = 0x0

.field private static QUALITY_INDEX:I = 0x0

.field private static RESOLUTION_INDEX:I = 0x0

.field private static SIZE_INDEX:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "CheckMemory"

.field private static mImageSizeList:[[I

.field protected static mStorageManager:Landroid/os/storage/StorageManager;

.field protected static mStorageVolumes:[Landroid/os/storage/StorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 39
    const/16 v0, 0x66

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [I

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [I

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [I

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [I

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [I

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [I

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [I

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v3, [I

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v3, [I

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v3, [I

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v3, [I

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v3, [I

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v3, [I

    fill-array-data v2, :array_2d

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v3, [I

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v3, [I

    fill-array-data v2, :array_2f

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v3, [I

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v3, [I

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v3, [I

    fill-array-data v2, :array_32

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v3, [I

    fill-array-data v2, :array_33

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v3, [I

    fill-array-data v2, :array_34

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v3, [I

    fill-array-data v2, :array_35

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v3, [I

    fill-array-data v2, :array_36

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v3, [I

    fill-array-data v2, :array_37

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v3, [I

    fill-array-data v2, :array_38

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v3, [I

    fill-array-data v2, :array_39

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v3, [I

    fill-array-data v2, :array_3a

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v3, [I

    fill-array-data v2, :array_3b

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v3, [I

    fill-array-data v2, :array_3c

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v3, [I

    fill-array-data v2, :array_3d

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v3, [I

    fill-array-data v2, :array_3e

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v3, [I

    fill-array-data v2, :array_3f

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v3, [I

    fill-array-data v2, :array_40

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v3, [I

    fill-array-data v2, :array_41

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v3, [I

    fill-array-data v2, :array_42

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v3, [I

    fill-array-data v2, :array_43

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v3, [I

    fill-array-data v2, :array_44

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v3, [I

    fill-array-data v2, :array_45

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v3, [I

    fill-array-data v2, :array_46

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v3, [I

    fill-array-data v2, :array_47

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v3, [I

    fill-array-data v2, :array_48

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v3, [I

    fill-array-data v2, :array_49

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v3, [I

    fill-array-data v2, :array_4a

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v3, [I

    fill-array-data v2, :array_4b

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v3, [I

    fill-array-data v2, :array_4c

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v3, [I

    fill-array-data v2, :array_4d

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v3, [I

    fill-array-data v2, :array_4e

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v3, [I

    fill-array-data v2, :array_4f

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v3, [I

    fill-array-data v2, :array_50

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v3, [I

    fill-array-data v2, :array_51

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v3, [I

    fill-array-data v2, :array_52

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v3, [I

    fill-array-data v2, :array_53

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v3, [I

    fill-array-data v2, :array_54

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v3, [I

    fill-array-data v2, :array_55

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v3, [I

    fill-array-data v2, :array_56

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v3, [I

    fill-array-data v2, :array_57

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v3, [I

    fill-array-data v2, :array_58

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v3, [I

    fill-array-data v2, :array_59

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v3, [I

    fill-array-data v2, :array_5a

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v3, [I

    fill-array-data v2, :array_5b

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v3, [I

    fill-array-data v2, :array_5c

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v3, [I

    fill-array-data v2, :array_5d

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v3, [I

    fill-array-data v2, :array_5e

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v3, [I

    fill-array-data v2, :array_5f

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v3, [I

    fill-array-data v2, :array_60

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v3, [I

    fill-array-data v2, :array_61

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v3, [I

    fill-array-data v2, :array_62

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v3, [I

    fill-array-data v2, :array_63

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v3, [I

    fill-array-data v2, :array_64

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v3, [I

    fill-array-data v2, :array_65

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/CheckMemory;->mImageSizeList:[[I

    .line 143
    sput v3, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_QUALITIES:I

    .line 144
    sget-object v0, Lcom/sec/android/app/camera/CheckMemory;->mImageSizeList:[[I

    array-length v0, v0

    sget v1, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_QUALITIES:I

    div-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_RESOLUTIONS:I

    .line 145
    sput v4, Lcom/sec/android/app/camera/CheckMemory;->RESOLUTION_INDEX:I

    .line 146
    sput v5, Lcom/sec/android/app/camera/CheckMemory;->QUALITY_INDEX:I

    .line 147
    sput v6, Lcom/sec/android/app/camera/CheckMemory;->SIZE_INDEX:I

    return-void

    .line 39
    nop

    :array_0
    .array-data 4
        0x20
        0x0
        0xa00
    .end array-data

    :array_1
    .array-data 4
        0x20
        0x1
        0x820
    .end array-data

    :array_2
    .array-data 4
        0x20
        0x2
        0x640
    .end array-data

    :array_3
    .array-data 4
        0x21
        0x0
        0xa00
    .end array-data

    :array_4
    .array-data 4
        0x21
        0x1
        0x820
    .end array-data

    :array_5
    .array-data 4
        0x21
        0x2
        0x640
    .end array-data

    :array_6
    .array-data 4
        0x1e
        0x0
        0xa00
    .end array-data

    :array_7
    .array-data 4
        0x1e
        0x1
        0x820
    .end array-data

    :array_8
    .array-data 4
        0x1e
        0x2
        0x640
    .end array-data

    :array_9
    .array-data 4
        0x24
        0x0
        0xa00
    .end array-data

    :array_a
    .array-data 4
        0x24
        0x1
        0x820
    .end array-data

    :array_b
    .array-data 4
        0x24
        0x2
        0x640
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x0
        0xa00
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x1
        0x820
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x2
        0x640
    .end array-data

    :array_f
    .array-data 4
        0x1
        0x0
        0x820
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x1
        0x69a
    .end array-data

    :array_11
    .array-data 4
        0x1
        0x2
        0x514
    .end array-data

    :array_12
    .array-data 4
        0x2b
        0x0
        0xa00
    .end array-data

    :array_13
    .array-data 4
        0x2b
        0x1
        0x820
    .end array-data

    :array_14
    .array-data 4
        0x2b
        0x2
        0x640
    .end array-data

    :array_15
    .array-data 4
        0x2
        0x0
        0x8c0
    .end array-data

    :array_16
    .array-data 4
        0x2
        0x1
        0x71c
    .end array-data

    :array_17
    .array-data 4
        0x2
        0x2
        0x578
    .end array-data

    :array_18
    .array-data 4
        0x3
        0x0
        0x720
    .end array-data

    :array_19
    .array-data 4
        0x3
        0x1
        0x5ca
    .end array-data

    :array_1a
    .array-data 4
        0x3
        0x2
        0x474
    .end array-data

    :array_1b
    .array-data 4
        0x19
        0x0
        0x668
    .end array-data

    :array_1c
    .array-data 4
        0x19
        0x1
        0x53c
    .end array-data

    :array_1d
    .array-data 4
        0x19
        0x2
        0x401
    .end array-data

    :array_1e
    .array-data 4
        0x4
        0x0
        0x640
    .end array-data

    :array_1f
    .array-data 4
        0x4
        0x1
        0x514
    .end array-data

    :array_20
    .array-data 4
        0x4
        0x2
        0x3e8
    .end array-data

    :array_21
    .array-data 4
        0x5
        0x0
        0x4b0
    .end array-data

    :array_22
    .array-data 4
        0x5
        0x1
        0x384
    .end array-data

    :array_23
    .array-data 4
        0x5
        0x2
        0x1f4
    .end array-data

    :array_24
    .array-data 4
        0x2d
        0x0
        0x820
    .end array-data

    :array_25
    .array-data 4
        0x2d
        0x1
        0x69a
    .end array-data

    :array_26
    .array-data 4
        0x2d
        0x2
        0x514
    .end array-data

    :array_27
    .array-data 4
        0x6
        0x0
        0x39a
    .end array-data

    :array_28
    .array-data 4
        0x6
        0x1
        0x266
    .end array-data

    :array_29
    .array-data 4
        0x6
        0x2
        0x1cd
    .end array-data

    :array_2a
    .array-data 4
        0x7
        0x0
        0x320
    .end array-data

    :array_2b
    .array-data 4
        0x7
        0x1
        0x28a
    .end array-data

    :array_2c
    .array-data 4
        0x7
        0x2
        0x226
    .end array-data

    :array_2d
    .array-data 4
        0x17
        0x0
        0x2ec
    .end array-data

    :array_2e
    .array-data 4
        0x17
        0x1
        0x25f
    .end array-data

    :array_2f
    .array-data 4
        0x17
        0x2
        0x202
    .end array-data

    :array_30
    .array-data 4
        0x1a
        0x0
        0x2ec
    .end array-data

    :array_31
    .array-data 4
        0x1a
        0x1
        0x25f
    .end array-data

    :array_32
    .array-data 4
        0x1a
        0x2
        0x202
    .end array-data

    :array_33
    .array-data 4
        0x1b
        0x0
        0x1f4
    .end array-data

    :array_34
    .array-data 4
        0x1b
        0x1
        0x190
    .end array-data

    :array_35
    .array-data 4
        0x1b
        0x2
        0x12c
    .end array-data

    :array_36
    .array-data 4
        0x8
        0x0
        0x258
    .end array-data

    :array_37
    .array-data 4
        0x8
        0x1
        0x1f4
    .end array-data

    :array_38
    .array-data 4
        0x8
        0x2
        0x190
    .end array-data

    :array_39
    .array-data 4
        0x9
        0x0
        0x1f4
    .end array-data

    :array_3a
    .array-data 4
        0x9
        0x1
        0x190
    .end array-data

    :array_3b
    .array-data 4
        0x9
        0x2
        0x12c
    .end array-data

    :array_3c
    .array-data 4
        0x1c
        0x0
        0x1f4
    .end array-data

    :array_3d
    .array-data 4
        0x1c
        0x1
        0x190
    .end array-data

    :array_3e
    .array-data 4
        0x1c
        0x2
        0x12c
    .end array-data

    :array_3f
    .array-data 4
        0x18
        0x0
        0x258
    .end array-data

    :array_40
    .array-data 4
        0x18
        0x1
        0x1f4
    .end array-data

    :array_41
    .array-data 4
        0x18
        0x2
        0x190
    .end array-data

    :array_42
    .array-data 4
        0x1f
        0x0
        0x258
    .end array-data

    :array_43
    .array-data 4
        0x1f
        0x1
        0x1f4
    .end array-data

    :array_44
    .array-data 4
        0x1f
        0x2
        0x190
    .end array-data

    :array_45
    .array-data 4
        0xa
        0x0
        0x168
    .end array-data

    :array_46
    .array-data 4
        0xa
        0x1
        0xb4
    .end array-data

    :array_47
    .array-data 4
        0xa
        0x2
        0x81
    .end array-data

    :array_48
    .array-data 4
        0xc
        0x0
        0x82
    .end array-data

    :array_49
    .array-data 4
        0xc
        0x1
        0x64
    .end array-data

    :array_4a
    .array-data 4
        0xc
        0x2
        0x50
    .end array-data

    :array_4b
    .array-data 4
        0xb
        0x0
        0x64
    .end array-data

    :array_4c
    .array-data 4
        0xb
        0x1
        0x50
    .end array-data

    :array_4d
    .array-data 4
        0xb
        0x2
        0x37
    .end array-data

    :array_4e
    .array-data 4
        0x29
        0x0
        0x64
    .end array-data

    :array_4f
    .array-data 4
        0x29
        0x1
        0x50
    .end array-data

    :array_50
    .array-data 4
        0x29
        0x2
        0x37
    .end array-data

    :array_51
    .array-data 4
        0x10
        0x0
        0x28
    .end array-data

    :array_52
    .array-data 4
        0x10
        0x1
        0x20
    .end array-data

    :array_53
    .array-data 4
        0x10
        0x2
        0x1c
    .end array-data

    :array_54
    .array-data 4
        0x12
        0x0
        0x20
    .end array-data

    :array_55
    .array-data 4
        0x12
        0x1
        0x1c
    .end array-data

    :array_56
    .array-data 4
        0x12
        0x2
        0x19
    .end array-data

    :array_57
    .array-data 4
        0x14
        0x0
        0x820
    .end array-data

    :array_58
    .array-data 4
        0x14
        0x1
        0x69a
    .end array-data

    :array_59
    .array-data 4
        0x14
        0x2
        0x514
    .end array-data

    :array_5a
    .array-data 4
        0x15
        0x0
        0x4b0
    .end array-data

    :array_5b
    .array-data 4
        0x15
        0x1
        0x384
    .end array-data

    :array_5c
    .array-data 4
        0x15
        0x2
        0x1f4
    .end array-data

    :array_5d
    .array-data 4
        0xe
        0x0
        0x82
    .end array-data

    :array_5e
    .array-data 4
        0xe
        0x1
        0x64
    .end array-data

    :array_5f
    .array-data 4
        0xe
        0x2
        0x50
    .end array-data

    :array_60
    .array-data 4
        0x26
        0x0
        0x96
    .end array-data

    :array_61
    .array-data 4
        0x26
        0x1
        0x78
    .end array-data

    :array_62
    .array-data 4
        0x26
        0x2
        0x64
    .end array-data

    :array_63
    .array-data 4
        0x1d
        0x0
        0x82
    .end array-data

    :array_64
    .array-data 4
        0x1d
        0x1
        0x64
    .end array-data

    :array_65
    .array-data 4
        0x1d
        0x2
        0x50
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableStorage(I)J
    .locals 8
    .param p0, "storage"    # I

    .prologue
    const/4 v3, 0x1

    .line 213
    const/4 v2, 0x0

    .line 214
    .local v2, "storageDirectory":Ljava/lang/String;
    if-ne p0, v3, :cond_1

    .line 215
    :try_start_0
    sget-object v3, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v3, v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 216
    sget-object v3, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 223
    :goto_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 226
    .local v1, "stat":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v4, v6

    const-wide/32 v6, 0x4100000

    sub-long/2addr v4, v6

    .line 232
    .end local v1    # "stat":Landroid/os/StatFs;
    :goto_1
    return-wide v4

    .line 218
    :cond_0
    sget-object v3, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 221
    :cond_1
    sget-object v3, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 231
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v3, "CheckMemory"

    const-string v4, "cannot stat the filesystem then we don\'t know how many free bytes exist"

    invoke-static {v3, v4}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-wide/16 v4, -0x2

    goto :goto_1
.end method

.method public static getExternalSDStoragePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    sget-object v0, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 297
    sget-object v0, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 299
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExternalStoragePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 292
    sget-object v0, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxSizeOfImage(II)J
    .locals 6
    .param p0, "resolution"    # I
    .param p1, "quality"    # I

    .prologue
    .line 268
    const-wide/16 v2, 0x0

    .line 270
    .local v2, "nMaxSize":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v4, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_RESOLUTIONS:I

    if-ge v0, v4, :cond_2

    .line 271
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    sget v4, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_QUALITIES:I

    if-ge v1, v4, :cond_0

    .line 272
    sget-object v4, Lcom/sec/android/app/camera/CheckMemory;->mImageSizeList:[[I

    sget v5, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_QUALITIES:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v1

    aget-object v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/CheckMemory;->RESOLUTION_INDEX:I

    aget v4, v4, v5

    if-ne v4, p0, :cond_1

    sget-object v4, Lcom/sec/android/app/camera/CheckMemory;->mImageSizeList:[[I

    sget v5, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_QUALITIES:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v1

    aget-object v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/CheckMemory;->QUALITY_INDEX:I

    aget v4, v4, v5

    if-ne v4, p1, :cond_1

    .line 274
    sget-object v4, Lcom/sec/android/app/camera/CheckMemory;->mImageSizeList:[[I

    sget v5, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_QUALITIES:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v1

    aget-object v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/CheckMemory;->SIZE_INDEX:I

    aget v4, v4, v5

    int-to-long v2, v4

    .line 270
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 283
    .end local v1    # "j":I
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    .line 284
    const-string v4, "CheckMemory"

    const-string v5, "Resolution or Quality setting maybe wrong"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-wide/32 v4, 0x100000

    .line 287
    :goto_2
    return-wide v4

    :cond_3
    const-wide/16 v4, 0x400

    mul-long/2addr v4, v2

    goto :goto_2
.end method

.method public static getRemainCount(III)I
    .locals 8
    .param p0, "storage"    # I
    .param p1, "resolution"    # I
    .param p2, "quality"    # I

    .prologue
    const/4 v4, -0x1

    .line 182
    invoke-static {p0}, Lcom/sec/android/app/camera/CheckMemory;->getAvailableStorage(I)J

    move-result-wide v2

    .line 184
    .local v2, "lAvailableStorage":J
    const-wide/16 v6, -0x2

    cmp-long v5, v2, v6

    if-eqz v5, :cond_0

    .line 185
    const/4 v1, 0x0

    .line 187
    .local v1, "nRemainCount":I
    :try_start_0
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/CheckMemory;->getMaxSizeOfImage(II)J

    move-result-wide v6

    div-long v4, v2, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v1, v4

    .line 193
    .end local v1    # "nRemainCount":I
    :goto_0
    return v1

    .line 189
    .restart local v1    # "nRemainCount":I
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    move v1, v4

    .line 190
    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "nRemainCount":I
    :cond_0
    move v1, v4

    .line 193
    goto :goto_0
.end method

.method public static getRemainTime(II)I
    .locals 8
    .param p0, "storage"    # I
    .param p1, "bitrate"    # I

    .prologue
    const/4 v4, -0x1

    .line 197
    invoke-static {p0}, Lcom/sec/android/app/camera/CheckMemory;->getAvailableStorage(I)J

    move-result-wide v2

    .line 199
    .local v2, "lAvailableStorage":J
    const-wide/16 v6, -0x2

    cmp-long v5, v2, v6

    if-eqz v5, :cond_0

    .line 200
    const/4 v1, 0x0

    .line 202
    .local v1, "nRemainTime":I
    int-to-long v6, p1

    :try_start_0
    div-long v4, v2, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v1, v4

    .line 208
    .end local v1    # "nRemainTime":I
    :goto_0
    return v1

    .line 204
    .restart local v1    # "nRemainTime":I
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    move v1, v4

    .line 205
    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "nRemainTime":I
    :cond_0
    move v1, v4

    .line 208
    goto :goto_0
.end method

.method public static getTotalStorage(I)J
    .locals 8
    .param p0, "storage"    # I

    .prologue
    const/4 v3, 0x1

    .line 238
    const/4 v2, 0x0

    .line 239
    .local v2, "storageDirectory":Ljava/lang/String;
    if-ne p0, v3, :cond_1

    .line 240
    :try_start_0
    sget-object v3, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v3, v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 241
    sget-object v3, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 249
    :goto_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 250
    .local v1, "stat":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v4, v6

    const-wide/32 v6, 0x4100000

    sub-long/2addr v4, v6

    .line 256
    .end local v1    # "stat":Landroid/os/StatFs;
    :goto_1
    return-wide v4

    .line 243
    :cond_0
    sget-object v3, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 246
    :cond_1
    sget-object v3, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 255
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v3, "CheckMemory"

    const-string v4, "cannot stat the filesystem then we don\'t know how many free bytes exist"

    invoke-static {v3, v4}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-wide/16 v4, -0x2

    goto :goto_1
.end method

.method public static isStorageMounted()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 261
    sget-object v1, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v1, v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 262
    sget-object v1, Lcom/sec/android/app/camera/CheckMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v2, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v0

    .line 262
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/CheckMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v1, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 264
    :cond_2
    sget-object v1, Lcom/sec/android/app/camera/CheckMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v2, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/CheckMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v2, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setStorageVolume(Lcom/sec/android/app/camera/Camera;)V
    .locals 6
    .param p0, "activityContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 150
    const-string v2, "storage"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    sput-object v2, Lcom/sec/android/app/camera/CheckMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 151
    sget-object v2, Lcom/sec/android/app/camera/CheckMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 153
    sget-object v2, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fuse"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 156
    sget-object v2, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fuse"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    sget-object v2, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v1, v2, v4

    .line 158
    .local v1, "tempStorageVolumes":Landroid/os/storage/StorageVolume;
    sget-object v2, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    sget-object v3, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v3, v3, v0

    aput-object v3, v2, v4

    .line 159
    sget-object v2, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aput-object v1, v2, v0

    .line 155
    .end local v1    # "tempStorageVolumes":Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "i":I
    :cond_1
    sget-object v2, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 166
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    sget-object v2, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 167
    sget-object v2, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    sget-object v2, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v1, v2, v5

    .line 169
    .restart local v1    # "tempStorageVolumes":Landroid/os/storage/StorageVolume;
    sget-object v2, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    sget-object v3, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v3, v3, v0

    aput-object v3, v2, v5

    .line 170
    sget-object v2, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aput-object v1, v2, v0

    .line 166
    .end local v1    # "tempStorageVolumes":Landroid/os/storage/StorageVolume;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    .end local v0    # "i":I
    :cond_3
    sget-object v2, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v2, v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_4

    .line 177
    const-string v2, "CheckMemory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR: INTERNAL_SD is not available. mStorageVolumes.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_4
    return-void
.end method
