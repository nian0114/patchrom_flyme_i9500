.class Lcom/android/server/location/GpsLocationProvider$8;
.super Ljava/lang/Thread;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$8;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1009
    new-instance v0, Lcom/android/server/location/GpsXtraDownloader;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$8;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1200(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$8;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$1500(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/Properties;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/GpsXtraDownloader;-><init>(Landroid/content/Context;Ljava/util/Properties;)V

    .line 1010
    .local v0, "xtraDownloader":Lcom/android/server/location/GpsXtraDownloader;
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$8;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GpsXtraDownloader;->downloadXtraData()[B

    move-result-object v2

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mXtraData:[B
    invoke-static {v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$2402(Lcom/android/server/location/GpsLocationProvider;[B)[B

    .line 1011
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$8;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    # invokes: Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/location/GpsLocationProvider;->access$2300(Lcom/android/server/location/GpsLocationProvider;IILjava/lang/Object;)V

    .line 1012
    return-void
.end method
