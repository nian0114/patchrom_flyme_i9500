.class public Landroid/hardware/scontext/provider/miscprovider/MiscProvider;
.super Landroid/hardware/scontext/provider/Provider;
.source "MiscProvider.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/Provider;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public add()V
    .locals 0

    .prologue
    return-void
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
    .locals 1
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove()V
    .locals 0

    .prologue
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
