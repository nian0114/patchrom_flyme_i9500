.class public final Lcom/absolute/android/persistservice/ai;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static final a:Z = false

.field private static final b:I = 0x3

.field private static final c:Ljava/lang/String; = "PingWorkerThread_"


# instance fields
.field private d:Lcom/absolute/android/persistservice/o;

.field private e:Lcom/absolute/android/persistservice/y;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Z

.field private i:Lcom/absolute/android/persistence/IABTPing;

.field private j:Lcom/absolute/android/persistservice/ak;


# direct methods
.method constructor <init>(Lcom/absolute/android/persistservice/o;Ljava/lang/String;Lcom/absolute/android/persistence/IABTPing;I)V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PingWorkerThread_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/ai;->h:Z

    iput-object p1, p0, Lcom/absolute/android/persistservice/ai;->d:Lcom/absolute/android/persistservice/o;

    iget-object v0, p1, Lcom/absolute/android/persistservice/o;->a:Lcom/absolute/android/persistservice/y;

    iput-object v0, p0, Lcom/absolute/android/persistservice/ai;->e:Lcom/absolute/android/persistservice/y;

    iput-object p2, p0, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/absolute/android/persistservice/ai;->i:Lcom/absolute/android/persistence/IABTPing;

    iput p4, p0, Lcom/absolute/android/persistservice/ai;->g:I

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ai;)Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/absolute/android/persistservice/ai;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/ai;)Lcom/absolute/android/persistence/IABTPing;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->i:Lcom/absolute/android/persistence/IABTPing;

    return-object v0
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/ai;)Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->j:Lcom/absolute/android/persistservice/ak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/absolute/android/persistservice/ai;->e:Lcom/absolute/android/persistservice/y;

    const-string v2, "Ping Thread Interrupted while waiting on handler."

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method static synthetic d(Lcom/absolute/android/persistservice/ai;)Lcom/absolute/android/persistservice/o;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->d:Lcom/absolute/android/persistservice/o;

    return-object v0
.end method

.method static synthetic e(Lcom/absolute/android/persistservice/ai;)I
    .locals 1

    .prologue
    iget v0, p0, Lcom/absolute/android/persistservice/ai;->g:I

    return v0
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->j:Lcom/absolute/android/persistservice/ak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/absolute/android/persistservice/ai;->e:Lcom/absolute/android/persistservice/y;

    const-string v2, "Ping Thread Interrupted while waiting on handler."

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->i:Lcom/absolute/android/persistence/IABTPing;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPing;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    :try_start_5
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->j:Lcom/absolute/android/persistservice/ak;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->j:Lcom/absolute/android/persistservice/ak;

    const/4 v1, 0x3

    iget v2, p0, Lcom/absolute/android/persistservice/ai;->g:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/absolute/android/persistservice/ak;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/ai;->h:Z

    monitor-exit p0

    return-void

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/absolute/android/persistservice/ai;->e:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to bind to IABTPing interface of application "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to register for death of recipient. Already dead?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->d:Lcom/absolute/android/persistservice/o;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistservice/o;->a(Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->j:Lcom/absolute/android/persistservice/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->j:Lcom/absolute/android/persistservice/ak;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/ak;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->i:Lcom/absolute/android/persistence/IABTPing;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPing;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/ai;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final binderDied()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->e:Lcom/absolute/android/persistservice/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ABTPersistenceService Ping Thread got \'binderDied\' notification for application "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->d:Lcom/absolute/android/persistservice/o;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistservice/o;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final run()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Looper;->prepare()V

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/absolute/android/persistservice/ak;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/absolute/android/persistservice/ak;-><init>(Lcom/absolute/android/persistservice/ai;B)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ai;->j:Lcom/absolute/android/persistservice/ak;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/absolute/android/persistservice/ai;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Enabled = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Ping interval = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/absolute/android/persistservice/ai;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " secs"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
