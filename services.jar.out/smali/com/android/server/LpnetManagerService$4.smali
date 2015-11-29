.class Lcom/android/server/LpnetManagerService$4;
.super Landroid/database/ContentObserver;
.source "LpnetManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LpnetManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LpnetManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LpnetManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 799
    iput-object p1, p0, Lcom/android/server/LpnetManagerService$4;->this$0:Lcom/android/server/LpnetManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 801
    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LpnetManagerService"

    const-string/jumbo v1, "onChange - Whitelist()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$4;->this$0:Lcom/android/server/LpnetManagerService;

    # invokes: Lcom/android/server/LpnetManagerService;->getWhiteListDBValues()V
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$1800(Lcom/android/server/LpnetManagerService;)V

    .line 803
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$4;->this$0:Lcom/android/server/LpnetManagerService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/LpnetManagerService;->targetPkgInitialization(Z)V
    invoke-static {v0, v1}, Lcom/android/server/LpnetManagerService;->access$1700(Lcom/android/server/LpnetManagerService;Z)V

    .line 804
    return-void
.end method
