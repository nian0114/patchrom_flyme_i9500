.class Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;
.super Ljava/lang/Thread;
.source "QuramAudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->startRecorder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 55
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->deleteAllRecorde()V

    .line 56
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->qrecorder:Lcom/sec/android/secvision/sef/QdioRecorder;
    invoke-static {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$000(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)Lcom/sec/android/secvision/sef/QdioRecorder;

    move-result-object v7

    const/16 v8, 0x14

    invoke-virtual {v7, v8}, Lcom/sec/android/secvision/sef/QdioRecorder;->init(I)Z

    .line 58
    const-wide/16 v8, 0xc8

    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->visualization_duration:J
    invoke-static {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$100(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)J

    move-result-wide v10

    const-wide/16 v12, 0x2

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->visualization_duration:J
    invoke-static {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$100(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)J

    move-result-wide v10

    div-long/2addr v8, v10

    long-to-int v6, v8

    .line 59
    .local v6, "segData":I
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    new-array v8, v6, [I

    # setter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->visualization:[I
    invoke-static {v7, v8}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$202(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;[I)[I

    .line 61
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->qrecorder:Lcom/sec/android/secvision/sef/QdioRecorder;
    invoke-static {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$000(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)Lcom/sec/android/secvision/sef/QdioRecorder;

    move-result-object v7

    if-nez v7, :cond_0

    .line 138
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->qrecorder:Lcom/sec/android/secvision/sef/QdioRecorder;
    invoke-static {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$000(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)Lcom/sec/android/secvision/sef/QdioRecorder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/secvision/sef/QdioRecorder;->start()Z

    .line 66
    :goto_1
    :try_start_0
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->isRunning:Z
    invoke-static {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$300(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 68
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->time_t:J
    invoke-static {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$400(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)J

    move-result-wide v8

    const-wide/16 v10, 0x32

    add-long/2addr v8, v10

    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->time_s:J
    invoke-static {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$500(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_1

    .line 71
    const-wide/16 v8, 0xa

    :try_start_1
    invoke-static {v8, v9}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :goto_2
    :try_start_2
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    # setter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->time_s:J
    invoke-static {v7, v8, v9}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$502(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;J)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 124
    :catch_0
    move-exception v7

    .line 130
    :try_start_3
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # invokes: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->releaseRecorder()V
    invoke-static {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$900(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 137
    :goto_3
    const-string v7, "QURAM"

    const-string v8, "end Recoder"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :catch_1
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 128
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v7

    .line 130
    :try_start_5
    iget-object v8, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # invokes: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->releaseRecorder()V
    invoke-static {v8}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$900(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 135
    :goto_4
    throw v7

    .line 83
    :cond_1
    :try_start_6
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    iget-object v8, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->time_s:J
    invoke-static {v8}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$500(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)J

    move-result-wide v8

    # setter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->time_t:J
    invoke-static {v7, v8, v9}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$402(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;J)J

    .line 84
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    # setter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->time_s:J
    invoke-static {v7, v8, v9}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$502(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;J)J

    .line 86
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->deleteOverTimeFrame()V

    .line 90
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->readRecorde()Z

    move-result v7

    if-nez v7, :cond_3

    .line 92
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    const/4 v8, 0x0

    # setter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->isRunning:Z
    invoke-static {v7, v8}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$302(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;Z)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 130
    :cond_2
    :try_start_7
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # invokes: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->releaseRecorder()V
    invoke-static {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$900(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 132
    :catch_2
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "QURAM"

    const-string v8, "releaseRecorder failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v3, 0x0

    .line 98
    .local v3, "mic_level":F
    const/4 v2, 0x0

    .line 99
    .local v2, "idx":I
    const/4 v4, 0x0

    .line 100
    .local v4, "sample":S
    const/4 v5, 0x0

    .local v5, "seg":I
    :goto_5
    if-ge v5, v6, :cond_6

    .line 102
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    :try_start_8
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->readAudioStreamBufferSize:I
    invoke-static {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$600(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    div-int/2addr v7, v6

    if-ge v1, v7, :cond_4

    .line 104
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->readAudioStreamBuffer:[B
    invoke-static {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$700(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)[B

    move-result-object v7

    add-int/lit8 v8, v2, 0x1

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x8

    iget-object v8, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->readAudioStreamBuffer:[B
    invoke-static {v8}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$700(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)[B

    move-result-object v8

    aget-byte v8, v8, v2

    or-int/2addr v7, v8

    int-to-short v4, v7

    .line 105
    add-int/lit8 v2, v2, 0x2

    .line 107
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v3, v7

    .line 102
    add-int/lit8 v1, v1, 0x2

    goto :goto_6

    .line 110
    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->readAudioStreamBufferSize:I
    invoke-static {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$600(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    div-int/2addr v7, v6

    int-to-float v7, v7

    div-float/2addr v3, v7

    .line 112
    const/high16 v7, 0x42480000    # 50.0f

    sub-float/2addr v3, v7

    .line 113
    const/4 v7, 0x0

    cmpg-float v7, v3, v7

    if-gez v7, :cond_5

    const/4 v3, 0x0

    .line 115
    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->visualization:[I
    invoke-static {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$200(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)[I

    move-result-object v7

    float-to-int v8, v3

    aput v8, v7, v5

    .line 100
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 118
    .end local v1    # "i":I
    :cond_6
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    const/4 v8, 0x0

    # setter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->segIdx:I
    invoke-static {v7, v8}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$802(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;I)I

    .line 120
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->addRecorde()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 132
    .end local v2    # "idx":I
    .end local v3    # "mic_level":F
    .end local v4    # "sample":S
    .end local v5    # "seg":I
    :catch_3
    move-exception v0

    .line 134
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "QURAM"

    const-string v8, "releaseRecorder failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 134
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v8, "QURAM"

    const-string v9, "releaseRecorder failed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method
