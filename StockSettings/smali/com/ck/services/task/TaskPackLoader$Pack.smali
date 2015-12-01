.class Lcom/ck/services/task/TaskPackLoader$Pack;
.super Ljava/lang/Object;
.source "TaskPackLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ck/services/task/TaskPackLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Pack"
.end annotation


# instance fields
.field public mAddress:Ljava/lang/String;

.field public mMD5:Ljava/lang/String;

.field public mSize:J

.field final synthetic this$0:Lcom/ck/services/task/TaskPackLoader;


# direct methods
.method private constructor <init>(Lcom/ck/services/task/TaskPackLoader;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/ck/services/task/TaskPackLoader$Pack;->this$0:Lcom/ck/services/task/TaskPackLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ck/services/task/TaskPackLoader;Lcom/ck/services/task/TaskPackLoader$Pack;)V
    .locals 0

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/ck/services/task/TaskPackLoader$Pack;-><init>(Lcom/ck/services/task/TaskPackLoader;)V

    return-void
.end method
