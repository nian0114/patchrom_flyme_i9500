.class Lcom/sec/android/app/camera/Camera$167;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->showShareFormatSelectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    .prologue
    .line 16920
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$167;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 16922
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$167;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mShareFormatSelectDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$7300(Lcom/sec/android/app/camera/Camera;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 16923
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$167;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showShareDisabledDialog()V

    .line 16924
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$167;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/Camera;->mShowWifiDialog:Z

    .line 16925
    return-void
.end method
