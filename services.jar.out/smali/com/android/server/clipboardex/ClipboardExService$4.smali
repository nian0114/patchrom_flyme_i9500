.class Lcom/android/server/clipboardex/ClipboardExService$4;
.super Ljava/lang/Object;
.source "ClipboardExService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/clipboardex/ClipboardExService;->SetClipboardDataOriginalToEx(ILandroid/sec/clipboard/data/ClipboardData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/clipboardex/ClipboardExService;

.field final synthetic val$data:Landroid/sec/clipboard/data/ClipboardData;

.field final synthetic val$format:I


# direct methods
.method constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/data/ClipboardData;I)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iput-object p2, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    iput p3, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$format:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string v1, "----------------------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ClipboardServiceEx"

    const-string v1, "in synchronized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget v1, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$format:I

    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    # invokes: Lcom/android/server/clipboardex/ClipboardExService;->addData(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;
    invoke-static {v0, v1, v2}, Lcom/android/server/clipboardex/ClipboardExService;->access$1100(Lcom/android/server/clipboardex/ClipboardExService;ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
