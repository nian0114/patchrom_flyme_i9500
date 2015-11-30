.class public Lcom/sec/android/app/camera/ReverseGeocoderTask;
.super Landroid/os/AsyncTask;
.source "ReverseGeocoderTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/ReverseGeocoderTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "ReverseGeocoder"


# instance fields
.field private mCallback:Lcom/sec/android/app/camera/ReverseGeocoderTask$Callback;

.field private mGeocoder:Landroid/location/Geocoder;

.field private mLat:F

.field private mLng:F


# direct methods
.method public constructor <init>(Landroid/location/Geocoder;[FLcom/sec/android/app/camera/ReverseGeocoderTask$Callback;)V
    .locals 1
    .param p1, "geocoder"    # Landroid/location/Geocoder;
    .param p2, "latlng"    # [F
    .param p3, "callback"    # Lcom/sec/android/app/camera/ReverseGeocoderTask$Callback;

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/sec/android/app/camera/ReverseGeocoderTask;->mGeocoder:Landroid/location/Geocoder;

    .line 63
    const/4 v0, 0x0

    aget v0, p2, v0

    iput v0, p0, Lcom/sec/android/app/camera/ReverseGeocoderTask;->mLat:F

    .line 64
    const/4 v0, 0x1

    aget v0, p2, v0

    iput v0, p0, Lcom/sec/android/app/camera/ReverseGeocoderTask;->mLng:F

    .line 65
    iput-object p3, p0, Lcom/sec/android/app/camera/ReverseGeocoderTask;->mCallback:Lcom/sec/android/app/camera/ReverseGeocoderTask$Callback;

    .line 66
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/ReverseGeocoderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 70
    const-string v11, ""

    .line 72
    .local v11, "value":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ReverseGeocoderTask;->mGeocoder:Landroid/location/Geocoder;

    iget v2, p0, Lcom/sec/android/app/camera/ReverseGeocoderTask;->mLat:F

    float-to-double v2, v2

    iget v4, p0, Lcom/sec/android/app/camera/ReverseGeocoderTask;->mLng:F

    float-to-double v4, v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 74
    .local v7, "address":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v10, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 77
    .local v0, "addr":Landroid/location/Address;
    invoke-virtual {v0}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 80
    .end local v0    # "addr":Landroid/location/Address;
    .end local v7    # "address":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v8

    .line 81
    .local v8, "ex":Ljava/io/IOException;
    const-string v11, ""

    .line 82
    const-string v1, "ReverseGeocoder"

    const-string v2, "Geocoder exception: "

    invoke-static {v1, v2, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .end local v8    # "ex":Ljava/io/IOException;
    :goto_1
    return-object v11

    .line 79
    .restart local v7    # "address":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    goto :goto_1

    .line 83
    .end local v7    # "address":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v8

    .line 84
    .local v8, "ex":Ljava/lang/RuntimeException;
    const-string v11, ""

    .line 85
    const-string v1, "ReverseGeocoder"

    const-string v2, "Geocoder exception: "

    invoke-static {v1, v2, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/ReverseGeocoderTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/ReverseGeocoderTask;->mCallback:Lcom/sec/android/app/camera/ReverseGeocoderTask$Callback;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/ReverseGeocoderTask$Callback;->onComplete(Ljava/lang/String;)V

    .line 93
    return-void
.end method
