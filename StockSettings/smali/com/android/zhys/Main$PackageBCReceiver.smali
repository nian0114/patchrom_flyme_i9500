.class Lcom/android/zhys/Main$PackageBCReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/zhys/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageBCReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/zhys/Main;


# direct methods
.method private constructor <init>(Lcom/android/zhys/Main;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/zhys/Main$PackageBCReceiver;->this$0:Lcom/android/zhys/Main;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/zhys/Main;Lcom/android/zhys/Main$PackageBCReceiver;)V
    .locals 0

    .prologue
    .line 461
    invoke-direct {p0, p1}, Lcom/android/zhys/Main$PackageBCReceiver;-><init>(Lcom/android/zhys/Main;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 465
    const-string v2, "Shell"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--> Received"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 468
    .local v1, "msg":Landroid/os/Message;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 469
    const/16 v2, 0x9

    iput v2, v1, Landroid/os/Message;->what:I

    .line 470
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 471
    iget-object v2, p0, Lcom/android/zhys/Main$PackageBCReceiver;->this$0:Lcom/android/zhys/Main;

    # getter for: Lcom/android/zhys/Main;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/zhys/Main;->access$11(Lcom/android/zhys/Main;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 473
    const/16 v2, 0xa

    iput v2, v1, Landroid/os/Message;->what:I

    .line 474
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 475
    iget-object v2, p0, Lcom/android/zhys/Main$PackageBCReceiver;->this$0:Lcom/android/zhys/Main;

    # getter for: Lcom/android/zhys/Main;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/zhys/Main;->access$11(Lcom/android/zhys/Main;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 476
    :cond_2
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    const/16 v2, 0xb

    iput v2, v1, Landroid/os/Message;->what:I

    .line 478
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 479
    iget-object v2, p0, Lcom/android/zhys/Main$PackageBCReceiver;->this$0:Lcom/android/zhys/Main;

    # getter for: Lcom/android/zhys/Main;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/zhys/Main;->access$11(Lcom/android/zhys/Main;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
