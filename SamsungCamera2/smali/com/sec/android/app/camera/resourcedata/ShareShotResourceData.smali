.class public Lcom/sec/android/app/camera/resourcedata/ShareShotResourceData;
.super Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
.source "ShareShotResourceData.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 2
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    .line 28
    const/16 v0, 0x55

    const v1, 0x7f0c01b5

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;-><init>(II)V

    .line 29
    return-void
.end method
