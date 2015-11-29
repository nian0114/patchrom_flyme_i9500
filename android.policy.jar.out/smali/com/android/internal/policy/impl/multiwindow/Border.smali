.class public Lcom/android/internal/policy/impl/multiwindow/Border;
.super Ljava/lang/Object;
.source "Border.java"


# static fields
.field public static final DRAW_ALL:I = 0xf

.field public static final DRAW_BOTTOM:I = 0x8

.field public static final DRAW_LEFT:I = 0x1

.field public static final DRAW_RIGHT:I = 0x2

.field public static final DRAW_TOP:I = 0x4


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDrawOption:I

.field private mFocusLineColor:I

.field private mFocusOutLineColor:I

.field private mInnerLineColor:I

.field private final mIsSupportUnfocusedShadow:Z

.field private mOutLineColor:I

.field private final mThicknessBorderPaintInner:F

.field private final mThicknessBorderPaintOuter:F

.field private mThicknessForUnFocused:I

.field private mUnFocusLineColor:I

.field private mUnFocusOutLineColor:I

.field private mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

.field private mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

.field private mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

.field private mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

.field private mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

.field private mUnfocusedFrameRightRect:Landroid/graphics/Rect;

.field private mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

.field private mUnfocusedFrameTopRect:Landroid/graphics/Rect;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wm"    # Landroid/view/WindowManager;

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mDrawOption:I

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mWindowManager:Landroid/view/WindowManager;

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mIsSupportUnfocusedShadow:Z

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mIsSupportUnfocusedShadow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108062e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108062f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080630

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108062d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mFocusLineColor:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnFocusLineColor:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mFocusOutLineColor:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060165

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnFocusOutLineColor:I

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mFocusLineColor:I

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mInnerLineColor:I

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mFocusOutLineColor:I

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mOutLineColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessBorderPaintInner:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessBorderPaintOuter:F

    return-void
.end method

.method private drawBorderLine(Landroid/graphics/Canvas;IIFI)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "thickness"    # F
    .param p5, "color"    # I

    .prologue
    const/4 v6, 0x0

    .local v6, "rotationAdjX":I
    const/4 v7, 0x0

    .local v7, "rotationAdjY":I
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_4

    int-to-float v1, v6

    int-to-float v2, v7

    add-int v0, v6, p2

    int-to-float v3, v0

    add-int v0, v6, p3

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    int-to-float v0, v6

    add-float v1, v0, p4

    int-to-float v0, v7

    add-float v2, v0, p4

    add-int v0, v6, p2

    int-to-float v0, v0

    sub-float v3, v0, p4

    add-int v0, v6, p3

    int-to-float v0, v0

    sub-float v4, v0, p4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mDrawOption:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    int-to-float v1, v6

    int-to-float v2, v7

    add-int v0, v6, p2

    int-to-float v3, v0

    int-to-float v0, v7

    add-float v4, v0, p4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mDrawOption:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    int-to-float v1, v6

    add-int v0, v7, p3

    int-to-float v0, v0

    sub-float v2, v0, p4

    add-int v0, v6, p2

    int-to-float v3, v0

    add-int v0, v7, p3

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mDrawOption:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    int-to-float v1, v6

    int-to-float v2, v7

    int-to-float v0, v6

    add-float v3, v0, p4

    add-int v0, v7, p3

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    :cond_2
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mDrawOption:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    add-int v0, v6, p2

    int-to-float v0, v0

    sub-float v1, v0, p4

    int-to-float v2, v7

    add-int v0, v6, p2

    int-to-float v3, v0

    add-int v0, v7, p3

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    :cond_3
    invoke-virtual {p1, p5}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public drawBorderBitmap(Landroid/graphics/Canvas;III)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "zone"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mIsSupportUnfocusedShadow:Z

    if-eqz v2, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .local v1, "mTmpDrawRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    invoke-virtual {v1, v4, v4, v2, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    invoke-virtual {v1, v4, v4, p2, v2}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    sub-int v2, p2, v2

    invoke-virtual {v1, v2, v4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    sub-int v2, p3, v2

    invoke-virtual {v1, v4, v2, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .end local v1    # "mTmpDrawRect":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .restart local v1    # "mTmpDrawRect":Landroid/graphics/Rect;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, "conf":Landroid/content/res/Configuration;
    const/4 v2, 0x3

    if-ne p4, v2, :cond_3

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    sub-int v2, p2, v2

    invoke-virtual {v1, v2, v4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    sub-int v2, p3, v2

    invoke-virtual {v1, v4, v2, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    invoke-virtual {v1, v4, v4, v2, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    invoke-virtual {v1, v4, v4, p2, v2}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawBorderLine(Landroid/graphics/Canvas;II)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "right"    # I
    .param p3, "bottom"    # I

    .prologue
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessBorderPaintInner:F

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mInnerLineColor:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/multiwindow/Border;->drawBorderLine(Landroid/graphics/Canvas;IIFI)V

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessBorderPaintOuter:F

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mOutLineColor:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/multiwindow/Border;->drawBorderLine(Landroid/graphics/Canvas;IIFI)V

    return-void
.end method

.method public setDrawOption(I)V
    .locals 0
    .param p1, "option"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mDrawOption:I

    return-void
.end method

.method public setFocus(Z)V
    .locals 1
    .param p1, "focus"    # Z

    .prologue
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mFocusLineColor:I

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mInnerLineColor:I

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mFocusOutLineColor:I

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mOutLineColor:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnFocusLineColor:I

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mInnerLineColor:I

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnFocusOutLineColor:I

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mOutLineColor:I

    goto :goto_0
.end method
