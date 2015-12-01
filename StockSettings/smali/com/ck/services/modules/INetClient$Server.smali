.class public Lcom/ck/services/modules/INetClient$Server;
.super Ljava/lang/Object;
.source "INetClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ck/services/modules/INetClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Server"
.end annotation


# instance fields
.field public mAddress:Ljava/lang/String;

.field public mPort:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
