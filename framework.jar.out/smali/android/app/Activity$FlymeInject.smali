.class Landroid/app/Activity$FlymeInject;
.super Ljava/lang/Object;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlymeInject"
.end annotation


# static fields
.field private static final ACTIONMODE_HEADER_HIDDEN:Ljava/lang/String; = "actionmode_header_hidden"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkActionBar(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/app/ActionBarImpl;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_ACTION_BAR and set android:windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static getAutomaticColor(Landroid/view/View;I)Ljava/lang/Integer;
    .locals 7
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "topShift"    # I

    .prologue
    if-eqz p0, :cond_1

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "cache":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    invoke-static {v1, p1}, Landroid/app/Activity$FlymeInject;->getMainColorFromBitmap(Landroid/graphics/Bitmap;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, "color":I
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .end local v1    # "cache":Landroid/graphics/Bitmap;
    .end local v3    # "color":I
    :goto_0
    return-object v4

    .restart local v1    # "cache":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-static {v0, p1}, Landroid/app/Activity$FlymeInject;->getMainColorFromBitmap(Landroid/graphics/Bitmap;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .restart local v3    # "color":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "cache":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "color":I
    :catch_0
    move-exception v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static getMainColorFromBitmap(Landroid/graphics/Bitmap;I)Ljava/lang/Integer;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "topShift"    # I

    .prologue
    const/4 v6, 0x0

    .local v6, "mainColor":Ljava/lang/Integer;
    if-eqz p0, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .local v1, "colorMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .local v7, "pixel":I
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ge v7, v9, :cond_1

    invoke-virtual {p0, v7, p1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    .local v8, "pixelColor":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v8    # "pixelColor":I
    :cond_1
    const/4 v2, 0x0

    .local v2, "colorMaxCount":I
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .local v0, "color":Ljava/lang/Integer;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .local v3, "count":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v9, v2, :cond_2

    move-object v6, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    .end local v0    # "color":Ljava/lang/Integer;
    .end local v1    # "colorMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2    # "colorMaxCount":I
    .end local v3    # "count":Ljava/lang/Integer;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .end local v7    # "pixel":I
    :cond_3
    return-object v6
.end method

.method static isDark(I)Z
    .locals 5
    .param p0, "color"    # I

    .prologue
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .local v3, "red":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .local v1, "blue":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .local v2, "green":I
    add-int v4, v3, v1

    add-int/2addr v4, v2

    div-int/lit8 v0, v4, 0x3

    .local v0, "avg":I
    const/16 v4, 0xc8

    if-le v0, v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method static mzAccessControl(Landroid/app/Activity;)V
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "mz_app_lock_control"

    const/4 v10, -0x3

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .local v1, "appAccessControl":I
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_0

    :try_start_0
    iget-object v8, v3, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v8}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v2

    .local v2, "flag":I
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    and-int/lit8 v8, v2, 0x10

    if-eqz v8, :cond_4

    move v5, v4

    .local v5, "isLockView":Z
    :goto_1
    and-int/lit8 v8, v2, 0x20

    if-eqz v8, :cond_5

    .local v4, "isFastStarting":Z
    :goto_2
    if-eqz v0, :cond_0

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-boolean v7, v7, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    if-eqz v7, :cond_0

    if-eqz v5, :cond_2

    if-nez v4, :cond_0

    :cond_2
    iget-object v7, p0, Landroid/app/Activity;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    if-nez v7, :cond_3

    const-string v7, "access_control"

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmeizu/security/AccessControlManager;

    iput-object v7, p0, Landroid/app/Activity;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    :cond_3
    iget-object v7, p0, Landroid/app/Activity;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    iget-object v8, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lmeizu/security/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.content.pm.CONFIRM_ACCESS_APPCATONS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v6, "mAccessApp":Landroid/content/Intent;
    iget-object v7, v6, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/IntentExt;->setAccessPackageName(Ljava/lang/String;)V

    iget-object v8, v6, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_3
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/content/IntentExt;->setAccessPackageLabel(Ljava/lang/String;)V

    const/high16 v7, 0x10000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v7, 0x8000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v7, v6, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    const/16 v8, 0x40

    invoke-virtual {v7, v8}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    invoke-virtual {p0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "flag":I
    .end local v4    # "isFastStarting":Z
    .end local v5    # "isLockView":Z
    .end local v6    # "mAccessApp":Landroid/content/Intent;
    :catch_0
    move-exception v7

    goto :goto_0

    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "flag":I
    :cond_4
    move v5, v7

    goto :goto_1

    .restart local v5    # "isLockView":Z
    :cond_5
    move v4, v7

    goto :goto_2

    .restart local v4    # "isFastStarting":Z
    .restart local v6    # "mAccessApp":Landroid/content/Intent;
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_3
.end method

.method static mzInitActionBar(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    new-instance v0, Lcom/android/internal/app/ActionBarImpl;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0}, Landroid/app/Activity;->isEnableDefaultActionBarUp()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method static mzMakeVisibleForStatusBarTint(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Landroid/app/Activity;->mDisableStatusBarIconTheme:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/app/Activity$FlymeUpdateStatusBarIconThemeRunnable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, p0}, Landroid/app/Activity$FlymeUpdateStatusBarIconThemeRunnable;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_status_bar_tint"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .local v0, "statusBarTintEnabled":Z
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/app/Activity$FlymeInject;->setDrawsSystemBarBackgrounds(Landroid/view/Window;Z)V

    iget-object v1, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/app/Activity$FlymeUpdateStatusBarTintRunnable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, p0}, Landroid/app/Activity$FlymeUpdateStatusBarTintRunnable;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method static onRestoreActionModeHeaderState(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    iget-boolean v0, p0, Landroid/app/Activity;->mActionModeHeaderHidden:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    instance-of v0, v0, Lcom/android/internal/app/ActionBarImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    iget-boolean v1, p0, Landroid/app/Activity;->mActionModeHeaderHidden:Z

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setActionModeHeaderHidden(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Activity;->mActionModeHeaderHidden:Z

    return-void
.end method

.method static onSaveActionModeState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/app/ActionBarImpl;

    if-eqz v1, :cond_0

    const-string v1, "actionmode_header_hidden"

    check-cast v0, Lcom/android/internal/app/ActionBarImpl;

    .end local v0    # "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl;->getActionModeHeaderHidden()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    return-void

    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_0
    const-string v1, "actionmode_header_hidden"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method static resetActionModeHeaderState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    if-eqz p1, :cond_0

    const-string v0, "actionmode_header_hidden"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Activity;->mActionModeHeaderHidden:Z

    :cond_0
    return-void
.end method

.method static setDrawsSystemBarBackgrounds(Landroid/view/Window;Z)V
    .locals 4
    .param p0, "win"    # Landroid/view/Window;
    .param p1, "on"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .local v1, "winParams":Landroid/view/WindowManager$LayoutParams;
    const/high16 v0, -0x80000000

    .local v0, "bits":I
    if-eqz p1, :cond_0

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v2, v0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method static setStatusBarDarkIcon(Landroid/view/Window;Z)V
    .locals 3
    .param p0, "win"    # Landroid/view/Window;
    .param p1, "on"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .local v1, "winParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x200

    .local v0, "bits":I
    if-eqz p1, :cond_0

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    or-int/2addr v2, v0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit16 v2, v2, -0x201

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    goto :goto_0
.end method

.method static setTranslucentStatus(Landroid/app/Activity;Z)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "on"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .local v2, "winParams":Landroid/view/WindowManager$LayoutParams;
    const/high16 v0, 0x4000000

    .local v0, "bits":I
    if-eqz p1, :cond_0

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x4000001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method
