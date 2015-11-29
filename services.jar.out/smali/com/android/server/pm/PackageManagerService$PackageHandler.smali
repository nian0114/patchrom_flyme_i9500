.class Lcom/android/server/pm/PackageManagerService$PackageHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageHandler"
.end annotation


# instance fields
.field private mBound:Z

.field final mPendingInstalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PackageManagerService$HandlerParams;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    return-void
.end method

.method private connectToService()Z
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v4, Lcom/android/server/pm/PackageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .local v0, "service":Landroid/content/Intent;
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mDefContainerConn:Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$500(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    :goto_0
    return v1

    :cond_0
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    move v1, v2

    goto :goto_0
.end method

.method private disconnectService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$602(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mDefContainerConn:Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$500(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .locals 69
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .local v52, "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v40

    .local v40, "idx":I
    move-object/from16 v0, v52

    instance-of v4, v0, Lcom/android/server/pm/PackageManagerService$MeasureParams;

    if-nez v4, :cond_1

    const-string v4, "PackageManager"

    const-string v10, "MSG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "INIT_COPY: observer{"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v52

    # invokes: Lcom/android/server/pm/PackageManagerService;->getObserverHashCodeFromHandlerParam(Lcom/android/server/pm/PackageManagerService$HandlerParams;)Ljava/lang/String;
    invoke-static {v13, v0}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$HandlerParams;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "}\n"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "          idx{"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v40

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "}\n"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "          for_user{"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v52 .. v52}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->getUser()Landroid/os/UserHandle;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "}"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-nez v4, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "PackageManager"

    const-string v10, "Failed to bind to media container service"

    invoke-static {v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v52 .. v52}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v4, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v4, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-nez v40, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .end local v40    # "idx":I
    .end local v52    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/app/IMediaContainerService;

    # setter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v10, v4}, Lcom/android/server/pm/PackageManagerService;->access$602(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    if-nez v4, :cond_6

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    const-string v4, "PackageManager"

    const-string v10, "Cannot bind to media container service"

    invoke-static {v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v39

    .local v39, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .restart local v52    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    invoke-virtual/range {v52 .. v52}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_1

    .end local v52    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .end local v39    # "i$":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .restart local v52    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    if-eqz v52, :cond_0

    move-object/from16 v0, v52

    instance-of v4, v0, Lcom/android/server/pm/PackageManagerService$MeasureParams;

    if-nez v4, :cond_7

    const-string v4, "PackageManager"

    const-string v10, "MSG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MCS_BOUND: observer{"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v52

    # invokes: Lcom/android/server/pm/PackageManagerService;->getObserverHashCodeFromHandlerParam(Lcom/android/server/pm/PackageManagerService$HandlerParams;)Ljava/lang/String;
    invoke-static {v13, v0}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$HandlerParams;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "}\n"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "          for_user{"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v52 .. v52}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->getUser()Landroid/os/UserHandle;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "}"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual/range {v52 .. v52}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->startCopy()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    const-string v4, "PackageManager"

    const-string v10, "remove MCS_UNBIND message and Posting MCS_UNBIND 10 secs later"

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v63

    .local v63, "ubmsg":Landroid/os/Message;
    const-wide/16 v10, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1, v10, v11}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v63    # "ubmsg":Landroid/os/Message;
    :cond_9
    const-string v4, "PackageManager"

    const-string v10, "Posting MCS_BOUND for next work in MCS_BOUND "

    invoke-static {v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .end local v52    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_a
    const-string v4, "PackageManager"

    const-string v10, "Empty queue"

    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_3
    const-string v4, "PackageManager"

    const-string v10, "MSG"

    const-string v11, "MCS_RECONNECT"

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v4, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "PackageManager"

    const-string v10, "Failed to bind to media container service"

    invoke-static {v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v39

    .restart local v39    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .restart local v52    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    invoke-virtual/range {v52 .. v52}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_2

    .end local v52    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .end local v39    # "i$":Ljava/util/Iterator;
    :pswitch_4
    const-string v4, "PackageManager"

    const-string v10, "MSG"

    const-string v11, "MCS_UNBIND"

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v4, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :pswitch_5
    const-string v4, "PackageManager"

    const-string v10, "MSG"

    const-string v11, "MCS_GIVE_UP"

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_6
    const-string v4, "PackageManager"

    const-string v10, "MSG"

    const-string v11, "SEND_PENDING_BROADCAST"

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    .local v9, "size":I
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    sget-object v10, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v10

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    if-nez v4, :cond_e

    monitor-exit v10

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_e
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->size()I

    move-result v9

    if-gtz v9, :cond_f

    monitor-exit v10

    goto/16 :goto_0

    :cond_f
    new-array v5, v9, [Ljava/lang/String;

    .local v5, "packages":[Ljava/lang/String;
    new-array v6, v9, [Ljava/util/ArrayList;

    .local v6, "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-array v7, v9, [I

    .local v7, "uids":[I
    const/16 v38, 0x0

    .local v38, "i":I
    const/16 v46, 0x0

    .local v46, "n":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdCount()I

    move-result v4

    move/from16 v0, v46

    if-ge v0, v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    move/from16 v0, v46

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdAt(I)I

    move-result v51

    .local v51, "packageUserId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    move/from16 v0, v51

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->packagesForUserId(I)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v43

    .local v43, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :goto_4
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    move/from16 v0, v38

    if-ge v0, v9, :cond_11

    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/Map$Entry;

    .local v37, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface/range {v37 .. v37}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v5, v38

    invoke-interface/range {v37 .. v37}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    aput-object v4, v6, v38

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-interface/range {v37 .. v37}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/server/pm/PackageSetting;

    .local v53, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v53, :cond_10

    move-object/from16 v0, v53

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move/from16 v0, v51

    invoke-static {v0, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    :goto_5
    aput v4, v7, v38

    add-int/lit8 v38, v38, 0x1

    goto :goto_4

    :cond_10
    const/4 v4, -0x1

    goto :goto_5

    .end local v37    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v53    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_11
    add-int/lit8 v46, v46, 0x1

    goto :goto_3

    .end local v43    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v51    # "packageUserId":I
    :cond_12
    move/from16 v9, v38

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->clear()V

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v38, 0x0

    :goto_6
    move/from16 v0, v38

    if-ge v0, v9, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    aget-object v10, v5, v38

    const/4 v11, 0x1

    aget-object v13, v6, v38

    aget v14, v7, v38

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendPackageChangedBroadcast(Ljava/lang/String;ZLjava/util/ArrayList;I)V
    invoke-static {v4, v10, v11, v13, v14}, Lcom/android/server/pm/PackageManagerService;->access$800(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V

    add-int/lit8 v38, v38, 0x1

    goto :goto_6

    :cond_13
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .end local v5    # "packages":[Ljava/lang/String;
    .end local v6    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "uids":[I
    .end local v9    # "size":I
    .end local v38    # "i":I
    .end local v46    # "n":I
    :pswitch_7
    const-string v4, "PackageManager"

    const-string v10, "SEND_PENDING_BROADCAST_WITH_LIST START"

    invoke-static {v4, v10}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .restart local v5    # "packages":[Ljava/lang/String;
    const/4 v6, 0x0

    .restart local v6    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .restart local v7    # "uids":[I
    const/4 v8, 0x0

    .local v8, "dontKillFlags":[Z
    const/4 v9, 0x0

    .restart local v9    # "size":I
    const/16 v59, 0x0

    .local v59, "retSize":I
    sget-object v10, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v10

    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcastsForBurst:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcastsForBurst:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->size()I

    move-result v9

    if-gtz v9, :cond_14

    const-string v4, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pending size ["

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "] SEND_PENDING_BROADCAST_WITH_LIST END"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v10

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    :cond_14
    :try_start_3
    new-array v5, v9, [Ljava/lang/String;

    new-array v6, v9, [Ljava/util/ArrayList;

    new-array v7, v9, [I

    new-array v8, v9, [Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->handlePendingBroadcastsForBurst([Ljava/lang/String;[Ljava/util/ArrayList;[I[ZI)I
    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerService;->access$900(Lcom/android/server/pm/PackageManagerService;[Ljava/lang/String;[Ljava/util/ArrayList;[I[ZI)I

    move-result v59

    :cond_15
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v38, 0x0

    .restart local v38    # "i":I
    :goto_7
    move/from16 v0, v38

    move/from16 v1, v59

    if-ge v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    aget-object v10, v5, v38

    aget-boolean v11, v8, v38

    aget-object v13, v6, v38

    aget v14, v7, v38

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendPackageChangedBroadcast(Ljava/lang/String;ZLjava/util/ArrayList;I)V
    invoke-static {v4, v10, v11, v13, v14}, Lcom/android/server/pm/PackageManagerService;->access$800(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V

    add-int/lit8 v38, v38, 0x1

    goto :goto_7

    :cond_16
    new-instance v42, Landroid/content/Intent;

    const-string v4, "android.intent.action.EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED"

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v42, "it":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v4, "PackageManager"

    const-string v10, "SEND_PENDING_BROADCAST_WITH_LIST END"

    invoke-static {v4, v10}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v5    # "packages":[Ljava/lang/String;
    .end local v6    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "uids":[I
    .end local v8    # "dontKillFlags":[Z
    .end local v9    # "size":I
    .end local v38    # "i":I
    .end local v42    # "it":Landroid/content/Intent;
    .end local v59    # "retSize":I
    :pswitch_8
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Ljava/lang/String;

    .local v50, "packageName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v66, v0

    .local v66, "userId":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_17

    const/16 v28, 0x1

    .local v28, "andCode":Z
    :goto_8
    const-string v4, "PackageManager"

    const-string v10, "MSG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "START_CLEANING_PACKAGE packageName{"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v50

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "}\n"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "userId{"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v66

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "}\n"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "andCode{"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "}"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v10

    const/4 v4, -0x1

    move/from16 v0, v66

    if-ne v0, v4, :cond_18

    :try_start_4
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v67

    .local v67, "users":[I
    move-object/from16 v31, v67

    .local v31, "arr$":[I
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v45, v0

    .local v45, "len$":I
    const/16 v39, 0x0

    .local v39, "i$":I
    :goto_9
    move/from16 v0, v39

    move/from16 v1, v45

    if-ge v0, v1, :cond_19

    aget v65, v31, v39

    .local v65, "user":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    new-instance v11, Landroid/content/pm/PackageCleanItem;

    move/from16 v0, v65

    move-object/from16 v1, v50

    move/from16 v2, v28

    invoke-direct {v11, v0, v1, v2}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v4, v11}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    add-int/lit8 v39, v39, 0x1

    goto :goto_9

    .end local v28    # "andCode":Z
    .end local v31    # "arr$":[I
    .end local v39    # "i$":I
    .end local v45    # "len$":I
    .end local v65    # "user":I
    .end local v67    # "users":[I
    :cond_17
    const/16 v28, 0x0

    goto/16 :goto_8

    .restart local v28    # "andCode":Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    new-instance v11, Landroid/content/pm/PackageCleanItem;

    move/from16 v0, v66

    move-object/from16 v1, v50

    move/from16 v2, v28

    invoke-direct {v11, v0, v1, v2}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v4, v11}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    :cond_19
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->startCleaningPackages()V

    goto/16 :goto_0

    :catchall_2
    move-exception v4

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4

    .end local v28    # "andCode":Z
    .end local v50    # "packageName":Ljava/lang/String;
    .end local v66    # "userId":I
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    .local v33, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->delete(I)V

    const/16 v34, 0x0

    .local v34, "deleteOld":Z
    if-eqz v33, :cond_2a

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-object/from16 v29, v0

    .local v29, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    move-object/from16 v55, v0

    .local v55, "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    const-string v10, "PackageManager"

    const-string v11, "MSG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "POST_INSTALL: observer{"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v29, :cond_24

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    if-eqz v4, :cond_24

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_a
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "}\n"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "          Handling post-install for "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "\n"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v55

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_22

    move-object/from16 v0, v55

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    invoke-virtual {v4, v10, v11, v13}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendBroadcast(ZZZ)V

    new-instance v12, Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-direct {v12, v4}, Landroid/os/Bundle;-><init>(I)V

    .local v12, "extras":Landroid/os/Bundle;
    const-string v4, "android.intent.extra.UID"

    move-object/from16 v0, v55

    iget v10, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-virtual {v12, v4, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x0

    new-array v0, v4, [I

    move-object/from16 v21, v0

    .local v21, "updateUsers":[I
    move-object/from16 v0, v55

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    if-eqz v4, :cond_1a

    move-object/from16 v0, v55

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    array-length v4, v4

    if-nez v4, :cond_25

    :cond_1a
    move-object/from16 v0, v55

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    .local v15, "firstUsers":[I
    :cond_1b
    # getter for: Lcom/android/server/pm/PackageManagerService;->isChinaNal:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$1000()Z

    move-result v4

    if-eqz v4, :cond_1c

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    if-eqz v4, :cond_1c

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    const-string v10, "com.sec.android.preloadinstaller"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v4, "com.sec.android.extra.PRELOADINSTALL"

    const/4 v10, 0x1

    invoke-virtual {v12, v4, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1c
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    if-eqz v4, :cond_1d

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    const-string v10, "com.android.vending"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/certificate/CertificatePolicy;

    move-result-object v32

    .local v32, "cp":Lcom/sec/enterprise/knox/certificate/CertificatePolicy;
    if-eqz v32, :cond_1d

    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->isSignatureIdentityInformationEnabled(Z)Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string v4, "isMarketInstallation"

    const/4 v10, 0x1

    invoke-virtual {v12, v4, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .end local v32    # "cp":Lcom/sec/enterprise/knox/certificate/CertificatePolicy;
    :cond_1d
    const-string v10, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v55

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v15}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    move-object/from16 v0, v55

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v4, :cond_29

    const/16 v64, 0x1

    .local v64, "update":Z
    :goto_b
    if-eqz v64, :cond_1e

    const-string v4, "android.intent.extra.REPLACING"

    const/4 v10, 0x1

    invoke-virtual {v12, v4, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1e
    const-string v16, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v55

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v18, v12

    invoke-static/range {v16 .. v21}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    if-eqz v64, :cond_20

    const-string v16, "android.intent.action.PACKAGE_REPLACED"

    move-object/from16 v0, v55

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v18, v12

    invoke-static/range {v16 .. v21}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    const-string v16, "android.intent.action.MY_PACKAGE_REPLACED"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v55

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v21}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    move-object/from16 v0, v55

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    # invokes: Lcom/android/server/pm/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$1100(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-nez v4, :cond_1f

    move-object/from16 v0, v55

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    # invokes: Lcom/android/server/pm/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$1200(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_20

    :cond_1f
    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v26, v0

    const/4 v4, 0x0

    move-object/from16 v0, v55

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    aput v10, v26, v4

    .local v26, "uidArray":[I
    new-instance v25, Ljava/util/ArrayList;

    const/4 v4, 0x1

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .local v25, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v55

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v27, 0x0

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendResourcesChangedBroadcast(ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V
    invoke-static/range {v22 .. v27}, Lcom/android/server/pm/PackageManagerService;->access$1300(Lcom/android/server/pm/PackageManagerService;ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .end local v25    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26    # "uidArray":[I
    :cond_20
    move-object/from16 v0, v55

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v4, :cond_21

    const/16 v34, 0x1

    :cond_21
    const/16 v4, 0xc26

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getUnknownSourcesSettings()I
    invoke-static {v10}, Lcom/android/server/pm/PackageManagerService;->access$1400(Lcom/android/server/pm/PackageManagerService;)I

    move-result v10

    invoke-static {v4, v10}, Landroid/util/EventLog;->writeEvent(II)I

    .end local v12    # "extras":Landroid/os/Bundle;
    .end local v15    # "firstUsers":[I
    .end local v21    # "updateUsers":[I
    .end local v64    # "update":Z
    :cond_22
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    if-eqz v34, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_6
    move-object/from16 v0, v55

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_23
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    if-eqz v4, :cond_0

    :try_start_7
    const-string v4, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "result of install: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v55

    iget v11, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "{"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v29

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v55

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageManagerService;->extrasForInstallResult(Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)Landroid/os/Bundle;

    move-result-object v12

    .restart local v12    # "extras":Landroid/os/Bundle;
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    move-object/from16 v0, v55

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v55

    iget v11, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    move-object/from16 v0, v55

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnMsg:Ljava/lang/String;

    invoke-interface {v4, v10, v11, v13, v12}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .end local v12    # "extras":Landroid/os/Bundle;
    :catch_0
    move-exception v36

    .local v36, "e":Landroid/os/RemoteException;
    const-string v4, "PackageManager"

    const-string v10, "Observer no longer exists."

    invoke-static {v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v36    # "e":Landroid/os/RemoteException;
    :cond_24
    const-string v4, "null"

    goto/16 :goto_a

    .restart local v12    # "extras":Landroid/os/Bundle;
    .restart local v21    # "updateUsers":[I
    :cond_25
    const/4 v4, 0x0

    new-array v15, v4, [I

    .restart local v15    # "firstUsers":[I
    const/16 v38, 0x0

    .restart local v38    # "i":I
    :goto_c
    move-object/from16 v0, v55

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    array-length v4, v4

    move/from16 v0, v38

    if-ge v0, v4, :cond_1b

    move-object/from16 v0, v55

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    aget v65, v4, v38

    .restart local v65    # "user":I
    const/16 v41, 0x1

    .local v41, "isNew":Z
    const/16 v44, 0x0

    .local v44, "j":I
    :goto_d
    move-object/from16 v0, v55

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    array-length v4, v4

    move/from16 v0, v44

    if-ge v0, v4, :cond_26

    move-object/from16 v0, v55

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    aget v4, v4, v44

    move/from16 v0, v65

    if-ne v4, v0, :cond_27

    const/16 v41, 0x0

    :cond_26
    if-eqz v41, :cond_28

    array-length v4, v15

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v47, v0

    .local v47, "newFirst":[I
    const/4 v4, 0x0

    const/4 v10, 0x0

    array-length v11, v15

    move-object/from16 v0, v47

    invoke-static {v15, v4, v0, v10, v11}, Ljava/lang/System;->arraycopy([II[III)V

    array-length v4, v15

    aput v65, v47, v4

    move-object/from16 v15, v47

    .end local v47    # "newFirst":[I
    :goto_e
    add-int/lit8 v38, v38, 0x1

    goto :goto_c

    :cond_27
    add-int/lit8 v44, v44, 0x1

    goto :goto_d

    :cond_28
    move-object/from16 v0, v21

    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v48, v0

    .local v48, "newUpdate":[I
    const/4 v4, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v21

    array-length v11, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v48

    invoke-static {v0, v4, v1, v10, v11}, Ljava/lang/System;->arraycopy([II[III)V

    move-object/from16 v0, v21

    array-length v4, v0

    aput v65, v48, v4

    move-object/from16 v21, v48

    goto :goto_e

    .end local v38    # "i":I
    .end local v41    # "isNew":Z
    .end local v44    # "j":I
    .end local v48    # "newUpdate":[I
    .end local v65    # "user":I
    :cond_29
    const/16 v64, 0x0

    goto/16 :goto_b

    .end local v12    # "extras":Landroid/os/Bundle;
    .end local v15    # "firstUsers":[I
    .end local v21    # "updateUsers":[I
    :catchall_3
    move-exception v4

    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v4

    .end local v29    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v55    # "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    :cond_2a
    const-string v4, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bogus post-install token "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v33    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v34    # "deleteOld":Z
    :pswitch_a
    const-string v4, "PackageManager"

    const-string v10, "MSG"

    const-string v11, "UPDATED_MEDIA_STATUS"

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_2d

    const/16 v54, 0x1

    .local v54, "reportStatus":Z
    :goto_f
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_2e

    const/16 v35, 0x1

    .local v35, "doGc":Z
    :goto_10
    const-string v4, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "reportStatus="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v54

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", doGc = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v35, :cond_2b

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    :cond_2b
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_2c

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/util/Set;

    .local v30, "args":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v30

    # invokes: Lcom/android/server/pm/PackageManagerService;->unloadAllContainers(Ljava/util/Set;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->access$1500(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;)V

    .end local v30    # "args":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;>;"
    :cond_2c
    if-eqz v54, :cond_0

    :try_start_9
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/storage/IMountService;->finishMediaUpdate()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v36

    .restart local v36    # "e":Landroid/os/RemoteException;
    const-string v4, "PackageManager"

    const-string v10, "MountService not running?"

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v35    # "doGc":Z
    .end local v36    # "e":Landroid/os/RemoteException;
    .end local v54    # "reportStatus":Z
    :cond_2d
    const/16 v54, 0x0

    goto :goto_f

    .restart local v54    # "reportStatus":Z
    :cond_2e
    const/16 v35, 0x0

    goto :goto_10

    .end local v54    # "reportStatus":Z
    :pswitch_b
    const-string v4, "PackageManager"

    const-string v10, "MSG"

    const-string v11, "WRITE_SETTINGS"

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    sget-object v10, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v10

    const/16 v4, 0xd

    :try_start_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    const/16 v4, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4}, Lcom/android/server/pm/Settings;->writeLPr()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$1600(Lcom/android/server/pm/PackageManagerService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    :try_start_b
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v4

    :pswitch_c
    const-string v4, "PackageManager"

    const-string v10, "MSG"

    const-string v11, "WRITE_PACKAGE_RESTRICTIONS"

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    sget-object v10, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v10

    const/16 v4, 0xe

    :try_start_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$1600(Lcom/android/server/pm/PackageManagerService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v39

    .local v39, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v66

    .restart local v66    # "userId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move/from16 v0, v66

    invoke-virtual {v4, v0}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_11

    .end local v39    # "i$":Ljava/util/Iterator;
    .end local v66    # "userId":I
    :catchall_5
    move-exception v4

    monitor-exit v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v4

    .restart local v39    # "i$":Ljava/util/Iterator;
    :cond_2f
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$1600(Lcom/android/server/pm/PackageManagerService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    monitor-exit v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .end local v39    # "i$":Ljava/util/Iterator;
    :pswitch_d
    const-string v4, "PackageManager"

    const-string v10, "MSG"

    const-string v11, "CHECK_PENDING_VERIFICATION"

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v68, v0

    .local v68, "verificationId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v68

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/android/server/pm/PackageVerificationState;

    .local v61, "state":Lcom/android/server/pm/PackageVerificationState;
    if-eqz v61, :cond_30

    invoke-virtual/range {v61 .. v61}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v4

    if-eqz v4, :cond_31

    invoke-virtual/range {v61 .. v61}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v4

    iget-object v0, v4, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    move-object/from16 v49, v0

    .local v49, "ob":Landroid/content/pm/IPackageInstallObserver2;
    :goto_12
    const-string v10, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CHECK_PENDING_VERIFICATION: observer{"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v49, :cond_32

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_13
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, "}\n"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, "          verificationId{"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v68

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, "}"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v49    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    :cond_30
    if-eqz v61, :cond_0

    invoke-virtual/range {v61 .. v61}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended()Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v56, v0

    check-cast v56, Lcom/android/server/pm/PackageVerificationResponse;

    .local v56, "response":Lcom/android/server/pm/PackageVerificationResponse;
    move-object/from16 v0, v56

    iget v4, v0, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    move-object/from16 v0, v56

    iget v10, v0, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    move-object/from16 v0, v61

    invoke-virtual {v0, v4, v10}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move/from16 v0, v68

    move-object/from16 v1, v61

    move-object/from16 v2, v56

    # invokes: Lcom/android/server/pm/PackageManagerService;->packageVerificationCompletion(ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;)Z
    invoke-static {v4, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$1700(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual/range {v61 .. v61}, Lcom/android/server/pm/PackageVerificationState;->getVerifierPackageCount()I

    move-result v4

    if-lez v4, :cond_0

    move-object/from16 v0, v56

    iget v4, v0, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    const/4 v10, 0x0

    move-object/from16 v0, v61

    invoke-virtual {v0, v10}, Lcom/android/server/pm/PackageVerificationState;->getVerifierPackage(I)Lcom/android/server/pm/PackageManagerService$VerifierPackage;

    move-result-object v10

    iget v10, v10, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->uId:I

    if-ne v4, v10, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v61

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendOrderedBroadcastToPendingVerifier(Lcom/android/server/pm/PackageVerificationState;)Z
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->access$1800(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageVerificationState;)Z

    goto/16 :goto_0

    .end local v56    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    :cond_31
    const/16 v49, 0x0

    goto/16 :goto_12

    .restart local v49    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    :cond_32
    const-string v4, "null"

    goto :goto_13

    .end local v49    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    .end local v61    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v68    # "verificationId":I
    :pswitch_e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v68, v0

    .restart local v68    # "verificationId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v68

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/android/server/pm/PackageVerificationState;

    .restart local v61    # "state":Lcom/android/server/pm/PackageVerificationState;
    if-nez v61, :cond_33

    const-string v4, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid verification token "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v68

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " received"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_33
    invoke-virtual/range {v61 .. v61}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v4

    if-eqz v4, :cond_34

    invoke-virtual/range {v61 .. v61}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v4

    iget-object v0, v4, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    move-object/from16 v49, v0

    .restart local v49    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    :goto_14
    const-string v10, "PackageManager"

    const-string v11, "MSG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PACKAGE_VERIFIED: observer{"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v49, :cond_35

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_15
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "}\n"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "          verificationId{"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v68

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "}"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v56, v0

    check-cast v56, Lcom/android/server/pm/PackageVerificationResponse;

    .restart local v56    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    move-object/from16 v0, v56

    iget v4, v0, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    move-object/from16 v0, v56

    iget v10, v0, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    move-object/from16 v0, v61

    invoke-virtual {v0, v4, v10}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move/from16 v0, v68

    move-object/from16 v1, v61

    move-object/from16 v2, v56

    # invokes: Lcom/android/server/pm/PackageManagerService;->packageVerificationCompletion(ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;)Z
    invoke-static {v4, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$1700(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual/range {v61 .. v61}, Lcom/android/server/pm/PackageVerificationState;->getVerifierPackageCount()I

    move-result v4

    if-lez v4, :cond_0

    move-object/from16 v0, v56

    iget v4, v0, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    const/4 v10, 0x0

    move-object/from16 v0, v61

    invoke-virtual {v0, v10}, Lcom/android/server/pm/PackageVerificationState;->getVerifierPackage(I)Lcom/android/server/pm/PackageManagerService$VerifierPackage;

    move-result-object v10

    iget v10, v10, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->uId:I

    if-ne v4, v10, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v61

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendOrderedBroadcastToPendingVerifier(Lcom/android/server/pm/PackageVerificationState;)Z
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->access$1800(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageVerificationState;)Z

    goto/16 :goto_0

    .end local v49    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    .end local v56    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    :cond_34
    const/16 v49, 0x0

    goto/16 :goto_14

    .restart local v49    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    :cond_35
    const-string v4, "null"

    goto :goto_15

    .end local v49    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    .end local v61    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v68    # "verificationId":I
    :pswitch_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v68, v0

    .restart local v68    # "verificationId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v68

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/android/server/pm/PackageVerificationState;

    .restart local v61    # "state":Lcom/android/server/pm/PackageVerificationState;
    if-eqz v61, :cond_0

    invoke-virtual/range {v61 .. v61}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v4

    if-eqz v4, :cond_36

    invoke-virtual/range {v61 .. v61}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v4

    iget-object v0, v4, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    move-object/from16 v49, v0

    .restart local v49    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    :goto_16
    const-string v10, "PackageManager"

    const-string v11, "MSG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SUFFICIENT_VERIFICATION_TIMEOUT: observer{"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v49, :cond_37

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_17
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "}\n"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "          verificationId{"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v68

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "}"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v56, v0

    check-cast v56, Lcom/android/server/pm/PackageVerificationResponse;

    .restart local v56    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    invoke-virtual/range {v61 .. v61}, Lcom/android/server/pm/PackageVerificationState;->clearSufficientVerifiers()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move/from16 v0, v68

    move-object/from16 v1, v61

    move-object/from16 v2, v56

    # invokes: Lcom/android/server/pm/PackageManagerService;->packageVerificationCompletion(ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;)Z
    invoke-static {v4, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$1700(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;)Z

    goto/16 :goto_0

    .end local v49    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    .end local v56    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    :cond_36
    const/16 v49, 0x0

    goto :goto_16

    .restart local v49    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    :cond_37
    const-string v4, "null"

    goto :goto_17

    .end local v49    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    .end local v61    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v68    # "verificationId":I
    :pswitch_10
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v60, v0

    .local v60, "scanId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingScans:Landroid/util/SparseArray;

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/android/server/pm/PackageScanState;

    .local v61, "state":Lcom/android/server/pm/PackageScanState;
    if-eqz v61, :cond_0

    invoke-virtual/range {v61 .. v61}, Lcom/android/server/pm/PackageScanState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v29

    .restart local v29    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingScans:Landroid/util/SparseArray;

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    const/16 v4, 0x16

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    if-ne v4, v10, :cond_39

    const/16 v58, -0x15

    .local v58, "ret":I
    const-string v4, "PackageManager"

    const-string v10, "Failing package install after timeout"

    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v29

    move/from16 v1, v58

    # invokes: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v4, v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$1900(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    invoke-virtual/range {v61 .. v61}, Lcom/android/server/pm/PackageScanState;->getTempPackage()Ljava/io/File;

    move-result-object v62

    .local v62, "temp":Ljava/io/File;
    if-eqz v62, :cond_38

    invoke-virtual/range {v62 .. v62}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_38

    const-string v4, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t delete temporary file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v62 .. v62}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v10, 0x6

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .end local v58    # "ret":I
    .end local v62    # "temp":Ljava/io/File;
    :cond_39
    const/16 v58, -0x6e

    .restart local v58    # "ret":I
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    const/4 v10, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v10}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_2

    move-result v58

    goto :goto_18

    :catch_2
    move-exception v36

    .restart local v36    # "e":Landroid/os/RemoteException;
    const-string v4, "PackageManager"

    const-string v10, "Could not contact the ContainerService"

    invoke-static {v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .end local v29    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v36    # "e":Landroid/os/RemoteException;
    .end local v58    # "ret":I
    .end local v60    # "scanId":I
    .end local v61    # "state":Lcom/android/server/pm/PackageScanState;
    :pswitch_11
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v60, v0

    .restart local v60    # "scanId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingScans:Landroid/util/SparseArray;

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/android/server/pm/PackageScanState;

    .restart local v61    # "state":Lcom/android/server/pm/PackageScanState;
    if-nez v61, :cond_3a

    const-string v4, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid scan token "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v60

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingScans:Landroid/util/SparseArray;

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v57

    .local v57, "responseCode":I
    invoke-virtual/range {v61 .. v61}, Lcom/android/server/pm/PackageScanState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v29

    .restart local v29    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    const/16 v58, -0x16

    .restart local v58    # "ret":I
    const/16 v4, 0x3e8

    move/from16 v0, v57

    if-ne v0, v4, :cond_3b

    const/16 v58, -0x6e

    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    const/4 v10, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v10}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_3

    move-result v58

    :cond_3b
    :goto_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v29

    move/from16 v1, v58

    # invokes: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v4, v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$1900(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    invoke-virtual/range {v61 .. v61}, Lcom/android/server/pm/PackageScanState;->getTempPackage()Ljava/io/File;

    move-result-object v62

    .restart local v62    # "temp":Ljava/io/File;
    if-eqz v62, :cond_3c

    invoke-virtual/range {v62 .. v62}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_3c

    const-string v4, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t delete temporary file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v62 .. v62}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v10, 0x6

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .end local v62    # "temp":Ljava/io/File;
    :catch_3
    move-exception v36

    .restart local v36    # "e":Landroid/os/RemoteException;
    const-string v4, "PackageManager"

    const-string v10, "Could not contact the ContainerService"

    invoke-static {v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_3
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_7
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v1, 0xa

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    throw v0
.end method
