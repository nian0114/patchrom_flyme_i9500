.class public Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;
.super Landroid/hardware/scontext/provider/miscprovider/MiscProvider;
.source "PedometerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;,
        Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$CustomTimer;,
        Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;,
        Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;
    }
.end annotation


# static fields
.field private static final MAXIMUM_WAITING_TIME:I = 0xea60

.field private static final PEDOMETER_VENDOR_ADSP:I = 0x3

.field private static final PEDOMETER_VENDOR_INVENSENSE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SContext.MiscProvider.PedometerImpl"

.field private static mCumulativeInfo:Landroid/os/Bundle;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentInfo:Landroid/os/Bundle;

.field private mDiffInfo:Landroid/os/Bundle;

.field private final mDisplay:Landroid/view/Display;

.field private mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

.field private mGender:I

.field private mHandler:Landroid/os/Handler;

.field private mHeight:D

.field private mIsParsingNecessary:Z

.field private mIsStarted:Z

.field private final mListener:Landroid/hardware/scontext/provider/EventListener;

.field private mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mScreenReceiver:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;

.field private mWeight:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/hardware/scontext/provider/EventListener;
    .param p3, "vendor"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/miscprovider/MiscProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mScreenReceiver:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    sget-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;->NORMAL:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    iput v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mGender:I

    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mHeight:D

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mWeight:D

    iput-boolean v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mIsParsingNecessary:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mIsStarted:Z

    new-instance v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$1;

    invoke-direct {v0, p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$1;-><init>(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;)V

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPowerManager:Landroid/os/PowerManager;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mDisplay:Landroid/view/Display;

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    new-instance v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    invoke-direct {v0, v1, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;-><init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    :cond_0
    :goto_0
    sget-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    new-instance v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    invoke-direct {v0, v1, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;-><init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    goto :goto_0
.end method

.method static synthetic access$200(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;)Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    return-object v0
.end method

.method static synthetic access$202(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;)Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;
    .param p1, "x1"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    .prologue
    iput-object p1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    return-object p1
.end method

.method static synthetic access$300(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;)Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    return-object v0
.end method

.method private convertContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;
    .locals 8
    .param p1, "context1"    # Landroid/os/Bundle;
    .param p2, "context2"    # Landroid/os/Bundle;
    .param p3, "mode1"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;
    .param p4, "mode2"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    .prologue
    invoke-direct {p0, p3}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getStringNames(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "names1":[Ljava/lang/String;
    invoke-direct {p0, p4}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getStringNames(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "names2":[Ljava/lang/String;
    move-object v0, p1

    .local v0, "context":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    if-nez v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    .end local v0    # "context":Landroid/os/Bundle;
    :cond_1
    return-object v0

    .restart local v0    # "context":Landroid/os/Bundle;
    :cond_2
    const/4 v4, 0x0

    .local v4, "size":I
    array-length v5, v2

    array-length v6, v3

    if-gt v5, v6, :cond_3

    array-length v4, v2

    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_1

    const/4 v5, 0x2

    if-ge v1, v5, :cond_4

    aget-object v5, v2, v1

    aget-object v6, v3, v1

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_3
    array-length v4, v3

    goto :goto_0

    .restart local v1    # "i":I
    :cond_4
    aget-object v5, v2, v1

    aget-object v6, v3, v1

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2
.end method

.method private display(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .local v9, "sb":Ljava/lang/StringBuffer;
    const-string v15, "mode = ["

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v15, "Mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .local v7, "mode":I
    packed-switch v7, :pswitch_data_0

    :goto_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "], status = ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "StepStatus"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], c = ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "CalorieDiff"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], d = ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "DistanceDiff"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], wf = ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "WalkingFrequency"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], tsc = ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "TotalStepCountDiff"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], wsc = ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "WalkStepCountDiff"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], rsc = ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "RunStepCountDiff"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], ctsc = ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "CumulativeTotalStepCount"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v15, "LoggingCount"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    const-string v15, "LoggingCount"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .local v6, "loggingCnt":I
    const-string v15, "TimeStampArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v12

    .local v12, "timestamp":[J
    const-string v15, "CalorieDiffArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v2

    .local v2, "calorie":[D
    const-string v15, "DistanceDiffArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v3

    .local v3, "distance":[D
    const-string v15, "SpeedArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v10

    .local v10, "speed":[D
    const-string v15, "TotalStepCountDiffArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v13

    .local v13, "totalStepCnt":[J
    const-string v15, "WalkStepCountDiffArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v14

    .local v14, "walkStepCnt":[J
    const-string v15, "RunStepCountDiffArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v8

    .local v8, "runStepCnt":[J
    const/4 v15, 0x7

    new-array v11, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "TimeStampArray"

    aput-object v16, v11, v15

    const/4 v15, 0x1

    const-string v16, "cDiffArray"

    aput-object v16, v11, v15

    const/4 v15, 0x2

    const-string v16, "dDiffArray step"

    aput-object v16, v11, v15

    const/4 v15, 0x3

    const-string v16, "SpeedArray"

    aput-object v16, v11, v15

    const/4 v15, 0x4

    const-string v16, "tscDiffArray"

    aput-object v16, v11, v15

    const/4 v15, 0x5

    const-string v16, "wscDiffArray"

    aput-object v16, v11, v15

    const/4 v15, 0x6

    const-string v16, "rscDiffArray"

    aput-object v16, v11, v15

    .local v11, "str_array":[Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ", LoggingCnt = ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v15, v11

    if-ge v4, v15, :cond_3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v11, v4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " = [ "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    if-ge v5, v6, :cond_2

    packed-switch v4, :pswitch_data_1

    :goto_4
    add-int/lit8 v15, v6, -0x1

    if-ge v5, v15, :cond_1

    const-string v15, ","

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .end local v2    # "calorie":[D
    .end local v3    # "distance":[D
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "loggingCnt":I
    .end local v8    # "runStepCnt":[J
    .end local v10    # "speed":[D
    .end local v11    # "str_array":[Ljava/lang/String;
    .end local v12    # "timestamp":[J
    .end local v13    # "totalStepCnt":[J
    .end local v14    # "walkStepCnt":[J
    :pswitch_0
    const-string v15, "normal"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_1
    const-string v15, "logging"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .restart local v2    # "calorie":[D
    .restart local v3    # "distance":[D
    .restart local v4    # "i":I
    .restart local v5    # "j":I
    .restart local v6    # "loggingCnt":I
    .restart local v8    # "runStepCnt":[J
    .restart local v10    # "speed":[D
    .restart local v11    # "str_array":[Ljava/lang/String;
    .restart local v12    # "timestamp":[J
    .restart local v13    # "totalStepCnt":[J
    .restart local v14    # "walkStepCnt":[J
    :pswitch_2
    aget-wide v16, v12, v5

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_4

    :pswitch_3
    aget-wide v16, v2, v5

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    goto :goto_4

    :pswitch_4
    aget-wide v16, v3, v5

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    goto :goto_4

    :pswitch_5
    aget-wide v16, v10, v5

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    goto :goto_4

    :pswitch_6
    aget-wide v16, v13, v5

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_4

    :pswitch_7
    aget-wide v16, v14, v5

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_4

    :pswitch_8
    aget-wide v16, v8, v5

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_2
    const-string v15, "]"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2    # "calorie":[D
    .end local v3    # "distance":[D
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "loggingCnt":I
    .end local v8    # "runStepCnt":[J
    .end local v10    # "speed":[D
    .end local v11    # "str_array":[Ljava/lang/String;
    .end local v12    # "timestamp":[J
    .end local v13    # "totalStepCnt":[J
    .end local v14    # "walkStepCnt":[J
    :cond_3
    const-string v15, "SContext.MiscProvider.PedometerImpl"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "display() : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getStringNames(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)[Ljava/lang/String;
    .locals 11
    .param p1, "mode"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .local v2, "names":[Ljava/lang/String;
    const/16 v4, 0xa

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "CalorieDiff"

    aput-object v4, v1, v6

    const-string v4, "DistanceDiff"

    aput-object v4, v1, v7

    const-string v4, "TotalStepCountDiff"

    aput-object v4, v1, v8

    const-string v4, "WalkStepCountDiff"

    aput-object v4, v1, v9

    const-string v4, "WalkUpStepCountDiff"

    aput-object v4, v1, v10

    const/4 v4, 0x5

    const-string v5, "WalkDownStepCountDiff"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "RunStepCountDiff"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string v5, "RunUpStepCountDiff"

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string v5, "RunDownStepCountDiff"

    aput-object v5, v1, v4

    const/16 v4, 0x9

    const-string v5, "UpDownStepCountDiff"

    aput-object v5, v1, v4

    .local v1, "diffNames":[Ljava/lang/String;
    const/16 v4, 0xa

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "Calorie"

    aput-object v4, v3, v6

    const-string v4, "Distance"

    aput-object v4, v3, v7

    const-string v4, "TotalStepCount"

    aput-object v4, v3, v8

    const-string v4, "WalkStepCount"

    aput-object v4, v3, v9

    const-string v4, "WalkUpStepCount"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "WalkDownStepCount"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "RunStepCount"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "RunUpStepCount"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "RunDownStepCount"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "UpDownStepCount"

    aput-object v5, v3, v4

    .local v3, "sumNames":[Ljava/lang/String;
    const/16 v4, 0x9

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "CumulativeCalorie"

    aput-object v4, v0, v6

    const-string v4, "CumulativeDistance"

    aput-object v4, v0, v7

    const-string v4, "CumulativeTotalStepCount"

    aput-object v4, v0, v8

    const-string v4, "CumulativeWalkFlatStepCount"

    aput-object v4, v0, v9

    const-string v4, "CumulativeWalkUpStepCount"

    aput-object v4, v0, v10

    const/4 v4, 0x5

    const-string v5, "CumulativeWalkDownStepCount"

    aput-object v5, v0, v4

    const/4 v4, 0x6

    const-string v5, "CumulativeRunFlatStepCount"

    aput-object v5, v0, v4

    const/4 v4, 0x7

    const-string v5, "CumulativeRunUpStepCount"

    aput-object v5, v0, v4

    const/16 v4, 0x8

    const-string v5, "CumulativeRunDownStepCount"

    aput-object v5, v0, v4

    .local v0, "cumulativeNames":[Ljava/lang/String;
    sget-object v4, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    if-ne p1, v4, :cond_1

    move-object v2, v1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    sget-object v4, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->SUM:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    if-ne p1, v4, :cond_2

    move-object v2, v3

    goto :goto_0

    :cond_2
    sget-object v4, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->CUMULATIVE:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    if-ne p1, v4, :cond_0

    move-object v2, v0

    goto :goto_0
.end method

.method private getSumOfContexts(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;
    .locals 10
    .param p1, "context1"    # Landroid/os/Bundle;
    .param p2, "context2"    # Landroid/os/Bundle;
    .param p3, "mode1"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;
    .param p4, "mode2"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    .prologue
    const/4 v5, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    :cond_0
    move-object v0, v5

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-direct {p0, p3}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getStringNames(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "names1":[Ljava/lang/String;
    invoke-direct {p0, p4}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getStringNames(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "names2":[Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "context":Landroid/os/Bundle;
    if-eqz v2, :cond_3

    if-nez v3, :cond_4

    :cond_3
    move-object v0, v5

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    .local v4, "size":I
    array-length v5, v2

    array-length v6, v3

    if-gt v5, v6, :cond_5

    array-length v4, v2

    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v4, :cond_1

    const/4 v5, 0x2

    if-ge v1, v5, :cond_6

    aget-object v5, v2, v1

    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    aget-object v8, v3, v1

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    :cond_5
    array-length v4, v3

    goto :goto_1

    .restart local v1    # "i":I
    :cond_6
    aget-object v5, v2, v1

    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    aget-object v8, v3, v1

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_3
.end method

.method private getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;
    .locals 7
    .param p1, "context1"    # Landroid/os/Bundle;
    .param p2, "context2"    # Landroid/os/Bundle;
    .param p3, "mode"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x2

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-direct {p0, p3}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getStringNames(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "names":[Ljava/lang/String;
    if-eqz v2, :cond_0

    move-object v0, p1

    .local v0, "context":Landroid/os/Bundle;
    if-nez p2, :cond_3

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    if-ge v1, v6, :cond_2

    aget-object v3, v2, v1

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    aget-object v3, v2, v1

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v3, v2

    if-ge v1, v3, :cond_0

    if-ge v1, v6, :cond_4

    aget-object v3, v2, v1

    aget-object v4, v2, v1

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    aget-object v3, v2, v1

    aget-object v4, v2, v1

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_3
.end method

.method private initializeCurrentInfo()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v12, -0x1

    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const/4 v3, 0x0

    .local v3, "mode":I
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v7, "WalkingFrequency"

    invoke-virtual {v6, v7, v10, v11}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v7, "StepStatus"

    invoke-virtual {v6, v7, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    sget-object v7, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    sget-object v8, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->CUMULATIVE:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, v6, v7, v8}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const/4 v7, 0x0

    sget-object v8, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, v6, v7, v8}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->isScreenOn()Z

    move-result v6

    if-nez v6, :cond_3

    const/16 v6, 0x9

    new-array v4, v6, [Ljava/lang/String;

    const-string v6, "CalorieDiffArray"

    aput-object v6, v4, v13

    const-string v6, "DistanceDiffArray"

    aput-object v6, v4, v9

    const-string v6, "TotalStepCountDiffArray"

    aput-object v6, v4, v14

    const/4 v6, 0x3

    const-string v7, "WalkStepCountDiffArray"

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-string v7, "WalkUpStepCountDiffArray"

    aput-object v7, v4, v6

    const/4 v6, 0x5

    const-string v7, "WalkDownStepCountDiffArray"

    aput-object v7, v4, v6

    const/4 v6, 0x6

    const-string v7, "RunStepCountDiffArray"

    aput-object v7, v4, v6

    const/4 v6, 0x7

    const-string v7, "RunUpStepCountDiffArray"

    aput-object v7, v4, v6

    const/16 v6, 0x8

    const-string v7, "RunDownStepCountDiffArray"

    aput-object v7, v4, v6

    .local v4, "names":[Ljava/lang/String;
    new-array v2, v9, [J

    .local v2, "longArray":[J
    new-array v0, v9, [D

    .local v0, "doubleArray":[D
    new-array v5, v9, [J

    .local v5, "timestampArray":[J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    aput-wide v6, v5, v13

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v4

    if-ge v1, v6, :cond_2

    if-ge v1, v14, :cond_1

    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    aget-object v7, v4, v1

    invoke-virtual {v6, v7, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    aget-object v7, v4, v1

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v7, "LoggingCount"

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v7, "TimeStampArray"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v7, "Speed"

    invoke-virtual {v6, v7, v10, v11}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v7, "StepStatus"

    invoke-virtual {v6, v7, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .end local v0    # "doubleArray":[D
    .end local v1    # "i":I
    .end local v2    # "longArray":[J
    .end local v4    # "names":[Ljava/lang/String;
    .end local v5    # "timestampArray":[J
    :cond_3
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v7, "Mode"

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private isScreenOn()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerScreenReceiver()V
    .locals 3

    .prologue
    new-instance v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;-><init>(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$1;)V

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mScreenReceiver:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mScreenReceiver:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterScreenReceiver()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mScreenReceiver:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mScreenReceiver:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mScreenReceiver:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public add()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;->KILL:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    if-ne v0, v1, :cond_1

    sget-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;->RESUME:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    invoke-virtual {v0}, Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;->register()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->initializeCurrentInfo()V

    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    invoke-virtual {v0, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;->setLoggingMode(Z)V

    :cond_2
    iput-boolean v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mIsStarted:Z

    invoke-direct {p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->registerScreenReceiver()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mDiffInfo:Landroid/os/Bundle;

    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->requestToUpdate()V

    goto :goto_0
.end method

.method public handleDiedBinder()V
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    sget-object v2, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;->KILL:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    if-ne v1, v2, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$CustomTimer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$CustomTimer;-><init>(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$1;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .end local v0    # "timer":Ljava/util/Timer;
    :cond_0
    return-void
.end method

.method public onBinderDied()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mDiffInfo:Landroid/os/Bundle;

    const-string v0, "SContext.MiscProvider.PedometerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied() : mExceptionMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;->KILL:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->remove()V

    goto :goto_0
.end method

.method public parse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mIsParsingNecessary:Z

    if-eqz v0, :cond_4

    sget-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->CUMULATIVE:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    sget-object v2, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getSumOfContexts(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    sget-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->CUMULATIVE:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->SUM:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    sget-object v2, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->CUMULATIVE:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->convertContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;->NORMAL:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mDiffInfo:Landroid/os/Bundle;

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    sget-object v2, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getSumOfContexts(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mDiffInfo:Landroid/os/Bundle;

    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mDiffInfo:Landroid/os/Bundle;

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;->RESUME:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;->NORMAL:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "LoggingCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Mode"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    iput-object p1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    :cond_1
    :goto_1
    iget-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mIsStarted:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->display(Landroid/os/Bundle;)V

    :cond_2
    :goto_2
    return-object p1

    :cond_3
    const-string v0, "Mode"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    iput-boolean v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mIsParsingNecessary:Z

    const/4 v0, 0x0

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "StepStatus"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    goto :goto_2
.end method

.method public remove()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mIsStarted:Z

    invoke-virtual {p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->requestToUpdate()V

    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    invoke-virtual {v0, v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;->setLoggingMode(Z)V

    :cond_0
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    invoke-virtual {v0}, Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;->unregister()V

    invoke-direct {p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->unregisterScreenReceiver()V

    return-void
.end method

.method public requestToUpdate()V
    .locals 3

    .prologue
    const-string v0, "SContext.MiscProvider.PedometerImpl"

    const-string v1, "requestToUpdate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mIsParsingNecessary:Z

    iget-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mIsStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    invoke-virtual {v0}, Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;->requestToUpdate()V

    goto :goto_0
.end method

.method public setAttribute(ILandroid/hardware/scontext/SContextAttribute;)V
    .locals 7
    .param p1, "service"    # I
    .param p2, "attribute"    # Landroid/hardware/scontext/SContextAttribute;

    .prologue
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/hardware/scontext/SContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v6

    .local v6, "bundle":Landroid/os/Bundle;
    if-nez v6, :cond_0

    const-string v0, "SContext.MiscProvider.PedometerImpl"

    const-string v1, "setProperty() : attribute is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "gender"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mGender:I

    const-string v0, "height"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mHeight:D

    const-string v0, "weight"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mWeight:D

    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    iget v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mGender:I

    iget-wide v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mHeight:D

    iget-wide v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mWeight:D

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;->setProperty(IDD)V

    const-string v0, "SContext.MiscProvider.PedometerImpl"

    const-string v1, "setProperty()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
