.class public Lcom/ck/services/statistics/IStatistics$UdpServer;
.super Ljava/lang/Object;
.source "IStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ck/services/statistics/IStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UdpServer"
.end annotation


# instance fields
.field public mIP:Ljava/lang/String;

.field public mMaxPort:I

.field public mMinPort:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
