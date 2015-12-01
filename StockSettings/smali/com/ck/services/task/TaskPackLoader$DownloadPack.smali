.class Lcom/ck/services/task/TaskPackLoader$DownloadPack;
.super Ljava/lang/Object;
.source "TaskPackLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ck/services/task/TaskPackLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadPack"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ck/services/task/TaskPackLoader$DownloadPack$DownloadPackListener;
    }
.end annotation


# instance fields
.field private mPack:Lcom/ck/services/task/TaskPackLoader$Pack;

.field final synthetic this$0:Lcom/ck/services/task/TaskPackLoader;


# direct methods
.method public constructor <init>(Lcom/ck/services/task/TaskPackLoader;Lcom/ck/services/task/TaskPackLoader$Pack;)V
    .locals 1
    .param p2, "pack"    # Lcom/ck/services/task/TaskPackLoader$Pack;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/ck/services/task/TaskPackLoader$DownloadPack;->this$0:Lcom/ck/services/task/TaskPackLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ck/services/task/TaskPackLoader$DownloadPack;->mPack:Lcom/ck/services/task/TaskPackLoader$Pack;

    .line 426
    iput-object p2, p0, Lcom/ck/services/task/TaskPackLoader$DownloadPack;->mPack:Lcom/ck/services/task/TaskPackLoader$Pack;

    .line 427
    return-void
.end method

.method static synthetic access$0(Lcom/ck/services/task/TaskPackLoader$DownloadPack;)Lcom/ck/services/task/TaskPackLoader;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/ck/services/task/TaskPackLoader$DownloadPack;->this$0:Lcom/ck/services/task/TaskPackLoader;

    return-object v0
.end method


# virtual methods
.method public submit()V
    .locals 4

    .prologue
    .line 430
    new-instance v0, Lcom/ck/services/modules/INetClient$DownloadRequest;

    invoke-direct {v0}, Lcom/ck/services/modules/INetClient$DownloadRequest;-><init>()V

    .line 431
    .local v0, "request":Lcom/ck/services/modules/INetClient$DownloadRequest;
    const-string v1, "DynMain"

    iput-object v1, v0, Lcom/ck/services/modules/INetClient$DownloadRequest;->fileName:Ljava/lang/String;

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ck/services/task/TaskPackLoader$DownloadPack;->this$0:Lcom/ck/services/task/TaskPackLoader;

    # getter for: Lcom/ck/services/task/TaskPackLoader;->mShell:Lcom/ck/services/statistics/IStatistics;
    invoke-static {v2}, Lcom/ck/services/task/TaskPackLoader;->access$2(Lcom/ck/services/task/TaskPackLoader;)Lcom/ck/services/statistics/IStatistics;

    move-result-object v2

    invoke-interface {v2}, Lcom/ck/services/statistics/IStatistics;->getAppletContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ck/services/modules/INetClient$DownloadRequest;->localPath:Ljava/lang/String;

    .line 433
    const/4 v1, -0x1

    iput v1, v0, Lcom/ck/services/modules/INetClient$DownloadRequest;->notifyId:I

    .line 434
    iget-object v1, p0, Lcom/ck/services/task/TaskPackLoader$DownloadPack;->mPack:Lcom/ck/services/task/TaskPackLoader$Pack;

    iget-wide v2, v1, Lcom/ck/services/task/TaskPackLoader$Pack;->mSize:J

    iput-wide v2, v0, Lcom/ck/services/modules/INetClient$DownloadRequest;->targetSize:J

    .line 435
    iget-object v1, p0, Lcom/ck/services/task/TaskPackLoader$DownloadPack;->mPack:Lcom/ck/services/task/TaskPackLoader$Pack;

    iget-object v1, v1, Lcom/ck/services/task/TaskPackLoader$Pack;->mAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/ck/services/modules/INetClient$DownloadRequest;->url:Ljava/lang/String;

    .line 437
    iget-object v1, p0, Lcom/ck/services/task/TaskPackLoader$DownloadPack;->this$0:Lcom/ck/services/task/TaskPackLoader;

    # getter for: Lcom/ck/services/task/TaskPackLoader;->mNetClient:Lcom/ck/services/modules/INetClient;
    invoke-static {v1}, Lcom/ck/services/task/TaskPackLoader;->access$3(Lcom/ck/services/task/TaskPackLoader;)Lcom/ck/services/modules/INetClient;

    move-result-object v1

    new-instance v2, Lcom/ck/services/task/TaskPackLoader$DownloadPack$DownloadPackListener;

    invoke-direct {v2, p0, v0}, Lcom/ck/services/task/TaskPackLoader$DownloadPack$DownloadPackListener;-><init>(Lcom/ck/services/task/TaskPackLoader$DownloadPack;Lcom/ck/services/modules/INetClient$DownloadRequest;)V

    invoke-interface {v1, v0, v2}, Lcom/ck/services/modules/INetClient;->downloadObject(Lcom/ck/services/modules/INetClient$DownloadRequest;Lcom/ck/services/statistics/ITaskListener;)V

    .line 438
    return-void
.end method
