.class Lcom/sec/android/app/camera/Camera$160;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->showChatOnGuideDialog(Z)V
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
    .line 16820
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$160;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 16822
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$160;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChatOnShot()Lcom/sec/android/app/camera/ChatOnShot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ChatOnShot;->isChatOnInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16823
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 16824
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$160;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mChatOnShot:Lcom/sec/android/app/camera/ChatOnShot;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$4500(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/ChatOnShot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ChatOnShot;->loginChatOn()V

    .line 16828
    :goto_0
    return-void

    .line 16826
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$160;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mChatOnShot:Lcom/sec/android/app/camera/ChatOnShot;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$4500(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/ChatOnShot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ChatOnShot;->startMarketActivityForChatOn()V

    goto :goto_0
.end method
