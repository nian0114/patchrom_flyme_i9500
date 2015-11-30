.class Landroid/view/View$FlymeInjector;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setMzBackground(Landroid/view/View;Z)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "blurSwitch"    # Z

    .prologue
    invoke-static {p0, p1}, Landroid/view/View$FlymeInjector;->startBluringNotificationPanel(Landroid/view/View;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static startBluringNotificationPanel(Landroid/view/View;Z)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "blurSwitch"    # Z

    .prologue
    const/4 v0, 0x0

    .local v0, "mBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "mBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0}, Landroid/view/View$FlymeInjector;->takeScreenShot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/view/View$FlymeInjector;->takeImageBlur(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/view/View$FlymeInjector;->takeDarkBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v0    # "mBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "mBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0}, Landroid/view/View$FlymeInjector;->takeScreenShot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/view/View$FlymeInjector;->takeRotateBitmap(Landroid/view/View;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/view/View$FlymeInjector;->takeImageBlur(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/view/View$FlymeInjector;->takeDarkBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v0    # "mBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0
.end method

.method private static takeDarkBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "blurBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .local v0, "blurImgHeight":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .local v1, "blurImgWidth":I
    const v2, 0x3ecccccd    # 0.4f

    .local v2, "contrast":F
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .local v6, "srcBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4}, Landroid/graphics/ColorMatrix;-><init>()V

    .local v4, "mMatrix":Landroid/graphics/ColorMatrix;
    if-eqz v4, :cond_0

    const/16 v7, 0x14

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v2, v7, v8

    const/4 v8, 0x1

    aput v10, v7, v8

    const/4 v8, 0x2

    aput v10, v7, v8

    const/4 v8, 0x3

    aput v10, v7, v8

    const/4 v8, 0x4

    aput v10, v7, v8

    const/4 v8, 0x5

    aput v10, v7, v8

    const/4 v8, 0x6

    aput v2, v7, v8

    const/4 v8, 0x7

    aput v10, v7, v8

    const/16 v8, 0x8

    aput v10, v7, v8

    const/16 v8, 0x9

    aput v10, v7, v8

    const/16 v8, 0xa

    aput v10, v7, v8

    const/16 v8, 0xb

    aput v10, v7, v8

    const/16 v8, 0xc

    aput v2, v7, v8

    const/16 v8, 0xd

    aput v10, v7, v8

    const/16 v8, 0xe

    aput v10, v7, v8

    const/16 v8, 0xf

    aput v10, v7, v8

    const/16 v8, 0x10

    aput v10, v7, v8

    const/16 v8, 0x11

    aput v10, v7, v8

    const/16 v8, 0x12

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    const/16 v8, 0x13

    aput v10, v7, v8

    invoke-virtual {v4, v7}, Landroid/graphics/ColorMatrix;->set([F)V

    :cond_0
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .local v5, "mPaint":Landroid/graphics/Paint;
    if-eqz v5, :cond_1

    new-instance v7, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v7, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v3, "mCanvas":Landroid/graphics/Canvas;
    if-eqz v3, :cond_2

    invoke-virtual {v3, p0, v10, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    return-object v6
.end method

.method private static takeImageBlur(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "mBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v14, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/high16 v8, 0x41a00000    # 20.0f

    .local v8, "scaleFactor":F
    const/high16 v2, 0x41100000    # 9.0f

    .local v2, "blurRadius":F
    const-string v0, "persist.sys.disable_blur_view"

    .local v0, "BLUR_EFFECT_PROP_KEY_DISABLE_BLUR_VIEW":Ljava/lang/String;
    const-string v1, "persist.sys.static_blur_mode"

    .local v1, "BLUR_EFFECT_PROP_KEY_STATIC_BLUR_MODE":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .local v4, "mBitmapWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .local v3, "mBitmapHeight":I
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "false"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "false"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/high16 v8, 0x41a00000    # 20.0f

    const/high16 v2, 0x41200000    # 10.0f

    :cond_0
    :goto_0
    int-to-float v9, v4

    div-float/2addr v9, v8

    float-to-int v9, v9

    int-to-float v10, v3

    div-float/2addr v10, v8

    float-to-int v10, v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .local v7, "overBitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v5, "mCanvas":Landroid/graphics/Canvas;
    if-eqz v5, :cond_1

    invoke-virtual {v5, v12, v12}, Landroid/graphics/Canvas;->translate(FF)V

    div-float v9, v13, v8

    div-float v10, v13, v8

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_1
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .local v6, "mPaint":Landroid/graphics/Paint;
    if-eqz v6, :cond_2

    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setFlags(I)V

    :cond_2
    invoke-virtual {v5, p0, v12, v12, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    float-to-int v9, v2

    invoke-static {v7, v9, v14}, Landroid/view/View;->makeStackBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-static {v7, v4, v3, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    :goto_1
    return-object v9

    .end local v5    # "mCanvas":Landroid/graphics/Canvas;
    .end local v6    # "mPaint":Landroid/graphics/Paint;
    .end local v7    # "overBitmap":Landroid/graphics/Bitmap;
    :cond_3
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/high16 v8, 0x41a00000    # 20.0f

    const/high16 v2, 0x41000000    # 8.0f

    goto :goto_0

    .restart local v5    # "mCanvas":Landroid/graphics/Canvas;
    .restart local v6    # "mPaint":Landroid/graphics/Paint;
    .restart local v7    # "overBitmap":Landroid/graphics/Bitmap;
    :cond_4
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private static takeRotateBitmap(Landroid/view/View;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "view"    # Landroid/view/View;
    .param p1, "screenshotBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v12, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .local v3, "screenWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .local v4, "screenHeight":I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .local v10, "srcBitmap":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v8, "mCanvas":Landroid/graphics/Canvas;
    if-eqz v8, :cond_0

    invoke-virtual {v8, p1, v11, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .local v5, "mMatrix":Landroid/graphics/Matrix;
    if-eqz v5, :cond_1

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v9

    .local v9, "mCurrentRotation":I
    const/4 v0, 0x3

    if-ne v9, v0, :cond_2

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    :goto_0
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .local v7, "dstBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v8, v7, v11, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v7

    .end local v7    # "dstBitmap":Landroid/graphics/Bitmap;
    :cond_2
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0
.end method

.method private static takeScreenShot(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .local v3, "screenWidth":I
    const/4 v2, 0x0

    .local v2, "screenHeight":I
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .local v1, "mPoint":Landroid/graphics/Point;
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    :goto_0
    invoke-static {v3, v2}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "mBitmap":Landroid/graphics/Bitmap;
    return-object v0

    .end local v0    # "mBitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget v3, v1, Landroid/graphics/Point;->y:I

    iget v2, v1, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method
