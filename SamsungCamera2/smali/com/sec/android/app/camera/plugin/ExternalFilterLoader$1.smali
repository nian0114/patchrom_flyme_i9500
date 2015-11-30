.class Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$1;
.super Landroid/database/ContentObserver;
.source "ExternalFilterLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$1;->this$0:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x0

    .line 83
    # getter for: Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 84
    # getter for: Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$1;->this$0:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    # setter for: Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterExist:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->access$202(Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;Z)Z

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$1;->this$0:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    # setter for: Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mDualFilterExist:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->access$302(Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;Z)Z

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$1;->this$0:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mIsDBChanged:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->access$402(Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;Z)Z

    .line 88
    return-void
.end method
