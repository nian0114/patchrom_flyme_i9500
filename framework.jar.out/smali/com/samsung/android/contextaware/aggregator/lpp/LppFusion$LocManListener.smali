.class Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;
.super Ljava/lang/Object;
.source "LppFusion.java"

# interfaces
.implements Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocManListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;


# direct methods
.method private constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
    .param p2, "x1"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)V

    return-void
.end method


# virtual methods
.method public batchLocListUpdate(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "listLoc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_BATCH_LOC_LIST_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$2500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    return-void
.end method

.method public batchLocUpdate(Landroid/location/Location;)V
    .locals 2
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_BATCH_LOC_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$2500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    return-void
.end method

.method public gpsAvailable()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$1400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;->gpsAvailable()V

    return-void
.end method

.method public gpsBatchStarted()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$1400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;->gpsBatchStarted()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->setGPSBatchingStatus(Z)V

    return-void
.end method

.method public gpsBatchStopped()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->setGPSBatchingStatus(Z)V

    return-void
.end method

.method public gpsOffBatchStopped()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$1400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;->gpsOffBatchStopped()V

    return-void
.end method

.method public gpsOnBatchStopped()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$1400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;->gpsOnBatchStopped()V

    return-void
.end method

.method public gpsUnavailable()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$1400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;->gpsUnavailable()V

    return-void
.end method

.method public locPassBatchUpdate(Landroid/location/Location;)V
    .locals 2
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_PASS_LOC_BATCH_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$2500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    return-void
.end method

.method public locPassUpdate(Landroid/location/Location;)V
    .locals 2
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_PASS_LOC_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$2500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    return-void
.end method

.method public locUpdate(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "listLoc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListGPSPos:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$600(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_LOCATION_LIST_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$2500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    return-void
.end method

.method public locationNotFound()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$1000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_NOT_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(I)V

    return-void
.end method

.method public logData(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    return-void
.end method

.method public logNmeaData(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    return-void
.end method

.method public status(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    iput-object p1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->strLM:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->updateLppFusionStatus(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$2600(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Ljava/lang/String;)V

    return-void
.end method
