.class Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;
.super Ljava/lang/Object;
.source "PedoCalibrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$1;,
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;
    }
.end annotation


# static fields
.field private static final MEAS_INVALID:B = 0x8t

.field private static final MEAS_IS_FULL:B = 0x4t

.field private static final MEAS_PEDOMETER:B = 0x1t

.field private static final MEAS_POSITION:B = 0x2t

.field static final STATE_COLLECT_MEASURE:I = 0x4

.field static final STATE_IDLE:I = 0x0

.field static final STATE_INITIALIZING:I = 0x1

.field static final STATE_SF_CALCULATED:I = 0x5

.field static final STATE_WAIT_FOR_ENABLE:I = 0x2

.field static final STATE_WAIT_FOR_GPS:I = 0x3


# instance fields
.field private final arrStepLength:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private bNeedData:Z

.field private deltaTime:J

.field private final mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

.field private mPedoCalibListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

.field private mStatus:I

.field private mTotalDistance:D


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mStatus:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mTotalDistance:D

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->arrStepLength:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->deltaTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->bNeedData:Z

    return-void
.end method

.method private debugPedoCalibrator(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalibListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalibListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;->debugPedoCalib(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private pedoCalCalculationSF()V
    .locals 10

    .prologue
    const-string v3, "PCCalculationSF"

    invoke-direct {p0, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .local v0, "sf":D
    const/4 v2, 0x0

    .local v2, "sfbin":I
    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v3, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLength:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v3, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumGpsDistance:F

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v4, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLength:F

    div-float/2addr v3, v4

    float-to-double v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PC G accum SL :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v4, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumGpsDistance:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", P accum SL :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v4, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLength:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-byte v3, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mRefWalkOrRun:B

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    const-wide v4, 0x3ff3333333333333L    # 1.2

    cmpl-double v3, v0, v4

    if-lez v3, :cond_0

    const-string v3, "PC E - RSF is over MAX."

    invoke-direct {p0, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    const-wide v0, 0x3ff3333333333333L    # 1.2

    :cond_0
    const-wide v4, 0x3fe999999999999aL    # 0.8

    cmpg-double v3, v0, v4

    if-gez v3, :cond_1

    const-string v3, "PC E - RSF is less MIN."

    invoke-direct {p0, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    const-wide v0, 0x3fe999999999999aL    # 0.8

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v3, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mFilterWF:F

    const/high16 v4, 0x3fc00000    # 1.5f

    sub-float/2addr v3, v4

    float-to-double v4, v3

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    add-int/lit8 v2, v3, 0x4

    :goto_0
    if-gez v2, :cond_9

    const/4 v2, 0x0

    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PC sf :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",sfbin :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v3, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSFArray:[D

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v4, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSFArray:[D

    aget-wide v4, v4, v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    aput-wide v4, v3, v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalibListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v4, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSFArray:[D

    aget-wide v4, v4, v2

    invoke-interface {v3, v4, v5, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;->onPedoCalibCalcCompleted(DI)V

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3

    const/4 v3, 0x7

    if-eq v2, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v3, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSFArray:[D

    add-int/lit8 v4, v2, -0x1

    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v5, v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSFArray:[D

    add-int/lit8 v6, v2, -0x1

    aget-wide v6, v5, v6

    const-wide v8, 0x3fe6666660000000L    # 0.699999988079071

    mul-double/2addr v6, v8

    const-wide v8, 0x3fd3333340000000L    # 0.30000001192092896

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    aput-wide v6, v3, v4

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalibListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v4, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSFArray:[D

    add-int/lit8 v5, v2, -0x1

    aget-wide v4, v4, v5

    add-int/lit8 v6, v2, -0x1

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;->onPedoCalibCalcCompleted(DI)V

    :cond_3
    const/16 v3, 0x13

    if-ge v2, v3, :cond_4

    const/4 v3, 0x6

    if-eq v2, v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v3, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSFArray:[D

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v5, v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSFArray:[D

    add-int/lit8 v6, v2, 0x1

    aget-wide v6, v5, v6

    const-wide v8, 0x3fe6666660000000L    # 0.699999988079071

    mul-double/2addr v6, v8

    const-wide v8, 0x3fd3333340000000L    # 0.30000001192092896

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    aput-wide v6, v3, v4

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalibListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v4, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSFArray:[D

    add-int/lit8 v5, v2, 0x1

    aget-wide v4, v4, v5

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;->onPedoCalibCalcCompleted(DI)V

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSystemTime:J

    :goto_2
    return-void

    :cond_5
    const-string v3, "PC E - AccumSL is zero"

    invoke-direct {p0, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-wide v4, 0x3ff3333333333333L    # 1.2

    cmpl-double v3, v0, v4

    if-gtz v3, :cond_7

    const-wide v4, 0x3fe999999999999aL    # 0.8

    cmpg-double v3, v0, v4

    if-gez v3, :cond_8

    :cond_7
    const-string v3, "PC E - WSF is over MAX or less MIN."

    invoke-direct {p0, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v3, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mFilterWF:F

    const/high16 v4, 0x3fc00000    # 1.5f

    sub-float/2addr v3, v4

    float-to-double v4, v3

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    mul-double/2addr v4, v6

    double-to-int v2, v4

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x14

    if-lt v2, v3, :cond_2

    const/16 v2, 0x13

    goto/16 :goto_1
.end method

.method private pedoCalCheckGPSNoiseValid()Z
    .locals 6

    .prologue
    const-wide v4, 0x3fe3333333333333L    # 0.6

    const-string v0, "PCCheckGNValid"

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsHeadDiffSum:D

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumGpsDistance:F

    float-to-double v2, v2

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PC E GNoise :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-wide v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsHeadDiffSum:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v1, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumGpsDistance:F

    float-to-double v2, v1

    mul-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private pedoCalCheckGPSValid()Z
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const-string v5, "PCCheckGValid"

    invoke-direct {p0, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v5, v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mPedoArrayStepLength:[D

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v6, v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mArrayIndex:I

    add-int/lit8 v6, v6, -0x1

    aget-wide v6, v5, v6

    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v5, v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsArrayDistance:[D

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mArrayIndex:I

    add-int/lit8 v8, v8, -0x1

    aget-wide v8, v5, v8

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .local v2, "diff":D
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PC D between P and G : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalSumDoubleArrayData()[D

    move-result-object v0

    .local v0, "arrSum":[D
    aget-wide v6, v0, v1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v6, v8

    if-gez v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PC E - Not enough MDW : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v6, v0, v1

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    aget-wide v6, v0, v4

    aget-wide v8, v0, v1

    const-wide v10, 0x3ff6666666666666L    # 1.4

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    add-double/2addr v8, v10

    cmpl-double v5, v6, v8

    if-gtz v5, :cond_1

    aget-wide v6, v0, v4

    aget-wide v8, v0, v1

    const-wide v10, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v8, v10

    cmpg-double v5, v6, v8

    if-gez v5, :cond_2

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PC E - PSL in 5 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, v0, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", GD in 5:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, v0, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_0
.end method

.method private pedoCalCheckMeasUpdated()B
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    .local v4, "mask":B
    const-wide/16 v2, 0x0

    .local v2, "dist":D
    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-boolean v6, v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mPedoUpdated:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-byte v6, v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkOrRun:B

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    const-string v6, "PCCheckMeasUpdated Error : ETC State included"

    invoke-direct {p0, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    const/16 v4, 0x8

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-wide v6, v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSystemTime:J

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-wide v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLastRequestTime:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x1d4c0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    const-string v6, "PCCheckMeasUpdated Error : G TimeOut occurs"

    invoke-direct {p0, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    const/16 v4, 0x8

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput-boolean v10, v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mPedoUpdated:Z

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-boolean v6, v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsUpdated:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v6, v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldLLH:[D

    aget-wide v6, v6, v10

    cmpl-double v6, v6, v12

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v6, v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldLLH:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    cmpl-double v6, v6, v12

    if-nez v6, :cond_4

    const-wide/16 v2, 0x0

    :cond_2
    :goto_1
    return v4

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v7, v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLength:F

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mStepLength:F

    add-float/2addr v7, v8

    iput v7, v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLength:F

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v7, v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepCnt:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepCnt:I

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->arrStepLength:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;>;"
    const/4 v5, 0x0

    .local v5, "removeIndex":I
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;

    .local v0, "data":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;
    iget-wide v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->deltaTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v7, v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLengthPer1Sec:F

    iget v8, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;->stepLength:F

    add-float/2addr v7, v8

    iput v7, v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLengthPer1Sec:F

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    iget-wide v6, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;->timestamp:J

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-wide v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsUpdateTimeStamp:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v7, v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLengthPer1Sec:F

    iget v8, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;->stepLength:F

    add-float/2addr v7, v8

    iput v7, v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLengthPer1Sec:F

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v0    # "data":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;
    :cond_6
    :goto_3
    if-lez v5, :cond_7

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->arrStepLength:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput-boolean v10, v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsUpdated:Z

    or-int/lit8 v6, v4, 0x2

    int-to-byte v4, v6

    iget v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mStatus:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalObtainTwoPointDistance()D

    move-result-wide v2

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v7, v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumGpsDistance:F

    float-to-double v8, v7

    add-double/2addr v8, v2

    double-to-float v7, v8

    iput v7, v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumGpsDistance:F

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v7, v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsAccumCnt:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsAccumCnt:I

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v6, v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLengthPer1Sec:F

    float-to-double v6, v6

    invoke-direct {p0, v2, v3, v6, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalStockDoubleArrayData(DD)V

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    const v7, 0x3c23d70a    # 0.01f

    iput v7, v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLengthPer1Sec:F

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v6, v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsAccumCnt:I

    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v7, v7, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mMaxMeas:I

    if-le v6, v7, :cond_2

    const-string v6, "PC Total GC is full"

    invoke-direct {p0, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    or-int/lit8 v6, v4, 0x4

    int-to-byte v4, v6

    goto/16 :goto_1
.end method

.method private pedoCalCheckPedoValid()Z
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "PCCheckPValid"

    invoke-direct {p0, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v5, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mFilterWF:F

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v6, v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkingFreq:F

    add-float/2addr v5, v6

    iput v5, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mFilterWF:F

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v5, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mFilterWF:F

    float-to-double v6, v5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    double-to-float v5, v6

    iput v5, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mFilterWF:F

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WF = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v5, v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mFilterWF:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v4, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkingFreq:F

    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v5, v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mFilterWF:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    .local v0, "diff":D
    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-byte v4, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mRefWalkOrRun:B

    if-ne v4, v10, :cond_1

    const-wide v4, 0x3fd3333333333333L    # 0.3

    cmpl-double v4, v0, v4

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-byte v4, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkOrRun:B

    if-eq v4, v10, :cond_3

    :cond_0
    const-string v3, "PC E - P is 1st case"

    invoke-direct {p0, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-byte v4, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mRefWalkOrRun:B

    if-ne v4, v3, :cond_3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v4

    if-gtz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-byte v4, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkOrRun:B

    if-eq v4, v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PC E - P is 2nd case. diff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WOrR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-byte v4, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkOrRun:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method private pedoCalInitializationArrayBuffer()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    const/4 v2, 0x0

    iput v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mArrayIndex:I

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v1, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsArrayDistance:[D

    aput-wide v4, v1, v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v1, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mPedoArrayStepLength:[D

    aput-wide v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private pedoCalLLHToXYZ([D)[D
    .locals 18
    .param p1, "llh"    # [D

    .prologue
    const/4 v14, 0x0

    aget-wide v14, p1, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .local v4, "sinPhi":D
    const/4 v14, 0x1

    aget-wide v14, p1, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .local v2, "sinLam":D
    const/4 v14, 0x1

    aget-wide v14, p1, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .local v0, "cosLam":D
    const/4 v14, 0x0

    aget-wide v14, p1, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->tan(D)D

    move-result-wide v14

    const/16 v16, 0x0

    aget-wide v16, p1, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->tan(D)D

    move-result-wide v16

    mul-double v6, v14, v16

    .local v6, "tan2Phi":D
    const-wide v8, 0x3fefc928de1a120cL    # 0.9933056199957391

    .local v8, "tmp":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    mul-double v16, v8, v6

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .local v12, "tmpDen":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide v16, 0x3f7b6b90f2f6fa00L    # 0.006694380004260925

    mul-double v16, v16, v4

    mul-double v16, v16, v4

    sub-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .local v10, "tmp2":D
    const/4 v14, 0x3

    new-array v14, v14, [D

    const/4 v15, 0x0

    const-wide v16, 0x415854a640000000L    # 6378137.0

    mul-double v16, v16, v0

    div-double v16, v16, v12

    aput-wide v16, v14, v15

    const/4 v15, 0x1

    const-wide v16, 0x415854a640000000L    # 6378137.0

    mul-double v16, v16, v2

    div-double v16, v16, v12

    aput-wide v16, v14, v15

    const/4 v15, 0x2

    const-wide v16, 0x415854a640000000L    # 6378137.0

    mul-double v16, v16, v8

    mul-double v16, v16, v4

    div-double v16, v16, v10

    aput-wide v16, v14, v15

    return-object v14
.end method

.method private pedoCalObtainTwoPointDistance()D
    .locals 24

    .prologue
    const-wide/16 v8, 0x0

    .local v8, "distance":D
    const-wide/16 v10, 0x0

    .local v10, "headDiff":D
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v6, v0, [D

    .local v6, "arrOrgllh":[D
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v4, v0, [D

    .local v4, "arrCurllh":[D
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldLLH:[D

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-wide v20, v19, v20

    const-wide v22, 0x3f91df467707c94dL    # 0.01745329

    mul-double v20, v20, v22

    aput-wide v20, v6, v18

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldLLH:[D

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-wide v20, v19, v20

    const-wide v22, 0x3f91df467707c94dL    # 0.01745329

    mul-double v20, v20, v22

    aput-wide v20, v6, v18

    const/16 v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLLH:[D

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget-wide v20, v19, v20

    aput-wide v20, v6, v18

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLLH:[D

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-wide v20, v19, v20

    const-wide v22, 0x3f91df467707c94dL    # 0.01745329

    mul-double v20, v20, v22

    aput-wide v20, v4, v18

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLLH:[D

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-wide v20, v19, v20

    const-wide v22, 0x3f91df467707c94dL    # 0.01745329

    mul-double v20, v20, v22

    aput-wide v20, v4, v18

    const/16 v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLLH:[D

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget-wide v20, v19, v20

    aput-wide v20, v4, v18

    const/16 v18, 0x0

    aget-wide v18, v4, v18

    const/16 v20, 0x0

    aget-wide v20, v6, v20

    cmpl-double v18, v18, v20

    if-nez v18, :cond_0

    const/16 v18, 0x1

    aget-wide v18, v4, v18

    const/16 v20, 0x1

    aget-wide v20, v6, v20

    cmpl-double v18, v18, v20

    if-eqz v18, :cond_1

    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalLLHToXYZ([D)[D

    move-result-object v7

    .local v7, "arrOrgxyz":[D
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalLLHToXYZ([D)[D

    move-result-object v5

    .local v5, "arrCurxyz":[D
    const/16 v18, 0x0

    aget-wide v18, v7, v18

    const/16 v20, 0x0

    aget-wide v20, v5, v20

    sub-double v12, v18, v20

    .local v12, "x":D
    const/16 v18, 0x1

    aget-wide v18, v7, v18

    const/16 v20, 0x1

    aget-wide v20, v5, v20

    sub-double v14, v18, v20

    .local v14, "y":D
    const/16 v18, 0x2

    aget-wide v18, v7, v18

    const/16 v20, 0x2

    aget-wide v20, v5, v20

    sub-double v16, v18, v20

    .local v16, "z":D
    mul-double v18, v12, v12

    mul-double v20, v14, v14

    add-double v18, v18, v20

    mul-double v20, v16, v16

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldVec1Hz:[D

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-wide v18, v18, v19

    sub-double v18, v12, v18

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldVec1Hz:[D

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-wide v20, v20, v21

    sub-double v20, v14, v20

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    add-double v18, v18, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldVec1Hz:[D

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-wide v20, v20, v21

    sub-double v20, v16, v20

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    add-double v10, v18, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsHeadDiffSum:D

    move-wide/from16 v20, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsHeadDiffSum:D

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "HD Sum : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsHeadDiffSum:D

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldVec1Hz:[D

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-wide v12, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldVec1Hz:[D

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aput-wide v14, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldVec1Hz:[D

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aput-wide v16, v18, v19

    .end local v5    # "arrCurxyz":[D
    .end local v7    # "arrOrgxyz":[D
    .end local v12    # "x":D
    .end local v14    # "y":D
    .end local v16    # "z":D
    :cond_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "PC D = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    return-wide v8
.end method

.method private pedoCalStart()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-wide v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSystemTime:J

    iput-wide v2, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLastRequestTime:J

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mStatus:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->bNeedData:Z

    return-void
.end method

.method private pedoCalStateRecvGPS()I
    .locals 5

    .prologue
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mStatus:I

    .local v1, "ret":I
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalCheckMeasUpdated()B

    move-result v0

    .local v0, "mask":B
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    const-string v3, "PC E - ETC state included"

    invoke-direct {p0, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v3, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsAccumCnt:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PC GAccumCnt :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v4, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsAccumCnt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    move v2, v1

    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_1
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalCheckPedoValid()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalCheckGPSValid()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalCheckGPSNoiseValid()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalCalculationSF()V

    :cond_4
    const/4 v1, 0x1

    :cond_5
    move v2, v1

    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method private pedoCalStateReqGPS()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x3c23d70a    # 0.01f

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mStatus:I

    .local v1, "ret":I
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalCheckMeasUpdated()B

    move-result v0

    .local v0, "mask":B
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsUsedSat:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsAccuracy:F

    const/high16 v3, 0x41a00000    # 20.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkingFreq:F

    const/high16 v3, 0x3fc00000    # 1.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkingFreq:F

    const/high16 v3, 0x40900000    # 4.5f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSameStepTypeStayCnt:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v3, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkingFreq:F

    iput v3, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mRefWalkingFreq:F

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-byte v3, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkOrRun:B

    iput-byte v3, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mRefWalkOrRun:B

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput v7, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsAccumCnt:I

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput v6, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumGpsDistance:F

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsHeadDiffSum:D

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput v6, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLength:F

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput v6, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLengthPer1Sec:F

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput v7, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepCnt:I

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v3, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkingFreq:F

    iput v3, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mFilterWF:F

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalInitializationArrayBuffer()V

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput v7, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSameStepTypeStayCnt:I

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-byte v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mRefWalkOrRun:B

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    const/16 v3, 0x5a

    iput v3, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mMaxMeas:I

    :goto_0
    const/4 v1, 0x4

    :cond_0
    :goto_1
    return v1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    const/16 v3, 0x3c

    iput v3, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mMaxMeas:I

    goto :goto_0

    :cond_2
    and-int/lit8 v2, v0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    const-string v2, "PC E - MEAS_INVALID"

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_1
.end method

.method private pedoCalStateWait()Z
    .locals 6

    .prologue
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-wide v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSystemTime:J

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-wide v4, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSleepStartTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x13880

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .local v0, "result":Z
    :goto_0
    return v0

    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pedoCalStockDoubleArrayData(DD)V
    .locals 3
    .param p1, "distance"    # D
    .param p3, "stepLength"    # D

    .prologue
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mArrayIndex:I

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mArrayIndex:I

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsArrayDistance:[D

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v1, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mArrayIndex:I

    aput-wide p1, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mPedoArrayStepLength:[D

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v1, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mArrayIndex:I

    aput-wide p3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v1, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mArrayIndex:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PC CAI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v1, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mArrayIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",D ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",SL = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mArrayIndex:I

    goto :goto_0
.end method

.method private pedoCalSumDoubleArrayData()[D
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .local v2, "sum1":D
    const-wide/16 v4, 0x0

    .local v4, "sum2":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v1, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mPedoArrayStepLength:[D

    aget-wide v6, v1, v0

    add-double/2addr v2, v6

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v1, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsArrayDistance:[D

    aget-wide v6, v1, v0

    add-double/2addr v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [D

    const/4 v6, 0x0

    aput-wide v2, v1, v6

    const/4 v6, 0x1

    aput-wide v4, v1, v6

    return-object v1
.end method


# virtual methods
.method countSameStepType(B)V
    .locals 2
    .param p1, "stepType"    # B

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-byte v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkOrRun:B

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v1, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSameStepTypeStayCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSameStepTypeStayCnt:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSameStepTypeStayCnt:I

    goto :goto_0
.end method

.method onGpsUpdate(IFDDDJ)V
    .locals 5
    .param p1, "nUsedSat"    # I
    .param p2, "fAcc"    # F
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "timestamp"    # J

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->bNeedData:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLastRequestTime:J

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput-wide p9, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsUpdateTimeStamp:J

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-wide v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLastRequestTime:J

    sub-long v0, p9, v0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->deltaTime:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnGUpd delta: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->deltaTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput p1, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsUsedSat:I

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput p2, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsAccuracy:F

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsUpdated:Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldLLH:[D

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLLH:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldLLH:[D

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLLH:[D

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldLLH:[D

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLLH:[D

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLLH:[D

    const/4 v1, 0x0

    aput-wide p3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLLH:[D

    const/4 v1, 0x1

    aput-wide p5, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLLH:[D

    const/4 v1, 0x2

    aput-wide p7, v0, v1

    :cond_0
    return-void
.end method

.method onStepInfoUpdate(IIIDDI)V
    .locals 12
    .param p1, "nStepCnt"    # I
    .param p2, "nWalkCnt"    # I
    .param p3, "nRunCnt"    # I
    .param p4, "dStepLength"    # D
    .param p6, "dStepSpeed"    # D
    .param p8, "nUpDownStepCnt"    # I

    .prologue
    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mStepCount:I

    if-ge v8, p1, :cond_c

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkStepCnt:I

    if-ge v8, p2, :cond_6

    const-string v8, "W"

    invoke-direct {p0, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->countSameStepType(B)V

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    const/4 v9, 0x1

    iput-byte v9, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkOrRun:B

    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput p2, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkStepCnt:I

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput p3, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mRunStepCnt:I

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move/from16 v0, p8

    iput v0, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mUpDownStepCnt:I

    iget-wide v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mTotalDistance:D

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-wide/from16 v0, p4

    double-to-float v9, v0

    iput v9, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mStepLength:F

    :goto_1
    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mStepLength:F

    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v9, v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mStepCount:I

    sub-int v9, p1, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    float-to-double v2, v8

    .local v2, "avgStepLen":D
    move-wide/from16 v0, p4

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mTotalDistance:D

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    const-wide v10, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v10, v2

    div-double v10, p6, v10

    double-to-float v9, v10

    iput v9, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkingFreq:F

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput p1, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mStepCount:I

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .local v6, "sf":D
    const/4 v5, 0x0

    .local v5, "sf_bin":I
    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkingFreq:F

    const/high16 v9, 0x3fc00000    # 1.5f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkingFreq:F

    const/high16 v9, 0x40900000    # 4.5f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-byte v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkOrRun:B

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkingFreq:F

    const/high16 v9, 0x3fc00000    # 1.5f

    sub-float/2addr v8, v9

    float-to-double v8, v8

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    mul-double/2addr v8, v10

    double-to-int v5, v8

    :cond_1
    :goto_2
    if-gez v5, :cond_a

    const/4 v5, 0x0

    :cond_2
    :goto_3
    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSFArray:[D

    aget-wide v6, v8, v5

    :cond_3
    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v9, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mStepLength:F

    float-to-double v10, v9

    div-double/2addr v10, v6

    double-to-float v9, v10

    iput v9, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mStepLength:F

    iget-boolean v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->bNeedData:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    iget v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mStatus:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4

    new-instance v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;

    const/4 v8, 0x0

    invoke-direct {v4, p0, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$1;)V

    .local v4, "data":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;
    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mStepLength:F

    iput v8, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;->stepLength:F

    iget-wide v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->deltaTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_b

    const-wide/16 v8, 0x0

    iput-wide v8, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;->timestamp:J

    :goto_4
    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->arrStepLength:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v4    # "data":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;
    :cond_4
    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mPedoUpdated:Z

    .end local v2    # "avgStepLen":D
    .end local v5    # "sf_bin":I
    .end local v6    # "sf":D
    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mRunStepCnt:I

    if-ge v8, p3, :cond_7

    const-string v8, "R"

    invoke-direct {p0, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->countSameStepType(B)V

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    const/4 v9, 0x2

    iput-byte v9, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkOrRun:B

    goto/16 :goto_0

    :cond_7
    const-string v8, "IM"

    invoke-direct {p0, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mUpDownStepCnt:I

    move/from16 v0, p8

    if-ge v8, v0, :cond_0

    const-string v8, "E"

    invoke-direct {p0, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    const/4 v9, 0x3

    iput-byte v9, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkOrRun:B

    goto/16 :goto_0

    :cond_8
    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-wide v10, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mTotalDistance:D

    sub-double v10, p4, v10

    double-to-float v9, v10

    iput v9, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mStepLength:F

    goto/16 :goto_1

    .restart local v2    # "avgStepLen":D
    .restart local v5    # "sf_bin":I
    .restart local v6    # "sf":D
    :cond_9
    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-byte v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkOrRun:B

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkingFreq:F

    const/high16 v9, 0x3fc00000    # 1.5f

    sub-float/2addr v8, v9

    float-to-double v8, v8

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/lit8 v5, v8, 0x4

    goto/16 :goto_2

    :cond_a
    const/16 v8, 0x14

    if-lt v5, v8, :cond_2

    const/16 v5, 0x13

    goto/16 :goto_3

    .restart local v4    # "data":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->deltaTime:J

    add-long/2addr v8, v10

    iput-wide v8, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;->timestamp:J

    goto :goto_4

    .end local v2    # "avgStepLen":D
    .end local v4    # "data":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;
    .end local v5    # "sf_bin":I
    .end local v6    # "sf":D
    :cond_c
    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mStepCount:I

    if-le v8, p1, :cond_5

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    const/4 v9, 0x3

    iput-byte v9, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkOrRun:B

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput p2, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkStepCnt:I

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput p3, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mRunStepCnt:I

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput p1, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mStepCount:I

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move/from16 v0, p8

    iput v0, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mUpDownStepCnt:I

    move-wide/from16 v0, p4

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mTotalDistance:D

    goto/16 :goto_5
.end method

.method public pedoCalInitialize()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->initialize()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-wide v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSystemTime:J

    iput-wide v2, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSleepStartTime:J

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->bNeedData:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->deltaTime:J

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->arrStepLength:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public pedoCalStateMachine()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSystemTime:J

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalibListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalibListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mStatus:I

    invoke-interface {v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;->onPedoCalibStatus(I)V

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mStatus:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mStatus:I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "PCStateMachine : STATE_IDLE"

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "PCStateMachine : STATE_INITIALIZING"

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalInitialize()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mStatus:I

    goto :goto_0

    :pswitch_2
    const-string v0, "PCCalStateMachine : STATE_WAIT_FOR_EN"

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalStateWait()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalStart()V

    goto :goto_0

    :pswitch_3
    const-string v0, "PCStateMachine : STATE_WAIT_FOR_G"

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalStateReqGPS()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mStatus:I

    goto :goto_0

    :pswitch_4
    const-string v0, "PCStateMachine : STATE_COLLECT_MEAS"

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalStateRecvGPS()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mStatus:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public pedoSetDefaultStateMachine()V
    .locals 1

    .prologue
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mStatus:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->bNeedData:Z

    return-void
.end method

.method public pedoSetScaleFactorArray([D)V
    .locals 4
    .param p1, "arrSF"    # [D

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v1, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSFArray:[D

    aget-wide v2, p1, v0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method registerListener(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalibListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

    return-void
.end method

.method unRegisterListener()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalibListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalibListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

    :cond_0
    return-void
.end method
