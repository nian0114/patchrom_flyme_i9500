.class Lcom/sec/android/app/camera/Camera$68;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 8150
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$68;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 8154
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$68;->this$0:Lcom/sec/android/app/camera/Camera;

    const-string v1, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    iput-object v1, v0, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    .line 8155
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$68;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    .line 8156
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$68;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->removeDialog(I)V

    .line 8157
    return-void
.end method
