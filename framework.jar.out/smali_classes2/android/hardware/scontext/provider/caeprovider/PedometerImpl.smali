.class public Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;
.super Landroid/hardware/scontext/provider/caeprovider/CaeProvider;
.source "PedometerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$1;,
        Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$CustomTimer;,
        Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;,
        Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;
    }
.end annotation


# static fields
.field private static MODE_EXERCISE:I = 0x0

.field private static MODE_USER_INFO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SContext.CaeProvider.PedometerImpl"

.field private static mCumulativeInfo:Landroid/os/Bundle;


# instance fields
.field private final MAXIMUM_WAITING_TIME:I

.field private final mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

.field private mCurrentInfo:Landroid/os/Bundle;

.field private mDiffInfo:Landroid/os/Bundle;

.field private final mDisplay:Landroid/view/Display;

.field private mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

.field private mExcerciseMode:I

.field private mGender:I

.field private mHeight:D

.field private mIsParsingNecessary:Z

.field private mIsStarted:Z

.field private final mListener:Landroid/hardware/scontext/provider/EventListener;

.field private mWeight:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->MODE_USER_INFO:I

    const/4 v0, 0x1

    sput v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->MODE_EXERCISE:I

    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/hardware/scontext/provider/EventListener;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;-><init>(Landroid/content/Context;ILandroid/hardware/scontext/provider/EventListener;)V

    const v0, 0xea60

    iput v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->MAXIMUM_WAITING_TIME:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    sget-object v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;->NORMAL:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    iput v2, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mGender:I

    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mHeight:D

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mWeight:D

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mExcerciseMode:I

    iput-boolean v2, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mIsParsingNecessary:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mIsStarted:Z

    invoke-super {p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->getManager()Lcom/samsung/android/contextaware/ContextAwareManager;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iput-object p2, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mDisplay:Landroid/view/Display;

    sget-object v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method static synthetic access$100(Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;)Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    return-object v0
.end method

.method static synthetic access$102(Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;)Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;
    .param p1, "x1"    # Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    .prologue
    iput-object p1, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    return-object p1
.end method

.method private display(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .local v5, "sb":Ljava/lang/StringBuffer;
    const-string v9, "mode = ["

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "Mode"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .local v3, "mode":I
    packed-switch v3, :pswitch_data_0

    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "],  tsc = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "TotalStepCountDiff"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "], wsc = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "WalkStepCountDiff"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "], rsc = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "RunStepCountDiff"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "LoggingCount"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "LoggingCount"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .local v2, "loggingCnt":I
    const-string v9, "TotalStepCountDiffArray"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v7

    .local v7, "totalStepCnt":[J
    const-string v9, "WalkStepCountDiffArray"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v8

    .local v8, "walkStepCnt":[J
    const-string v9, "RunStepCountDiffArray"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    .local v4, "runStepCnt":[J
    const/4 v9, 0x3

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "tscDiffArray"

    aput-object v10, v6, v9

    const/4 v9, 0x1

    const-string v10, "wscDiffArray"

    aput-object v10, v6, v9

    const/4 v9, 0x2

    const-string v10, "rscDiffArray"

    aput-object v10, v6, v9

    .local v6, "str_array":[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ", LoggingCnt = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v9, v6

    if-ge v0, v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v6, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = [ "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    if-ge v1, v2, :cond_2

    packed-switch v0, :pswitch_data_1

    :goto_4
    add-int/lit8 v9, v2, -0x1

    if-ge v1, v9, :cond_1

    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "loggingCnt":I
    .end local v4    # "runStepCnt":[J
    .end local v6    # "str_array":[Ljava/lang/String;
    .end local v7    # "totalStepCnt":[J
    .end local v8    # "walkStepCnt":[J
    :pswitch_0
    const-string v9, "normal"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_1
    const-string v9, "logging"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v2    # "loggingCnt":I
    .restart local v4    # "runStepCnt":[J
    .restart local v6    # "str_array":[Ljava/lang/String;
    .restart local v7    # "totalStepCnt":[J
    .restart local v8    # "walkStepCnt":[J
    :pswitch_2
    aget-wide v10, v7, v1

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_4

    :pswitch_3
    aget-wide v10, v8, v1

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_4

    :pswitch_4
    aget-wide v10, v4, v1

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_2
    const-string v9, "]"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "loggingCnt":I
    .end local v4    # "runStepCnt":[J
    .end local v6    # "str_array":[Ljava/lang/String;
    .end local v7    # "totalStepCnt":[J
    .end local v8    # "walkStepCnt":[J
    :cond_3
    const-string v9, "SContext.CaeProvider.PedometerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "display() : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
    .end packed-switch
.end method

.method private getStringNames(Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;)[Ljava/lang/String;
    .locals 11
    .param p1, "mode"    # Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

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
    sget-object v4, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

    if-ne p1, v4, :cond_1

    move-object v2, v1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    sget-object v4, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;->SUM:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

    if-ne p1, v4, :cond_2

    move-object v2, v3

    goto :goto_0

    :cond_2
    sget-object v4, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;->CUMULATIVE:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

    if-ne p1, v4, :cond_0

    move-object v2, v0

    goto :goto_0
.end method

.method private getSumOfContexts(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;
    .locals 10
    .param p1, "context1"    # Landroid/os/Bundle;
    .param p2, "context2"    # Landroid/os/Bundle;
    .param p3, "mode1"    # Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;
    .param p4, "mode2"    # Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

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
    invoke-direct {p0, p3}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->getStringNames(Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "names1":[Ljava/lang/String;
    invoke-direct {p0, p4}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->getStringNames(Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;)[Ljava/lang/String;

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

.method private getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;
    .locals 7
    .param p1, "context1"    # Landroid/os/Bundle;
    .param p2, "context2"    # Landroid/os/Bundle;
    .param p3, "mode"    # Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x2

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-direct {p0, p3}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->getStringNames(Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;)[Ljava/lang/String;

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
    .locals 4

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v1, "Mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v1, "WalkingFrequency"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v1, "StepStatus"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    sget-object v1, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    sget-object v2, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;->CUMULATIVE:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const/4 v1, 0x0

    sget-object v2, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    return-void
.end method

.method private isScreenOn()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mDisplay:Landroid/view/Display;

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


# virtual methods
.method public add()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    sget-object v1, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;->KILL:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;->RESUME:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mIsStarted:Z

    invoke-direct {p0}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->initializeCurrentInfo()V

    invoke-super {p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->add()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mDiffInfo:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public handleDiedBinder()V
    .locals 4

    .prologue
    const-string v1, "SContext.CaeProvider.PedometerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDiedBinder() : mExceptionMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    sget-object v2, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;->KILL:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    if-ne v1, v2, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$CustomTimer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$CustomTimer;-><init>(Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$1;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .end local v0    # "timer":Ljava/util/Timer;
    :cond_0
    return-void
.end method

.method public onBinderDied()V
    .locals 3

    .prologue
    invoke-direct {p0}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mDiffInfo:Landroid/os/Bundle;

    sget-object v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;->KILL:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    const-string v0, "SContext.CaeProvider.PedometerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied() : mExceptionMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->remove()V

    goto :goto_0
.end method

.method public parse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mIsParsingNecessary:Z

    if-eqz v0, :cond_5

    sget-object v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    sget-object v1, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;->CUMULATIVE:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

    sget-object v2, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->getSumOfContexts(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    sget-object v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    sget-object v1, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;->CUMULATIVE:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    sget-object v1, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;->NORMAL:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mDiffInfo:Landroid/os/Bundle;

    sget-object v1, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

    sget-object v2, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->getSumOfContexts(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mDiffInfo:Landroid/os/Bundle;

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mDiffInfo:Landroid/os/Bundle;

    sget-object v1, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    sget-object v1, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;->RESUME:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;->NORMAL:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "LoggingCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Mode"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    iput-object p1, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->display(Landroid/os/Bundle;)V

    :cond_2
    iget-boolean v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mIsStarted:Z

    if-nez v0, :cond_3

    const/4 p1, 0x0

    :cond_3
    return-object p1

    :cond_4
    const-string v0, "Mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    iput-boolean v3, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mIsParsingNecessary:Z

    const/4 v0, 0x0

    sget-object v1, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_1
.end method

.method public remove()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mIsStarted:Z

    invoke-virtual {p0}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->requestToUpdate()V

    invoke-super {p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->remove()V

    return-void
.end method

.method public requestToUpdate()V
    .locals 3

    .prologue
    const-string v0, "SContext.CaeProvider.PedometerImpl"

    const-string v1, "requestToUpdate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mIsParsingNecessary:Z

    iget-boolean v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mIsStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->requestToUpdate()V

    goto :goto_0
.end method

.method public setAttribute(ILandroid/hardware/scontext/SContextAttribute;)V
    .locals 6
    .param p1, "service"    # I
    .param p2, "attribute"    # Landroid/hardware/scontext/SContextAttribute;

    .prologue
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Landroid/hardware/scontext/SContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v0

    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    const-string v1, "SContext.CaeProvider.PedometerImpl"

    const-string v2, "setProperty() : attribute is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sget v2, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->MODE_USER_INFO:I

    if-ne v1, v2, :cond_2

    const-string v1, "gender"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mGender:I

    const-string v1, "height"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mHeight:D

    const-string v1, "weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mWeight:D

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    const/4 v3, 0x6

    iget v4, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mGender:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    const/4 v3, 0x5

    iget-wide v4, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mHeight:D

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IID)Z

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    const/4 v3, 0x4

    iget-wide v4, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mWeight:D

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IID)Z

    :cond_1
    :goto_1
    const-string v1, "SContext.CaeProvider.PedometerImpl"

    const-string v2, "setProperty()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sget v2, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->MODE_EXERCISE:I

    if-ne v1, v2, :cond_1

    const-string v1, "exercise_mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mExcerciseMode:I

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    const/16 v3, 0x3e

    iget v4, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mExcerciseMode:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto :goto_1
.end method
