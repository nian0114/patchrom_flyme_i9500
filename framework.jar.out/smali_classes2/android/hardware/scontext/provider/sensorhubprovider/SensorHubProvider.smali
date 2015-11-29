.class public Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;
.super Landroid/hardware/scontext/provider/Provider;
.source "SensorHubProvider.java"


# instance fields
.field private final mListener:Landroid/hardware/scontext/provider/EventListener;

.field private final mRate:I

.field private final mSensorHub:Lcom/samsung/android/sensorhub/SensorHub;

.field private final mSensorHubEventListener:Lcom/samsung/android/sensorhub/SensorHubEventListener;

.field private mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/hardware/scontext/provider/EventListener;
    .param p3, "type"    # I
    .param p4, "rate"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/Provider;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;

    new-instance v0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider$1;

    invoke-direct {v0, p0}, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider$1;-><init>(Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;)V

    iput-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubEventListener:Lcom/samsung/android/sensorhub/SensorHubEventListener;

    iput p4, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mRate:I

    const-string v0, "sensorhub"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sensorhub/SensorHubManager;

    iput-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;

    iput-object p2, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;

    iget-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;

    invoke-virtual {v0, p3}, Lcom/samsung/android/sensorhub/SensorHubManager;->getDefaultSensorHub(I)Lcom/samsung/android/sensorhub/SensorHub;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHub:Lcom/samsung/android/sensorhub/SensorHub;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;)Landroid/hardware/scontext/provider/EventListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;

    return-object v0
.end method


# virtual methods
.method public add()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubEventListener:Lcom/samsung/android/sensorhub/SensorHubEventListener;

    iget-object v2, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHub:Lcom/samsung/android/sensorhub/SensorHub;

    iget v3, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mRate:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sensorhub/SensorHubManager;->registerListener(Lcom/samsung/android/sensorhub/SensorHubEventListener;Lcom/samsung/android/sensorhub/SensorHub;I)Z

    return-void
.end method

.method getListener()Lcom/samsung/android/sensorhub/SensorHubEventListener;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubEventListener:Lcom/samsung/android/sensorhub/SensorHubEventListener;

    return-object v0
.end method

.method getManager()Lcom/samsung/android/sensorhub/SensorHubManager;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;

    return-object v0
.end method

.method public handleDiedBinder()V
    .locals 0

    .prologue
    return-void
.end method

.method public onBinderDied()V
    .locals 0

    .prologue
    return-void
.end method

.method public parse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    return-object p1
.end method

.method public remove()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubEventListener:Lcom/samsung/android/sensorhub/SensorHubEventListener;

    iget-object v2, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHub:Lcom/samsung/android/sensorhub/SensorHub;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sensorhub/SensorHubManager;->unregisterListener(Lcom/samsung/android/sensorhub/SensorHubEventListener;Lcom/samsung/android/sensorhub/SensorHub;)V

    return-void
.end method

.method public requestToUpdate()V
    .locals 0

    .prologue
    return-void
.end method

.method public setAttribute(ILandroid/hardware/scontext/SContextAttribute;)V
    .locals 0
    .param p1, "service"    # I
    .param p2, "attribute"    # Landroid/hardware/scontext/SContextAttribute;

    .prologue
    return-void
.end method

.method public setReferenceData(I[B)Z
    .locals 1
    .param p1, "data_type"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v0, 0x0

    return v0
.end method
