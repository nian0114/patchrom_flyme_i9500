.class Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;
.super Ljava/lang/Object;
.source "TaskPackLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "packCheckResponse"
.end annotation


# instance fields
.field public mCommand:I

.field public mNextRequestInteval:I

.field public mTcpPort:I

.field public mTcpSvr:Ljava/lang/String;

.field final synthetic this$1:Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;


# direct methods
.method private constructor <init>(Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;->this$1:Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;-><init>(Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;)V

    return-void
.end method
