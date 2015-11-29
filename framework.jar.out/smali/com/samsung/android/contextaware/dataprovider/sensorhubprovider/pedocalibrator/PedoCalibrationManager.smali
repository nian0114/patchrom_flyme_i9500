.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;
.super Ljava/lang/Object;
.source "PedoCalibrationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;,
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;
    }
.end annotation


# static fields
.field private static final PEDOCALIB_GPS_UPDATE:I = 0x2

.field private static final PEDOCALIB_PEDO_UPDATE:I = 0x1

.field private static final PEDO_FILE_DIR:Ljava/lang/String; = "/data/misc/CAE/Pedo"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mDebugMsg:Ljava/lang/String;

.field private mGender:I

.field private mGpsTimeStamp:J

.field private final mHandler:Landroid/os/Handler;

.field private mHdop:F

.field private mHeight:D

.field private mLocationManager:Landroid/location/LocationManager;

.field private final mLooper:Landroid/os/Looper;

.field private final mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

.field mPedoCalListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;

.field private final mPedoCalibListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

.field private final mPedoCalibration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;

.field private mPedoReqTimeStamp:J

.field private final mSfTable:[D

.field private mStepCnt:J

.field private mTotalStepCnt:J

.field private mWeight:D

.field mfileOutDbgStream:Ljava/io/FileOutputStream;

.field private pedoStartFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "mPCalListener"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;

    .prologue
    const/16 v6, 0x14

    const/4 v1, 0x0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mGender:I

    iput-wide v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mHeight:D

    iput-wide v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mWeight:D

    iput-boolean v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->pedoStartFlag:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mHdop:F

    new-array v1, v6, [D

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mSfTable:[D

    iput-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mGpsTimeStamp:J

    iput-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoReqTimeStamp:J

    iput-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mStepCnt:J

    iput-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mTotalStepCnt:J

    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$3;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$4;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalibListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mDebugMsg:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mLocationManager:Landroid/location/LocationManager;

    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalibration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;

    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mLooper:Landroid/os/Looper;

    iput-object p3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mSfTable:[D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$1;

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$1;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalibration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->debugMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    .prologue
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mHdop:F

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mHdop:F

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)[D
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mSfTable:[D

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->storeSFToFile()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method private debugFile(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    return-void
.end method

.method private debugMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method private loadSFFromFile()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    const/16 v12, 0x14

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    const/4 v0, 0x0

    .local v0, "bufferReader":Ljava/io/BufferedReader;
    invoke-static {v8}, Landroid/os/Environment;->setUserRequired(Z)V

    new-instance v4, Ljava/io/File;

    const-string v8, "/data/misc/CAE/Pedo/PedoCalib.inf"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, "file":Ljava/io/File;
    const-string v6, " "

    .local v6, "line":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_2

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .local v1, "bufferReader":Ljava/io/BufferedReader;
    if-eqz v1, :cond_1

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .local v7, "temp":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    iput-wide v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mHeight:D

    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    iput-wide v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mWeight:D

    const/4 v8, 0x2

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mGender:I

    const/4 v5, 0x0

    .local v5, "inx":I
    :goto_0
    if-ge v5, v12, :cond_0

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mSfTable:[D

    add-int/lit8 v9, v5, 0x3

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    aput-wide v10, v8, v5
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v5    # "inx":I
    .end local v7    # "temp":[Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_6

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    return-void

    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .local v3, "e1":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v5, 0x0

    .restart local v5    # "inx":I
    :goto_3
    if-ge v5, v12, :cond_3

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mSfTable:[D

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    aput-wide v10, v8, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e1":Ljava/io/FileNotFoundException;
    .end local v5    # "inx":I
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v5, 0x0

    .restart local v5    # "inx":I
    :goto_5
    if-ge v5, v12, :cond_4

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mSfTable:[D

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    aput-wide v10, v8, v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_4
    if-eqz v0, :cond_2

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "inx":I
    :catchall_0
    move-exception v8

    :goto_6
    if-eqz v0, :cond_5

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_5
    :goto_7
    throw v8

    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_6

    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v3

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    :cond_6
    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private storeSFToFile()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    invoke-static {v8}, Landroid/os/Environment;->setUserRequired(Z)V

    new-instance v4, Ljava/io/File;

    const-string v8, "/data/misc/CAE/Pedo"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, "folder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/misc/CAE/Pedo"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "PedoCalib.inf"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "saveFilePath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "fileout":Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    .local v2, "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    if-eqz v2, :cond_2

    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v10, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mHeight:D

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mWeight:D

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mGender:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "out":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "inx":I
    :goto_0
    const/16 v8, 0x14

    if-ge v5, v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mSfTable:[D

    aget-wide v10, v9, v5

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v5    # "inx":I
    .end local v6    # "out":Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_5

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .end local v2    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    return-void

    .end local v1    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .end local v2    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_5
    throw v8

    :catch_5
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v1    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v1    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v1    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    :cond_5
    move-object v1, v2

    .end local v2    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public disable()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const-string v0, "PCM disable"

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->debugMsg(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->pedoStartFlag:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->pedoStartFlag:Z

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$2;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->debugFile(I)V

    iput-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mStepCnt:J

    iput-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mTotalStepCnt:J

    goto :goto_0
.end method

.method public enable(I)V
    .locals 5
    .param p1, "walkStatus"    # I

    .prologue
    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->pedoStartFlag:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mLocationManager:Landroid/location/LocationManager;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$5;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->loadSFFromFile()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalibration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalibListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->registerListener(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalibration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalInitialize()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalibration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoSetDefaultStateMachine()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalibration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mSfTable:[D

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoSetScaleFactorArray([D)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalibration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalStateMachine()V

    iput-boolean v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->pedoStartFlag:Z

    invoke-direct {p0, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->debugFile(I)V

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mGpsTimeStamp:J

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mGpsTimeStamp:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnLocationChanged TimeStamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Gps Time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$1;)V

    .local v0, "gpsMsg":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    iput v2, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;->accuracy:F

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;->latitude:D

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;->longitude:D

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;->altitude:D

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;->timestamp:J

    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "satellites"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;->usedSat:I

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v0    # "gpsMsg":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .restart local v0    # "gpsMsg":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;
    :cond_1
    const/4 v2, 0x0

    iput v2, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;->usedSat:I

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    return-void
.end method

.method public onStepInfoUpdate(JJJDDJ)V
    .locals 7
    .param p1, "totalStepCnt"    # J
    .param p3, "walkStepCnt"    # J
    .param p5, "runStepCnt"    # J
    .param p7, "distance"    # D
    .param p9, "speed"    # D
    .param p11, "upDownStepCnt"    # J

    .prologue
    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalibration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoReqTimeStamp:J

    new-instance v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$1;)V

    .local v3, "pedoMsg":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;
    iput-wide p7, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;->distance:D

    move-wide/from16 v0, p9

    iput-wide v0, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;->speed:D

    long-to-int v4, p1

    iput v4, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;->totalStepCnt:I

    long-to-int v4, p3

    iput v4, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;->walkStepCnt:I

    long-to-int v4, p5

    iput v4, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;->runStepCnt:I

    move-wide/from16 v0, p11

    long-to-int v4, v0

    iput v4, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;->upDownStepCnt:I

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .local v2, "msg":Landroid/os/Message;
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    iput v4, v2, Landroid/os/Message;->arg1:I

    const/4 v4, 0x0

    iput v4, v2, Landroid/os/Message;->arg2:I

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "pedoMsg":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;
    :cond_0
    return-void
.end method

.method public requestScaleFactorUpdate()[I
    .locals 7

    .prologue
    const/16 v6, 0x14

    const-string v2, "PCM : requestSFUpdate."

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->debugMsg(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->loadSFFromFile()V

    new-array v1, v6, [I

    .local v1, "nArray":[I
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mSfTable:[D

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    .local v0, "inx":I
    :goto_0
    if-ge v0, v6, :cond_0

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mSfTable:[D

    aget-wide v2, v2, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;

    invoke-interface {v2, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;->onUpdateScaleFactor([I)V

    const-string v2, "PCM : getSFArray() is ok."

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->debugMsg(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v1

    :cond_2
    const-string v2, "PCM : Listener is null"

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->debugMsg(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "inx":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "inx":I
    :goto_2
    if-ge v0, v6, :cond_1

    const/16 v2, 0x3e8

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected sendSFToPedoRunner()V
    .locals 7

    .prologue
    const/16 v6, 0x14

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mSfTable:[D

    if-eqz v2, :cond_1

    new-array v1, v6, [I

    .local v1, "nArray":[I
    const/4 v0, 0x0

    .local v0, "inx":I
    :goto_0
    if-ge v0, v6, :cond_0

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mSfTable:[D

    aget-wide v2, v2, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;

    invoke-interface {v2, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;->onUpdateScaleFactor([I)V

    const-string v2, "PCM : sendSFToPDRunner() is ok."

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->debugMsg(Ljava/lang/String;)V

    .end local v0    # "inx":I
    .end local v1    # "nArray":[I
    :cond_1
    :goto_1
    return-void

    .restart local v0    # "inx":I
    .restart local v1    # "nArray":[I
    :cond_2
    const-string v2, "PCM : Listener is null"

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->debugMsg(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setUserProfileGender(D)V
    .locals 3
    .param p1, "gender"    # D

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->loadSFFromFile()V

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mGender:I

    int-to-double v0, v0

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_0

    double-to-int v0, p1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mGender:I

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->sfReset()V

    :cond_0
    return-void
.end method

.method public setUserProfileHeight(D)V
    .locals 5
    .param p1, "height"    # D

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->loadSFFromFile()V

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mHeight:D

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iput-wide p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mHeight:D

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->sfReset()V

    :cond_0
    return-void
.end method

.method public setUserProfileWeight(D)V
    .locals 5
    .param p1, "weight"    # D

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->loadSFFromFile()V

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mWeight:D

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iput-wide p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mWeight:D

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->sfReset()V

    :cond_0
    return-void
.end method

.method public sfReset()V
    .locals 6

    .prologue
    const/16 v3, 0x14

    new-array v1, v3, [I

    .local v1, "nArray":[I
    const/4 v0, 0x0

    .local v0, "inx":I
    :goto_0
    if-ge v0, v3, :cond_0

    const/16 v2, 0x3e8

    aput v2, v1, v0

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mSfTable:[D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->storeSFToFile()V

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;

    invoke-interface {v2, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;->onUpdateScaleFactor([I)V

    const-string v2, "PCM :sfReset() is ok."

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->debugMsg(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    const-string v2, "PCM : Listener is null"

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->debugMsg(Ljava/lang/String;)V

    goto :goto_1
.end method
