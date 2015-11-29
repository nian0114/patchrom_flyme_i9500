.class public Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;
.super Ljava/lang/Object;
.source "LppAlgorithm.java"


# instance fields
.field APDRMAXNUMBER:I

.field Cnt_inx:I

.field CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field Flag_FineLocAcquired:Z

.field Flag_First_loc:Z

.field Flag_Loc_init:Z

.field Flag_PositionFilterInit:Z

.field LocFromLocationManager:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field final MAX_MOVEMENT_SPEED_VEHICLE:D

.field final MAX_MOVEMENT_SPEED_WALK:D

.field final MIN_MOVEMENT_DISTANCE:D

.field final MIN_UPDTAE_TIME:D

.field OldGPSLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field Origin_LLH:[D

.field PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

.field Prev_StateTime:D

.field ProcessNoisePerSecondVehicle:[D

.field ProcessNoisePerSecondWalk:[D

.field final STATE_STATIONARY:I

.field final STATE_UNKNWON:I

.field final STATE_VEHICLE:I

.field final STATE_WALK_HANDFIX:I

.field final STATE_WALK_JACKET:I

.field final STATE_WALK_PANTS:I

.field final STATE_WALK_SWING:I

.field TAG:Ljava/lang/String;

.field final _DATAFROMAPDR:I

.field final _DATAFROMGPS:I

.field final _DATAFROMNETWORK:I

.field flag_AlgorithmOn:Z

.field lastUpdatedTime:J

.field public mAPDRResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;",
            ">;"
        }
    .end annotation
.end field

.field public mAPDRStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;",
            ">;"
        }
    .end annotation
.end field

.field mFlagIsGPSBatchMode:Z

.field mFlagLocInputReady:Z

.field mFlagStayingArea:Z

.field private final mInputPosBuf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputPosBufSync:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;",
            ">;"
        }
    .end annotation
.end field

.field mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

.field private final mLPPPosition:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;",
            ">;"
        }
    .end annotation
.end field

.field private final mSendLPPPos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LppAlgorithm"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LocFromLocationManager:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagIsGPSBatchMode:Z

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagStayingArea:Z

    iput-boolean v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->_DATAFROMAPDR:I

    iput v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->_DATAFROMGPS:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->_DATAFROMNETWORK:I

    const-wide v0, 0x3fa1eb851eb851ecL    # 0.035

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MAX_MOVEMENT_SPEED_VEHICLE:D

    const-wide v0, 0x3f53a92a30553261L    # 0.0012

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MAX_MOVEMENT_SPEED_WALK:D

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MIN_MOVEMENT_DISTANCE:D

    const-wide v0, 0x40b3880000000000L    # 5000.0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MIN_UPDTAE_TIME:D

    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Cnt_inx:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->APDRMAXNUMBER:I

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_Loc_init:Z

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_First_loc:Z

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-direct {v0, v3, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastUpdatedTime:J

    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_UNKNWON:I

    iput v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_STATIONARY:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_VEHICLE:I

    const/16 v0, 0x15

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_WALK_HANDFIX:I

    const/16 v0, 0x16

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_WALK_JACKET:I

    const/16 v0, 0x17

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_WALK_SWING:I

    const/16 v0, 0x18

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_WALK_PANTS:I

    new-array v0, v3, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Prev_StateTime:D

    new-array v0, v3, [D

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondVehicle:[D

    new-array v0, v3, [D

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondWalk:[D

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_PositionFilterInit:Z

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x4059000000000000L    # 100.0
    .end array-data

    :array_1
    .array-data 8
        0x4024000000000000L    # 10.0
        0x4024000000000000L    # 10.0
        0x3fe0000000000000L    # 0.5
    .end array-data

    :array_2
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3fe0000000000000L    # 0.5
    .end array-data
.end method

.method private LppAlgorithmRun()V
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v0, 0x4

    .local v0, "STATE_Algorithm":I
    const/4 v2, 0x0

    .local v2, "inx":I
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget v7, v7, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    if-ne v7, v11, :cond_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sparse-switch v0, :sswitch_data_0

    :goto_1
    const/4 v5, 0x0

    .local v5, "inxTest":I
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v5    # "inxTest":I
    :sswitch_0
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v10, "Moving status - Stationary"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->estimateSinglePoint()V

    goto :goto_1

    :sswitch_1
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v10, "Moving status - Vehicle"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->estimateSinglePoint()V

    goto :goto_1

    :sswitch_2
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v10, "Moving status - Walking, handfix"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->estimateTraj()V

    goto :goto_1

    :sswitch_3
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v10, "Moving status - Walking, in jacket or bag"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->estimateTraj()V

    goto :goto_1

    :sswitch_4
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v10, "Moving status - Walking, hand swing"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->estimateTraj()V

    goto :goto_1

    :sswitch_5
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v10, "Moving status - Walking, in pants"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->estimateSinglePoint()V

    goto :goto_1

    .restart local v5    # "inxTest":I
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v10, "Deliver Data check()"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v7, v11, :cond_4

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v10, "LppAlgorithmRun() unkwon error - [mLPPPosition.size() < 1]"

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    return-void

    :cond_4
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v10, "Deliver Data Ok()"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .local v6, "sendAll":Z
    if-ne v0, v11, :cond_5

    const/4 v6, 0x1

    :goto_4
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "LppAlgorithm - Send All flag : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    .local v1, "index":I
    if-eqz v6, :cond_8

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    iget-object v10, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-interface {v7, v10}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;->onUpdateLPPtraj(Ljava/util/ArrayList;)V

    const/4 v3, 0x0

    .local v3, "inx2":I
    :goto_5
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LppAlgorithm - PosOut => Time : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " Pos : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v7

    invoke-virtual {v7}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " , "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLatitude()D

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " , "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLongitude()D

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " , "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAltitude()D

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " , "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .end local v1    # "index":I
    .end local v3    # "inx2":I
    :cond_5
    iget-boolean v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagStayingArea:Z

    if-eqz v7, :cond_6

    const/4 v6, 0x1

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagStayingArea:Z

    goto/16 :goto_4

    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_4

    .restart local v1    # "index":I
    .restart local v3    # "inx2":I
    :cond_7
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    .end local v3    # "inx2":I
    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "inxOld":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_6
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_a

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v10

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v12

    sub-long v8, v10, v12

    .local v8, "timediff":J
    const-wide/32 v10, 0x124f80

    cmp-long v7, v8, v10

    if-lez v7, :cond_9

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "inxOld Test size() before - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "inxOld Test size() after - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    iget-object v10, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    new-instance v11, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v11, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .end local v8    # "timediff":J
    :cond_a
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mLPPPosition Test size() before - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_7
    if-ltz v2, :cond_b

    iget-object v10, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_b
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mLPPPosition Test size() after - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    iget-object v10, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    invoke-interface {v7, v10}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;->onUpdateLPPtraj(Ljava/util/ArrayList;)V

    const/4 v3, 0x0

    .restart local v3    # "inx2":I
    :goto_8
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LppAlgorithm - PosOut => Time : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " Pos : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v7

    invoke-virtual {v7}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " , "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLatitude()D

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " , "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLongitude()D

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " , "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAltitude()D

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " , "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x18 -> :sswitch_5
    .end sparse-switch
.end method

.method private PositionFiltering(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    .locals 24
    .param p1, "lastLoc"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .prologue
    new-instance v3, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    .local v3, "result":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    const/4 v4, 0x3

    new-array v0, v4, [D

    move-object/from16 v22, v0

    .local v22, "resultENU":[D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v6

    aput-wide v6, v22, v4

    const/4 v4, 0x1

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v6

    aput-wide v6, v22, v4

    const/4 v4, 0x2

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosUpLocal()D

    move-result-wide v6

    aput-wide v6, v22, v4

    const/4 v4, 0x0

    aget-wide v4, v22, v4

    const/4 v6, 0x0

    aget-wide v6, v22, v6

    mul-double/2addr v4, v6

    const/4 v6, 0x1

    aget-wide v6, v22, v6

    const/4 v8, 0x1

    aget-wide v8, v22, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const/4 v6, 0x2

    aget-wide v6, v22, v6

    const/4 v8, 0x2

    aget-wide v8, v22, v8

    mul-double/2addr v6, v8

    add-double v10, v4, v6

    .local v10, "Dist":D
    const-wide v4, 0x41d502f900000000L    # 1.410065408E9

    cmpl-double v4, v10, v4

    if-lez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLatitude()D

    move-result-wide v6

    aput-wide v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v5, 0x1

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLongitude()D

    move-result-wide v6

    aput-wide v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v5, 0x2

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAltitude()D

    move-result-wide v6

    aput-wide v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PositionFilteringInit()V

    const/4 v4, 0x3

    new-array v0, v4, [D

    move-object/from16 v21, v0

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v6

    aput-wide v6, v21, v4

    const/4 v4, 0x1

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v6

    aput-wide v6, v21, v4

    const/4 v4, 0x2

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosUpLocal()D

    move-result-wide v6

    aput-wide v6, v21, v4

    .local v21, "mStateInit":[D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setInitialState([D)Z

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v4

    long-to-double v4, v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Prev_StateTime:D

    .end local v3    # "result":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    .end local v21    # "mStateInit":[D
    :goto_0
    return-object v3

    .restart local v3    # "result":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    :cond_0
    const/16 v17, 0x0

    .local v17, "inxTest":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    if-ge v0, v4, :cond_1

    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->getCurrentState()[D

    move-result-object v16

    .local v16, "currentest":[D
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v4

    long-to-double v4, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Prev_StateTime:D

    sub-double/2addr v4, v6

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v18, v4, v6

    .local v18, "delT":D
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v4

    long-to-double v4, v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Prev_StateTime:D

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getMovingStatus()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    const/4 v4, 0x3

    new-array v0, v4, [[D

    move-object/from16 v20, v0

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [D

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondWalk:[D

    const/4 v8, 0x0

    aget-wide v8, v7, v8

    mul-double v8, v8, v18

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    const/4 v6, 0x2

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    aput-object v5, v20, v4

    const/4 v4, 0x1

    const/4 v5, 0x3

    new-array v5, v5, [D

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondWalk:[D

    const/4 v8, 0x1

    aget-wide v8, v7, v8

    mul-double v8, v8, v18

    aput-wide v8, v5, v6

    const/4 v6, 0x2

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    aput-object v5, v20, v4

    const/4 v4, 0x2

    const/4 v5, 0x3

    new-array v5, v5, [D

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondWalk:[D

    const/4 v8, 0x2

    aget-wide v8, v7, v8

    mul-double v8, v8, v18

    aput-wide v8, v5, v6

    aput-object v5, v20, v4

    .local v20, "mProcessNoise":[[D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setProcessNoise([[D)Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v5, "PositionFiltering - Process noise error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_0

    .end local v20    # "mProcessNoise":[[D
    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getMovingStatus()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    const/4 v4, 0x3

    new-array v0, v4, [[D

    move-object/from16 v20, v0

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [D

    fill-array-data v5, :array_0

    aput-object v5, v20, v4

    const/4 v4, 0x1

    const/4 v5, 0x3

    new-array v5, v5, [D

    fill-array-data v5, :array_1

    aput-object v5, v20, v4

    const/4 v4, 0x2

    const/4 v5, 0x3

    new-array v5, v5, [D

    fill-array-data v5, :array_2

    aput-object v5, v20, v4

    .restart local v20    # "mProcessNoise":[[D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setProcessNoise([[D)Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v5, "PositionFiltering - Process noise error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->TimePropagation(D)Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v5, "PositionFiltering - TimePropagation error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_0

    .end local v20    # "mProcessNoise":[[D
    :cond_4
    const/16 v17, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    if-ge v0, v4, :cond_5

    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->getCurrentState()[D

    move-result-object v16

    const/4 v4, 0x3

    new-array v13, v4, [[D

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [D

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v8

    aput-wide v8, v5, v6

    aput-object v5, v13, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [D

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v8

    aput-wide v8, v5, v6

    aput-object v5, v13, v4

    const/4 v4, 0x2

    const/4 v5, 0x1

    new-array v5, v5, [D

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosUpLocal()D

    move-result-wide v8

    aput-wide v8, v5, v6

    aput-object v5, v13, v4

    .local v13, "Meas":[[D
    new-instance v23, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, v23

    invoke-direct {v0, v13}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[D)V

    .local v23, "z":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    const-string v5, "network"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x3

    new-array v14, v4, [[D

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [D

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    const/high16 v8, 0x41a00000    # 20.0f

    div-float/2addr v7, v8

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v8

    const/high16 v9, 0x41a00000    # 20.0f

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-double v8, v7

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    const/4 v6, 0x2

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    aput-object v5, v14, v4

    const/4 v4, 0x1

    const/4 v5, 0x3

    new-array v5, v5, [D

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    const/high16 v8, 0x41a00000    # 20.0f

    div-float/2addr v7, v8

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v8

    const/high16 v9, 0x41a00000    # 20.0f

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-double v8, v7

    aput-wide v8, v5, v6

    const/4 v6, 0x2

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    aput-object v5, v14, v4

    const/4 v4, 0x2

    const/4 v5, 0x3

    new-array v5, v5, [D

    fill-array-data v5, :array_3

    aput-object v5, v14, v4

    .local v14, "MeasNoise":[[D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v4, v14}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementNoise([[D)Z

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementUpdate(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Z

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v5, "PositionFiltering - MeasurementUpdate error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_0

    .end local v14    # "MeasNoise":[[D
    :cond_6
    const/4 v4, 0x3

    new-array v14, v4, [[D

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [D

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-double v8, v7

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    const/4 v6, 0x2

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    aput-object v5, v14, v4

    const/4 v4, 0x1

    const/4 v5, 0x3

    new-array v5, v5, [D

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-double v8, v7

    aput-wide v8, v5, v6

    const/4 v6, 0x2

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    aput-object v5, v14, v4

    const/4 v4, 0x2

    const/4 v5, 0x3

    new-array v5, v5, [D

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    const/high16 v8, 0x40a00000    # 5.0f

    mul-float/2addr v7, v8

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v8

    const/high16 v9, 0x40a00000    # 5.0f

    mul-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-double v8, v7

    aput-wide v8, v5, v6

    aput-object v5, v14, v4

    .restart local v14    # "MeasNoise":[[D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v4, v14}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementNoise([[D)Z

    goto/16 :goto_3

    .end local v14    # "MeasNoise":[[D
    :cond_7
    const/4 v4, 0x3

    new-array v14, v4, [[D

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [D

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-double v8, v7

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    const/4 v6, 0x2

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    aput-object v5, v14, v4

    const/4 v4, 0x1

    const/4 v5, 0x3

    new-array v5, v5, [D

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-double v8, v7

    aput-wide v8, v5, v6

    const/4 v6, 0x2

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    aput-object v5, v14, v4

    const/4 v4, 0x2

    const/4 v5, 0x3

    new-array v5, v5, [D

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    const/high16 v8, 0x41200000    # 10.0f

    mul-float/2addr v7, v8

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v8

    const/high16 v9, 0x41200000    # 10.0f

    mul-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-double v8, v7

    aput-wide v8, v5, v6

    aput-object v5, v14, v4

    .restart local v14    # "MeasNoise":[[D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v4, v14}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementNoise([[D)Z

    goto/16 :goto_3

    :cond_8
    const/16 v17, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    if-ge v0, v4, :cond_9

    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->getCurrentState()[D

    move-result-object v2

    .local v2, "ENU_updated":[D
    const/4 v4, 0x3

    new-array v15, v4, [D

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    const-wide v8, 0x400921fafc8b007aL    # 3.141592

    mul-double/2addr v6, v8

    aput-wide v6, v15, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v6, 0x1

    aget-wide v6, v5, v6

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    const-wide v8, 0x400921fafc8b007aL    # 3.141592

    mul-double/2addr v6, v8

    aput-wide v6, v15, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v6, 0x2

    aget-wide v6, v5, v6

    aput-wide v6, v15, v4

    .local v15, "Origin_LLH_radian":[D
    invoke-static {v2, v15}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->enu2llh([D[D)[D

    move-result-object v12

    .local v12, "LLH_updated":[D
    const/4 v4, 0x0

    aget-wide v4, v12, v4

    const-wide v6, 0x400921fafc8b007aL    # 3.141592

    div-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setLatitude(D)V

    const/4 v4, 0x1

    aget-wide v4, v12, v4

    const-wide v6, 0x400921fafc8b007aL    # 3.141592

    div-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setLongitude(D)V

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setAltitude(D)V

    goto/16 :goto_0

    nop

    :array_0
    .array-data 8
        0x406c200000000000L    # 225.0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x406c200000000000L    # 225.0
        0x4059000000000000L    # 100.0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
        0x4039000000000000L    # 25.0
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x0
        0x4197d78400000000L    # 1.0E8
    .end array-data
.end method

.method private PositionFilteringInit()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    const-string v5, "PositionFilteringInit()"

    invoke-direct {p0, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    iput-boolean v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_PositionFilterInit:Z

    iput-boolean v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    new-array v0, v6, [[D

    new-array v5, v6, [D

    fill-array-data v5, :array_0

    aput-object v5, v0, v7

    new-array v5, v6, [D

    fill-array-data v5, :array_1

    aput-object v5, v0, v8

    new-array v5, v6, [D

    fill-array-data v5, :array_2

    aput-object v5, v0, v9

    .local v0, "mCovMatrix":[[D
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setInitialCovariance([[D)Z

    new-array v1, v6, [[D

    new-array v5, v6, [D

    fill-array-data v5, :array_3

    aput-object v5, v1, v7

    new-array v5, v6, [D

    fill-array-data v5, :array_4

    aput-object v5, v1, v8

    new-array v5, v6, [D

    fill-array-data v5, :array_5

    aput-object v5, v1, v9

    .local v1, "mMeasMatrix":[[D
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementMatrix([[D)Z

    new-array v4, v6, [D

    fill-array-data v4, :array_6

    .local v4, "mStateInit":[D
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setInitialState([D)Z

    new-array v2, v6, [[D

    new-array v5, v6, [D

    fill-array-data v5, :array_7

    aput-object v5, v2, v7

    new-array v5, v6, [D

    fill-array-data v5, :array_8

    aput-object v5, v2, v8

    new-array v5, v6, [D

    fill-array-data v5, :array_9

    aput-object v5, v2, v9

    .local v2, "mMeasNoise":[[D
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementNoise([[D)Z

    new-array v3, v6, [[D

    new-array v5, v6, [D

    fill-array-data v5, :array_a

    aput-object v5, v3, v7

    new-array v5, v6, [D

    fill-array-data v5, :array_b

    aput-object v5, v3, v8

    new-array v5, v6, [D

    fill-array-data v5, :array_c

    aput-object v5, v3, v9

    .local v3, "mProcessNoise":[[D
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setProcessNoise([[D)Z

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setTransitionMatrix([[D)Z

    return-void

    nop

    :array_0
    .array-data 8
        0x4059000000000000L    # 100.0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x4059000000000000L    # 100.0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
        0x4059000000000000L    # 100.0
    .end array-data

    :array_3
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_6
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 8
        0x4030000000000000L    # 16.0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 8
        0x0
        0x4030000000000000L    # 16.0
        0x0
    .end array-data

    :array_9
    .array-data 8
        0x0
        0x0
        0x40c3880000000000L    # 10000.0
    .end array-data

    :array_a
    .array-data 8
        0x4069000000000000L    # 200.0
        0x0
        0x0
    .end array-data

    :array_b
    .array-data 8
        0x0
        0x4069000000000000L    # 200.0
        0x0
    .end array-data

    :array_c
    .array-data 8
        0x0
        0x0
        0x4000000000000000L    # 2.0
    .end array-data
.end method

.method private SendStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method private estimateSinglePoint()V
    .locals 6

    .prologue
    new-instance v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LocFromLocationManager:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v2, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .local v2, "lastLoc":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setMovingStatus(I)V

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PositionFiltering(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-result-object v0

    .local v0, "EstResult":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    const/4 v1, 0x0

    .local v1, "inxTest":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    new-instance v3, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v3, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .local v3, "updatedLoc":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v4, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v3    # "updatedLoc":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v5, "EstimateSinglePoint(), null filter output"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private estimateTraj()V
    .locals 36

    .prologue
    const/16 v28, 0x0

    .local v28, "inxTest":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v28

    if-ge v0, v4, :cond_0

    add-int/lit8 v28, v28, 0x1

    goto :goto_0

    :cond_0
    new-instance v29, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LocFromLocationManager:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .local v29, "lastLoc":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    const/4 v4, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setMovingStatus(I)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_PositionFilterInit:Z

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PositionFiltering(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    new-instance v33, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct/range {v33 .. v33}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    .local v33, "updatedLoc":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v33    # "updatedLoc":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    :goto_1
    return-void

    :cond_1
    const-wide/16 v12, 0x0

    .local v12, "bias_bearing":D
    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    .local v34, "scale_step":D
    const-string v2, ""

    .local v2, "Logstr":Ljava/lang/String;
    new-instance v3, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    .local v3, "lppLoc":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    new-instance v30, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct/range {v30 .. v30}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    .local v30, "lppLoc2":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    const-wide/16 v14, 0x0

    .local v14, "crossproduct":D
    const-wide/16 v24, 0x0

    .local v24, "distance_product":D
    const-wide/16 v26, 0x0

    .local v26, "dot_product":D
    const/4 v4, 0x2

    new-array v0, v4, [D

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    .local v16, "deltaEN":[D
    const/4 v4, 0x2

    new-array v0, v4, [D

    move-object/from16 v17, v0

    fill-array-data v17, :array_1

    .local v17, "deltaEN2":[D
    const/4 v4, 0x2

    new-array v0, v4, [D

    move-object/from16 v18, v0

    fill-array-data v18, :array_2

    .local v18, "deltaEstEN":[D
    const/4 v4, 0x3

    new-array v0, v4, [D

    move-object/from16 v31, v0

    fill-array-data v31, :array_3

    .local v31, "propagationENU":[D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v5, 0x0

    aget-wide v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v5, 0x1

    aget-wide v8, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v5, 0x2

    aget-wide v10, v4, v5

    move-object/from16 v5, v30

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    invoke-virtual/range {v29 .. v30}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->distanceTo(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)D

    move-result-wide v4

    const-wide v6, 0x40c3880000000000L    # 10000.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

    const/16 v19, 0x0

    .local v19, "inx":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget-wide v6, v4, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->bearing:D

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget-wide v4, v4, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->PosPropation(DD)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v8

    sub-double/2addr v6, v8

    aput-wide v6, v16, v4

    const/4 v4, 0x1

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v8

    sub-double/2addr v6, v8

    aput-wide v6, v16, v4

    const/4 v4, 0x0

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v8

    sub-double/2addr v6, v8

    aput-wide v6, v17, v4

    const/4 v4, 0x1

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v8

    sub-double/2addr v6, v8

    aput-wide v6, v17, v4

    const/4 v4, 0x0

    aget-wide v4, v16, v4

    const/4 v6, 0x1

    aget-wide v6, v17, v6

    mul-double/2addr v4, v6

    const/4 v6, 0x0

    aget-wide v6, v17, v6

    const/4 v8, 0x1

    aget-wide v8, v16, v8

    mul-double/2addr v6, v8

    sub-double v14, v4, v6

    const/4 v4, 0x0

    aget-wide v4, v16, v4

    const/4 v6, 0x0

    aget-wide v6, v17, v6

    mul-double/2addr v4, v6

    const/4 v6, 0x1

    aget-wide v6, v16, v6

    const/4 v8, 0x1

    aget-wide v8, v17, v8

    mul-double/2addr v6, v8

    add-double v26, v4, v6

    const/4 v4, 0x0

    aget-wide v4, v16, v4

    const/4 v6, 0x0

    aget-wide v6, v16, v6

    mul-double/2addr v4, v6

    const/4 v6, 0x1

    aget-wide v6, v16, v6

    const/4 v8, 0x1

    aget-wide v8, v16, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const/4 v6, 0x0

    aget-wide v6, v17, v6

    const/4 v8, 0x0

    aget-wide v8, v17, v8

    mul-double/2addr v6, v8

    const/4 v8, 0x1

    aget-wide v8, v17, v8

    const/4 v10, 0x1

    aget-wide v10, v17, v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    div-double v4, v26, v24

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    const-wide/16 v4, 0x0

    cmpg-double v4, v14, v4

    if-gez v4, :cond_3

    const-wide/16 v4, 0x0

    sub-double v12, v4, v12

    :cond_3
    const/4 v4, 0x0

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const/4 v5, 0x0

    aget-wide v8, v16, v5

    mul-double/2addr v6, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const/4 v5, 0x1

    aget-wide v10, v16, v5

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v18, v4

    const/4 v4, 0x1

    const-wide/16 v6, 0x0

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const/4 v5, 0x0

    aget-wide v10, v16, v5

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const/4 v5, 0x1

    aget-wide v10, v16, v5

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v18, v4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v6

    const/4 v5, 0x0

    aget-wide v8, v18, v5

    add-double/2addr v6, v8

    aput-wide v6, v31, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v6

    const/4 v5, 0x1

    aget-wide v8, v18, v5

    add-double/2addr v6, v8

    aput-wide v6, v31, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosUpLocal()D

    move-result-wide v6

    aput-wide v6, v31, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    move-object/from16 v0, v31

    invoke-static {v0, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->enu2llh([D[D)[D

    move-result-object v32

    .local v32, "propagationLLH":[D
    const/4 v4, 0x0

    aget-wide v4, v32, v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setLatitude(D)V

    const/4 v4, 0x1

    aget-wide v4, v32, v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setLongitude(D)V

    const/4 v4, 0x2

    aget-wide v4, v32, v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setAltitude(D)V

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PositionFiltering(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->getCurrentState()[D

    move-result-object v31

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-wide v6, v31, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v8

    sub-double/2addr v6, v8

    aput-wide v6, v17, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-wide v6, v31, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v8

    sub-double/2addr v6, v8

    aput-wide v6, v17, v4

    const/4 v4, 0x0

    aget-wide v4, v16, v4

    const/4 v6, 0x0

    aget-wide v6, v16, v6

    mul-double/2addr v4, v6

    const/4 v6, 0x1

    aget-wide v6, v16, v6

    const/4 v8, 0x1

    aget-wide v8, v16, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    .local v20, "dist1":D
    const/4 v4, 0x0

    aget-wide v4, v17, v4

    const/4 v6, 0x0

    aget-wide v6, v17, v6

    mul-double/2addr v4, v6

    const/4 v6, 0x1

    aget-wide v6, v17, v6

    const/4 v8, 0x1

    aget-wide v8, v17, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    .local v22, "dist2":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v20, v4

    if-lez v4, :cond_5

    div-double v34, v22, v20

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    const/16 v19, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget-wide v4, v4, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->bearing:D

    add-double v6, v4, v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget-wide v4, v4, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    mul-double v4, v4, v34

    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->PosPropation(DD)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget-wide v4, v4, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setSystemTime(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v5, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget-wide v6, v4, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->bearing:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget-wide v6, v4, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v34

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_4

    .end local v19    # "inx":I
    .end local v20    # "dist1":D
    .end local v22    # "dist2":D
    .end local v32    # "propagationLLH":[D
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v5, "Invalid distance between Current location and lastest location"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PositionFiltering(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .restart local v19    # "inx":I
    .restart local v20    # "dist1":D
    .restart local v22    # "dist2":D
    .restart local v32    # "propagationLLH":[D
    :cond_5
    const-wide/16 v34, 0x0

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v4, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    goto/16 :goto_1

    nop

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private resetwithLastLoc(Landroid/location/Location;)V
    .locals 8
    .param p1, "lastloc"    # Landroid/location/Location;

    .prologue
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v1, "resetwithLastLoc() unknown error - lastloc is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Cnt_inx:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastUpdatedTime:J

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Landroid/location/Location;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Landroid/location/Location;)V

    goto :goto_1
.end method


# virtual methods
.method public deliverAPDRData(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "listAPDR":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;>;"
    const/4 v5, 0x1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deliverAPDRData(), array size \t\t: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;-><init>()V

    .local v0, "apdrD":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    const/4 v1, 0x0

    .local v1, "inx":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    invoke-virtual {v0, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->set(Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    invoke-direct {v3, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    if-ne v2, v5, :cond_0

    invoke-virtual {p0, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->setStayingAreaFlag(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public deliverLocationData(Landroid/location/Location;)V
    .locals 24
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "deliverLocationData()"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "deliverLocationData - loc is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "LppAlgorithm - PosIn => Time : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " Pos : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " , "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " , "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " , "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " , "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->resetwithLastLoc(Landroid/location/Location;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .local v14, "lppl":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    invoke-virtual {v14}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v20

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-nez v20, :cond_3

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v21

    cmpg-float v20, v20, v21

    if-gez v20, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Landroid/location/Location;)V

    const-string v20, "LppAlgorithm - Duplicated position. Overwritten. "

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v14    # "lppl":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    :cond_4
    const-string v20, "Duplication test passed"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagIsGPSBatchMode:Z

    move/from16 v20, v0

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastUpdatedTime:J

    move-wide/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-lez v20, :cond_5

    const-string v20, "Old data passed. Temporarily"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastUpdatedTime:J

    const-string v20, "Old location test passed."

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Position filter Status - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    const-string v20, "Position filter Status is changed to false "

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .restart local v14    # "lppl":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, v21

    invoke-direct {v0, v14}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v14    # "lppl":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/location/Location;)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x2710

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    const/4 v12, 0x0

    .local v12, "inxOld":I
    const/4 v11, 0x1

    .local v11, "inxFind":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v20

    cmp-long v20, v22, v20

    if-gez v20, :cond_7

    move v12, v11

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .end local v11    # "inxFind":I
    .end local v12    # "inxOld":I
    :cond_8
    const-string v20, "Position filter is not ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/location/Location;)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    goto/16 :goto_0

    .restart local v11    # "inxFind":I
    .restart local v12    # "inxOld":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .end local v11    # "inxFind":I
    .end local v12    # "inxOld":I
    :cond_a
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Size of mInputPosBuf : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm$1;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;)V

    invoke-static/range {v20 .. v21}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    goto :goto_3

    :cond_b
    const-string v20, "Sorting is done."

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagIsGPSBatchMode:Z

    move/from16 v20, v0

    if-nez v20, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .local v15, "lpploca":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    const/4 v4, 0x1

    .local v4, "Flag_LocOK":Z
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Fine Location Acq Flag : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    move/from16 v20, v0

    if-eqz v20, :cond_14

    new-instance v13, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .local v13, "loc_comp":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    invoke-virtual {v15}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Landroid/location/Location;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->distanceTo(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)D

    move-result-wide v8

    .local v8, "distanceOfInput":D
    invoke-virtual {v13}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v22

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v18, v0

    .local v18, "timediffOfInput":D
    invoke-virtual {v15}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v20

    const-string v21, "network"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    const-wide/16 v6, 0x0

    .local v6, "MAX_MOVEMENT_SPEED":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getMovingStatus()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_13

    const-wide v6, 0x3f53a92a30553261L    # 0.0012

    :cond_d
    :goto_5
    mul-double v20, v6, v18

    cmpl-double v20, v8, v20

    if-lez v20, :cond_e

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "LppAlgorithm - abnormal location from NETWORK_PROVIDER : accuracy - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v15}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v20

    const v21, 0x461c4000    # 10000.0f

    invoke-virtual/range {v20 .. v21}, Landroid/location/Location;->setAccuracy(F)V

    .end local v6    # "MAX_MOVEMENT_SPEED":D
    :cond_e
    const-wide/high16 v20, 0x4034000000000000L    # 20.0

    cmpg-double v20, v8, v20

    if-gez v20, :cond_f

    invoke-virtual {v13}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v21

    cmpl-float v20, v20, v21

    if-lez v20, :cond_f

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "LppAlgorithm - too close distance - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_f
    const-wide v20, 0x40b3880000000000L    # 5000.0

    cmpg-double v20, v18, v20

    if-gez v20, :cond_10

    invoke-virtual {v13}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v21

    cmpl-float v20, v20, v21

    if-lez v20, :cond_10

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "LppAlgorithm - too close time - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagStayingArea:Z

    move/from16 v20, v0

    if-eqz v20, :cond_11

    const-string v20, "Staying detected. Flag_Loc OK "

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    const/4 v4, 0x1

    .end local v8    # "distanceOfInput":D
    .end local v13    # "loc_comp":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    .end local v18    # "timediffOfInput":D
    :cond_11
    :goto_6
    if-eqz v4, :cond_c

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Flag_LocOK - loc time is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v15}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LocFromLocationManager:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LocFromLocationManager:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .local v16, "mAPDRDeleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;>;"
    const/4 v10, 0x0

    .local v10, "inx":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    .local v17, "sample":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-gez v20, :cond_12

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .end local v10    # "inx":I
    .end local v16    # "mAPDRDeleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;>;"
    .end local v17    # "sample":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    .restart local v6    # "MAX_MOVEMENT_SPEED":D
    .restart local v8    # "distanceOfInput":D
    .restart local v13    # "loc_comp":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    .restart local v18    # "timediffOfInput":D
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getMovingStatus()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    const-wide v6, 0x3fa1eb851eb851ecL    # 0.035

    goto/16 :goto_5

    .end local v6    # "MAX_MOVEMENT_SPEED":D
    .end local v8    # "distanceOfInput":D
    .end local v13    # "loc_comp":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    .end local v18    # "timediffOfInput":D
    :cond_14
    invoke-virtual {v15}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v20

    const/high16 v21, 0x42480000    # 50.0f

    cmpl-float v20, v20, v21

    if-lez v20, :cond_15

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "LppAlgorithm - check Initial Fine location : false - accuracy is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v15}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_15
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "LppAlgorithm - check Initial Fine location : OK - accuracy is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v15}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    const/4 v4, 0x1

    goto/16 :goto_6

    .restart local v10    # "inx":I
    .restart local v16    # "mAPDRDeleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;>;"
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    const/4 v10, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    .restart local v17    # "sample":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LocFromLocationManager:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-gez v20, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .end local v17    # "sample":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LppAlgorithmRun()V

    goto/16 :goto_4

    .end local v4    # "Flag_LocOK":Z
    .end local v10    # "inx":I
    .end local v15    # "lpploca":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    .end local v16    # "mAPDRDeleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;>;"
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "deliverLocationData() end"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    const-string v20, "Position filter Status is changed to true "

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Position Filtering hold - GPS batching mode , accumulated index : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public init(Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;)V
    .locals 3
    .param p1, "LPPLnr"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    .prologue
    const/4 v2, 0x0

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PositionFilteringInit()V

    return-void
.end method

.method public setGPSBatchingStatus(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagIsGPSBatchMode:Z

    return-void
.end method

.method public setStayingAreaFlag(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagStayingArea:Z

    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop - mLPPPosition size() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;->onUpdateLPPtraj(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    return-void
.end method
