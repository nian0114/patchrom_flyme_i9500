.class Lcom/sec/android/app/camera/Camera$67;
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

.field final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 8102
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$67;->this$0:Lcom/sec/android/app/camera/Camera;

    iput-object p2, p0, Lcom/sec/android/app/camera/Camera$67;->val$et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 8106
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$67;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v7, v7, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    const-string v8, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    if-ne v7, v8, :cond_0

    .line 8107
    const/4 v2, 0x0

    .line 8108
    .local v2, "fOut":Ljava/io/FileOutputStream;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 8109
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    const-string v7, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    invoke-static {v7, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 8110
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v4, Ljava/io/File;

    const-string v7, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8112
    .local v4, "file":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .local v3, "fOut":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 8116
    .end local v3    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    :goto_0
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v0, v7, v8, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 8118
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8122
    if-eqz v2, :cond_0

    .line 8124
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 8132
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$67;->this$0:Lcom/sec/android/app/camera/Camera;

    const-string v8, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    iput-object v8, v7, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    .line 8134
    :try_start_3
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$67;->val$et:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 8135
    .local v6, "str_name":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    if-nez v6, :cond_3

    .line 8136
    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$67;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c01c9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 8138
    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$67;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mShareShot:Lcom/sec/android/app/camera/ShareShot;
    invoke-static {v7}, Lcom/sec/android/app/camera/Camera;->access$3600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/ShareShot;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/ShareShot;->getShareShotService()Lcom/samsung/shareshot/IShareShotService;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 8139
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$67;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mShareShot:Lcom/sec/android/app/camera/ShareShot;
    invoke-static {v7}, Lcom/sec/android/app/camera/Camera;->access$3600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/ShareShot;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/ShareShot;->getShareShotService()Lcom/samsung/shareshot/IShareShotService;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$67;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mShareShot:Lcom/sec/android/app/camera/ShareShot;
    invoke-static {v8}, Lcom/sec/android/app/camera/Camera;->access$3600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/ShareShot;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/sec/android/app/camera/ShareShot;->produceGSPersonalSettingInfoValue(Ljava/lang/String;)Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/samsung/shareshot/IShareShotService;->setLocalPersonInfo(Lcom/samsung/dmc/ux/db/PersonalSettingInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 8145
    .end local v6    # "str_name":Ljava/lang/String;
    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$67;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    .line 8146
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$67;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/Camera;->removeDialog(I)V

    .line 8147
    return-void

    .line 8113
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 8114
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 8119
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 8120
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 8122
    if-eqz v2, :cond_0

    .line 8124
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 8125
    :catch_2
    move-exception v7

    goto :goto_1

    .line 8122
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v2, :cond_5

    .line 8124
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 8127
    :cond_5
    :goto_3
    throw v7

    .line 8141
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v1

    .line 8142
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 8125
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_4
    move-exception v7

    goto :goto_1

    :catch_5
    move-exception v8

    goto :goto_3
.end method
