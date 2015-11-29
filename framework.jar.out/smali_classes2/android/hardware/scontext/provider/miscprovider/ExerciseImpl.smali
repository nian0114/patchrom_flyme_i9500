.class public Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;
.super Landroid/hardware/scontext/provider/miscprovider/MiscProvider;
.source "ExerciseImpl.java"


# static fields
.field private static REQUIRED_DATA_BAROMETER:I = 0x0

.field private static REQUIRED_DATA_GPS:I = 0x0

.field private static REQUIRED_DATA_PEDOMETER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SContext.MiscProvider.ExerciseImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplay:Landroid/view/Display;

.field private final mListener:Landroid/hardware/scontext/provider/EventListener;

.field private mLocationListener:Landroid/location/ExerciseLocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mRequiredData:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    sput v0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->REQUIRED_DATA_GPS:I

    .line 39
    const/4 v0, 0x2

    sput v0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->REQUIRED_DATA_BAROMETER:I

    .line 41
    const/4 v0, 0x4

    sput v0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->REQUIRED_DATA_PEDOMETER:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/hardware/scontext/provider/EventListener;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/miscprovider/MiscProvider;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mRequiredData:I

    .line 136
    new-instance v0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl$1;

    invoke-direct {v0, p0}, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl$1;-><init>(Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;)V

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mLocationListener:Landroid/location/ExerciseLocationListener;

    .line 56
    iput-object p1, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    .line 58
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mDisplay:Landroid/view/Display;

    .line 60
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;)Landroid/hardware/scontext/provider/EventListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;

    .prologue
    .line 33
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    return-object v0
.end method

.method private display(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 161
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 162
    .local v11, "sb":Ljava/lang/StringBuffer;
    const-string v16, "TimeStampArray"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v15

    .line 163
    .local v15, "timestamp":[J
    const-string v16, "LatitudeArray"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v6

    .line 164
    .local v6, "latitudeArray":[D
    const-string v16, "LongitudeArray"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v7

    .line 165
    .local v7, "longitudeArray":[D
    const-string v16, "AltitudeArray"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v2

    .line 166
    .local v2, "altitudeArray":[F
    const-string v16, "PressureArray"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v10

    .line 167
    .local v10, "pressureArray":[F
    const-string v16, "SpeedArray"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v12

    .line 168
    .local v12, "speedArray":[F
    const-string v16, "PedoDistanceDiffArray"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v8

    .line 169
    .local v8, "pedoDistanceArray":[D
    const-string v16, "PedoSpeedArray"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v9

    .line 170
    .local v9, "pedoSpeedArray":[D
    const-string v16, "StepCountDiffArray"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v13

    .line 171
    .local v13, "stepCountDiffArray":[J
    const-string v16, "DataCount"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 173
    .local v3, "dataCount":I
    const/16 v16, 0x9

    move/from16 v0, v16

    new-array v14, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "TimeStampArray"

    aput-object v17, v14, v16

    const/16 v16, 0x1

    const-string v17, "latArray"

    aput-object v17, v14, v16

    const/16 v16, 0x2

    const-string v17, "longiArray"

    aput-object v17, v14, v16

    const/16 v16, 0x3

    const-string v17, "altArray"

    aput-object v17, v14, v16

    const/16 v16, 0x4

    const-string v17, "pressureArray"

    aput-object v17, v14, v16

    const/16 v16, 0x5

    const-string/jumbo v17, "speedArray"

    aput-object v17, v14, v16

    const/16 v16, 0x6

    const-string v17, "disArray"

    aput-object v17, v14, v16

    const/16 v16, 0x7

    const-string v17, "pedoSpeedArray"

    aput-object v17, v14, v16

    const/16 v16, 0x8

    const-string/jumbo v17, "scArray"

    aput-object v17, v14, v16

    .line 178
    .local v14, "str_array":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_3

    .line 179
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v17, v14, v4

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " = [ "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v3, :cond_1

    .line 181
    packed-switch v4, :pswitch_data_0

    .line 212
    :goto_2
    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    if-ge v5, v0, :cond_0

    .line 213
    const-string v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 183
    :pswitch_0
    aget-wide v16, v15, v5

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 186
    :pswitch_1
    aget-wide v16, v6, v5

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 189
    :pswitch_2
    aget-wide v16, v7, v5

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 192
    :pswitch_3
    aget v16, v2, v5

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 195
    :pswitch_4
    aget v16, v10, v5

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 198
    :pswitch_5
    aget v16, v12, v5

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 201
    :pswitch_6
    aget-wide v16, v8, v5

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 204
    :pswitch_7
    aget-wide v16, v9, v5

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 207
    :pswitch_8
    aget-wide v16, v13, v5

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 215
    :cond_1
    const-string v16, "]"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    array-length v0, v14

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-ge v4, v0, :cond_2

    .line 217
    const-string v16, ", "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 221
    .end local v5    # "j":I
    :cond_3
    const-string v16, "SContext.MiscProvider.ExerciseImpl"

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private isScreenOn()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 130
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add()V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mLocationManager:Landroid/location/LocationManager;

    .line 72
    :cond_0
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mLocationManager:Landroid/location/LocationManager;

    iget v1, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mRequiredData:I

    const/16 v2, 0x3e8

    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mLocationListener:Landroid/location/ExerciseLocationListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->requestExerciseLocationUpdates(IILandroid/location/ExerciseLocationListener;)V

    .line 73
    const-string v0, "SContext.MiscProvider.ExerciseImpl"

    const-string v1, "add()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method public parse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 107
    if-eqz p1, :cond_0

    .line 108
    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->display(Landroid/os/Bundle;)V

    .line 110
    :cond_0
    return-object p1
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mLocationListener:Landroid/location/ExerciseLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeExcersiceLocationUpdates(Landroid/location/ExerciseLocationListener;)V

    .line 85
    const-string v0, "SContext.MiscProvider.ExerciseImpl"

    const-string v1, "remove()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public requestToUpdate()V
    .locals 2

    .prologue
    .line 98
    const-string v0, "SContext.MiscProvider.ExerciseImpl"

    const-string/jumbo v1, "requestToUpdate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct {p0}, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    :cond_0
    return-void
.end method

.method public setAttribute(ILandroid/hardware/scontext/SContextAttribute;)V
    .locals 4
    .param p1, "service"    # I
    .param p2, "attribute"    # Landroid/hardware/scontext/SContextAttribute;

    .prologue
    .line 122
    const/16 v1, 0x26

    invoke-virtual {p2, v1}, Landroid/hardware/scontext/SContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v0

    .line 123
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "required_data_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mRequiredData:I

    .line 124
    const-string v1, "SContext.MiscProvider.ExerciseImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAttribute() : requiredData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mRequiredData:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method
