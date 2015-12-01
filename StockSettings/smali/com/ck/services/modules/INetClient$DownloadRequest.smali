.class public Lcom/ck/services/modules/INetClient$DownloadRequest;
.super Ljava/lang/Object;
.source "INetClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ck/services/modules/INetClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadRequest"
.end annotation


# instance fields
.field public fileName:Ljava/lang/String;

.field public localPath:Ljava/lang/String;

.field public notifyId:I

.field public targetSize:J

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
