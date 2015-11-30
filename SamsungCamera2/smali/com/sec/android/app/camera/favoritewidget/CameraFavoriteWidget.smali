.class public Lcom/sec/android/app/camera/favoritewidget/CameraFavoriteWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "CameraFavoriteWidget.java"


# static fields
.field static final TAG:Ljava/lang/String; = "CameraFavoriteWidget"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 66
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    const/4 v6, 0x0

    .line 48
    const/4 v3, 0x0

    .line 49
    .local v3, "views":Landroid/widget/RemoteViews;
    new-instance v3, Landroid/widget/RemoteViews;

    .end local v3    # "views":Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f040004

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 50
    .restart local v3    # "views":Landroid/widget/RemoteViews;
    invoke-virtual {p0, p1, v3}, Lcom/sec/android/app/camera/favoritewidget/CameraFavoriteWidget;->setTitleAndIconAsCSC(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 51
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v1, "launchIntent":Landroid/content/Intent;
    const-string v4, "com.sec.android.app.camera"

    const-string v5, "com.sec.android.app.camera.Camera"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 55
    invoke-static {p1, v6, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 56
    .local v2, "pi":Landroid/app/PendingIntent;
    const v4, 0x7f0e000d

    invoke-virtual {v3, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p3

    if-ge v0, v4, :cond_0

    .line 58
    aget v4, p3, v0

    invoke-virtual {p2, v4, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method public setTitleAndIconAsCSC(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    const/16 v6, 0x48

    .line 69
    const/4 v3, 0x0

    .line 72
    .local v3, "icon":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.android.app.camera"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 79
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const v4, 0x7f0e000f

    const/4 v5, 0x1

    invoke-static {v1, v6, v6, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 81
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void

    .line 73
    :catch_0
    move-exception v2

    .line 74
    .local v2, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method
