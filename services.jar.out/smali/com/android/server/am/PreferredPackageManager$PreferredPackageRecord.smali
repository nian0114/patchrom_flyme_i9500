.class public Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
.super Ljava/lang/Object;
.source "PreferredPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PreferredPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreferredPackageRecord"
.end annotation


# static fields
.field static final BINDED:I = 0x2

.field static final CACHED:I = 0x1

.field static final DIED:I = 0x4

.field static final RESUMED:I = 0x0

.field static final START_READY:I = 0x3


# instance fields
.field public indirectScoreMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/usage/PreferredScoreInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field lastPauseTime:J

.field lastPss:J

.field final packageName:Ljava/lang/String;

.field pid:I

.field processName:Ljava/lang/String;

.field scoreList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/app/usage/PreferredScoreInfo;",
            ">;"
        }
    .end annotation
.end field

.field scoreMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/usage/PreferredScoreInfo;",
            ">;"
        }
    .end annotation
.end field

.field state:I

.field final synthetic this$0:Lcom/android/server/am/PreferredPackageManager;

.field uid:I

.field usageCounting:J


# direct methods
.method constructor <init>(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;)V
    .locals 7
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;-><init>(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "pausedTime"    # J
    .param p5, "score"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    iput-object p1, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->this$0:Lcom/android/server/am/PreferredPackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->indirectScoreMap:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->lastPauseTime:J

    invoke-virtual {p0, p5}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->setScoreList(Ljava/lang/String;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->state:I

    iput v1, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->pid:I

    iput v1, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->uid:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->lastPss:J

    return-void
.end method


# virtual methods
.method doIncreaseIndirectScore(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "prev"    # Ljava/lang/String;
    .param p2, "cur"    # Ljava/lang/String;
    .param p3, "score"    # I

    .prologue
    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->indirectScoreMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .local v0, "hash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;"
    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "hash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .restart local v0    # "hash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;"
    new-instance v2, Landroid/app/usage/PreferredScoreInfo;

    invoke-direct {v2, p2, p3}, Landroid/app/usage/PreferredScoreInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->indirectScoreMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "PreferredPackage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "indirect scoring : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " score="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v2, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->this$0:Lcom/android/server/am/PreferredPackageManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "indirect scoring : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " score="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/PreferredScoreInfo;

    .local v1, "psi":Landroid/app/usage/PreferredScoreInfo;
    if-nez v1, :cond_4

    new-instance v2, Landroid/app/usage/PreferredScoreInfo;

    invoke-direct {v2, p2, p3}, Landroid/app/usage/PreferredScoreInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "PreferredPackage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "indirect scoring : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " score="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v2, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->this$0:Lcom/android/server/am/PreferredPackageManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "indirect scoring : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " score="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget v2, v1, Landroid/app/usage/PreferredScoreInfo;->score:I

    add-int/2addr v2, p3

    iput v2, v1, Landroid/app/usage/PreferredScoreInfo;->score:I

    sget-boolean v2, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "PreferredPackage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "indirect scoring : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " score="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/app/usage/PreferredScoreInfo;->score:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-boolean v2, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->this$0:Lcom/android/server/am/PreferredPackageManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "indirect scoring : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " score="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/app/usage/PreferredScoreInfo;->score:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method doIncreaseScore(Ljava/lang/String;I)V
    .locals 7
    .param p1, "nextPkgName"    # Ljava/lang/String;
    .param p2, "score"    # I

    .prologue
    sget-boolean v4, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "PreferredPackage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Score "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " --> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "p)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v4, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "PreferredPackage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Score_Before : Pkg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Score : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->getScoreListString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v4, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->this$0:Lcom/android/server/am/PreferredPackageManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Score "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " --> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "p)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    :cond_2
    sget-boolean v4, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->this$0:Lcom/android/server/am/PreferredPackageManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Score_Before : Pkg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Score : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->getScoreListString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    :cond_3
    iget-object v5, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/PreferredScoreInfo;

    .local v3, "psi":Landroid/app/usage/PreferredScoreInfo;
    if-nez v3, :cond_7

    new-instance v3, Landroid/app/usage/PreferredScoreInfo;

    .end local v3    # "psi":Landroid/app/usage/PreferredScoreInfo;
    invoke-direct {v3, p1, p2}, Landroid/app/usage/PreferredScoreInfo;-><init>(Ljava/lang/String;I)V

    .restart local v3    # "psi":Landroid/app/usage/PreferredScoreInfo;
    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v2

    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "inserted":Z
    if-nez v2, :cond_8

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    :cond_4
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v4, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "PreferredPackage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Score_After  : Pkg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Score : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->getScoreListString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-boolean v4, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->this$0:Lcom/android/server/am/PreferredPackageManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Score_After  : Pkg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Score : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->getScoreListString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    :cond_6
    return-void

    .end local v1    # "inserted":Z
    .end local v2    # "length":I
    :cond_7
    :try_start_1
    iget v4, v3, Landroid/app/usage/PreferredScoreInfo;->score:I

    add-int/2addr v4, p2

    iput v4, v3, Landroid/app/usage/PreferredScoreInfo;->score:I

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v3    # "psi":Landroid/app/usage/PreferredScoreInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .restart local v1    # "inserted":Z
    .restart local v2    # "length":I
    .restart local v3    # "psi":Landroid/app/usage/PreferredScoreInfo;
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_9

    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/PreferredScoreInfo;

    iget v4, v4, Landroid/app/usage/PreferredScoreInfo;->score:I

    iget v6, v3, Landroid/app/usage/PreferredScoreInfo;->score:I

    if-gt v4, v6, :cond_a

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    invoke-virtual {v4, v0, v3}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    :cond_9
    if-nez v1, :cond_4

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    invoke-virtual {v4, v2, v3}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public getCount()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->usageCounting:J

    return-wide v0
.end method

.method getIndirectScore(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "bridge"    # Ljava/lang/String;
    .param p2, "candidate"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->indirectScoreMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .local v0, "hash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;"
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/PreferredScoreInfo;

    .local v1, "psi":Landroid/app/usage/PreferredScoreInfo;
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/app/usage/PreferredScoreInfo;->score:I

    goto :goto_0
.end method

.method getIndirectScoreListString()Ljava/lang/String;
    .locals 9

    .prologue
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v5, "sb":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->indirectScoreMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    .local v6, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;>;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .local v1, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/PreferredScoreInfo;

    .local v4, "psi":Landroid/app/usage/PreferredScoreInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/app/usage/PreferredScoreInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/app/usage/PreferredScoreInfo;->score:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "),"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;>;"
    .end local v1    # "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "psi":Landroid/app/usage/PreferredScoreInfo;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getLastPauseTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->lastPauseTime:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getScoreListString()Ljava/lang/String;
    .locals 6

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/PreferredScoreInfo;

    .local v1, "info":Landroid/app/usage/PreferredScoreInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Landroid/app/usage/PreferredScoreInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v1, Landroid/app/usage/PreferredScoreInfo;->score:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Landroid/app/usage/PreferredScoreInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method getState()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->state:I

    return v0
.end method

.method increaseUsageCounting()V
    .locals 4

    .prologue
    iget-wide v0, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->usageCounting:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->usageCounting:J

    return-void
.end method

.method setScoreList(Ljava/lang/String;)V
    .locals 15
    .param p1, "sList"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .local v12, "temp":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "pkgName":Ljava/lang/String;
    const-wide/16 v8, 0x0

    .local v8, "pkgScore":J
    const-string v2, "-"

    .local v2, "delims":Ljava/lang/String;
    const-string v3, ":"

    .local v3, "delims2":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v14, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    monitor-enter v14

    if-eqz p1, :cond_2

    :try_start_0
    new-instance v10, Ljava/util/StringTokenizer;

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v10, "set":Ljava/util/StringTokenizer;
    move v5, v4

    .end local v4    # "i":I
    .local v5, "i":I
    :goto_0
    :try_start_1
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    new-instance v11, Ljava/util/StringTokenizer;

    invoke-direct {v11, v12, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v11, "set2":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_1

    :cond_0
    iget-object v13, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreMap:Ljava/util/HashMap;

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/PreferredScoreInfo;

    .local v7, "psi":Landroid/app/usage/PreferredScoreInfo;
    if-nez v7, :cond_3

    new-instance v7, Landroid/app/usage/PreferredScoreInfo;

    .end local v7    # "psi":Landroid/app/usage/PreferredScoreInfo;
    long-to-int v13, v8

    invoke-direct {v7, v6, v13}, Landroid/app/usage/PreferredScoreInfo;-><init>(Ljava/lang/String;I)V

    .restart local v7    # "psi":Landroid/app/usage/PreferredScoreInfo;
    iget-object v13, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreMap:Ljava/util/HashMap;

    invoke-virtual {v13, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    :try_start_2
    invoke-virtual {v13, v5, v7}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    :goto_2
    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_0

    .end local v7    # "psi":Landroid/app/usage/PreferredScoreInfo;
    .end local v11    # "set2":Ljava/util/StringTokenizer;
    :cond_1
    move v4, v5

    .end local v5    # "i":I
    .end local v10    # "set":Ljava/util/StringTokenizer;
    .restart local v4    # "i":I
    :cond_2
    monitor-exit v14

    return-void

    :catchall_0
    move-exception v13

    :goto_3
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v13

    .end local v4    # "i":I
    .restart local v5    # "i":I
    .restart local v10    # "set":Ljava/util/StringTokenizer;
    :catchall_1
    move-exception v13

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_3

    .end local v4    # "i":I
    .restart local v5    # "i":I
    .restart local v7    # "psi":Landroid/app/usage/PreferredScoreInfo;
    .restart local v11    # "set2":Ljava/util/StringTokenizer;
    :cond_3
    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_2
.end method

.method setState(I)V
    .locals 0
    .param p1, "newState"    # I

    .prologue
    iput p1, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->state:I

    return-void
.end method

.method updateLastPauseTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->lastPauseTime:J

    :cond_0
    return-void
.end method
