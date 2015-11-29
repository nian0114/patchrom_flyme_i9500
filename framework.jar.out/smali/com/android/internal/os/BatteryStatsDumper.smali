.class public Lcom/android/internal/os/BatteryStatsDumper;
.super Ljava/lang/Object;
.source "BatteryStatsDumper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsDumper$1;,
        Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BatteryStatsDumper"

.field static cal:Ljava/util/Calendar;

.field public static db:Lcom/android/internal/os/BatteryStatsDBHelper;

.field private static sPrevBatteryLevel:I

.field public static sScreenOn:Z


# instance fields
.field private mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mContext:Landroid/content/Context;

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private final mStatsType:I

.field private pm:Landroid/content/pm/PackageManager;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mStatsType:I

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsDumper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->pm:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsDumper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getInstance(Landroid/content/Context;)Lcom/android/internal/os/BatteryStatsDBHelper;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    sget-wide v0, Lcom/android/internal/os/BatteryStatsDBHelper;->sBatteryCapacity:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/os/BatteryStatsDBHelper;->sBatteryCapacity:D

    :cond_0
    return-void
.end method

.method private addScreenUsage(J)D
    .locals 23
    .param p1, "rawRealtime"    # J

    .prologue
    const-wide/16 v10, 0x0

    .local v10, "power":D
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v18, 0x0

    move-wide/from16 v0, p1

    move/from16 v2, v18

    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v16, v18, v20

    .local v16, "screenOnTimeMs":J
    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v20, "screen.on"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v10, v10, v18

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v18, "screen.full"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v14

    .local v14, "screenFullPower":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v7, 0x5

    if-ge v6, v7, :cond_0

    int-to-float v7, v6

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v7, v7, v18

    float-to-double v0, v7

    move-wide/from16 v18, v0

    mul-double v18, v18, v14

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    div-double v12, v18, v20

    .local v12, "screenBinPower":D
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v18, 0x0

    move-wide/from16 v0, p1

    move/from16 v2, v18

    invoke-virtual {v7, v6, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v4, v18, v20

    .local v4, "brightnessTime":J
    long-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v8, v12, v18

    .local v8, "p":D
    const-string v7, "BatteryStatsDumper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Screen bin #"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": time="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " power="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-wide v20, 0x414b774000000000L    # 3600000.0

    div-double v20, v8, v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-double/2addr v10, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v4    # "brightnessTime":J
    .end local v8    # "p":D
    .end local v12    # "screenBinPower":D
    :cond_0
    const-wide v18, 0x414b774000000000L    # 3600000.0

    div-double v10, v10, v18

    return-wide v10
.end method

.method private getByteFromFile(Ljava/lang/String;)B
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x8

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .local v4, "s":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .local v3, "ret":B
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v4    # "s":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    return v3

    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "ret":B
    .end local v4    # "s":Ljava/lang/String;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v3, -0x1

    .restart local v3    # "ret":B
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "ret":B
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_3
    throw v5

    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "s":Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private getMobilePowerPerMs()D
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private getMobilePowerPerPacket(J)D
    .locals 23
    .param p1, "rawRealtime"    # J

    .prologue
    const-wide/32 v4, 0x30d40

    .local v4, "MOBILE_BPS":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v18, v0

    const-string v19, "radio.active"

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v18

    const-wide v20, 0x40ac200000000000L    # 3600.0

    div-double v6, v18, v20

    .local v6, "MOBILE_POWER":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkActivityPackets(II)J

    move-result-wide v12

    .local v12, "mobileRx":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkActivityPackets(II)J

    move-result-wide v14

    .local v14, "mobileTx":J
    add-long v8, v12, v14

    .local v8, "mobileData":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileRadioActiveTime(JI)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v16, v18, v20

    .local v16, "radioDataUptimeMs":J
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-eqz v18, :cond_0

    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-eqz v18, :cond_0

    long-to-double v0, v8

    move-wide/from16 v18, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v10, v18, v20

    .local v10, "mobilePps":D
    :goto_0
    div-double v18, v6, v10

    const-wide v20, 0x40ac200000000000L    # 3600.0

    div-double v18, v18, v20

    return-wide v18

    .end local v10    # "mobilePps":D
    :cond_0
    const-wide v10, 0x40286a0000000000L    # 12.20703125

    goto :goto_0
.end method

.method private getWifiPowerPerPacket()D
    .locals 8

    .prologue
    const-wide v6, 0x40ac200000000000L    # 3600.0

    const-wide/32 v0, 0xf4240

    .local v0, "WIFI_BPS":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "wifi.active"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    div-double v2, v4, v6

    .local v2, "WIFI_POWER":D
    const-wide v4, 0x404e848000000000L    # 61.03515625

    div-double v4, v2, v4

    div-double/2addr v4, v6

    return-wide v4
.end method

.method private load()V
    .locals 5

    .prologue
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsDumper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .local v2, "parcel":Landroid/os/Parcel;
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v3, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "data":[B
    .end local v2    # "parcel":Landroid/os/Parcel;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public computeSavedTimeAfterKillingPackage(Ljava/lang/String;)J
    .locals 26
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    const-string v20, "BatteryStatsDumper"

    const-string v21, "computeSavedTimeAfterKillingPackage:: start"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v20, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->getAverageLevelDropPerHour(Ljava/lang/String;)D

    move-result-wide v6

    .local v6, "consumptionRateOfPackage":D
    const-string v20, "BatteryStatsDumper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computeSavedTimeAfterKillingPackage:: consumptionRateOfPackage:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    .local v8, "consumptionRateTotal":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v21, v0

    monitor-enter v21
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeStepDurationsArray()[J

    move-result-object v5

    .local v5, "dischageSteps":[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/BatteryStatsImpl;->getNumDischargeStepDurations()I

    move-result v10

    .local v10, "dischageStepsNum":I
    const-string v20, "BatteryStatsDumper"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "computeSavedTimeAfterKillingPackage:: dischageStepsNum:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v10, :cond_0

    const-wide/16 v12, -0x1

    monitor-exit v21

    .end local v5    # "dischageSteps":[J
    .end local v6    # "consumptionRateOfPackage":D
    .end local v8    # "consumptionRateTotal":D
    .end local v10    # "dischageStepsNum":I
    :goto_0
    return-wide v12

    .restart local v5    # "dischageSteps":[J
    .restart local v6    # "consumptionRateOfPackage":D
    .restart local v8    # "consumptionRateTotal":D
    .restart local v10    # "dischageStepsNum":I
    :cond_0
    const-wide/16 v18, 0x0

    .local v18, "total":J
    const-wide v16, 0xffffffffffL

    .local v16, "stepLevelTimeMask":J
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v10, :cond_1

    const-string v20, "BatteryStatsDumper"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "computeSavedTimeAfterKillingPackage:: i:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " dischageSteps:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-wide v24, v5, v12

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " stepLevelTimeMask:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget-wide v22, v5, v12

    and-long v22, v22, v16

    add-long v18, v18, v22

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    mul-int/lit16 v0, v10, 0xe10

    move/from16 v20, v0

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v22, v0

    div-long v22, v22, v18

    move-wide/from16 v0, v22

    long-to-double v8, v0

    const-string v20, "BatteryStatsDumper"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "computeSavedTimeAfterKillingPackage:: consumptionRateTotal:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    .local v4, "batteryLevel":I
    const-string v20, "BatteryStatsDumper"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "computeSavedTimeAfterKillingPackage:: batteryLevel:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v21

    const-wide/16 v20, 0x0

    cmpl-double v20, v8, v20

    if-nez v20, :cond_2

    const-wide/16 v12, -0x1

    goto/16 :goto_0

    .end local v4    # "batteryLevel":I
    .end local v5    # "dischageSteps":[J
    .end local v10    # "dischageStepsNum":I
    .end local v12    # "i":I
    .end local v16    # "stepLevelTimeMask":J
    .end local v18    # "total":J
    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v20
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v6    # "consumptionRateOfPackage":D
    .end local v8    # "consumptionRateTotal":D
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/Exception;
    const-string v20, "BatteryStatsDumper"

    const-string v21, "computeSavedTimeAfterKillingPackage::  Exception"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v12, 0x0

    goto/16 :goto_0

    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v4    # "batteryLevel":I
    .restart local v5    # "dischageSteps":[J
    .restart local v6    # "consumptionRateOfPackage":D
    .restart local v8    # "consumptionRateTotal":D
    .restart local v10    # "dischageStepsNum":I
    .restart local v12    # "i":I
    .restart local v16    # "stepLevelTimeMask":J
    .restart local v18    # "total":J
    :cond_2
    const-wide/16 v14, 0x0

    .local v14, "newConsumptionRateTotal":D
    cmpl-double v20, v8, v6

    if-lez v20, :cond_3

    sub-double v14, v8, v6

    :goto_2
    :try_start_3
    const-string v20, "BatteryStatsDumper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Average battery consumption rate = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " app rate = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " new rate = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " current battery level = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-double v0, v4

    move-wide/from16 v20, v0

    mul-double v20, v20, v6

    const-wide v22, 0x40ac200000000000L    # 3600.0

    mul-double v20, v20, v22

    const-wide v22, 0x408f400000000000L    # 1000.0

    mul-double v20, v20, v22

    mul-double v22, v8, v14

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-long v12, v0

    .local v12, "i":J
    const-string v20, "BatteryStatsDumper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computeSavedTimeAfterKillingPackage:: returning i:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .local v12, "i":I
    :cond_3
    sub-double v14, v6, v8

    goto :goto_2
.end method

.method public getBatteryLevel()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, "battValue":I
    const/4 v1, -0x1

    .local v1, "batteryLevel":B
    const-string v2, "/sys/class/power_supply/battery/capacity"

    invoke-direct {p0, v2}, Lcom/android/internal/os/BatteryStatsDumper;->getByteFromFile(Ljava/lang/String;)B

    move-result v1

    if-gez v1, :cond_0

    const/16 v0, 0x64

    :goto_0
    const-string v2, "BatteryStatsDumper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public refreshStats(Z)V
    .locals 118
    .param p1, "isWriteReasonScreenChange"    # Z

    .prologue
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDumper;->load()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsDumper;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsDumper;->mContext:Landroid/content/Context;

    const-string v12, "sensor"

    invoke-virtual {v5, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/os/BatteryStatsDumper;->sensorManager:Landroid/hardware/SensorManager;

    :cond_0
    const/16 v106, 0x0

    .local v106, "which":I
    const-wide/16 v18, 0x0

    .local v18, "totalPower":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v5}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v85

    .local v85, "speedSteps":I
    move/from16 v0, v85

    new-array v0, v0, [D

    move-object/from16 v72, v0

    .local v72, "powerCpuNormal":[D
    move/from16 v0, v85

    new-array v0, v0, [J

    move-object/from16 v37, v0

    .local v37, "cpuSpeedStepTimes":[J
    const/16 v68, 0x0

    .local v68, "p":I
    :goto_0
    move/from16 v0, v68

    move/from16 v1, v85

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v12, "cpu.active"

    move/from16 v0, v68

    invoke-virtual {v5, v12, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v12

    aput-wide v12, v72, v68

    add-int/lit8 v68, v68, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const-wide/16 v16, 0x3e8

    mul-long v54, v12, v16

    .local v54, "mRawRealtime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v54

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsDumper;->getMobilePowerPerPacket(J)D

    move-result-wide v60

    .local v60, "mobilePowerPerPacket":D
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDumper;->getMobilePowerPerMs()D

    move-result-wide v58

    .local v58, "mobilePowerPerMs":D
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDumper;->getWifiPowerPerPacket()D

    move-result-wide v108

    .local v108, "wifiPowerPerPacket":D
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    sput-object v5, Lcom/android/internal/os/BatteryStatsDumper;->cal:Ljava/util/Calendar;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/android/internal/os/BatteryStatsDumper;->cal:Ljava/util/Calendar;

    const/4 v13, 0x6

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ":"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v12, Lcom/android/internal/os/BatteryStatsDumper;->cal:Ljava/util/Calendar;

    const/16 v13, 0xb

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ":"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v12, Lcom/android/internal/os/BatteryStatsDumper;->cal:Ljava/util/Calendar;

    const/16 v13, 0xc

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    .local v92, "time":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v98

    .local v98, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v98 .. v98}, Landroid/util/SparseArray;->size()I

    move-result v33

    .local v33, "NU":I
    const-string v5, "BatteryStatsDumper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "In refreshStats isReason Screen ON/OFF: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .local v29, "powerEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsDumper$PowerObject;>;"
    const/16 v53, 0x0

    .end local v68    # "p":I
    .local v53, "iu":I
    :goto_1
    move/from16 v0, v53

    move/from16 v1, v33

    if-ge v0, v1, :cond_16

    move-object/from16 v0, v98

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/os/BatteryStats$Uid;

    .local v97, "u":Landroid/os/BatteryStats$Uid;
    const-wide/16 v6, 0x0

    .local v6, "power":D
    const-wide/16 v50, 0x0

    .local v50, "highestDrain":D
    const/16 v70, 0x0

    .local v70, "packageWithHighestDrain":Ljava/lang/String;
    invoke-virtual/range {v97 .. v97}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v76

    .local v76, "processStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-wide/16 v40, 0x0

    .local v40, "cpuTime":J
    const-wide/16 v38, 0x0

    .local v38, "cpuFgTime":J
    const-wide/16 v104, 0x0

    .local v104, "wakelockTime":J
    const-wide/16 v48, 0x0

    .local v48, "gpsTime":J
    const-wide/16 v14, 0x0

    .local v14, "uidUsageTime":J
    invoke-interface/range {v76 .. v76}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_8

    invoke-interface/range {v76 .. v76}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v45

    .local v45, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/util/Map$Entry;

    .local v44, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v44 .. v44}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/os/BatteryStats$Uid$Proc;

    .local v77, "ps":Landroid/os/BatteryStats$Uid$Proc;
    invoke-interface/range {v44 .. v44}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Ljava/lang/String;

    .local v73, "process":Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, v77

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v100

    .local v100, "userTime":J
    const/4 v5, 0x0

    move-object/from16 v0, v77

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v90

    .local v90, "systemTime":J
    const/4 v5, 0x0

    move-object/from16 v0, v77

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v46

    .local v46, "foregroundTime":J
    const-wide/16 v12, 0xa

    mul-long v12, v12, v46

    add-long v38, v38, v12

    add-long v12, v100, v90

    const-wide/16 v16, 0xa

    mul-long v94, v12, v16

    .local v94, "tmpCpuTime":J
    const/16 v96, 0x0

    .local v96, "totalTimeAtSpeeds":I
    const-wide/16 v42, 0x0

    .local v42, "cpu_power":D
    const/16 v88, 0x0

    .local v88, "step":I
    :goto_3
    move/from16 v0, v88

    move/from16 v1, v85

    if-ge v0, v1, :cond_3

    const/4 v5, 0x0

    move-object/from16 v0, v77

    move/from16 v1, v88

    invoke-virtual {v0, v1, v5}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v12

    aput-wide v12, v37, v88

    move/from16 v0, v96

    int-to-long v12, v0

    aget-wide v16, v37, v88

    add-long v12, v12, v16

    long-to-int v0, v12

    move/from16 v96, v0

    add-int/lit8 v88, v88, 0x1

    goto :goto_3

    :cond_3
    if-nez v96, :cond_4

    const/16 v96, 0x1

    :cond_4
    const-wide/16 v74, 0x0

    .local v74, "processPower":D
    const/16 v88, 0x0

    :goto_4
    move/from16 v0, v88

    move/from16 v1, v85

    if-ge v0, v1, :cond_5

    aget-wide v12, v37, v88

    long-to-double v12, v12

    move/from16 v0, v96

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v78, v12, v16

    .local v78, "ratio":D
    move-wide/from16 v0, v94

    long-to-double v12, v0

    mul-double v12, v12, v78

    aget-wide v16, v72, v88

    mul-double v12, v12, v16

    add-double v74, v74, v12

    add-int/lit8 v88, v88, 0x1

    goto :goto_4

    .end local v78    # "ratio":D
    :cond_5
    add-long v40, v40, v94

    const-wide/16 v12, 0x0

    cmpl-double v5, v74, v12

    if-eqz v5, :cond_2

    add-double v6, v6, v74

    if-eqz v70, :cond_6

    const-string v5, "*"

    move-object/from16 v0, v70

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    move-wide/from16 v50, v74

    invoke-interface/range {v44 .. v44}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v70

    .end local v70    # "packageWithHighestDrain":Ljava/lang/String;
    check-cast v70, Ljava/lang/String;

    .restart local v70    # "packageWithHighestDrain":Ljava/lang/String;
    goto/16 :goto_2

    :cond_7
    cmpg-double v5, v50, v74

    if-gez v5, :cond_2

    invoke-interface/range {v44 .. v44}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v12, "*"

    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    move-wide/from16 v50, v74

    invoke-interface/range {v44 .. v44}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v70

    .end local v70    # "packageWithHighestDrain":Ljava/lang/String;
    check-cast v70, Ljava/lang/String;

    .restart local v70    # "packageWithHighestDrain":Ljava/lang/String;
    goto/16 :goto_2

    .end local v42    # "cpu_power":D
    .end local v44    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v45    # "i$":Ljava/util/Iterator;
    .end local v46    # "foregroundTime":J
    .end local v73    # "process":Ljava/lang/String;
    .end local v74    # "processPower":D
    .end local v77    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v88    # "step":I
    .end local v90    # "systemTime":J
    .end local v94    # "tmpCpuTime":J
    .end local v96    # "totalTimeAtSpeeds":I
    .end local v100    # "userTime":J
    :cond_8
    cmp-long v5, v38, v40

    if-lez v5, :cond_a

    const-wide/16 v12, 0x2710

    add-long v12, v12, v40

    cmp-long v5, v38, v12

    if-lez v5, :cond_9

    const-string v5, "BatteryStatsDumper"

    const-string v12, "WARNING! Cputime is more than 10 seconds behind Foreground time"

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-wide/from16 v40, v38

    :cond_a
    const-wide v12, 0x414b774000000000L    # 3600000.0

    div-double/2addr v6, v12

    add-long v14, v14, v40

    invoke-virtual/range {v97 .. v97}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v103

    .local v103, "wakelockStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v103 .. v103}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v45

    .restart local v45    # "i$":Ljava/util/Iterator;
    :cond_b
    :goto_5
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Ljava/util/Map$Entry;

    .local v102, "wakelockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v102 .. v102}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v99

    check-cast v99, Landroid/os/BatteryStats$Uid$Wakelock;

    .local v99, "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v5, 0x0

    move-object/from16 v0, v99

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v93

    .local v93, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v93, :cond_b

    const/4 v5, 0x0

    move-object/from16 v0, v93

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v12

    add-long v104, v104, v12

    goto :goto_5

    .end local v93    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v99    # "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v102    # "wakelockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_c
    const-wide/16 v12, 0x3e8

    div-long v104, v104, v12

    move-wide/from16 v0, v104

    long-to-double v12, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v16, "cpu.awake"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v16

    mul-double v12, v12, v16

    const-wide v16, 0x414b774000000000L    # 3600000.0

    div-double v68, v12, v16

    .local v68, "p":D
    add-double v6, v6, v68

    add-long v14, v14, v104

    const/4 v5, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v97

    invoke-virtual {v0, v5, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v62

    .local v62, "mobileRx":J
    const/4 v5, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, v97

    invoke-virtual {v0, v5, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v64

    .local v64, "mobileTx":J
    const/4 v5, 0x0

    move-object/from16 v0, v97

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v56

    .local v56, "mobileActive":J
    const-wide/16 v12, 0x0

    cmp-long v5, v56, v12

    if-lez v5, :cond_d

    move-wide/from16 v0, v56

    long-to-double v12, v0

    mul-double v12, v12, v58

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v68, v12, v16

    :goto_6
    add-double v6, v6, v68

    add-long v14, v14, v56

    const/4 v5, 0x2

    const/4 v12, 0x0

    move-object/from16 v0, v97

    invoke-virtual {v0, v5, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v112

    .local v112, "wifiRx":J
    const/4 v5, 0x3

    const/4 v12, 0x0

    move-object/from16 v0, v97

    invoke-virtual {v0, v5, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v116

    .local v116, "wifiTx":J
    add-long v12, v112, v116

    long-to-double v12, v12

    mul-double v68, v12, v108

    add-double v6, v6, v68

    const/4 v5, 0x0

    move-object/from16 v0, v97

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2, v5}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v12

    const-wide/16 v16, 0x3e8

    div-long v110, v12, v16

    .local v110, "wifiRunningTimeMs":J
    move-wide/from16 v0, v110

    long-to-double v12, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v16, "wifi.on"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v16

    mul-double v12, v12, v16

    const-wide v16, 0x414b774000000000L    # 3600000.0

    div-double v68, v12, v16

    add-double v6, v6, v68

    add-long v14, v14, v110

    const/4 v5, 0x0

    move-object/from16 v0, v97

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2, v5}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v12

    const-wide/16 v16, 0x3e8

    div-long v114, v12, v16

    .local v114, "wifiScanTimeMs":J
    move-wide/from16 v0, v114

    long-to-double v12, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v16, "wifi.scan"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v16

    mul-double v12, v12, v16

    const-wide v16, 0x414b774000000000L    # 3600000.0

    div-double v68, v12, v16

    add-double v6, v6, v68

    add-long v14, v14, v114

    const/16 v36, 0x0

    .local v36, "bin":I
    :goto_7
    const/4 v5, 0x5

    move/from16 v0, v36

    if-ge v0, v5, :cond_e

    const/4 v5, 0x0

    move-object/from16 v0, v97

    move/from16 v1, v36

    move-wide/from16 v2, v54

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/os/BatteryStats$Uid;->getWifiBatchedScanTime(IJI)J

    move-result-wide v12

    const-wide/16 v16, 0x3e8

    div-long v34, v12, v16

    .local v34, "batchScanTimeMs":J
    move-wide/from16 v0, v34

    long-to-double v12, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v16, "wifi.batchedscan"

    move-object/from16 v0, v16

    move/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v16

    mul-double v12, v12, v16

    const-wide v16, 0x414b774000000000L    # 3600000.0

    div-double v68, v12, v16

    add-double v6, v6, v68

    add-long v14, v14, v34

    add-int/lit8 v36, v36, 0x1

    goto :goto_7

    .end local v34    # "batchScanTimeMs":J
    .end local v36    # "bin":I
    .end local v110    # "wifiRunningTimeMs":J
    .end local v112    # "wifiRx":J
    .end local v114    # "wifiScanTimeMs":J
    .end local v116    # "wifiTx":J
    :cond_d
    add-long v12, v62, v64

    long-to-double v12, v12

    mul-double v68, v12, v60

    goto/16 :goto_6

    .restart local v36    # "bin":I
    .restart local v110    # "wifiRunningTimeMs":J
    .restart local v112    # "wifiRx":J
    .restart local v114    # "wifiScanTimeMs":J
    .restart local v116    # "wifiTx":J
    :cond_e
    invoke-virtual/range {v97 .. v97}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v84

    .local v84, "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v84 .. v84}, Landroid/util/SparseArray;->size()I

    move-result v32

    .local v32, "NSE":I
    const/16 v52, 0x0

    .local v52, "ise":I
    :goto_8
    move/from16 v0, v52

    move/from16 v1, v32

    if-ge v0, v1, :cond_11

    move-object/from16 v0, v84

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v81

    check-cast v81, Landroid/os/BatteryStats$Uid$Sensor;

    .local v81, "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    move-object/from16 v0, v84

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v82

    .local v82, "sensorHandle":I
    invoke-virtual/range {v81 .. v81}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v93

    .restart local v93    # "timer":Landroid/os/BatteryStats$Timer;
    const/4 v5, 0x0

    move-object/from16 v0, v93

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v12

    const-wide/16 v16, 0x3e8

    div-long v86, v12, v16

    .local v86, "sensorTime":J
    const-wide/16 v66, 0x0

    .local v66, "multiplier":D
    packed-switch v82, :pswitch_data_0

    const-string v5, "BatteryStatsDumper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Sensor Type : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v82

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsDumper;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v12, -0x1

    invoke-virtual {v5, v12}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v83

    .local v83, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface/range {v83 .. v83}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v45

    :cond_f
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Landroid/hardware/Sensor;

    .local v80, "s":Landroid/hardware/Sensor;
    invoke-virtual/range {v80 .. v80}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    move/from16 v0, v82

    if-ne v5, v0, :cond_f

    invoke-virtual/range {v80 .. v80}, Landroid/hardware/Sensor;->getPower()F

    move-result v5

    float-to-double v0, v5

    move-wide/from16 v66, v0

    .end local v80    # "s":Landroid/hardware/Sensor;
    .end local v83    # "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_10
    :goto_9
    move-wide/from16 v0, v86

    long-to-double v12, v0

    mul-double v12, v12, v66

    const-wide v16, 0x414b774000000000L    # 3600000.0

    div-double v68, v12, v16

    add-double v6, v6, v68

    add-long v14, v14, v86

    const-string v5, "BatteryStatsDumper"

    const-string v12, "sensor %s power=%.2f"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual/range {v81 .. v81}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v13, v16

    const/16 v16, 0x1

    invoke-static/range {v68 .. v69}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v13, v16

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v52, v52, 0x1

    goto/16 :goto_8

    :pswitch_0
    const-string v5, "BatteryStatsDumper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Sensor Type : GPS : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v82

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v12, "gps.on"

    invoke-virtual {v5, v12}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v66

    move-wide/from16 v48, v86

    goto :goto_9

    .end local v66    # "multiplier":D
    .end local v81    # "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v82    # "sensorHandle":I
    .end local v86    # "sensorTime":J
    .end local v93    # "timer":Landroid/os/BatteryStats$Timer;
    :cond_11
    const-wide/16 v12, 0x0

    cmpg-double v5, v6, v12

    if-gez v5, :cond_12

    const-string v5, "BatteryStatsDumper"

    const-string v12, " calculated power is negative"

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    :cond_12
    invoke-virtual/range {v97 .. v97}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v89

    .local v89, "thisUid":I
    const/4 v8, 0x0

    .local v8, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsDumper;->pm:Landroid/content/pm/PackageManager;

    move/from16 v0, v89

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v71

    .local v71, "packages":[Ljava/lang/String;
    if-eqz v71, :cond_15

    move-object/from16 v0, v71

    array-length v5, v0

    if-lez v5, :cond_15

    const/4 v5, 0x0

    aget-object v8, v71, v5

    :goto_a
    const/4 v9, 0x0

    .local v9, "isSystem":Z
    const/16 v5, 0x2710

    move/from16 v0, v89

    if-ge v0, v5, :cond_13

    const/4 v9, 0x1

    :cond_13
    if-nez v9, :cond_14

    add-double v18, v18, v6

    :cond_14
    add-long v12, v112, v116

    add-long v12, v12, v62

    add-long v10, v12, v64

    .local v10, "totalNetworkUsage":J
    new-instance v4, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;

    const-wide/16 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;-><init>(Lcom/android/internal/os/BatteryStatsDumper;DLjava/lang/String;ZJDJLcom/android/internal/os/BatteryStatsDumper$1;)V

    .local v4, "pObject":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v53, v53, 0x1

    goto/16 :goto_1

    .end local v4    # "pObject":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .end local v9    # "isSystem":Z
    .end local v10    # "totalNetworkUsage":J
    :cond_15
    move-object/from16 v8, v70

    goto :goto_a

    .end local v6    # "power":D
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v14    # "uidUsageTime":J
    .end local v32    # "NSE":I
    .end local v36    # "bin":I
    .end local v38    # "cpuFgTime":J
    .end local v40    # "cpuTime":J
    .end local v45    # "i$":Ljava/util/Iterator;
    .end local v48    # "gpsTime":J
    .end local v50    # "highestDrain":D
    .end local v52    # "ise":I
    .end local v56    # "mobileActive":J
    .end local v62    # "mobileRx":J
    .end local v64    # "mobileTx":J
    .end local v68    # "p":D
    .end local v70    # "packageWithHighestDrain":Ljava/lang/String;
    .end local v71    # "packages":[Ljava/lang/String;
    .end local v76    # "processStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v84    # "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v89    # "thisUid":I
    .end local v97    # "u":Landroid/os/BatteryStats$Uid;
    .end local v103    # "wakelockStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v104    # "wakelockTime":J
    .end local v110    # "wifiRunningTimeMs":J
    .end local v112    # "wifiRx":J
    .end local v114    # "wifiScanTimeMs":J
    .end local v116    # "wifiTx":J
    :cond_16
    const-string v5, "BatteryStatsDumper"

    const-string v12, "UID loop over"

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-wide/from16 v1, v54

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsDumper;->addScreenUsage(J)D

    move-result-wide v24

    .local v24, "screenPower":D
    new-instance v4, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;

    const-string v20, "all"

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v16, v4

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v28}, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;-><init>(Lcom/android/internal/os/BatteryStatsDumper;DLjava/lang/String;ZJDJLcom/android/internal/os/BatteryStatsDumper$1;)V

    .restart local v4    # "pObject":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v0, v5, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    move/from16 v31, v0

    .local v31, "currentBatteryLevel":I
    sget v5, Lcom/android/internal/os/BatteryStatsDumper;->sPrevBatteryLevel:I

    sub-int v30, v5, v31

    .local v30, "delta":I
    const-string v5, "BatteryStatsDumper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Previous Battery Level: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/android/internal/os/BatteryStatsDumper;->sPrevBatteryLevel:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Current Level: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Delta: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v30, :cond_17

    const/16 v30, 0x0

    :cond_17
    const-string v5, "BatteryStatsDumper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Battery delta value updated in db: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput v31, Lcom/android/internal/os/BatteryStatsDumper;->sPrevBatteryLevel:I

    const-string v5, "BatteryStatsDumper"

    const-string v12, "Writing battery level to database"

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v26, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    move/from16 v27, p1

    move-object/from16 v28, v92

    invoke-virtual/range {v26 .. v31}, Lcom/android/internal/os/BatteryStatsDBHelper;->addStatsToDB(ZLjava/lang/String;Ljava/util/ArrayList;II)V

    const-string v5, "BatteryStatsDumper"

    const-string v12, "Writing to database completed"

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method public updateAppLaunch(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsDumper;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->addAppLaunch(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updatePrevBatteryValue()V
    .locals 2

    .prologue
    const-string v0, "BatteryStatsDumper"

    const-string v1, "Updating previous battery level value"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDumper;->getBatteryLevel()I

    move-result v0

    sput v0, Lcom/android/internal/os/BatteryStatsDumper;->sPrevBatteryLevel:I

    return-void
.end method
