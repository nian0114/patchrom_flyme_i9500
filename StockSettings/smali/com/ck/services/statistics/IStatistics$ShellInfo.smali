.class public Lcom/ck/services/statistics/IStatistics$ShellInfo;
.super Ljava/lang/Object;
.source "IStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ck/services/statistics/IStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShellInfo"
.end annotation


# instance fields
.field public mAppletId:Ljava/lang/String;

.field public mCustId:I

.field public mVersionCode:I

.field public mVersionInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
