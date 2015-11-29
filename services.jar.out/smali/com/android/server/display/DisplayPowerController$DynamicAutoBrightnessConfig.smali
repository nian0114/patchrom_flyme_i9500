.class public final Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "DynamicAutoBrightnessConfig"
.end annotation


# instance fields
.field protected mAutoBrightnessLevelStepRatio:F

.field protected mBrightnessLevels:[I

.field protected mBrightnessLevelsForEbookOnly:[I

.field protected mBrightnessValueSlope:[D

.field protected mBrightnessValueSlopeForEbookOnly:[D

.field protected mBrightnessValues:[I

.field protected mBrightnessValuesForEbookOnly:[I

.field protected mHighHysteresisLevels:[I

.field protected mHighHysteresisLevelsForEbookOnly:[I

.field protected mHighHysteresisSlope:[D

.field protected mHighHysteresisSlopeForEbookOnly:[D

.field protected mHighHysteresisValues:[I

.field protected mHighHysteresisValuesForEbookOnly:[I

.field private mIsTablet:Z

.field protected mLowHysteresisLevels:[I

.field protected mLowHysteresisLevelsForEbookOnly:[I

.field protected mLowHysteresisSlope:[D

.field protected mLowHysteresisSlopeForEbookOnly:[D

.field protected mLowHysteresisValues:[I

.field protected mLowHysteresisValuesForEbookOnly:[I

.field protected mLowLimitAtHighestAutoBrightnessLevel:I

.field protected mMinimumBrightnessStepValue:I

.field protected mMinimumExpressiveBrightnessValues:[I

.field protected mValueOfVirtualZeroCandela:I

.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method protected constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowLimitAtHighestAutoBrightnessLevel:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatio:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mIsTablet:Z

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->dumpAutoBrightnessTables(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private dumpAutoBrightnessTables(Ljava/io/PrintWriter;)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    :try_start_0
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z
    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->access$1500(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v6, ""

    .local v6, "mStrLowHysteresisPoints":Ljava/lang/String;
    const-string v2, ""

    .local v2, "mStrBrightnessValuePoints":Ljava/lang/String;
    const-string v4, ""

    .local v4, "mStrHighHysteresisPoints":Ljava/lang/String;
    const-string v8, ""

    .local v8, "mStrMinimumExpressiveBrightnessValues":Ljava/lang/String;
    const-string v9, "[DAB] Dynamic Auto Brightness Tables :"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mValueOfVirtualZeroCandela = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mValueOfVirtualZeroCandela:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mLowLimitAtHighestAutoBrightnessLevel = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowLimitAtHighestAutoBrightnessLevel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mMinimumBrightnessStepValue = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumBrightnessStepValue:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    array-length v9, v9

    if-ge v1, v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrLowHysteresisPoints = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    array-length v9, v9

    if-ge v1, v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrBrightnessValuePoints = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    array-length v9, v9

    if-ge v1, v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrHighHysteresisPoints = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_3
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumExpressiveBrightnessValues:[I

    array-length v9, v9

    if-ge v1, v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumExpressiveBrightnessValues:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrMinimumExpressiveBrightnessValues = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, ""

    .local v7, "mStrLowHysteresisPointsForEbookOnly":Ljava/lang/String;
    const-string v3, ""

    .local v3, "mStrBrightnessValuePointsForEbookOnly":Ljava/lang/String;
    const-string v5, ""

    .local v5, "mStrHighHysteresisPointsForEbookOnly":Ljava/lang/String;
    const-string v9, "[DAB] "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_4
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevelsForEbookOnly:[I

    array-length v9, v9

    if-ge v1, v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevelsForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValuesForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrLowHysteresisPointsForEbookOnly = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_5
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevelsForEbookOnly:[I

    array-length v9, v9

    if-ge v1, v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevelsForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValuesForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrBrightnessValuePointsForEbookOnly = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_6
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevelsForEbookOnly:[I

    array-length v9, v9

    if-ge v1, v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevelsForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValuesForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrHighHysteresisPointsForEbookOnly = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "i":I
    .end local v2    # "mStrBrightnessValuePoints":Ljava/lang/String;
    .end local v3    # "mStrBrightnessValuePointsForEbookOnly":Ljava/lang/String;
    .end local v4    # "mStrHighHysteresisPoints":Ljava/lang/String;
    .end local v5    # "mStrHighHysteresisPointsForEbookOnly":Ljava/lang/String;
    .end local v6    # "mStrLowHysteresisPoints":Ljava/lang/String;
    .end local v7    # "mStrLowHysteresisPointsForEbookOnly":Ljava/lang/String;
    .end local v8    # "mStrMinimumExpressiveBrightnessValues":Ljava/lang/String;
    :cond_7
    :goto_7
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "DisplayPowerController"

    const-string v10, "[DAB] dumpAutoBrightnessTables"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method private getSlope(IIIIZ)D
    .locals 10
    .param p1, "ax"    # I
    .param p2, "ay"    # I
    .param p3, "bx"    # I
    .param p4, "by"    # I
    .param p5, "bReverse"    # Z

    .prologue
    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    const-wide/16 v0, 0x0

    .local v0, "slope":D
    if-eq p1, p3, :cond_0

    if-ne p2, p4, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    if-eqz p5, :cond_2

    int-to-double v2, p3

    add-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    int-to-double v4, p1

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    sub-int v4, p4, p2

    int-to-double v4, v4

    div-double v0, v2, v4

    goto :goto_0

    :cond_2
    sub-int v2, p4, p2

    int-to-double v2, v2

    int-to-double v4, p3

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    int-to-double v6, p1

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    div-double v0, v2, v4

    goto :goto_0
.end method

.method private isTablet()Z
    .locals 2

    .prologue
    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getDynamicAutoBrightnessHighHysteresis(F)F
    .locals 12
    .param p1, "cd"    # F

    .prologue
    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .local v2, "lux":F
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->access$1400(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v3

    iget-boolean v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-nez v3, :cond_4

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    aget v3, v3, v1

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    array-length v3, v3

    if-lt v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    aget v3, v3, v1

    int-to-float v2, v3

    .end local v2    # "lux":F
    :goto_1
    return v2

    .restart local v2    # "lux":F
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisSlope:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v4, v3, v4

    cmpl-double v3, v4, v6

    if-lez v3, :cond_3

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisSlope:[D

    add-int/lit8 v6, v1, -0x1

    aget-wide v6, v3, v6

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    add-int/lit8 v8, v1, -0x1

    aget v3, v3, v8

    int-to-float v3, v3

    sub-float v3, p1, v3

    float-to-double v8, v3

    mul-double/2addr v6, v8

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    add-int/lit8 v8, v1, -0x1

    aget v3, v3, v8

    int-to-double v8, v3

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v3, v4

    int-to-float v2, v3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    int-to-float v2, v3

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    :goto_2
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValuesForEbookOnly:[I

    array-length v3, v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValuesForEbookOnly:[I

    aget v3, v3, v1

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevelsForEbookOnly:[I

    array-length v3, v3

    if-lt v1, v3, :cond_7

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevelsForEbookOnly:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevelsForEbookOnly:[I

    aget v3, v3, v1

    int-to-float v2, v3

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisSlopeForEbookOnly:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v4, v3, v4

    cmpl-double v3, v4, v6

    if-lez v3, :cond_8

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisSlopeForEbookOnly:[D

    add-int/lit8 v6, v1, -0x1

    aget-wide v6, v3, v6

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValuesForEbookOnly:[I

    add-int/lit8 v8, v1, -0x1

    aget v3, v3, v8

    int-to-float v3, v3

    sub-float v3, p1, v3

    float-to-double v8, v3

    mul-double/2addr v6, v8

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevelsForEbookOnly:[I

    add-int/lit8 v8, v1, -0x1

    aget v3, v3, v8

    int-to-double v8, v3

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v3, v4

    int-to-float v2, v3

    goto/16 :goto_1

    :cond_8
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevelsForEbookOnly:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v2, v3

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DisplayPowerController"

    const-string v4, "[DAB] getDynamicAutoBrightnessHighHysteresis"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v2, 0x459c4000    # 5000.0f

    goto/16 :goto_1
.end method

.method protected getDynamicAutoBrightnessLowHysteresis(F)F
    .locals 12
    .param p1, "cd"    # F

    .prologue
    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .local v2, "lux":F
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->access$1400(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v3

    iget-boolean v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-nez v3, :cond_4

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    aget v3, v3, v1

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    array-length v3, v3

    if-lt v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    int-to-float v2, v3

    .end local v2    # "lux":F
    :goto_1
    return v2

    .restart local v2    # "lux":F
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisSlope:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v4, v3, v4

    cmpl-double v3, v4, v6

    if-lez v3, :cond_3

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisSlope:[D

    add-int/lit8 v6, v1, -0x1

    aget-wide v6, v3, v6

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    add-int/lit8 v8, v1, -0x1

    aget v3, v3, v8

    int-to-float v3, v3

    sub-float v3, p1, v3

    float-to-double v8, v3

    mul-double/2addr v6, v8

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    add-int/lit8 v8, v1, -0x1

    aget v3, v3, v8

    int-to-double v8, v3

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v3, v4

    int-to-float v2, v3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    int-to-float v2, v3

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    :goto_2
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValuesForEbookOnly:[I

    array-length v3, v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValuesForEbookOnly:[I

    aget v3, v3, v1

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevelsForEbookOnly:[I

    array-length v3, v3

    if-lt v1, v3, :cond_7

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevelsForEbookOnly:[I

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevelsForEbookOnly:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    int-to-float v2, v3

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisSlopeForEbookOnly:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v4, v3, v4

    cmpl-double v3, v4, v6

    if-lez v3, :cond_8

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisSlopeForEbookOnly:[D

    add-int/lit8 v6, v1, -0x1

    aget-wide v6, v3, v6

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValuesForEbookOnly:[I

    add-int/lit8 v8, v1, -0x1

    aget v3, v3, v8

    int-to-float v3, v3

    sub-float v3, p1, v3

    float-to-double v8, v3

    mul-double/2addr v6, v8

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevelsForEbookOnly:[I

    add-int/lit8 v8, v1, -0x1

    aget v3, v3, v8

    int-to-double v8, v3

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v3, v4

    int-to-float v2, v3

    goto/16 :goto_1

    :cond_8
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevelsForEbookOnly:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v2, v3

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DisplayPowerController"

    const-string v4, "[DAB] getDynamicAutoBrightnessLowHysteresis"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v2, 0x459c4000    # 5000.0f

    goto/16 :goto_1
.end method

.method protected getDynamicAutoBrightnessValue(F)F
    .locals 12
    .param p1, "lux"    # F

    .prologue
    const-wide/16 v6, 0x0

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    const/4 v0, 0x0

    .local v0, "cd":F
    const/4 v2, 0x0

    .local v2, "i":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->access$1400(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v3

    iget-boolean v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-nez v3, :cond_4

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    aget v3, v3, v2

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    array-length v3, v3

    if-lt v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    int-to-float v0, v3

    .end local v0    # "cd":F
    :goto_1
    return v0

    .restart local v0    # "cd":F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValueSlope:[D

    add-int/lit8 v4, v2, -0x1

    aget-wide v4, v3, v4

    cmpl-double v3, v4, v6

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValueSlope:[D

    add-int/lit8 v4, v2, -0x1

    aget-wide v4, v3, v4

    float-to-double v6, p1

    add-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    add-int/lit8 v8, v2, -0x1

    aget v3, v3, v8

    int-to-double v8, v3

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    add-int/lit8 v6, v2, -0x1

    aget v3, v3, v6

    int-to-double v6, v3

    add-double/2addr v4, v6

    double-to-int v3, v4

    int-to-float v0, v3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    int-to-float v0, v3

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    :goto_2
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevelsForEbookOnly:[I

    array-length v3, v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevelsForEbookOnly:[I

    aget v3, v3, v2

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValuesForEbookOnly:[I

    array-length v3, v3

    if-lt v2, v3, :cond_7

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValuesForEbookOnly:[I

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValuesForEbookOnly:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    int-to-float v0, v3

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValueSlopeForEbookOnly:[D

    add-int/lit8 v4, v2, -0x1

    aget-wide v4, v3, v4

    cmpl-double v3, v4, v6

    if-lez v3, :cond_8

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValueSlopeForEbookOnly:[D

    add-int/lit8 v4, v2, -0x1

    aget-wide v4, v3, v4

    float-to-double v6, p1

    add-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevelsForEbookOnly:[I

    add-int/lit8 v8, v2, -0x1

    aget v3, v3, v8

    int-to-double v8, v3

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValuesForEbookOnly:[I

    add-int/lit8 v6, v2, -0x1

    aget v3, v3, v6

    int-to-double v6, v3

    add-double/2addr v4, v6

    double-to-int v3, v4

    int-to-float v0, v3

    goto/16 :goto_1

    :cond_8
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValuesForEbookOnly:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v0, v3

    goto/16 :goto_1

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "DisplayPowerController"

    const-string v4, "[DAB] getDynamicAutoBrightnessValue"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/high16 v0, 0x437f0000    # 255.0f

    goto/16 :goto_1
.end method

.method protected getFinalDynamicAutoBrightnessValue(FF)I
    .locals 8
    .param p1, "lux"    # F
    .param p2, "origDynamicBrightness"    # F

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    float-to-int v1, p2

    .local v1, "finalBrightness":I
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->access$1400(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v2

    iget v0, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    .local v0, "autoBrightnessAdj":F
    const v2, 0x459c4000    # 5000.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowLimitAtHighestAutoBrightnessLevel:I

    if-ge v1, v2, :cond_0

    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DAB] finalBrightness : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowLimitAtHighestAutoBrightnessLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowLimitAtHighestAutoBrightnessLevel:I

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mIsTablet:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1

    float-to-double v2, v0

    const-wide v4, -0x4026666666666666L    # -0.4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumExpressiveBrightnessValues:[I

    aget v2, v2, v6

    if-le v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumExpressiveBrightnessValues:[I

    aget v1, v2, v6

    :cond_1
    :goto_0
    return v1

    :cond_2
    float-to-double v2, v0

    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumExpressiveBrightnessValues:[I

    aget v2, v2, v7

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumExpressiveBrightnessValues:[I

    aget v1, v2, v7

    goto :goto_0
.end method

.method protected initDynamicAutoBrightnessSlopeTables()V
    .locals 15

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    array-length v0, v0

    add-int/lit8 v12, v0, -0x1

    .local v12, "lengthOfLowHysteresisSlope":I
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    array-length v0, v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "lengthOfBrightnessValueSlope":I
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    array-length v0, v0

    add-int/lit8 v10, v0, -0x1

    .local v10, "lengthOfHighHysteresisSlope":I
    new-array v0, v12, [D

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisSlope:[D

    new-array v0, v8, [D

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValueSlope:[D

    new-array v0, v10, [D

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisSlope:[D

    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v12, :cond_0

    iget-object v14, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisSlope:[D

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v14, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_1

    iget-object v14, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValueSlope:[D

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v14, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v10, :cond_2

    iget-object v14, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisSlope:[D

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v14, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValuesForEbookOnly:[I

    array-length v0, v0

    add-int/lit8 v13, v0, -0x1

    .local v13, "lengthOfLowHysteresisSlopeForEbookOnly":I
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValuesForEbookOnly:[I

    array-length v0, v0

    add-int/lit8 v9, v0, -0x1

    .local v9, "lengthOfBrightnessValueSlopeForEbookOnly":I
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValuesForEbookOnly:[I

    array-length v0, v0

    add-int/lit8 v11, v0, -0x1

    .local v11, "lengthOfHighHysteresisSlopeForEbookOnly":I
    new-array v0, v13, [D

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisSlopeForEbookOnly:[D

    new-array v0, v9, [D

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValueSlopeForEbookOnly:[D

    new-array v0, v11, [D

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisSlopeForEbookOnly:[D

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v13, :cond_3

    iget-object v14, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisSlopeForEbookOnly:[D

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevelsForEbookOnly:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValuesForEbookOnly:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevelsForEbookOnly:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValuesForEbookOnly:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v14, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v9, :cond_4

    iget-object v14, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValueSlopeForEbookOnly:[D

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevelsForEbookOnly:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValuesForEbookOnly:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevelsForEbookOnly:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValuesForEbookOnly:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v14, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v11, :cond_5

    iget-object v14, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisSlopeForEbookOnly:[D

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevelsForEbookOnly:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValuesForEbookOnly:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevelsForEbookOnly:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValuesForEbookOnly:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v14, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .end local v7    # "i":I
    .end local v8    # "lengthOfBrightnessValueSlope":I
    .end local v9    # "lengthOfBrightnessValueSlopeForEbookOnly":I
    .end local v10    # "lengthOfHighHysteresisSlope":I
    .end local v11    # "lengthOfHighHysteresisSlopeForEbookOnly":I
    .end local v12    # "lengthOfLowHysteresisSlope":I
    .end local v13    # "lengthOfLowHysteresisSlopeForEbookOnly":I
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "DisplayPowerController"

    const-string v1, "[DAB] initDynamicAutoBrightnessSlopeTables"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5
    return-void
.end method

.method protected initializeProperties()V
    .locals 18

    .prologue
    const-string v10, "DisplayPowerController"

    const-string v11, "[DAB] Load SEC Auto-brightness setting"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/display/DisplayPowerController;->access$1300(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .local v7, "resources":Landroid/content/res/Resources;
    const v10, 0x10e00b5

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mValueOfVirtualZeroCandela:I

    const v10, 0x1070049

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    const v10, 0x107004a

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    const v10, 0x107004b

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    const v10, 0x107004c

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    const v10, 0x107004d

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    const v10, 0x107004e

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    const v10, 0x107004f

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevelsForEbookOnly:[I

    const v10, 0x1070050

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValuesForEbookOnly:[I

    const v10, 0x1070051

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevelsForEbookOnly:[I

    const v10, 0x1070052

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValuesForEbookOnly:[I

    const v10, 0x1070053

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevelsForEbookOnly:[I

    const v10, 0x1070054

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValuesForEbookOnly:[I

    const v10, 0x1070048

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumExpressiveBrightnessValues:[I

    const v10, 0x10e00b3

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumBrightnessStepValue:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->initDynamicAutoBrightnessSlopeTables()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/display/DisplayPowerController;->access$1300(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v10

    const-string v11, "power"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .local v6, "pm":Landroid/os/PowerManager;
    const/4 v3, 0x0

    .local v3, "i":I
    const/high16 v4, 0x43fa0000    # 500.0f

    .local v4, "lux":F
    const/4 v8, 0x0

    .local v8, "screenBrightnessSettingDefault":F
    const/4 v3, 0x1

    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    array-length v10, v10

    if-ge v3, v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    aget v10, v10, v3

    int-to-float v10, v10

    cmpg-float v10, v4, v10

    if-gtz v10, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    array-length v10, v10

    if-lt v3, v10, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v8, v10

    :goto_1
    invoke-virtual {v6}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v9

    .local v9, "screenBrightnessSettingMaximum":I
    int-to-float v10, v9

    div-float/2addr v10, v8

    const v11, 0x3e4ccccd    # 0.2f

    invoke-static {v10, v11}, Landroid/util/FloatMath;->pow(FF)F

    move-result v5

    .local v5, "max_default_ratio":F
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v10, v5, v10

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v10, v10

    const/high16 v11, 0x42c80000    # 100.0f

    div-float/2addr v10, v11

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatio:F

    return-void

    .end local v5    # "max_default_ratio":F
    .end local v9    # "screenBrightnessSettingMaximum":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValueSlope:[D

    add-int/lit8 v11, v3, -0x1

    aget-wide v10, v10, v11

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValueSlope:[D

    add-int/lit8 v11, v3, -0x1

    aget-wide v10, v10, v11

    float-to-double v12, v4

    const-wide v14, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->log10(D)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    add-int/lit8 v15, v3, -0x1

    aget v14, v14, v15

    int-to-double v14, v14

    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->log10(D)D

    move-result-wide v14

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    add-int/lit8 v13, v3, -0x1

    aget v12, v12, v13

    int-to-double v12, v12

    add-double/2addr v10, v12

    double-to-int v10, v10

    int-to-float v8, v10

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    add-int/lit8 v11, v3, -0x1

    aget v10, v10, v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    int-to-float v8, v10

    goto :goto_1

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "DisplayPowerController"

    const-string v11, "[DAB] Failed to get the Auto Brightness Setting Default value."

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v6}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v10

    int-to-float v8, v10

    goto :goto_1
.end method
