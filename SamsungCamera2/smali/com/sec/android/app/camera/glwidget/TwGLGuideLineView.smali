.class public Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLGuideLineView.java"


# static fields
.field private static final GUIDELINE_BOTTOM_INTERVAL:I

.field private static final GUIDELINE_WIDTH:I

.field private static final NUM_OF_GUIDELINES:I = 0x3

.field protected static final TAG:Ljava/lang/String; = "TwGLGuideLine"


# instance fields
.field private mHeight:I

.field private mLine_x1:Lcom/sec/android/glview/TwGLRectangle;

.field private mLine_x2:Lcom/sec/android/glview/TwGLRectangle;

.field private mLine_y1:Lcom/sec/android/glview/TwGLRectangle;

.field private mLine_y2:Lcom/sec/android/glview/TwGLRectangle;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f0b0018

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_WIDTH:I

    .line 36
    const v0, 0x7f0b0043

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_BOTTOM_INTERVAL:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;IILcom/sec/android/app/camera/PreviewFrameLayout;)V
    .locals 9
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "parent_width"    # I
    .param p3, "parent_height"    # I
    .param p4, "view"    # Lcom/sec/android/app/camera/PreviewFrameLayout;

    .prologue
    const v8, 0x7f090006

    const/4 v2, 0x0

    .line 48
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v4, p2

    int-to-float v5, p3

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 50
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    .line 51
    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    .line 53
    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    int-to-float v5, v3

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v6

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_WIDTH:I

    int-to-float v7, v3

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x1:Lcom/sec/android/glview/TwGLRectangle;

    .line 54
    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    int-to-float v5, v3

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v6

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_WIDTH:I

    int-to-float v7, v3

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x2:Lcom/sec/android/glview/TwGLRectangle;

    .line 56
    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    int-to-float v4, v3

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v6

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_WIDTH:I

    int-to-float v7, v3

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y1:Lcom/sec/android/glview/TwGLRectangle;

    .line 57
    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    int-to-float v4, v3

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v6

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_WIDTH:I

    int-to-float v7, v3

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y2:Lcom/sec/android/glview/TwGLRectangle;

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x1:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x2:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y1:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y2:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 65
    invoke-virtual {p0, p4}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->setGuideLineSize(Lcom/sec/android/app/camera/PreviewFrameLayout;)V

    .line 66
    return-void
.end method


# virtual methods
.method public declared-synchronized contains(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 110
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 115
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public handleGuidelineSettingsChanged(I)V
    .locals 1
    .param p1, "guideLine"    # I

    .prologue
    .line 101
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->setVisibility(I)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setGuideLineSize(Lcom/sec/android/app/camera/PreviewFrameLayout;)V
    .locals 10
    .param p1, "view"    # Lcom/sec/android/app/camera/PreviewFrameLayout;

    .prologue
    const/4 v9, 0x0

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "guideline_x":I
    const/4 v1, 0x0

    .line 72
    .local v1, "guideline_y":I
    const/4 v2, 0x0

    .line 73
    .local v2, "origin_x":I
    const/4 v3, 0x0

    .line 75
    .local v3, "origin_y":I
    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v2, v4, Landroid/graphics/Rect;->left:I

    .line 77
    invoke-virtual {p1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 79
    invoke-virtual {p1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    .line 80
    invoke-virtual {p1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    .line 83
    :cond_0
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    div-int/lit8 v1, v4, 0x3

    .line 84
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    div-int/lit8 v0, v4, 0x3

    .line 86
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x1:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v4, :cond_1

    .line 87
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x1:Lcom/sec/android/glview/TwGLRectangle;

    add-int v5, v2, v0

    int-to-float v5, v5

    int-to-float v6, v3

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_BOTTOM_INTERVAL:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v4, v5, v6, v9, v7}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 89
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x2:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v4, :cond_2

    .line 90
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x2:Lcom/sec/android/glview/TwGLRectangle;

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    int-to-float v6, v3

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_BOTTOM_INTERVAL:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v4, v5, v6, v9, v7}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 92
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y1:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v4, :cond_3

    .line 93
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y1:Lcom/sec/android/glview/TwGLRectangle;

    add-int/lit8 v5, v2, 0x1

    int-to-float v5, v5

    add-int v6, v3, v1

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_WIDTH:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v4, v5, v6, v7, v9}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 95
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y2:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v4, :cond_4

    .line 96
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y2:Lcom/sec/android/glview/TwGLRectangle;

    add-int/lit8 v5, v2, 0x1

    int-to-float v5, v5

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v6, v3

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_WIDTH:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v4, v5, v6, v7, v9}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 98
    :cond_4
    return-void
.end method
