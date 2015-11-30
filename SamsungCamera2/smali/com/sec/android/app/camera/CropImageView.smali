.class Lcom/sec/android/app/camera/CropImageView;
.super Lcom/sec/android/app/camera/ImageViewTouchBase;
.source "CropImage.java"


# instance fields
.field mHighlightViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/HighlightView;",
            ">;"
        }
    .end annotation
.end field

.field mLastX:F

.field mLastY:F

.field mMotionEdge:I

.field mMotionHighlightView:Lcom/sec/android/app/camera/HighlightView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 905
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 884
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    .line 885
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CropImageView;->mMotionHighlightView:Lcom/sec/android/app/camera/HighlightView;

    .line 906
    return-void
.end method

.method private centerBasedOnHighlightView(Lcom/sec/android/app/camera/HighlightView;)V
    .locals 14
    .param p1, "hv"    # Lcom/sec/android/app/camera/HighlightView;

    .prologue
    .line 1099
    iget-object v1, p1, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 1101
    .local v1, "drawRect":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v5, v9

    .line 1102
    .local v5, "width":F
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v2, v9

    .line 1104
    .local v2, "height":F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImageView;->getWidth()I

    move-result v9

    int-to-float v4, v9

    .line 1105
    .local v4, "thisWidth":F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImageView;->getHeight()I

    move-result v9

    int-to-float v3, v9

    .line 1107
    .local v3, "thisHeight":F
    div-float v9, v4, v5

    const v10, 0x3ee66666    # 0.45f

    mul-float v6, v9, v10

    .line 1108
    .local v6, "z1":F
    div-float v9, v3, v2

    const v10, 0x3ee66666    # 0.45f

    mul-float v7, v9, v10

    .line 1110
    .local v7, "z2":F
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1111
    .local v8, "zoom":F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImageView;->getScale()F

    move-result v9

    mul-float/2addr v8, v9

    .line 1112
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 1114
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImageView;->getScale()F

    move-result v9

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-float/2addr v9, v8

    float-to-double v10, v9

    const-wide v12, 0x3fb999999999999aL    # 0.1

    cmpl-double v9, v10, v12

    if-lez v9, :cond_0

    .line 1115
    const/4 v9, 0x2

    new-array v0, v9, [F

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    aput v10, v0, v9

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    aput v10, v0, v9

    .line 1117
    .local v0, "coordinates":[F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1118
    const/4 v9, 0x0

    aget v9, v0, v9

    const/4 v10, 0x1

    aget v10, v0, v10

    const/high16 v11, 0x43960000    # 300.0f

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/sec/android/app/camera/CropImageView;->zoomTo(FFFF)V

    .line 1121
    .end local v0    # "coordinates":[F
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CropImageView;->ensureVisible(Lcom/sec/android/app/camera/HighlightView;)V

    .line 1122
    return-void
.end method

.method private ensureVisible(Lcom/sec/android/app/camera/HighlightView;)V
    .locals 10
    .param p1, "hv"    # Lcom/sec/android/app/camera/HighlightView;

    .prologue
    const/4 v9, 0x0

    .line 1071
    iget-object v6, p1, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 1073
    .local v6, "r":Landroid/graphics/Rect;
    iget v7, p0, Lcom/sec/android/app/camera/CropImageView;->mLeft:I

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1074
    .local v1, "panDeltaX1":I
    iget v7, p0, Lcom/sec/android/app/camera/CropImageView;->mRight:I

    iget v8, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1076
    .local v2, "panDeltaX2":I
    iget v7, p0, Lcom/sec/android/app/camera/CropImageView;->mTop:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1077
    .local v4, "panDeltaY1":I
    iget v7, p0, Lcom/sec/android/app/camera/CropImageView;->mBottom:I

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1079
    .local v5, "panDeltaY2":I
    if-eqz v1, :cond_4

    move v0, v1

    .line 1080
    .local v0, "panDeltaX":I
    :goto_0
    if-eqz v4, :cond_5

    move v3, v4

    .line 1085
    .local v3, "panDeltaY":I
    :goto_1
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImageView;->getWidth()I

    move-result v8

    if-le v7, v8, :cond_0

    .line 1086
    const/4 v0, 0x0

    .line 1088
    :cond_0
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImageView;->getHeight()I

    move-result v8

    if-le v7, v8, :cond_1

    .line 1089
    const/4 v3, 0x0

    .line 1091
    :cond_1
    if-nez v0, :cond_2

    if-eqz v3, :cond_3

    .line 1092
    :cond_2
    int-to-float v7, v0

    int-to-float v8, v3

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/camera/CropImageView;->panBy(FF)V

    .line 1094
    :cond_3
    return-void

    .end local v0    # "panDeltaX":I
    .end local v3    # "panDeltaY":I
    :cond_4
    move v0, v2

    .line 1079
    goto :goto_0

    .restart local v0    # "panDeltaX":I
    :cond_5
    move v3, v5

    .line 1080
    goto :goto_1
.end method

.method private recomputeFocus(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 948
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 949
    iget-object v3, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/HighlightView;

    .line 950
    .local v1, "hv":Lcom/sec/android/app/camera/HighlightView;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/HighlightView;->setFocus(Z)V

    .line 951
    invoke-virtual {v1}, Lcom/sec/android/app/camera/HighlightView;->invalidate()V

    .line 948
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 954
    .end local v1    # "hv":Lcom/sec/android/app/camera/HighlightView;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 955
    iget-object v3, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/HighlightView;

    .line 956
    .restart local v1    # "hv":Lcom/sec/android/app/camera/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/HighlightView;->getHit(FF)I

    move-result v0

    .line 957
    .local v0, "edge":I
    if-eq v0, v5, :cond_2

    .line 958
    invoke-virtual {v1}, Lcom/sec/android/app/camera/HighlightView;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_1

    .line 959
    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/HighlightView;->setFocus(Z)V

    .line 960
    invoke-virtual {v1}, Lcom/sec/android/app/camera/HighlightView;->invalidate()V

    .line 965
    .end local v0    # "edge":I
    .end local v1    # "hv":Lcom/sec/android/app/camera/HighlightView;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImageView;->invalidate()V

    .line 966
    return-void

    .line 954
    .restart local v0    # "edge":I
    .restart local v1    # "hv":Lcom/sec/android/app/camera/HighlightView;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public add(Lcom/sec/android/app/camera/HighlightView;)V
    .locals 2
    .param p1, "hv"    # Lcom/sec/android/app/camera/HighlightView;

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImageView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/camera/CropImage;

    .line 1135
    .local v0, "cropImage":Lcom/sec/android/app/camera/CropImage;
    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mRectCrop:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1136
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1137
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImageView;->invalidate()V

    .line 1139
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1126
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 1127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1128
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/HighlightView;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/HighlightView;->draw(Landroid/graphics/Canvas;)V

    .line 1127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1130
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 892
    invoke-super/range {p0 .. p5}, Lcom/sec/android/app/camera/ImageViewTouchBase;->onLayout(ZIIII)V

    .line 893
    iget-object v2, p0, Lcom/sec/android/app/camera/CropImageView;->mBitmapDisplayed:Lcom/sec/android/app/camera/RotateBitmap;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 894
    iget-object v2, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/HighlightView;

    .line 895
    .local v0, "hv":Lcom/sec/android/app/camera/HighlightView;
    iget-object v2, v0, Lcom/sec/android/app/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 896
    invoke-virtual {v0}, Lcom/sec/android/app/camera/HighlightView;->invalidate()V

    .line 897
    iget-boolean v2, v0, Lcom/sec/android/app/camera/HighlightView;->mIsFocused:Z

    if-eqz v2, :cond_0

    .line 898
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CropImageView;->centerBasedOnHighlightView(Lcom/sec/android/app/camera/HighlightView;)V

    goto :goto_0

    .line 902
    .end local v0    # "hv":Lcom/sec/android/app/camera/HighlightView;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 970
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImageView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/camera/CropImage;

    .line 971
    .local v0, "cropImage":Lcom/sec/android/app/camera/CropImage;
    iget-boolean v4, v0, Lcom/sec/android/app/camera/CropImage;->mSaving:Z

    if-eqz v4, :cond_0

    move v4, v5

    .line 1066
    :goto_0
    return v4

    .line 979
    :cond_0
    iget-boolean v4, v0, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    if-nez v4, :cond_1

    iget-boolean v4, v0, Lcom/sec/android/app/camera/CropImage;->mRectCrop:Z

    if-nez v4, :cond_1

    move v4, v5

    .line 980
    goto :goto_0

    .line 983
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1051
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    :cond_3
    :goto_2
    move v4, v6

    .line 1066
    goto :goto_0

    .line 985
    :pswitch_0
    iget-boolean v4, v0, Lcom/sec/android/app/camera/CropImage;->mWaitingToPick:Z

    if-eqz v4, :cond_4

    .line 986
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 988
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v6, :cond_2

    .line 989
    iget-object v4, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CropImage;->getBlinkRectCnt()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/HighlightView;

    .line 990
    .local v2, "hv":Lcom/sec/android/app/camera/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/camera/HighlightView;->getHit(FF)I

    move-result v1

    .line 991
    .local v1, "edge":I
    if-eq v1, v6, :cond_2

    .line 992
    iput v1, p0, Lcom/sec/android/app/camera/CropImageView;->mMotionEdge:I

    .line 993
    iput-object v2, p0, Lcom/sec/android/app/camera/CropImageView;->mMotionHighlightView:Lcom/sec/android/app/camera/HighlightView;

    .line 994
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CropImageView;->mLastX:F

    .line 995
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CropImageView;->mLastY:F

    .line 996
    iget-object v5, p0, Lcom/sec/android/app/camera/CropImageView;->mMotionHighlightView:Lcom/sec/android/app/camera/HighlightView;

    const/16 v4, 0x20

    if-ne v1, v4, :cond_5

    sget-object v4, Lcom/sec/android/app/camera/HighlightView$ModifyMode;->Move:Lcom/sec/android/app/camera/HighlightView$ModifyMode;

    :goto_3
    invoke-virtual {v5, v4}, Lcom/sec/android/app/camera/HighlightView;->setMode(Lcom/sec/android/app/camera/HighlightView$ModifyMode;)V

    goto :goto_1

    :cond_5
    sget-object v4, Lcom/sec/android/app/camera/HighlightView$ModifyMode;->Grow:Lcom/sec/android/app/camera/HighlightView$ModifyMode;

    goto :goto_3

    .line 1006
    .end local v1    # "edge":I
    .end local v2    # "hv":Lcom/sec/android/app/camera/HighlightView;
    :pswitch_1
    iget-boolean v4, v0, Lcom/sec/android/app/camera/CropImage;->mWaitingToPick:Z

    if-eqz v4, :cond_8

    .line 1007
    iget-object v4, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v6, :cond_9

    .line 1008
    iget-object v4, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CropImage;->getBlinkRectCnt()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/HighlightView;

    .line 1009
    .restart local v2    # "hv":Lcom/sec/android/app/camera/HighlightView;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/HighlightView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1010
    iput-object v2, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    .line 1011
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_4
    iget-object v4, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 1012
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CropImage;->getBlinkRectCnt()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 1011
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1015
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/HighlightView;

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/HighlightView;->setHidden(Z)V

    goto :goto_5

    .line 1017
    :cond_7
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CropImageView;->centerBasedOnHighlightView(Lcom/sec/android/app/camera/HighlightView;)V

    .line 1018
    iget-object v4, p0, Lcom/sec/android/app/camera/CropImageView;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/app/camera/CropImage;

    iput-boolean v5, v4, Lcom/sec/android/app/camera/CropImage;->mWaitingToPick:Z

    move v4, v6

    .line 1019
    goto/16 :goto_0

    .line 1022
    .end local v2    # "hv":Lcom/sec/android/app/camera/HighlightView;
    .end local v3    # "j":I
    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/camera/CropImageView;->mMotionHighlightView:Lcom/sec/android/app/camera/HighlightView;

    if-eqz v4, :cond_9

    .line 1023
    iget-object v4, p0, Lcom/sec/android/app/camera/CropImageView;->mMotionHighlightView:Lcom/sec/android/app/camera/HighlightView;

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/CropImageView;->centerBasedOnHighlightView(Lcom/sec/android/app/camera/HighlightView;)V

    .line 1024
    iget-object v4, p0, Lcom/sec/android/app/camera/CropImageView;->mMotionHighlightView:Lcom/sec/android/app/camera/HighlightView;

    sget-object v5, Lcom/sec/android/app/camera/HighlightView$ModifyMode;->None:Lcom/sec/android/app/camera/HighlightView$ModifyMode;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/HighlightView;->setMode(Lcom/sec/android/app/camera/HighlightView$ModifyMode;)V

    .line 1027
    :cond_9
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/camera/CropImageView;->mMotionHighlightView:Lcom/sec/android/app/camera/HighlightView;

    goto/16 :goto_1

    .line 1030
    :pswitch_2
    iget-boolean v4, v0, Lcom/sec/android/app/camera/CropImage;->mWaitingToPick:Z

    if-eqz v4, :cond_a

    .line 1031
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1032
    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/camera/CropImageView;->mMotionHighlightView:Lcom/sec/android/app/camera/HighlightView;

    if-eqz v4, :cond_2

    .line 1033
    iget-object v4, p0, Lcom/sec/android/app/camera/CropImageView;->mMotionHighlightView:Lcom/sec/android/app/camera/HighlightView;

    iget v5, p0, Lcom/sec/android/app/camera/CropImageView;->mMotionEdge:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/sec/android/app/camera/CropImageView;->mLastX:F

    sub-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/sec/android/app/camera/CropImageView;->mLastY:F

    sub-float/2addr v8, v9

    invoke-virtual {v4, v5, v7, v8}, Lcom/sec/android/app/camera/HighlightView;->handleMotion(IFF)V

    .line 1036
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CropImageView;->mLastX:F

    .line 1037
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CropImageView;->mLastY:F

    .line 1045
    iget-object v4, p0, Lcom/sec/android/app/camera/CropImageView;->mMotionHighlightView:Lcom/sec/android/app/camera/HighlightView;

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/CropImageView;->ensureVisible(Lcom/sec/android/app/camera/HighlightView;)V

    goto/16 :goto_1

    .line 1053
    :pswitch_3
    invoke-virtual {p0, v6, v6}, Lcom/sec/android/app/camera/CropImageView;->center(ZZ)V

    goto/16 :goto_2

    .line 1060
    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImageView;->getScale()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    .line 1061
    invoke-virtual {p0, v6, v6}, Lcom/sec/android/app/camera/CropImageView;->center(ZZ)V

    goto/16 :goto_2

    .line 983
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1051
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected postTranslate(FF)V
    .locals 3
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    .line 937
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/ImageViewTouchBase;->postTranslate(FF)V

    .line 938
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 939
    iget-object v2, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/HighlightView;

    .line 940
    .local v0, "hv":Lcom/sec/android/app/camera/HighlightView;
    iget-object v2, v0, Lcom/sec/android/app/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 941
    invoke-virtual {v0}, Lcom/sec/android/app/camera/HighlightView;->invalidate()V

    .line 938
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 943
    .end local v0    # "hv":Lcom/sec/android/app/camera/HighlightView;
    :cond_0
    return-void
.end method

.method protected zoomIn()V
    .locals 4

    .prologue
    .line 919
    invoke-super {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->zoomIn()V

    .line 920
    iget-object v2, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/HighlightView;

    .line 921
    .local v0, "hv":Lcom/sec/android/app/camera/HighlightView;
    iget-object v2, v0, Lcom/sec/android/app/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 922
    invoke-virtual {v0}, Lcom/sec/android/app/camera/HighlightView;->invalidate()V

    goto :goto_0

    .line 924
    .end local v0    # "hv":Lcom/sec/android/app/camera/HighlightView;
    :cond_0
    return-void
.end method

.method protected zoomOut()V
    .locals 4

    .prologue
    .line 928
    invoke-super {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->zoomOut()V

    .line 929
    iget-object v2, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/HighlightView;

    .line 930
    .local v0, "hv":Lcom/sec/android/app/camera/HighlightView;
    iget-object v2, v0, Lcom/sec/android/app/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 931
    invoke-virtual {v0}, Lcom/sec/android/app/camera/HighlightView;->invalidate()V

    goto :goto_0

    .line 933
    .end local v0    # "hv":Lcom/sec/android/app/camera/HighlightView;
    :cond_0
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 4
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    .line 910
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/camera/ImageViewTouchBase;->zoomTo(FFF)V

    .line 911
    iget-object v2, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/HighlightView;

    .line 912
    .local v0, "hv":Lcom/sec/android/app/camera/HighlightView;
    iget-object v2, v0, Lcom/sec/android/app/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 913
    invoke-virtual {v0}, Lcom/sec/android/app/camera/HighlightView;->invalidate()V

    goto :goto_0

    .line 915
    .end local v0    # "hv":Lcom/sec/android/app/camera/HighlightView;
    :cond_0
    return-void
.end method
