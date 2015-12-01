.class Lcom/android/zhys/Main$1;
.super Landroid/content/BroadcastReceiver;
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
    iput-object p1, p0, Lcom/android/zhys/Main$1;->this$0:Lcom/android/zhys/Main;

    .line 73
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v2, 0x352

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.ck.services.intent.ACTIVE_ENG_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ck/services/application/LOG;->switchEngMode(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/zhys/Main$1;->this$0:Lcom/android/zhys/Main;

    const-string v1, "EngMode is switched ON"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.ck.services.intent.DEACTIVE_ENG_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ck/services/application/LOG;->switchEngMode(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/zhys/Main$1;->this$0:Lcom/android/zhys/Main;

    const-string v1, "EngMode is switched OFF"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
