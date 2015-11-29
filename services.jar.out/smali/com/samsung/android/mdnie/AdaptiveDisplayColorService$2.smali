.class Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;
.super Ljava/lang/Object;
.source "AdaptiveDisplayColorService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v9, 0x2

    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1100(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .local v2, "time":J
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->getRgbFromLightSensor()V
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1200(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorValueValid:Z
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1300(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorR:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1400(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I

    move-result v4

    .local v4, "r":I
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorG:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1500(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I

    move-result v5

    .local v5, "g":I
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorB:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1600(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I

    move-result v6

    .local v6, "b":I
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v7, v0

    .local v7, "lux":I
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    float-to-int v8, v0

    .local v8, "cct":I
    iget-object v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->handleRgbSensorEvent(JIIIII)V
    invoke-static/range {v1 .. v8}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1700(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;JIIIII)V

    .end local v4    # "r":I
    .end local v5    # "g":I
    .end local v6    # "b":I
    .end local v7    # "lux":I
    .end local v8    # "cct":I
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # setter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0, v9}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1102(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;I)I

    .end local v2    # "time":J
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1100(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I

    move-result v0

    if-gt v0, v9, :cond_2

    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1100(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # operator-- for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1110(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # setter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0, v9}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1102(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;I)I

    goto :goto_0
.end method
