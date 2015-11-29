.class public Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;
.super Ljava/lang/Object;
.source "CaCurrentPositionManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/ICurrentPositionObservable;
.implements Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# static fields
.field private static final ACCURACY_BEST_THRESHOLE:F = 16.0f

.field private static final ACCURACY_GOOD_THRESHOLE:F = 50.0f

.field private static final GPS_MIN_DISTANCE:F = 0.0f

.field private static final GPS_MIN_TIME:J = 0x3e8L


# instance fields
.field private mEnable:Z

.field private mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

.field private final mGpsListener:Landroid/location/LocationListener;

.field private mGpsManager:Landroid/location/LocationManager;

.field private mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

.field private final mLooper:Landroid/os/Looper;

.field private mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

.field private mTimeOutCheck:Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

.field private mTimeOutCheckThreadHandler:Ljava/lang/Thread;

.field private mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

.field private final mWpsListener:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "observer"    # Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$2;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsListener:Landroid/location/LocationListener;

    iput-object p2, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->initializeManager(Landroid/content/Context;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->registerCurrentPositionObserver(Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Ljava/util/Iterator;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->getGpsSatellites()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->registerGpsListener()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->registerWpsListener()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->unregisterGpsListener()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->unregisterWpsListener()V

    return-void
.end method

.method private clearTimeOutCheckService()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheck:Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

    iput-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    :cond_0
    return-void
.end method

.method private getGpsSatellites()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method private registerGpsListener()V
    .locals 7

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    iget-object v6, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0
.end method

.method private registerWpsListener()V
    .locals 7

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsListener:Landroid/location/LocationListener;

    iget-object v6, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0
.end method

.method private unregisterGpsListener()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method

.method private unregisterWpsListener()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method

.method private updateEmptyPosition()V
    .locals 15

    .prologue
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>()V

    .local v0, "emptyPosition":Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getUtcTime()[I

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAltitude()D

    move-result-wide v8

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getDistance()D

    move-result-wide v10

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSpeed()F

    move-result v12

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAccuracy()F

    move-result v13

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSatelliteCount()I

    move-result v14

    invoke-interface/range {v1 .. v14}, Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;->updateCurrentPosition(I[IDDDDFFI)V

    goto :goto_0
.end method

.method private updateGpsPosition()V
    .locals 15

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getUtcTime()[I

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLatitude()D

    move-result-wide v4

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLongitude()D

    move-result-wide v6

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAltitude()D

    move-result-wide v8

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getDistance()D

    move-result-wide v10

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSpeed()F

    move-result v12

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAccuracy()F

    move-result v13

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSatelliteCount()I

    move-result v14

    invoke-interface/range {v1 .. v14}, Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;->updateCurrentPosition(I[IDDDDFFI)V

    goto :goto_0
.end method

.method private updateWpsPosition()V
    .locals 15

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getUtcTime()[I

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLatitude()D

    move-result-wide v4

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLongitude()D

    move-result-wide v6

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAltitude()D

    move-result-wide v8

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getDistance()D

    move-result-wide v10

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSpeed()F

    move-result v12

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAccuracy()F

    move-result v13

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSatelliteCount()I

    move-result v14

    invoke-interface/range {v1 .. v14}, Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;->updateCurrentPosition(I[IDDDDFFI)V

    goto :goto_0
.end method


# virtual methods
.method public final disable()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->clearTimeOutCheckService()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$4;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    goto :goto_0
.end method

.method public final enable(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    const/high16 v1, 0x447a0000    # 1000.0f

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_1

    const-string v0, "Looper is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    if-eqz v0, :cond_2

    const-string v0, "mEnable value is true."

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->disable()V

    :cond_2
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->clearTimeOutCheckService()V

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;-><init>(Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;I)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheck:Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheck:Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$3;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v1, 0x447a0000    # 1000.0f

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    return-void
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    return v0
.end method

.method public final notifyCurrentPositionObserver()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->disable()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->updateGpsPosition()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->updateWpsPosition()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->updateEmptyPosition()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->updateWpsPosition()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->updateEmptyPosition()V

    goto :goto_0
.end method

.method public final occurTimeOut()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->notifyCurrentPositionObserver()V

    return-void
.end method

.method public final registerCurrentPositionObserver(Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    return-void
.end method

.method public final terminateManager()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method

.method public final unregisterCurrentPositionObserver()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    return-void
.end method
