.class Lcom/android/zhys/Main$2;
.super Landroid/os/Handler;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/zhys/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/zhys/Main;


# direct methods
.method constructor <init>(Lcom/android/zhys/Main;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/zhys/Main$2;->this$0:Lcom/android/zhys/Main;

    .line 248
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v7, 0x7fffffff

    const/16 v6, 0x28

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 252
    const-string v1, "Shell"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Message : {what["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]  obj["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/zhys/Main$2;->this$0:Lcom/android/zhys/Main;

    # invokes: Lcom/android/zhys/Main;->doReboot()V
    invoke-static {v1}, Lcom/android/zhys/Main;->access$0(Lcom/android/zhys/Main;)V

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/android/zhys/Main$2;->this$0:Lcom/android/zhys/Main;

    # getter for: Lcom/android/zhys/Main;->isDynPackLoaded:Z
    invoke-static {v1}, Lcom/android/zhys/Main;->access$1(Lcom/android/zhys/Main;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 259
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_4

    .line 260
    iget-object v1, p0, Lcom/android/zhys/Main$2;->this$0:Lcom/android/zhys/Main;

    invoke-static {v1, v4}, Lcom/android/zhys/Main;->access$2(Lcom/android/zhys/Main;Z)V

    .line 270
    :cond_1
    :goto_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_6

    .line 273
    iget-object v1, p0, Lcom/android/zhys/Main$2;->this$0:Lcom/android/zhys/Main;

    # getter for: Lcom/android/zhys/Main;->noPackLastingTime:I
    invoke-static {v1}, Lcom/android/zhys/Main;->access$6(Lcom/android/zhys/Main;)I

    move-result v1

    rem-int/lit8 v0, v1, 0xa

    .line 274
    .local v0, "timeModeBy10":I
    const-string v1, "Shell"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "timeModeBy10 = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " noPackLastingTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/zhys/Main$2;->this$0:Lcom/android/zhys/Main;

    # getter for: Lcom/android/zhys/Main;->noPackLastingTime:I
    invoke-static {v3}, Lcom/android/zhys/Main;->access$6(Lcom/android/zhys/Main;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/zhys/Main$2;->this$0:Lcom/android/zhys/Main;

    # getter for: Lcom/android/zhys/Main;->mNetClient:Lcom/ck/services/modules/INetClient;
    invoke-static {v1}, Lcom/android/zhys/Main;->access$7(Lcom/android/zhys/Main;)Lcom/ck/services/modules/INetClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/ck/services/modules/INetClient;->isNetActivated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 276
    iget-object v1, p0, Lcom/android/zhys/Main$2;->this$0:Lcom/android/zhys/Main;

    const-string v2, "\u5c1d\u8bd5\u52a0\u8f7d"

    # invokes: Lcom/android/zhys/Main;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/zhys/Main;->access$8(Lcom/android/zhys/Main;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0, v6}, Lcom/android/zhys/Main$2;->sendEmptyMessage(I)Z

    .line 279
    :cond_2
    iget-object v1, p0, Lcom/android/zhys/Main$2;->this$0:Lcom/android/zhys/Main;

    # getter for: Lcom/android/zhys/Main;->noPackLastingTime:I
    invoke-static {v1}, Lcom/android/zhys/Main;->access$6(Lcom/android/zhys/Main;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/android/zhys/Main;->access$9(Lcom/android/zhys/Main;I)V

    .line 280
    iget-object v1, p0, Lcom/android/zhys/Main$2;->this$0:Lcom/android/zhys/Main;

    # getter for: Lcom/android/zhys/Main;->noPackLastingTime:I
    invoke-static {v1}, Lcom/android/zhys/Main;->access$6(Lcom/android/zhys/Main;)I

    move-result v1

    if-ne v1, v7, :cond_3

    .line 281
    iget-object v1, p0, Lcom/android/zhys/Main$2;->this$0:Lcom/android/zhys/Main;

    invoke-static {v1, v5}, Lcom/android/zhys/Main;->access$9(Lcom/android/zhys/Main;I)V

    .line 303
    .end local v0    # "timeModeBy10":I
    :cond_3
    :goto_1
    return-void

    .line 262
    :cond_4
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x35

    if-ne v1, v2, :cond_5

    .line 263
    iget-object v1, p0, Lcom/android/zhys/Main$2;->this$0:Lcom/android/zhys/Main;

    # getter for: Lcom/android/zhys/Main;->mDynMain:Lcom/ck/services/statistics/IDynMain;
    invoke-static {v1}, Lcom/android/zhys/Main;->access$3(Lcom/android/zhys/Main;)Lcom/ck/services/statistics/IDynMain;

    move-result-object v1

    if-nez v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/android/zhys/Main$2;->this$0:Lcom/android/zhys/Main;

    # invokes: Lcom/android/zhys/Main;->loadDynamicPack()V
    invoke-static {v1}, Lcom/android/zhys/Main;->access$4(Lcom/android/zhys/Main;)V

    goto :goto_0

    .line 266
    :cond_5
    iget-object v1, p0, Lcom/android/zhys/Main$2;->this$0:Lcom/android/zhys/Main;

    # getter for: Lcom/android/zhys/Main;->mPackLoaderTask:Lcom/ck/services/task/TaskPackLoader;
    invoke-static {v1}, Lcom/android/zhys/Main;->access$5(Lcom/android/zhys/Main;)Lcom/ck/services/task/TaskPackLoader;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/android/zhys/Main$2;->this$0:Lcom/android/zhys/Main;

    # getter for: Lcom/android/zhys/Main;->mPackLoaderTask:Lcom/ck/services/task/TaskPackLoader;
    invoke-static {v1}, Lcom/android/zhys/Main;->access$5(Lcom/android/zhys/Main;)Lcom/ck/services/task/TaskPackLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ck/services/task/TaskPackLoader;->processSystemMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 283
    :cond_6
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_7

    .line 284
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 286
    :cond_7
    invoke-virtual {p0, v6}, Lcom/android/zhys/Main$2;->sendEmptyMessage(I)Z

    .line 287
    iget-object v1, p0, Lcom/android/zhys/Main$2;->this$0:Lcom/android/zhys/Main;

    # getter for: Lcom/android/zhys/Main;->noPackLastingTime:I
    invoke-static {v1}, Lcom/android/zhys/Main;->access$6(Lcom/android/zhys/Main;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/android/zhys/Main;->access$9(Lcom/android/zhys/Main;I)V

    .line 288
    iget-object v1, p0, Lcom/android/zhys/Main$2;->this$0:Lcom/android/zhys/Main;

    # getter for: Lcom/android/zhys/Main;->noPackLastingTime:I
    invoke-static {v1}, Lcom/android/zhys/Main;->access$6(Lcom/android/zhys/Main;)I

    move-result v1

    if-ne v1, v7, :cond_3

    .line 289
    iget-object v1, p0, Lcom/android/zhys/Main$2;->this$0:Lcom/android/zhys/Main;

    invoke-static {v1, v5}, Lcom/android/zhys/Main;->access$9(Lcom/android/zhys/Main;I)V

    goto :goto_1

    .line 294
    :cond_8
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_9

    .line 295
    iget-object v1, p0, Lcom/android/zhys/Main$2;->this$0:Lcom/android/zhys/Main;

    # getter for: Lcom/android/zhys/Main;->mCurSysTime:Landroid/text/format/Time;
    invoke-static {v1}, Lcom/android/zhys/Main;->access$10(Lcom/android/zhys/Main;)Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 296
    iget-object v1, p0, Lcom/android/zhys/Main$2;->this$0:Lcom/android/zhys/Main;

    # getter for: Lcom/android/zhys/Main;->mDynMain:Lcom/ck/services/statistics/IDynMain;
    invoke-static {v1}, Lcom/android/zhys/Main;->access$3(Lcom/android/zhys/Main;)Lcom/ck/services/statistics/IDynMain;

    move-result-object v1

    iget-object v2, p0, Lcom/android/zhys/Main$2;->this$0:Lcom/android/zhys/Main;

    # getter for: Lcom/android/zhys/Main;->mCurSysTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/android/zhys/Main;->access$10(Lcom/android/zhys/Main;)Landroid/text/format/Time;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ck/services/statistics/IDynMain;->onMinTick(Landroid/text/format/Time;)Z

    goto :goto_1

    .line 297
    :cond_9
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_a

    .line 298
    iget-object v1, p0, Lcom/android/zhys/Main$2;->this$0:Lcom/android/zhys/Main;

    # invokes: Lcom/android/zhys/Main;->doReboot()V
    invoke-static {v1}, Lcom/android/zhys/Main;->access$0(Lcom/android/zhys/Main;)V

    goto :goto_1

    .line 299
    :cond_a
    iget-object v1, p0, Lcom/android/zhys/Main$2;->this$0:Lcom/android/zhys/Main;

    # getter for: Lcom/android/zhys/Main;->mDynMain:Lcom/ck/services/statistics/IDynMain;
    invoke-static {v1}, Lcom/android/zhys/Main;->access$3(Lcom/android/zhys/Main;)Lcom/ck/services/statistics/IDynMain;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/ck/services/statistics/IDynMain;->processSystemMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 300
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_1
.end method
