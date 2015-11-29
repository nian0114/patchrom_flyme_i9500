.class public Landroid/graphics/ImageFilter$BitmapColorMaskFilter;
.super Landroid/graphics/ImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapColorMaskFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x34

    invoke-direct {p0, v0}, Landroid/graphics/ImageFilter;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/ImageFilter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/ImageFilter$1;

    .prologue
    invoke-direct {p0}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-super {p0}, Landroid/graphics/ImageFilter;->clone()Landroid/graphics/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public resetGradient()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-super {p0, p1}, Landroid/graphics/ImageFilter;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setColor(FFFF)V
    .locals 4
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-super {p0, v0, v2}, Landroid/graphics/ImageFilter;->setValue(IF)V

    const/4 v0, 0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    const/4 v0, 0x2

    invoke-static {p2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    const/4 v0, 0x3

    invoke-static {p3, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    const/4 v0, 0x4

    invoke-static {p4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    return-void
.end method

.method public setColor(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    div-float v3, v4, v5

    .local v3, "r":F
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float v2, v4, v5

    .local v2, "g":F
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    div-float v1, v4, v5

    .local v1, "b":F
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    div-float v0, v4, v5

    .local v0, "a":F
    invoke-virtual {p0, v3, v2, v1, v0}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setColor(FFFF)V

    return-void
.end method

.method public setGradient(FFIFFI)V
    .locals 9
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "startColor"    # I
    .param p4, "endX"    # F
    .param p5, "endY"    # F
    .param p6, "endColor"    # I

    .prologue
    const/high16 v8, 0x437f0000    # 255.0f

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-super {p0, v4, v6}, Landroid/graphics/ImageFilter;->setValue(IF)V

    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    div-float v3, v4, v8

    .local v3, "r":F
    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float v2, v4, v8

    .local v2, "g":F
    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    div-float v1, v4, v8

    .local v1, "b":F
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    div-float v0, v4, v8

    .local v0, "a":F
    const/4 v4, 0x1

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-super {p0, v4, v5}, Landroid/graphics/ImageFilter;->setValue(IF)V

    const/4 v4, 0x2

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-super {p0, v4, v5}, Landroid/graphics/ImageFilter;->setValue(IF)V

    const/4 v4, 0x3

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-super {p0, v4, v5}, Landroid/graphics/ImageFilter;->setValue(IF)V

    const/4 v4, 0x4

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-super {p0, v4, v5}, Landroid/graphics/ImageFilter;->setValue(IF)V

    invoke-static {p6}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    div-float v3, v4, v8

    invoke-static {p6}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float v2, v4, v8

    invoke-static {p6}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    div-float v1, v4, v8

    invoke-static {p6}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    div-float v0, v4, v8

    const/4 v4, 0x5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-super {p0, v4, v5}, Landroid/graphics/ImageFilter;->setValue(IF)V

    const/4 v4, 0x6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-super {p0, v4, v5}, Landroid/graphics/ImageFilter;->setValue(IF)V

    const/4 v4, 0x7

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-super {p0, v4, v5}, Landroid/graphics/ImageFilter;->setValue(IF)V

    const/16 v4, 0x8

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-super {p0, v4, v5}, Landroid/graphics/ImageFilter;->setValue(IF)V

    const/16 v4, 0x9

    invoke-super {p0, v4, p1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    const/16 v4, 0xa

    invoke-super {p0, v4, p2}, Landroid/graphics/ImageFilter;->setValue(IF)V

    const/16 v4, 0xb

    invoke-super {p0, v4, p4}, Landroid/graphics/ImageFilter;->setValue(IF)V

    const/16 v4, 0xc

    invoke-super {p0, v4, p5}, Landroid/graphics/ImageFilter;->setValue(IF)V

    return-void
.end method
