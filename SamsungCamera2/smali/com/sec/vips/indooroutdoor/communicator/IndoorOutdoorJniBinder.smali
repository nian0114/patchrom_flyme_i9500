.class public Lcom/sec/vips/indooroutdoor/communicator/IndoorOutdoorJniBinder;
.super Ljava/lang/Object;
.source "IndoorOutdoorJniBinder.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "InOutClassify"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native classify(Landroid/graphics/Bitmap;)D
.end method
