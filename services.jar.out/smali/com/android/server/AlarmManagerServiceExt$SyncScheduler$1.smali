.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 435
    const-string/jumbo v1, "plugged"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 436
    .local v0, "plugged":I
    if-ne v0, v3, :cond_1

    .line 437
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # setter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z
    invoke-static {v1, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$002(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z

    .line 438
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AlarmManagerEXT"

    const-string v2, "on AC power"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 440
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "AlarmManagerEXT"

    const-string v2, "on USB power"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_2
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # setter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z
    invoke-static {v1, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$002(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z

    goto :goto_0

    .line 442
    :cond_3
    if-nez v0, :cond_5

    .line 443
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "AlarmManagerEXT"

    const-string v2, "on Battery power"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_4
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # setter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z
    invoke-static {v1, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$002(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z

    goto :goto_0

    .line 446
    :cond_5
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "AlarmManagerEXT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no Extra info, plugged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_6
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # setter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z
    invoke-static {v1, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$002(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z

    goto :goto_0
.end method
