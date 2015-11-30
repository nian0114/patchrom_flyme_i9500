.class Lcom/sec/android/app/camera/Camera$109;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->showRemoteViewFinderResetCameraGuideDialog()V
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
    .line 15594
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$109;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 15596
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$109;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mRemoteViewFinderResetCameraGuideDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$6400(Lcom/sec/android/app/camera/Camera;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 15597
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$109;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mRemoteViewFinderResetCameraGuideDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$6400(Lcom/sec/android/app/camera/Camera;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 15599
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$109;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isSettingMenuActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15600
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$109;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    .line 15601
    .local v0, "menu":Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->resetSettingsText()V

    .line 15603
    .end local v0    # "menu":Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;
    :cond_1
    return-void
.end method
