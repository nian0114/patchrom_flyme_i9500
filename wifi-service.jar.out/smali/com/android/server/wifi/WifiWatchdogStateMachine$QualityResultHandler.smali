.class Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
.super Landroid/os/Handler;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QualityResultHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCurrentTime:J

.field private mCurrentURL:Ljava/lang/String;

.field private mCurrentURLIdx:I

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

.field private mId:I

.field private mOngoingId:I

.field private mPreviousPrivateIP:Ljava/net/InetAddress;

.field private mQualityResults:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;

.field private mRxBytesBeforeQC:J

.field private mRxPacketsBeforeQC:J

.field private mStartRSSI:I

.field private mStartRate:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;I)V
    .locals 6
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "id"    # I

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v0, "WifiWatchdogStateMachine.QualityResultHandler_"

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDateFormat:Ljava/text/SimpleDateFormat;

    iput-wide v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentTime:J

    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mStartRSSI:I

    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mStartRate:I

    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    iput-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    iput-wide v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mRxPacketsBeforeQC:J

    iput-wide v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mRxBytesBeforeQC:J

    iput p3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mId:I

    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mId:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mQualityResults:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    const-string v1, "WifiWatchdogStateMachine.DnsResolver"

    invoke-direct {v0, p1, p0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create QualityResultHandler_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    return-object v0
.end method

.method static synthetic access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14400(Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;)Ljava/text/SimpleDateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->notifyDisconnect()V

    return-void
.end method

.method private notifyDisconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->clear()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->access$14600(Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    throw v0

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    goto :goto_1

    :catch_3
    move-exception v0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mId:I

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, -0x1

    .local v6, "qualityResult":I
    const/4 v12, 0x0

    .local v12, "id":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    .local v14, "ongoingId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v4, 0x1

    iput v4, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown command : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const v4, 0x21020

    if-ne v3, v4, :cond_9

    if-lez v14, :cond_2

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v4, "redundant QC request detected!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .end local v14    # "ongoingId":I
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    .restart local v14    # "ongoingId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v14, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOngoingId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->setUrlList()V

    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mUrlList:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_5

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    :cond_5
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSets:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    if-ne v3, v4, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSets:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mUrlList:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mUrlList:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    :cond_7
    :goto_1
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentURL : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v4, "There is no resolved URL"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v4, 0x1

    iput v4, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    iput v4, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->reportQCResult(II)V
    invoke-static {v3, v14, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15100(Lcom/android/server/wifi/WifiWatchdogStateMachine;II)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v4, "[QC_REDIRECT]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_a
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mQualityResults:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentTime:J

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mStartRSSI:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mStartRate:I

    const/4 v3, 0x1

    if-le v14, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v4, 0x21013

    invoke-virtual {v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    :cond_c
    const-string v3, "wlan0"

    invoke-static {v3}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mRxPacketsBeforeQC:J

    const-string v3, "wlan0"

    invoke-static {v3}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mRxBytesBeforeQC:J

    :try_start_0
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .local v18, "url":Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    const/4 v4, 0x2

    const/16 v5, 0xbb8

    const/4 v7, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v5, v7, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v4, "DNS List is empty, ignore dns checking"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v18    # "url":Ljava/net/URL;
    :catch_0
    move-exception v13

    .local v13, "ie":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t resolve a URL : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v4, 0x1

    iput v4, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    iput v4, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v4, 0x21014

    invoke-virtual {v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->reportQCResult(II)V
    invoke-static {v3, v14, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15100(Lcom/android/server/wifi/WifiWatchdogStateMachine;II)V

    goto/16 :goto_0

    .end local v13    # "ie":Ljava/io/IOException;
    :sswitch_1
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v4, "[DNS_PING_RESULT_SPECIFIC]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->checkDnsResult(III)I

    move-result v11

    .local v11, "dnsResult":I
    const/4 v3, 0x2

    if-ne v11, v3, :cond_e

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v4, "wait until the responses about remained DNS Request arrive!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v4, 0x21014

    invoke-virtual {v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    :cond_f
    const/16 v16, 0x0

    .local v16, "resolvedIP":Ljava/net/InetAddress;
    const/16 v17, -0x1

    .local v17, "result":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    iput v4, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    const/4 v3, 0x4

    if-ne v11, v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v4, "DNS_CHECK_RESULT_PRIVATE_IP!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v4, 0x2

    iput v4, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    iput v4, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    const/16 v17, 0x0

    :cond_11
    :goto_2
    const/4 v3, 0x1

    if-ne v11, v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1c

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v4, "still staying in captive portal state"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, -0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->reportQCResult(II)V
    invoke-static {v3, v14, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15100(Lcom/android/server/wifi/WifiWatchdogStateMachine;II)V

    goto/16 :goto_0

    :cond_13
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v4, "DNS_CHECK_RESULT_different_PRIVATE_IP!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v16, v0

    goto :goto_2

    :cond_15
    const-string v3, "wlan0"

    invoke-static {v3}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mRxPacketsBeforeQC:J

    const-string v3, "wlan0"

    invoke-static {v3}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mRxBytesBeforeQC:J

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    const/4 v4, 0x1

    const/16 v5, 0xbb8

    const/4 v7, 0x0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DEFAULT_URL_STRING:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15400()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v5, v7, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v4, "DNS List is empty, ignore dns checking"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v4, 0x3

    iput v4, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    iput v4, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    const/16 v17, 0x0

    goto/16 :goto_2

    :cond_16
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v4, "[second DNS query requested!]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_17
    const/4 v3, 0x3

    if-ne v11, v3, :cond_18

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/16 v4, 0xa

    iput v4, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    iput v4, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    const/16 v17, 0x0

    goto/16 :goto_2

    :cond_18
    if-nez v11, :cond_11

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v4, "[DNS_CHECK_RESULT_FAILURE]"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const-string v3, "wlan0"

    invoke-static {v3}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mRxPacketsBeforeQC:J

    sub-long/2addr v4, v8

    long-to-int v15, v4

    .local v15, "packets":I
    const-string v3, "wlan0"

    invoke-static {v3}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mRxBytesBeforeQC:J

    sub-long/2addr v4, v8

    long-to-int v2, v4

    .local v2, "bytes":I
    if-nez v15, :cond_1a

    if-nez v2, :cond_1a

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v4, 0x5

    iput v4, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    iput v4, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    const/16 v17, 0x1

    :goto_3
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1a
    mul-int/lit16 v0, v15, 0x5cc

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v0, v2, :cond_1b

    move/from16 v17, v2

    :cond_1b
    div-int/lit8 v17, v17, 0x3

    goto :goto_3

    .end local v2    # "bytes":I
    .end local v15    # "packets":I
    :cond_1c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    if-nez v16, :cond_1d

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    .end local v16    # "resolvedIP":Ljava/net/InetAddress;
    check-cast v16, Ljava/net/InetAddress;

    .restart local v16    # "resolvedIP":Ljava/net/InetAddress;
    :cond_1d
    move-object/from16 v0, v16

    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_1f

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DNS Response SELECTED:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_1e
    if-eqz v16, :cond_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualitySocketHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    move-result-object v3

    const v4, 0x21026

    check-cast v16, Ljava/net/Inet4Address;

    .end local v16    # "resolvedIP":Ljava/net/InetAddress;
    invoke-static/range {v16 .. v16}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    invoke-static {v3, v4, v14, v5, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    goto/16 :goto_0

    .restart local v16    # "resolvedIP":Ljava/net/InetAddress;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v4, "The resolved IP is not IPv4"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v4, 0x4

    iput v4, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    iput v4, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->reportQCResult(II)V
    invoke-static {v3, v14, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15100(Lcom/android/server/wifi/WifiWatchdogStateMachine;II)V

    goto/16 :goto_0

    :cond_20
    if-ltz v17, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move/from16 v0, v17

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->reportQCResult(II)V
    invoke-static {v3, v14, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15100(Lcom/android/server/wifi/WifiWatchdogStateMachine;II)V

    goto/16 :goto_0

    .end local v11    # "dnsResult":I
    .end local v16    # "resolvedIP":Ljava/net/InetAddress;
    .end local v17    # "result":I
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->notifyDisconnect()V

    goto/16 :goto_0

    :sswitch_3
    if-nez v14, :cond_21

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v4, "QC result was already reported!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_21
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v3

    if-eqz v3, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[QC_RESULT_RECEIVED] id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    if-ne v14, v12, :cond_0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_24

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    :goto_4
    :sswitch_4
    if-gez v6, :cond_26

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v4, "[QC_GOOD_RX_DETECTED]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    if-nez v14, :cond_25

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v4, "There is no ongoing QC!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_24
    const/4 v6, 0x1

    goto :goto_4

    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    const v3, 0x21024

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    const v3, 0x21025

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    move v12, v14

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    :cond_26
    :sswitch_5
    if-gez v6, :cond_29

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v3

    if-eqz v3, :cond_27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[QC_RESOLVE_HOSTNAME_TIMEOUT] id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    if-ne v14, v12, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualitySocketHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->getRxPacketsDuringQC()I

    move-result v15

    .restart local v15    # "packets":I
    mul-int/lit16 v6, v15, 0x5cc

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualitySocketHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->getRxBytesDuringQC()I

    move-result v2

    .restart local v2    # "bytes":I
    if-ge v6, v2, :cond_28

    move v6, v2

    :cond_28
    div-int/lit8 v6, v6, 0x3

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "qualityResult : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "bytes":I
    .end local v15    # "packets":I
    :cond_29
    :sswitch_6
    if-nez v14, :cond_2a

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v4, "QC result was already reported!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2a
    if-gez v6, :cond_2c

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v3

    if-eqz v3, :cond_2b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[QUALITY_CHECK_TIMEOUT] id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    if-ne v14, v12, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualitySocketHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->getRxBytesDuringQC()I

    move-result v6

    if-nez v6, :cond_2c

    const/4 v6, 0x1

    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v3

    if-eqz v3, :cond_2e

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->shutdownInput()V

    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    :cond_2e
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v3

    if-eqz v3, :cond_2f

    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    :cond_2f
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_30

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mQualityResults:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentTime:J

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mStartRSSI:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mStartRate:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v10

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->setValues(JIIIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mQualityResults:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->writeResults()V

    :cond_30
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->reportQCResult(II)V
    invoke-static {v3, v12, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15100(Lcom/android/server/wifi/WifiWatchdogStateMachine;II)V

    goto/16 :goto_0

    :catch_2
    move-exception v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    goto :goto_5

    :catch_3
    move-exception v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    goto/16 :goto_5

    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    throw v3

    :catch_4
    move-exception v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    goto/16 :goto_6

    :catch_5
    move-exception v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    goto/16 :goto_6

    :catchall_1
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    throw v3

    :sswitch_7
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_31

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EVENT_NETWORK_PROPERTIES_CHANGED] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EVENT_NETWORK_PROPERTIES_CHANGED] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_32

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_33

    :cond_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v4

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->access$000(Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;)Landroid/net/DnsPinger;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/DnsPinger;->getDnsList()Ljava/util/List;

    move-result-object v4

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/util/List;)Ljava/util/List;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v3

    if-eqz v3, :cond_33

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDnsServerList : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_34

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v4, "EVENT_SCAN_TIMEOUT while QC - reset scanning flag."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    const v3, 0x21046

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    :cond_34
    :sswitch_9
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const v4, 0x2103e

    if-ne v3, v4, :cond_36

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v3

    if-eqz v3, :cond_35

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v4, "[EVENT_SCAN_COMPLETE]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    const v3, 0x21046

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    :cond_36
    :sswitch_a
    if-nez v14, :cond_3c

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const v4, 0x2103e

    if-eq v3, v4, :cond_37

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const v4, 0x21046

    if-ne v3, v4, :cond_38

    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v4, "No QC ongoing at EVENT_SCAN_COMPLETE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_38
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const v4, 0x2103d

    if-ne v3, v4, :cond_39

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v4, "No QC ongoing at EVENT_SCAN_STARTED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_39
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const v4, 0x21043

    if-ne v3, v4, :cond_3a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v4, "No QC ongoing at EVENT_NETWORK_PROPERTIES_CHANGED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3a
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const v4, 0x21044

    if-ne v3, v4, :cond_3b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v4, "No QC ongoing at EVENT_DHCP_SESSION_STARTED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3b
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const v4, 0x21045

    if-ne v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v4, "No QC ongoing at EVENT_DHCP_SESSION_COMPLETE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3c
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v3

    if-eqz v3, :cond_3e

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const v4, 0x2103e

    if-eq v3, v4, :cond_3d

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const v4, 0x21046

    if-ne v3, v4, :cond_43

    :cond_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ongoing QC: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " EVENT_SCAN_COMPLETE while QC - stop the QC and reschedule another QC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    const v3, 0x21024

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    const v3, 0x21025

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v4, 0x21014

    invoke-virtual {v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const v4, 0x21043

    if-eq v3, v4, :cond_3f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->restartQCCancelledByScanOrDhcp()V

    :cond_3f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v3

    if-eqz v3, :cond_41

    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_40

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->shutdownInput()V

    :cond_40
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    :cond_41
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v3

    if-eqz v3, :cond_42

    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    :cond_42
    :goto_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    goto/16 :goto_0

    :cond_43
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const v4, 0x2103d

    if-ne v3, v4, :cond_44

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ongoing QC: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " EVENT_SCAN_STARTED while QC - stop the QC and reschedule another QC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_44
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const v4, 0x21043

    if-ne v3, v4, :cond_45

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ongoing QC: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " EVENT_NETWORK_PROPERTIES_CHANGED while QC - stop the QC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_45
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const v4, 0x21044

    if-ne v3, v4, :cond_46

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ongoing QC: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " EVENT_DHCP_SESSION_STARTED while QC - stop the QC and reschedule another QC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_46
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const v4, 0x21045

    if-ne v3, v4, :cond_3e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ongoing QC: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " EVENT_DHCP_SESSION_COMPLETE while QC - stop the QC and reschedule another QC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :catch_6
    move-exception v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    goto/16 :goto_8

    :catch_7
    move-exception v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    goto/16 :goto_8

    :catchall_2
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    throw v3

    :catch_8
    move-exception v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    goto/16 :goto_9

    :catch_9
    move-exception v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    goto/16 :goto_9

    :catchall_3
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    throw v3

    :sswitch_b
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_47

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v4, "[QC_FAILED_BY_HIGH_LOSS]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    if-nez v14, :cond_48

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v4, "There is no ongoing QC!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_48
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    const v3, 0x21024

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    const v3, 0x21025

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v4, 0x21014

    invoke-virtual {v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v3

    if-eqz v3, :cond_4a

    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_49

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->shutdownInput()V

    :cond_49
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    :cond_4a
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_d
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    goto/16 :goto_0

    :catch_a
    move-exception v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    goto :goto_a

    :catch_b
    move-exception v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    goto :goto_a

    :catchall_4
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    throw v3

    :catch_c
    move-exception v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    goto/16 :goto_0

    :catch_d
    move-exception v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    goto/16 :goto_0

    :catchall_5
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    throw v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x21017 -> :sswitch_2
        0x21020 -> :sswitch_0
        0x21024 -> :sswitch_6
        0x21025 -> :sswitch_5
        0x21027 -> :sswitch_3
        0x21028 -> :sswitch_4
        0x21029 -> :sswitch_0
        0x21031 -> :sswitch_b
        0x2103d -> :sswitch_a
        0x2103e -> :sswitch_9
        0x21043 -> :sswitch_7
        0x21044 -> :sswitch_a
        0x21045 -> :sswitch_a
        0x21046 -> :sswitch_8
        0x50005 -> :sswitch_1
    .end sparse-switch
.end method

.method readOngoingId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    return v0
.end method

.method setToDefaultURL()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mUrlList:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    return-void
.end method

.method setUrlList()V
    .locals 5

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "phone"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v3, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2002(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)Ljava/lang/String;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCountryIso: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_1
    const-string v2, "kr"

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->LIST3:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14900()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mUrlList:[Ljava/lang/String;

    :goto_1
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    .local v1, "rand":Ljava/util/Random;
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mUrlList:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    return-void

    .end local v1    # "rand":Ljava/util/Random;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v3, "Exception occured at setUrlList(), while retrieving Context.TELEPHONY_SERVICE"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v2, "cn"

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->LIST2:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15000()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mUrlList:[Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->LIST2:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15000()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mUrlList:[Ljava/lang/String;

    goto :goto_1
.end method
