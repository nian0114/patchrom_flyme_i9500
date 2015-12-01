.class Lcom/android/zhys/Main$Pacemaker;
.super Ljava/lang/Object;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/zhys/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Pacemaker"
.end annotation


# instance fields
.field private alarm:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mFrequency:J

.field private mPendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/zhys/Main;


# direct methods
.method public constructor <init>(Lcom/android/zhys/Main;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 403
    iput-object p1, p0, Lcom/android/zhys/Main$Pacemaker;->this$0:Lcom/android/zhys/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput-object v0, p0, Lcom/android/zhys/Main$Pacemaker;->alarm:Landroid/app/AlarmManager;

    .line 399
    iput-object v0, p0, Lcom/android/zhys/Main$Pacemaker;->mPendingIntent:Landroid/app/PendingIntent;

    .line 400
    iput-object v0, p0, Lcom/android/zhys/Main$Pacemaker;->mContext:Landroid/content/Context;

    .line 401
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/zhys/Main$Pacemaker;->mFrequency:J

    .line 404
    iput-object p2, p0, Lcom/android/zhys/Main$Pacemaker;->mContext:Landroid/content/Context;

    .line 405
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Lcom/android/zhys/Main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/zhys/Main$Pacemaker;->alarm:Landroid/app/AlarmManager;

    .line 406
    return-void
.end method

.method public constructor <init>(Lcom/android/zhys/Main;Landroid/content/Context;J)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "freq"    # J

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 409
    iput-object p1, p0, Lcom/android/zhys/Main$Pacemaker;->this$0:Lcom/android/zhys/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput-object v0, p0, Lcom/android/zhys/Main$Pacemaker;->alarm:Landroid/app/AlarmManager;

    .line 399
    iput-object v0, p0, Lcom/android/zhys/Main$Pacemaker;->mPendingIntent:Landroid/app/PendingIntent;

    .line 400
    iput-object v0, p0, Lcom/android/zhys/Main$Pacemaker;->mContext:Landroid/content/Context;

    .line 401
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/zhys/Main$Pacemaker;->mFrequency:J

    .line 410
    iput-object p2, p0, Lcom/android/zhys/Main$Pacemaker;->mContext:Landroid/content/Context;

    .line 411
    iput-wide p3, p0, Lcom/android/zhys/Main$Pacemaker;->mFrequency:J

    .line 412
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Lcom/android/zhys/Main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/zhys/Main$Pacemaker;->alarm:Landroid/app/AlarmManager;

    .line 413
    const-wide/32 v0, 0x36ee80

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/zhys/Main$Pacemaker;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ck.services.intent.ACTION_ONEHOUR_TICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zhys/Main$Pacemaker;->mPendingIntent:Landroid/app/PendingIntent;

    .line 420
    :goto_0
    return-void

    .line 415
    :cond_0
    const-wide/32 v0, 0x927c0

    cmp-long v0, p3, v0

    if-nez v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/android/zhys/Main$Pacemaker;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ck.services.intent.ACTION_TENMIN_TICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zhys/Main$Pacemaker;->mPendingIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/android/zhys/Main$Pacemaker;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ck.services.intent.ACTION_ONEMIN_TICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zhys/Main$Pacemaker;->mPendingIntent:Landroid/app/PendingIntent;

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/zhys/Main$Pacemaker;->alarm:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/zhys/Main$Pacemaker;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 442
    return-void
.end method

.method public init(J)V
    .locals 5
    .param p1, "freq"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 423
    iput-wide p1, p0, Lcom/android/zhys/Main$Pacemaker;->mFrequency:J

    .line 424
    const-wide/32 v0, 0x36ee80

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/zhys/Main$Pacemaker;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ck.services.intent.ACTION_ONEHOUR_TICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zhys/Main$Pacemaker;->mPendingIntent:Landroid/app/PendingIntent;

    .line 431
    :goto_0
    return-void

    .line 426
    :cond_0
    const-wide/32 v0, 0x927c0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/android/zhys/Main$Pacemaker;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ck.services.intent.ACTION_TENMIN_TICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zhys/Main$Pacemaker;->mPendingIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/android/zhys/Main$Pacemaker;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ck.services.intent.ACTION_ONEMIN_TICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zhys/Main$Pacemaker;->mPendingIntent:Landroid/app/PendingIntent;

    goto :goto_0
.end method

.method public start()V
    .locals 7

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/zhys/Main$Pacemaker;->alarm:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    .line 435
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/zhys/Main$Pacemaker;->mFrequency:J

    add-long/2addr v2, v4

    .line 436
    iget-wide v4, p0, Lcom/android/zhys/Main$Pacemaker;->mFrequency:J

    .line 437
    iget-object v6, p0, Lcom/android/zhys/Main$Pacemaker;->mPendingIntent:Landroid/app/PendingIntent;

    .line 434
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 438
    return-void
.end method
