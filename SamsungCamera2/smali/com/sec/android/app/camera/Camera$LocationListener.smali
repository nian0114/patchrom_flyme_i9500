.class Lcom/sec/android/app/camera/Camera$LocationListener;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field mActivityContext:Lcom/sec/android/app/camera/Camera;

.field mLastLocation:Landroid/location/Location;

.field mValidOfGPS:I

.field mValidOfNetwork:I

.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;Lcom/sec/android/app/camera/Camera;)V
    .locals 1
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "context"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    const/4 v0, 0x1

    .line 1338
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1335
    iput v0, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->mValidOfGPS:I

    .line 1336
    iput v0, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->mValidOfNetwork:I

    .line 1339
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->mLastLocation:Landroid/location/Location;

    .line 1340
    iput-object p3, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 1341
    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1421
    iget v0, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->mValidOfGPS:I

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->mValidOfNetwork:I

    if-ne v3, v4, :cond_1

    :goto_1
    or-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->mLastLocation:Landroid/location/Location;

    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8
    .param p1, "newLocation"    # Landroid/location/Location;

    .prologue
    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v4, 0x2

    .line 1344
    const-string v1, "Camera2"

    const-string v2, "onLocationChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v1, v2, v6

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v1, v2, v6

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1375
    :cond_1
    :goto_0
    return-void

    .line 1353
    :cond_2
    const-string v1, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1354
    iput v4, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->mValidOfGPS:I

    .line 1358
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera$LocationListener;->updateGPSIndicator()V

    .line 1359
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v1, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 1361
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getContextualFilename()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 1362
    new-array v0, v4, [F

    .line 1364
    .local v0, "location":[F
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v0, v1

    .line 1365
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v1, v2

    aput v1, v0, v5

    .line 1367
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mReverseGeocoder:Lcom/sec/android/app/camera/ReverseGeocoder;

    if-nez v1, :cond_4

    .line 1368
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->this$0:Lcom/sec/android/app/camera/Camera;

    new-instance v2, Lcom/sec/android/app/camera/ReverseGeocoder;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/sec/android/app/camera/Camera;->mReverseGeocoder:Lcom/sec/android/app/camera/ReverseGeocoder;

    .line 1371
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mReverseGeocoder:Lcom/sec/android/app/camera/ReverseGeocoder;

    if-eqz v1, :cond_1

    .line 1372
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mReverseGeocoder:Lcom/sec/android/app/camera/ReverseGeocoder;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/ReverseGeocoder;->execute([F)V

    goto :goto_0

    .line 1355
    .end local v0    # "location":[F
    :cond_5
    const-string v1, "network"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1356
    iput v4, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->mValidOfNetwork:I

    goto :goto_1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1381
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1382
    iput v1, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->mValidOfGPS:I

    .line 1386
    :cond_0
    :goto_0
    return-void

    .line 1383
    :cond_1
    const-string v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1384
    iput v1, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->mValidOfNetwork:I

    goto :goto_0
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1378
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1389
    const-string v0, "Camera2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged - status["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] - provider["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    .line 1400
    :goto_0
    return-void

    .line 1393
    :cond_0
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1394
    iput p2, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->mValidOfGPS:I

    .line 1396
    :cond_1
    const-string v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1397
    iput p2, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->mValidOfNetwork:I

    .line 1399
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera$LocationListener;->updateGPSIndicator()V

    goto :goto_0
.end method

.method public updateGPSIndicator()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1403
    iget v2, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->mValidOfGPS:I

    if-ne v2, v6, :cond_1

    move v2, v3

    :goto_0
    iget v5, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->mValidOfNetwork:I

    if-ne v5, v6, :cond_2

    move v5, v3

    :goto_1
    or-int v0, v2, v5

    .line 1404
    .local v0, "connected":Z
    iget v2, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->mValidOfGPS:I

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    iget v5, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->mValidOfNetwork:I

    if-nez v5, :cond_4

    move v5, v3

    :goto_3
    and-int v1, v2, v5

    .line 1406
    .local v1, "disconnected":Z
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1418
    :cond_0
    :goto_4
    return-void

    .end local v0    # "connected":Z
    .end local v1    # "disconnected":Z
    :cond_1
    move v2, v4

    .line 1403
    goto :goto_0

    :cond_2
    move v5, v4

    goto :goto_1

    .restart local v0    # "connected":Z
    :cond_3
    move v2, v4

    .line 1404
    goto :goto_2

    :cond_4
    move v5, v4

    goto :goto_3

    .line 1409
    .restart local v1    # "disconnected":Z
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1410
    if-eqz v1, :cond_6

    .line 1411
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/Camera;->setConnectingStateGPS(I)V

    goto :goto_4

    .line 1412
    :cond_6
    if-eqz v0, :cond_7

    .line 1413
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/Camera;->setConnectingStateGPS(I)V

    goto :goto_4

    .line 1415
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$LocationListener;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->setConnectingStateGPS(I)V

    goto :goto_4
.end method
