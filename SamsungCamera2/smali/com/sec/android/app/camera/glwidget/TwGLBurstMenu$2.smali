.class Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;
.super Ljava/lang/Object;
.source "TwGLBurstMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->DBUpdatebyThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)V
    .locals 0

    .prologue
    .line 895
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 898
    const/4 v0, 0x0

    .line 899
    .local v0, "fileUri":Landroid/net/Uri;
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 900
    .local v2, "values":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 901
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "values":Landroid/content/ContentValues;
    check-cast v2, Landroid/content/ContentValues;

    .line 903
    .restart local v2    # "values":Landroid/content/ContentValues;
    const-string v3, "TwGLBurstMenu"

    const-string v4, "db insert E"

    invoke-static {v3, v4}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 905
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 907
    :cond_1
    const-string v3, "TwGLBurstMenu"

    const-string v4, "db insert X"

    invoke-static {v3, v4}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    if-eqz v0, :cond_0

    .line 910
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 911
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/sec/android/app/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 916
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 917
    .local v1, "sfe":Landroid/database/sqlite/SQLiteFullException;
    const-string v3, "TwGLBurstMenu"

    const-string v4, "Not enough space in database"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c0184

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 920
    .end local v1    # "sfe":Landroid/database/sqlite/SQLiteFullException;
    :goto_1
    return-void

    .line 915
    .restart local v2    # "values":Landroid/content/ContentValues;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    const/4 v4, 0x0

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateThread:Ljava/lang/Thread;
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$502(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;Ljava/lang/Thread;)Ljava/lang/Thread;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
