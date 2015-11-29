.class Lcom/android/server/epm/overlay/ThemeManagerService$6;
.super Ljava/lang/Object;
.source "ThemeManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;->saveDefaultWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

.field final synthetic val$wallManager:Landroid/app/WallpaperManager;


# direct methods
.method constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/app/WallpaperManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iput-object p2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->val$wallManager:Landroid/app/WallpaperManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->val$wallManager:Landroid/app/WallpaperManager;

    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    # setter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v5, v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2202(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2200(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2200(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "mBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/overlays"

    const-string v5, "defalut.png"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "dest":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v3, "out":Ljava/io/FileOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0    # "dest":Ljava/io/File;
    .end local v2    # "mBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "dest":Ljava/io/File;
    .restart local v2    # "mBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
