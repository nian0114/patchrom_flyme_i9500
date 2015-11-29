.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "SLMonitorRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;
    }
.end annotation


# static fields
.field private static final DEFAULT_POWER_STEP_START_DURATION:I = 0x12c

.field private static final DEFAULT_STEP_LEVEL_TYPE:I = 0x4


# instance fields
.field private mDuration:I

.field private mStepLevelType:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mDuration:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mStepLevelType:I

    return-void
.end method

.method private display(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "================= "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextType()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, " ================="

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .local v12, "str":Ljava/lang/StringBuffer;
    const-string v13, "DataType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .local v6, "dataType":I
    const/4 v13, 0x1

    if-ne v6, v13, :cond_12

    const-string v13, "DataCount"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .local v4, "count":I
    const-string v13, "TimeStamp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .local v14, "timestamp":J
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DT=["

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, "], "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DC=["

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, "], "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TS=["

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, "], "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, "DataBundle"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .local v5, "dataBundle":Landroid/os/Bundle;
    const-string v13, "StepTypeArray"

    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    .local v11, "stepType":[I
    const-string v13, "StepCountArray"

    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v10

    .local v10, "stepCount":[I
    const-string v13, "DistanceArray"

    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v7

    .local v7, "distance":[D
    const-string v13, "CalorieArray"

    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v3

    .local v3, "calorie":[D
    const-string v13, "DurationArray"

    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v8

    .local v8, "duration":[I
    const-string v13, "ST=["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v4, :cond_8

    aget v13, v11, v9

    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v13, v0, :cond_2

    const-string v13, "IN"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    aget v13, v11, v9

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v13, v0, :cond_3

    const-string v13, "PO"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    aget v13, v11, v9

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v13, v0, :cond_4

    const-string v13, "NO"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    aget v13, v11, v9

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v13, v0, :cond_5

    const-string v13, "SE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    aget v13, v11, v9

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v13, v0, :cond_6

    const-string v13, "ST"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    add-int/lit8 v13, v4, -0x1

    if-eq v9, v13, :cond_7

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_8
    const-string v13, "], "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, "SC=["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v4, :cond_a

    aget v13, v10, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v13, v4, -0x1

    if-eq v9, v13, :cond_9

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_a
    const-string v13, "], "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, "DI=["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v4, :cond_c

    aget-wide v16, v7, v9

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    add-int/lit8 v13, v4, -0x1

    if-eq v9, v13, :cond_b

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_c
    const-string v13, "], "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, "CA=["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v4, :cond_e

    aget-wide v16, v3, v9

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    add-int/lit8 v13, v4, -0x1

    if-eq v9, v13, :cond_d

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_e
    const-string v13, "], "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, "DU=["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v4, :cond_10

    aget v13, v8, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v13, v4, -0x1

    if-eq v9, v13, :cond_f

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_10
    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .end local v3    # "calorie":[D
    .end local v4    # "count":I
    .end local v5    # "dataBundle":Landroid/os/Bundle;
    .end local v7    # "distance":[D
    .end local v8    # "duration":[I
    .end local v9    # "i":I
    .end local v10    # "stepCount":[I
    .end local v11    # "stepType":[I
    .end local v14    # "timestamp":J
    :cond_11
    :goto_6
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const/4 v13, 0x2

    if-ne v6, v13, :cond_11

    const-string v13, "ActiveTimeDuration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .local v2, "activeTime":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DT=["

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, "], "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DU=["

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, "]"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    return-void
.end method

.method public final disable()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    return-void
.end method

.method protected display()V
    .locals 0

    .prologue
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SL_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DataType"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TimeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "DataCount"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "DataBundle"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "StepTypeArray"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "StepCountArray"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DistanceArray"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CalorieArray"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "DurationArray"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ActiveTimeDuration"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v3, 0x8

    new-array v0, v3, [B

    .local v0, "packet":[B
    aput-byte v5, v0, v5

    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mStepLevelType:I

    invoke-static {v3, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    aget-byte v3, v3, v5

    aput-byte v3, v0, v6

    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mDuration:I

    invoke-static {v3, v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    .local v1, "startDuration":[B
    aget-byte v3, v1, v5

    aput-byte v3, v0, v7

    const/4 v3, 0x3

    aget-byte v4, v1, v6

    aput-byte v4, v0, v3

    const/4 v3, 0x4

    aput-byte v5, v0, v3

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v2

    .local v2, "utcTime":[I
    const/4 v3, 0x5

    aget v4, v2, v5

    invoke-static {v4, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    const/4 v3, 0x6

    aget v4, v2, v6

    invoke-static {v4, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    const/4 v3, 0x7

    aget v4, v2, v7

    invoke-static {v4, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    return-object v0
.end method

.method protected final getDataPacketToUnregisterLib()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    new-array v0, v1, [B

    .local v0, "packet":[B
    aput-byte v2, v0, v2

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    const/16 v0, 0x2c

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    return-object p0
.end method

.method public final parse([BI)I
    .locals 32
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    move/from16 v25, p2

    .local v25, "tmpNext":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v21

    .local v21, "names":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "parse:"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v25

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_0

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_0
    add-int/lit8 v26, v25, 0x1

    .end local v25    # "tmpNext":I
    .local v26, "tmpNext":I
    aget-byte v13, p1, v25

    .local v13, "dataType":I
    const/4 v3, 0x1

    if-ne v13, v3, :cond_5

    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v26

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_1

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v25, -0x1

    move/from16 v3, v25

    move/from16 v25, v26

    .end local v26    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    goto :goto_0

    .end local v25    # "tmpNext":I
    .restart local v26    # "tmpNext":I
    :cond_1
    add-int/lit8 v25, v26, 0x1

    .end local v26    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v12, p1, v26

    .local v12, "dataSize":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "dataSize:"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    if-gtz v12, :cond_2

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v3, -0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v25

    mul-int/lit8 v27, v12, 0xc

    add-int/lit8 v27, v27, 0x4

    move/from16 v0, v27

    if-ge v3, v0, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "packet len:"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v27, " tmpNext:"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v3, -0x1

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x8

    new-array v3, v3, [B

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput-byte v28, v3, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aput-byte v28, v3, v27

    const/16 v27, 0x2

    const/16 v28, 0x0

    aput-byte v28, v3, v27

    const/16 v27, 0x3

    const/16 v28, 0x0

    aput-byte v28, v3, v27

    const/16 v27, 0x4

    add-int/lit8 v26, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v26    # "tmpNext":I
    aget-byte v28, p1, v25

    aput-byte v28, v3, v27

    const/16 v27, 0x5

    add-int/lit8 v25, v26, 0x1

    .end local v26    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v28, p1, v26

    aput-byte v28, v3, v27

    const/16 v27, 0x6

    add-int/lit8 v26, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v26    # "tmpNext":I
    aget-byte v28, p1, v25

    aput-byte v28, v3, v27

    const/16 v27, 0x7

    add-int/lit8 v25, v26, 0x1

    .end local v26    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v28, p1, v26

    aput-byte v28, v3, v27

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v8

    .local v8, "timestamp":J
    new-instance v3, Ljava/util/SimpleTimeZone;

    const/16 v27, 0x0

    const-string v28, "GMT"

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v3, v0, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .local v2, "calender":Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v16

    .local v16, "hour":I
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v20

    .local v20, "minute":I
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v22

    .local v22, "second":I
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v19

    .local v19, "milliSec":I
    move/from16 v0, v16

    mul-int/lit16 v3, v0, 0xe10

    mul-int/lit8 v27, v20, 0x3c

    add-int v3, v3, v27

    add-int v3, v3, v22

    mul-int/lit16 v3, v3, 0x3e8

    add-int v3, v3, v19

    int-to-long v4, v3

    .local v4, "curUtcTime":J
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .local v6, "curTimeMillis":J
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v3

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC24(JJJ)J

    move-result-wide v8

    new-array v0, v12, [I

    move-object/from16 v24, v0

    .local v24, "stepType":[I
    new-array v0, v12, [I

    move-object/from16 v23, v0

    .local v23, "stepCount":[I
    new-array v14, v12, [D

    .local v14, "distance":[D
    new-array v10, v12, [D

    .local v10, "calorie":[D
    new-array v15, v12, [I

    .local v15, "duration":[I
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .local v11, "dataBundle":Landroid/os/Bundle;
    const/16 v17, 0x0

    .local v17, "i":I
    move/from16 v26, v25

    .end local v25    # "tmpNext":I
    .restart local v26    # "tmpNext":I
    :goto_1
    move/from16 v0, v17

    if-ge v0, v12, :cond_4

    add-int/lit8 v25, v26, 0x1

    .end local v26    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v3, p1, v26

    aput v3, v24, v17

    const/4 v3, 0x4

    new-array v3, v3, [B

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput-byte v28, v3, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aput-byte v28, v3, v27

    const/16 v27, 0x2

    add-int/lit8 v26, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v26    # "tmpNext":I
    aget-byte v28, p1, v25

    aput-byte v28, v3, v27

    const/16 v27, 0x3

    add-int/lit8 v25, v26, 0x1

    .end local v26    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v28, p1, v26

    aput-byte v28, v3, v27

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v23, v17

    const/4 v3, 0x4

    new-array v3, v3, [B

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput-byte v28, v3, v27

    const/16 v27, 0x1

    add-int/lit8 v26, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v26    # "tmpNext":I
    aget-byte v28, p1, v25

    aput-byte v28, v3, v27

    const/16 v27, 0x2

    add-int/lit8 v25, v26, 0x1

    .end local v26    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v28, p1, v26

    aput-byte v28, v3, v27

    const/16 v27, 0x3

    add-int/lit8 v26, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v26    # "tmpNext":I
    aget-byte v28, p1, v25

    aput-byte v28, v3, v27

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    int-to-double v0, v3

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x4059000000000000L    # 100.0

    div-double v28, v28, v30

    aput-wide v28, v14, v17

    const/4 v3, 0x4

    new-array v3, v3, [B

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput-byte v28, v3, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aput-byte v28, v3, v27

    const/16 v27, 0x2

    add-int/lit8 v25, v26, 0x1

    .end local v26    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v28, p1, v26

    aput-byte v28, v3, v27

    const/16 v27, 0x3

    add-int/lit8 v26, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v26    # "tmpNext":I
    aget-byte v28, p1, v25

    aput-byte v28, v3, v27

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    int-to-double v0, v3

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x4059000000000000L    # 100.0

    div-double v28, v28, v30

    aput-wide v28, v10, v17

    const/4 v3, 0x4

    new-array v3, v3, [B

    const/16 v27, 0x0

    add-int/lit8 v25, v26, 0x1

    .end local v26    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v28, p1, v26

    aput-byte v28, v3, v27

    const/16 v27, 0x1

    add-int/lit8 v26, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v26    # "tmpNext":I
    aget-byte v28, p1, v25

    aput-byte v28, v3, v27

    const/16 v27, 0x2

    add-int/lit8 v25, v26, 0x1

    .end local v26    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v28, p1, v26

    aput-byte v28, v3, v27

    const/16 v27, 0x3

    add-int/lit8 v26, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v26    # "tmpNext":I
    aget-byte v28, p1, v25

    aput-byte v28, v3, v27

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v15, v17

    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    :cond_4
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->StepType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v21, v3

    move-object/from16 v0, v24

    invoke-virtual {v11, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->StepCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v21, v3

    move-object/from16 v0, v23

    invoke-virtual {v11, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Distance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v21, v3

    invoke-virtual {v11, v3, v14}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Calorie:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v21, v3

    invoke-virtual {v11, v3, v10}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Duration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v21, v3

    invoke-virtual {v11, v3, v15}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    sget-object v27, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static/range {v27 .. v27}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v27

    aget-object v27, v21, v27

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    sget-object v27, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Timestamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static/range {v27 .. v27}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v27

    aget-object v27, v21, v27

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v8, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    sget-object v27, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataBundle:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static/range {v27 .. v27}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v27

    aget-object v27, v21, v27

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v11}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    sget-object v27, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static/range {v27 .. v27}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v27

    aget-object v27, v21, v27

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .local v18, "logBundle":Landroid/os/Bundle;
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v21, v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Timestamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v21, v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataBundle:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v21, v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v21, v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->display(Landroid/os/Bundle;)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    move/from16 v25, v26

    .end local v2    # "calender":Ljava/util/Calendar;
    .end local v4    # "curUtcTime":J
    .end local v6    # "curTimeMillis":J
    .end local v8    # "timestamp":J
    .end local v10    # "calorie":[D
    .end local v11    # "dataBundle":Landroid/os/Bundle;
    .end local v12    # "dataSize":I
    .end local v14    # "distance":[D
    .end local v15    # "duration":[I
    .end local v16    # "hour":I
    .end local v17    # "i":I
    .end local v18    # "logBundle":Landroid/os/Bundle;
    .end local v19    # "milliSec":I
    .end local v20    # "minute":I
    .end local v22    # "second":I
    .end local v23    # "stepCount":[I
    .end local v24    # "stepType":[I
    .end local v26    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    :goto_2
    move/from16 v3, v25

    goto/16 :goto_0

    .end local v25    # "tmpNext":I
    .restart local v26    # "tmpNext":I
    :cond_5
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_TYPE_VALUE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move/from16 v25, v26

    .end local v26    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    goto :goto_2
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 6
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    .local v0, "result":Z
    const/16 v1, 0x3a

    if-ne p1, v1, :cond_0

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mStepLevelType:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Step Level Type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mStepLevelType:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    :goto_0
    return v0

    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_0
    const/16 v1, 0x3b

    if-ne p1, v1, :cond_1

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mDuration:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mDuration:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    const/16 v1, 0x17

    const/16 v2, 0x2c

    const/4 v3, 0x4

    iget v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mDuration:I

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto :goto_0

    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
