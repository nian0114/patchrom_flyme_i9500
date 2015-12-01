.class Lcom/ck/services/task/TaskPackLoader$DownloadPack$DownloadPackListener;
.super Ljava/lang/Object;
.source "TaskPackLoader.java"

# interfaces
.implements Lcom/ck/services/statistics/ITaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ck/services/task/TaskPackLoader$DownloadPack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadPackListener"
.end annotation


# instance fields
.field private request:Lcom/ck/services/modules/INetClient$DownloadRequest;

.field final synthetic this$1:Lcom/ck/services/task/TaskPackLoader$DownloadPack;


# direct methods
.method public constructor <init>(Lcom/ck/services/task/TaskPackLoader$DownloadPack;Lcom/ck/services/modules/INetClient$DownloadRequest;)V
    .locals 0
    .param p2, "request"    # Lcom/ck/services/modules/INetClient$DownloadRequest;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/ck/services/task/TaskPackLoader$DownloadPack$DownloadPackListener;->this$1:Lcom/ck/services/task/TaskPackLoader$DownloadPack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-object p2, p0, Lcom/ck/services/task/TaskPackLoader$DownloadPack$DownloadPackListener;->request:Lcom/ck/services/modules/INetClient$DownloadRequest;

    .line 445
    return-void
.end method


# virtual methods
.method public onExecuted(ILjava/lang/Object;)V
    .locals 5
    .param p1, "result"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 454
    if-nez p1, :cond_1

    .line 455
    const-string v2, "TaskPackLoader"

    const-string v3, "download pack success."

    invoke-static {v2, v3}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ck/services/task/TaskPackLoader$DownloadPack$DownloadPackListener;->this$1:Lcom/ck/services/task/TaskPackLoader$DownloadPack;

    # getter for: Lcom/ck/services/task/TaskPackLoader$DownloadPack;->this$0:Lcom/ck/services/task/TaskPackLoader;
    invoke-static {v3}, Lcom/ck/services/task/TaskPackLoader$DownloadPack;->access$0(Lcom/ck/services/task/TaskPackLoader$DownloadPack;)Lcom/ck/services/task/TaskPackLoader;

    move-result-object v3

    # getter for: Lcom/ck/services/task/TaskPackLoader;->mShell:Lcom/ck/services/statistics/IStatistics;
    invoke-static {v3}, Lcom/ck/services/task/TaskPackLoader;->access$2(Lcom/ck/services/task/TaskPackLoader;)Lcom/ck/services/statistics/IStatistics;

    move-result-object v3

    invoke-interface {v3}, Lcom/ck/services/statistics/IStatistics;->getAppletContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DynMain.jar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 458
    .local v1, "targetFile":Ljava/io/File;
    const-string v2, "TaskPackLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "targetFile : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ck/services/task/TaskPackLoader$DownloadPack$DownloadPackListener;->request:Lcom/ck/services/modules/INetClient$DownloadRequest;

    iget-object v3, v3, Lcom/ck/services/modules/INetClient$DownloadRequest;->localPath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ck/services/task/TaskPackLoader$DownloadPack$DownloadPackListener;->request:Lcom/ck/services/modules/INetClient$DownloadRequest;

    iget-object v3, v3, Lcom/ck/services/modules/INetClient$DownloadRequest;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    .local v0, "newFile":Ljava/io/File;
    const-string v2, "TaskPackLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "newFile : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 465
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 466
    iget-object v2, p0, Lcom/ck/services/task/TaskPackLoader$DownloadPack$DownloadPackListener;->this$1:Lcom/ck/services/task/TaskPackLoader$DownloadPack;

    # getter for: Lcom/ck/services/task/TaskPackLoader$DownloadPack;->this$0:Lcom/ck/services/task/TaskPackLoader;
    invoke-static {v2}, Lcom/ck/services/task/TaskPackLoader$DownloadPack;->access$0(Lcom/ck/services/task/TaskPackLoader$DownloadPack;)Lcom/ck/services/task/TaskPackLoader;

    move-result-object v2

    # getter for: Lcom/ck/services/task/TaskPackLoader;->mShell:Lcom/ck/services/statistics/IStatistics;
    invoke-static {v2}, Lcom/ck/services/task/TaskPackLoader;->access$2(Lcom/ck/services/task/TaskPackLoader;)Lcom/ck/services/statistics/IStatistics;

    move-result-object v2

    const/16 v3, 0x28

    invoke-interface {v2, v3}, Lcom/ck/services/statistics/IStatistics;->sendEmptyMessage(I)V

    .line 468
    .end local v0    # "newFile":Ljava/io/File;
    .end local v1    # "targetFile":Ljava/io/File;
    :cond_1
    return-void
.end method

.method public onPreExecute(ILjava/lang/Object;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 447
    return-void
.end method

.method public onUpdate(ILjava/lang/Object;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 450
    return-void
.end method
