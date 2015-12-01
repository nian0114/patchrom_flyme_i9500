.class Lcom/android/zhys/Main$PacemakerBCReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/zhys/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PacemakerBCReceiver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Shell.PacemakerBCReceiver"


# instance fields
.field final synthetic this$0:Lcom/android/zhys/Main;


# direct methods
.method private constructor <init>(Lcom/android/zhys/Main;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/zhys/Main$PacemakerBCReceiver;->this$0:Lcom/android/zhys/Main;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/zhys/Main;Lcom/android/zhys/Main$PacemakerBCReceiver;)V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcom/android/zhys/Main$PacemakerBCReceiver;-><init>(Lcom/android/zhys/Main;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 449
    const-string v1, "Shell.PacemakerBCReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--> Received"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.ck.services.intent.ACTION_ONEMIN_TICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    iget-object v1, p0, Lcom/android/zhys/Main$PacemakerBCReceiver;->this$0:Lcom/android/zhys/Main;

    # getter for: Lcom/android/zhys/Main;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/zhys/Main;->access$11(Lcom/android/zhys/Main;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    const-string v1, "com.ck.services.intent.ACTION_TENMIN_TICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 454
    iget-object v1, p0, Lcom/android/zhys/Main$PacemakerBCReceiver;->this$0:Lcom/android/zhys/Main;

    # getter for: Lcom/android/zhys/Main;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/zhys/Main;->access$11(Lcom/android/zhys/Main;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 455
    :cond_2
    const-string v1, "com.ck.services.intent.ACTION_ONEHOUR_TICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/android/zhys/Main$PacemakerBCReceiver;->this$0:Lcom/android/zhys/Main;

    # getter for: Lcom/android/zhys/Main;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/zhys/Main;->access$11(Lcom/android/zhys/Main;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
