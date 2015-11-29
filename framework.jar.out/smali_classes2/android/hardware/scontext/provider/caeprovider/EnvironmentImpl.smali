.class public Landroid/hardware/scontext/provider/caeprovider/EnvironmentImpl;
.super Landroid/hardware/scontext/provider/caeprovider/CaeProvider;
.source "EnvironmentImpl.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/hardware/scontext/provider/EventListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # I
    .param p3, "listener"    # Landroid/hardware/scontext/provider/EventListener;

    .prologue
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0, p3}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;-><init>(Landroid/content/Context;ILandroid/hardware/scontext/provider/EventListener;)V

    return-void
.end method


# virtual methods
.method public parse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    const-string v2, "Temperature"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v1

    .local v1, "temp":[D
    const-string v2, "Humidity"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .local v0, "humi":[D
    const-string v2, "EnvSensorType"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "Temperature"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string v2, "Humidity"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    return-object p1
.end method
