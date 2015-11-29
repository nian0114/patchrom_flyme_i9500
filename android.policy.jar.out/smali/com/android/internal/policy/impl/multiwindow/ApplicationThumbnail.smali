.class public Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;
.super Ljava/lang/Object;
.source "ApplicationThumbnail.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field protected mMinimizeBg:Landroid/graphics/drawable/Drawable;

.field protected mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

.field protected mMinimizeIcon:Landroid/graphics/drawable/Drawable;

.field private mMinimizedAppLable:Ljava/lang/CharSequence;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 7
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .local v1, "am":Landroid/app/ActivityManager;
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .local v4, "res":Landroid/content/res/Resources;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    const v5, 0x108063d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    const v5, 0x108063f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "c"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .local v1, "am":Landroid/app/ActivityManager;
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz p2, :cond_1

    .end local p2    # "c":Landroid/content/ComponentName;
    :goto_0
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, p2, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .local v4, "res":Landroid/content/res/Resources;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    const v5, 0x108063d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    const v5, 0x108063f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_1
    return-void

    .restart local p2    # "c":Landroid/content/ComponentName;
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .end local p2    # "c":Landroid/content/ComponentName;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private clipImagePath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;
    .locals 15
    .param p1, "paramBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "paramPath"    # Landroid/graphics/Path;

    .prologue
    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .local v8, "rectF":Landroid/graphics/RectF;
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .local v10, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .local v4, "height":I
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v4, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .local v6, "pathBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v7, "pathCanvas":Landroid/graphics/Canvas;
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget-object v11, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v11, v12}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setDither(Z)V

    const/16 v11, 0x32

    const/16 v12, 0xff

    const/16 v13, 0xff

    const/16 v14, 0xff

    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v11, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v11, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 v11, 0x40a00000    # 5.0f

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v11, Landroid/graphics/PorterDuffXfermode;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget-object v11, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v12

    float-to-int v12, v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "finalBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v3, "finalCanvas":Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Rect;

    iget v11, v8, Landroid/graphics/RectF;->left:F

    float-to-int v11, v11

    iget v12, v8, Landroid/graphics/RectF;->top:F

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->right:F

    float-to-int v13, v13

    iget v14, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v14, v14

    invoke-direct {v9, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v9, "srcRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v14

    float-to-int v14, v14

    invoke-direct {v1, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v1, "dstRect":Landroid/graphics/Rect;
    const/4 v11, 0x0

    invoke-virtual {v3, v6, v9, v1, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public static create(Landroid/app/Activity;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;
    .locals 1
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static create(Landroid/app/Activity;Landroid/content/ComponentName;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;
    .locals 1
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "c"    # Landroid/content/ComponentName;

    .prologue
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;-><init>(Landroid/app/Activity;Landroid/content/ComponentName;)V

    return-object v0
.end method

.method private getBitmapClippedCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .local v0, "height":I
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .local v1, "path":Landroid/graphics/Path;
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10501d8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .local v2, "radius":F
    int-to-float v4, v3

    div-float/2addr v4, v6

    int-to-float v5, v0

    div-float/2addr v5, v6

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v4, v5, v2, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->clipImagePath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method private getCircleBitmapDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getMinimizedBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "normal":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private getCircleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getMinimizedBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "focus":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getMinimizedBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "normal":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .local v3, "pressedDrawable":Landroid/graphics/drawable/BitmapDrawable;
    new-array v4, v5, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    invoke-virtual {v0, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v4, v6, [I

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .local v3, "resources":Landroid/content/res/Resources;
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    .local v1, "iconId":I
    if-eqz v1, :cond_0

    invoke-direct {p0, v3, v1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .end local v1    # "iconId":I
    :goto_1
    return-object v4

    .end local v3    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    .restart local v3    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1
.end method

.method private getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I

    .prologue
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v3

    .local v3, "mIconDpi":I
    :try_start_0
    invoke-virtual {p1, p2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v1, :cond_0

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v1

    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1
.end method

.method private getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x10501d9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .local v3, "originPixelSize":I
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    if-ne v5, v3, :cond_0

    instance-of v5, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v5, :cond_1

    :cond_0
    instance-of v5, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_2

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    invoke-static {v0, v3, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "bitmapResized":Landroid/graphics/Bitmap;
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapResized":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object p1

    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "b":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {p1, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public final getBitmapIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getCircleBitmapDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getCircleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getMinimizedBitmap(Z)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "bFocused"    # Z

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getBitmapClippedCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .local v0, "bgDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, "output":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .local v4, "paint":Landroid/graphics/Paint;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v0, v9, v9, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    invoke-virtual {v2, v1, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    return-object v3

    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "output":Landroid/graphics/Bitmap;
    .end local v4    # "paint":Landroid/graphics/Paint;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public final setCustomMinimizeIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
