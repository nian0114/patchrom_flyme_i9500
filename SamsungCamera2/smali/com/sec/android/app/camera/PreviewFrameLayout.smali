.class public Lcom/sec/android/app/camera/PreviewFrameLayout;
.super Landroid/view/SurfaceView;
.source "PreviewFrameLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreviewFrameLayout"


# instance fields
.field private mAspectRatio:D

.field private mHeight:I

.field private mHorizontalTileSize:I

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mVerticalTileSize:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mPreviewRect:Landroid/graphics/Rect;

    .line 36
    iput v2, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mHorizontalTileSize:I

    .line 37
    iput v2, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mVerticalTileSize:I

    .line 39
    iput v1, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mWidth:I

    .line 40
    iput v1, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mHeight:I

    .line 46
    invoke-direct {p0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->checkTabletUI()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mPreviewRect:Landroid/graphics/Rect;

    .line 36
    iput v2, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mHorizontalTileSize:I

    .line 37
    iput v2, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mVerticalTileSize:I

    .line 39
    iput v1, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mWidth:I

    .line 40
    iput v1, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mHeight:I

    .line 51
    invoke-direct {p0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->checkTabletUI()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mPreviewRect:Landroid/graphics/Rect;

    .line 36
    iput v2, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mHorizontalTileSize:I

    .line 37
    iput v2, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mVerticalTileSize:I

    .line 39
    iput v1, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mWidth:I

    .line 40
    iput v1, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mHeight:I

    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->checkTabletUI()V

    .line 57
    return-void
.end method

.method private checkTabletUI()V
    .locals 2

    .prologue
    .line 139
    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    iput-wide v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mAspectRatio:D

    .line 140
    return-void
.end method

.method private roundUpToTile(III)I
    .locals 1
    .param p1, "dimension"    # I
    .param p2, "tileSize"    # I
    .param p3, "maxDimension"    # I

    .prologue
    .line 131
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p2

    mul-int/2addr v0, p2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getCurAspectRatio()D
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mAspectRatio:D

    return-wide v0
.end method

.method public getPreviewRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mPreviewRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 94
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 95
    .local v4, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 97
    .local v2, "heightSpecSize":I
    move v3, v4

    .line 98
    .local v3, "width":I
    move v1, v2

    .line 100
    .local v1, "height":I
    if-lez v3, :cond_3

    if-lez v1, :cond_3

    .line 101
    iget v5, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mWidth:I

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mHeight:I

    if-eqz v5, :cond_0

    .line 102
    iget v5, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mWidth:I

    iget v6, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mHeight:I

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setMeasuredDimension(II)V

    .line 127
    :goto_0
    return-void

    .line 109
    :cond_0
    int-to-float v5, v3

    int-to-float v6, v1

    div-float v0, v5, v6

    .line 110
    .local v0, "defaultRatio":F
    float-to-double v6, v0

    iget-wide v8, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mAspectRatio:D

    cmpg-double v5, v6, v8

    if-gez v5, :cond_2

    .line 112
    int-to-double v6, v3

    iget-wide v8, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mAspectRatio:D

    div-double/2addr v6, v8

    double-to-int v1, v6

    .line 116
    :cond_1
    :goto_1
    iget v5, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mHorizontalTileSize:I

    invoke-direct {p0, v3, v5, v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->roundUpToTile(III)I

    move-result v3

    .line 118
    iget v5, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mVerticalTileSize:I

    invoke-direct {p0, v1, v5, v2}, Lcom/sec/android/app/camera/PreviewFrameLayout;->roundUpToTile(III)I

    move-result v1

    .line 121
    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setMeasuredDimension(II)V

    goto :goto_0

    .line 113
    :cond_2
    float-to-double v6, v0

    iget-wide v8, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mAspectRatio:D

    cmpl-double v5, v6, v8

    if-lez v5, :cond_1

    .line 114
    int-to-double v6, v1

    iget-wide v8, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mAspectRatio:D

    mul-double/2addr v6, v8

    double-to-int v3, v6

    goto :goto_1

    .line 126
    .end local v0    # "defaultRatio":F
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    goto :goto_0
.end method

.method public resetSize()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mWidth:I

    .line 86
    iput v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mHeight:I

    .line 87
    return-void
.end method

.method public setAspectRatio(D)Z
    .locals 3
    .param p1, "aspectRatio"    # D

    .prologue
    .line 60
    const-string v0, "PreviewFrameLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAspectRatio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->resetSize()V

    .line 63
    iget-wide v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mAspectRatio:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_0

    .line 64
    iput-wide p1, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mAspectRatio:D

    .line 65
    invoke-virtual {p0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->requestLayout()V

    .line 66
    invoke-virtual {p0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->invalidate()V

    .line 67
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFixedOrientation(IIIII)V
    .locals 3
    .param p1, "privateFlagFixedOrientation"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 150
    const-string v0, "vikrant"

    const-string v1, "vikrant setFixedOrientation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mPreviewRect:Landroid/graphics/Rect;

    add-int v1, p2, p4

    add-int v2, p3, p5

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 153
    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->setFixedOrientation(IIIII)V

    .line 155
    return-void
.end method

.method public setSize(II)Z
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 73
    const-string v0, "PreviewFrameLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mHeight:I

    if-eq v0, p2, :cond_1

    .line 75
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mWidth:I

    .line 76
    iput p2, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mHeight:I

    .line 77
    invoke-virtual {p0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->requestLayout()V

    .line 78
    invoke-virtual {p0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->invalidate()V

    .line 79
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
