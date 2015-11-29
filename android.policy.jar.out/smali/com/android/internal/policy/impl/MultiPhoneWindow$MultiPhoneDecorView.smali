.class final Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;
.super Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MultiPhoneDecorView"
.end annotation


# instance fields
.field private mConsumeHoverEvent:Z

.field private mFixedRatio:F

.field private mGuideViewBound:Landroid/graphics/Rect;

.field private mIsResize:Z

.field private mLastCorner:Z

.field private mLastHoverEdge:Z

.field private mLastMoveX:I

.field private mLastMoveY:I

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMinHeight:I

.field private mMinWidth:I

.field private mOutSideMoving:Z

.field private mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/content/Context;I)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "featureId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;I)V

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v1

    invoke-direct {v0, v3, v3, v1}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mOutSideMoving:Z

    iput v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    iput v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    iput v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    iput v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    return-void
.end method

.method private adjustPenWindowSize(Landroid/graphics/Rect;F)V
    .locals 9
    .param p1, "curBound"    # Landroid/graphics/Rect;
    .param p2, "ratio"    # F

    .prologue
    const/4 v3, 0x0

    .local v3, "UNDER_MIN_WIDTH":I
    const/4 v1, 0x1

    .local v1, "EXCEED_MAX_WIDTH":I
    const/4 v2, 0x2

    .local v2, "UNDER_MIN_HEIGHT":I
    const/4 v0, 0x3

    .local v0, "EXCEED_MAX_HEIGHT":I
    const/4 v6, -0x1

    .local v6, "what":I
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    if-ne v7, v8, :cond_6

    :cond_0
    const/4 v4, 0x1

    .local v4, "lastStackBoundIsMax":Z
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    if-ge v7, v8, :cond_8

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_7

    iget v7, p1, Landroid/graphics/Rect;->right:I

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    sub-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->left:I

    :cond_1
    :goto_1
    const/4 v6, 0x0

    :cond_2
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    if-ge v7, v8, :cond_c

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_b

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    sub-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->top:I

    :cond_3
    :goto_3
    const/4 v6, 0x2

    :cond_4
    :goto_4
    const/4 v7, 0x0

    cmpl-float v7, p2, v7

    if-eqz v7, :cond_5

    packed-switch v6, :pswitch_data_0

    :goto_5
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v5, 0x0

    .local v5, "margin":I
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->getControllerHeight()I

    move-result v7

    div-int/lit8 v5, v7, 0x2

    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v5

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v8

    if-ge v7, v8, :cond_5

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v7

    add-int/2addr v7, v5

    iput v7, p1, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_11

    iget v7, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, p2

    float-to-int v8, v8

    sub-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->left:I

    .end local v5    # "margin":I
    :cond_5
    :goto_6
    return-void

    .end local v4    # "lastStackBoundIsMax":Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_0

    .restart local v4    # "lastStackBoundIsMax":Z
    :cond_7
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    if-le v7, v8, :cond_2

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxSizeRatio:F
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_2

    if-nez v4, :cond_2

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_a

    iget v7, p1, Landroid/graphics/Rect;->right:I

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    sub-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->left:I

    :cond_9
    :goto_7
    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_a
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_9

    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto :goto_7

    :cond_b
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    if-le v7, v8, :cond_4

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxSizeRatio:F
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_4

    if-nez v4, :cond_4

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_e

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    sub-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->top:I

    :cond_d
    :goto_8
    const/4 v6, 0x3

    goto/16 :goto_4

    :cond_e
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_d

    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    :pswitch_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_f

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, p2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->top:I

    goto/16 :goto_5

    :cond_f
    iget v7, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, p2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_5

    :pswitch_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_10

    iget v7, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, p2

    float-to-int v8, v8

    sub-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_5

    :cond_10
    iget v7, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, p2

    float-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_5

    .restart local v5    # "margin":I
    :cond_11
    iget v7, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, p2

    float-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private drawBorder(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorderShown:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v4, v7, :cond_0

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v4, v7, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    const/4 v5, 0x0

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorderShown:Z
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3002(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z

    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_0
    return-void

    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Border;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/internal/policy/impl/multiwindow/Border;->drawBorderLine(Landroid/graphics/Canvas;II)V

    goto :goto_0

    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasWindowFocus:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v4, v6, :cond_4

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v4, v6, :cond_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredWidth()I

    move-result v2

    .local v2, "right":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredHeight()I

    move-result v1

    .local v1, "bottom":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v4, v2, :cond_5

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eq v4, v1, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v3

    .local v3, "stackBound":Landroid/graphics/Rect;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-lt v4, v2, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-lt v4, v1, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThickness:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-gt v4, v5, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThickness:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-gt v4, v5, :cond_1

    .end local v3    # "stackBound":Landroid/graphics/Rect;
    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Border;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    invoke-virtual {v4, p1, v2, v1, v5}, Lcom/android/internal/policy/impl/multiwindow/Border;->drawBorderBitmap(Landroid/graphics/Canvas;III)V

    goto/16 :goto_0
.end method

.method private resizePenWindow(ZLandroid/view/MotionEvent;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 14
    .param p1, "isFixedRatio"    # Z
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .param p3, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .local v1, "display":Landroid/view/Display;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .local v6, "size":Landroid/graphics/Point;
    invoke-virtual {v1, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    iget v8, v6, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxSizeRatio:F
    invoke-static {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    iget v8, v6, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxSizeRatio:F
    invoke-static {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    const/high16 v8, 0x10000

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    const/4 v10, 0x1

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V
    invoke-static {v8, v9, v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$500(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_f

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    :goto_1
    const/16 v8, 0x800

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    iput v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    const/4 v8, 0x1

    iput v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    :cond_1
    const/4 v5, 0x0

    .local v5, "resizable":Z
    if-eqz p1, :cond_10

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    if-lt v8, v9, :cond_2

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    if-lt v8, v9, :cond_2

    const/4 v5, 0x1

    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v8

    float-to-int v8, v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int v2, v8, v9

    .local v2, "dx":I
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v2

    if-le v8, v9, :cond_4

    if-nez v5, :cond_3

    if-eqz p1, :cond_4

    if-gez v2, :cond_4

    :cond_3
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    iget v9, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v2

    iput v9, v8, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    .end local v2    # "dx":I
    :cond_4
    :goto_3
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    float-to-int v3, v8

    .local v3, "dy":I
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v3

    if-le v8, v9, :cond_7

    if-nez v5, :cond_5

    if-eqz p1, :cond_7

    if-lez v3, :cond_7

    :cond_5
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v3

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    if-gt v8, v9, :cond_6

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    :cond_6
    const/4 v5, 0x1

    .end local v3    # "dy":I
    :cond_7
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->adjustPenWindowSize(Landroid/graphics/Rect;F)V

    if-eqz p1, :cond_c

    if-eqz v5, :cond_c

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    :cond_8
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v7

    .local v7, "width":I
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v4

    .local v4, "height":I
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v8

    if-eqz v8, :cond_15

    :cond_9
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v8, v7

    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    if-ge v4, v8, :cond_a

    iget v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    :cond_a
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v4

    iput v9, v8, Landroid/graphics/Rect;->top:I

    :cond_b
    :goto_4
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    invoke-direct {p0, v8, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->adjustPenWindowSize(Landroid/graphics/Rect;F)V

    .end local v4    # "height":I
    .end local v7    # "width":I
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    iget v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->check(II)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_e

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-eq v8, v9, :cond_d

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-ne v8, v9, :cond_e

    :cond_d
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-ne v8, v9, :cond_17

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    :cond_e
    :goto_5
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    if-gt v8, v9, :cond_18

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    if-gt v8, v9, :cond_18

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    const/4 v10, 0x1

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V
    invoke-static {v8, v9, v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$500(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V

    :goto_6
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    goto/16 :goto_0

    .end local v5    # "resizable":Z
    :cond_f
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    goto/16 :goto_1

    .restart local v5    # "resizable":Z
    :cond_10
    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_11
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v8

    float-to-int v8, v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v2, v8, v9

    .restart local v2    # "dx":I
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v2

    if-le v8, v9, :cond_4

    if-nez v5, :cond_12

    if-eqz p1, :cond_4

    if-lez v2, :cond_4

    :cond_12
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    iget v9, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v2

    iput v9, v8, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    if-gt v8, v9, :cond_13

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->right:I

    :cond_13
    const/4 v5, 0x1

    goto/16 :goto_3

    .end local v2    # "dx":I
    .restart local v4    # "height":I
    .restart local v7    # "width":I
    :cond_14
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v4

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    :cond_15
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v8

    if-eqz v8, :cond_16

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v10, v4

    iget v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->left:I

    goto/16 :goto_4

    :cond_16
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v10, v4

    iget v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    if-gt v8, v9, :cond_b

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->right:I

    goto/16 :goto_4

    .end local v4    # "height":I
    .end local v7    # "width":I
    :cond_17
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iput v9, v8, Landroid/graphics/Rect;->right:I

    goto/16 :goto_5

    :cond_18
    if-eqz p1, :cond_1a

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    if-eq v8, v9, :cond_19

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    if-ne v8, v9, :cond_1a

    :cond_19
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    const/4 v10, 0x1

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V
    invoke-static {v8, v9, v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$500(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V

    goto/16 :goto_6

    :cond_1a
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    if-gt v8, v9, :cond_1b

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    if-le v8, v9, :cond_1c

    :cond_1b
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, v6, Landroid/graphics/Point;->x:I

    iget v13, v6, Landroid/graphics/Point;->y:I

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v10, 0x2

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V
    invoke-static {v8, v9, v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$500(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V

    goto/16 :goto_6

    :cond_1c
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    const/4 v10, 0x0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V
    invoke-static {v8, v9, v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$500(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V

    goto/16 :goto_6
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->drawBorder(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    .local v6, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    const/4 v5, 0x1

    .local v5, "isMouse":Z
    :goto_0
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    if-eqz v5, :cond_1

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastHoverIcon:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v7

    const/16 v8, 0x65

    if-eq v7, v8, :cond_1

    :try_start_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    const/16 v8, 0x65

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastHoverIcon:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3502(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)I

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastHoverIcon:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v7

    const/4 v8, -0x1

    invoke-static {v7, v8}, Landroid/view/PointerIcon;->setMouseIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    :goto_2
    return v7

    .end local v5    # "isMouse":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .restart local v5    # "isMouse":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v7, "MultiPhoneWindow"

    const-string v8, "Failed to change Pen Point to MOUSEICON_DEFAULT"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTitleBarHeight:I
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_2

    :cond_4
    const/4 v1, -0x1

    .local v1, "hoverIcon":I
    const/high16 v7, 0x10000

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    .local v4, "isFixedSize":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x7

    if-eq v7, v8, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_1d

    :cond_5
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->clear()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_6

    :cond_6
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->check(II)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge()Z

    move-result v3

    .local v3, "isEdge":Z
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isCorner()Z

    move-result v2

    .local v2, "isCorner":Z
    if-nez v4, :cond_12

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastHoverEdge:Z

    if-eq v7, v3, :cond_12

    if-nez v2, :cond_12

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-eqz v7, :cond_c

    if-nez v5, :cond_7

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastHoverIcon:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v7

    const/4 v8, 0x6

    if-lt v7, v8, :cond_8

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastHoverIcon:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v7

    const/16 v8, 0x9

    if-gt v7, v8, :cond_8

    :cond_7
    if-eqz v5, :cond_b

    const/16 v1, 0x65

    :cond_8
    :goto_3
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    :goto_4
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastHoverEdge:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastCorner:Z

    .end local v2    # "isCorner":Z
    .end local v3    # "isEdge":Z
    :cond_9
    :goto_5
    if-lez v1, :cond_a

    :try_start_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastHoverIcon:I
    invoke-static {v7, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3502(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)I

    if-eqz v5, :cond_1f

    const/4 v7, -0x1

    invoke-static {v1, v7}, Landroid/view/PointerIcon;->setMouseIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_a
    :goto_6
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    if-eqz v7, :cond_20

    const/4 v7, 0x1

    goto/16 :goto_2

    .restart local v2    # "isCorner":Z
    .restart local v3    # "isEdge":Z
    :cond_b
    const/4 v1, 0x1

    goto :goto_3

    :cond_c
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_e

    if-eqz v5, :cond_d

    const/16 v1, 0x6b

    :goto_7
    goto :goto_4

    :cond_d
    const/4 v1, 0x7

    goto :goto_7

    :cond_e
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_10

    if-eqz v5, :cond_f

    const/16 v1, 0x6a

    :goto_8
    goto :goto_4

    :cond_f
    const/4 v1, 0x6

    goto :goto_8

    :cond_10
    if-eqz v5, :cond_11

    const/16 v1, 0x65

    :goto_9
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    goto :goto_4

    :cond_11
    const/4 v1, 0x1

    goto :goto_9

    :cond_12
    if-nez v4, :cond_9

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastCorner:Z

    if-eq v7, v2, :cond_9

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->isInputMethodShown()Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-nez v7, :cond_17

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_15

    if-eqz v5, :cond_14

    const/16 v1, 0x6d

    :cond_13
    :goto_a
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastCorner:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastHoverEdge:Z

    goto :goto_5

    :cond_14
    const/16 v1, 0x9

    goto :goto_a

    :cond_15
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_13

    if-eqz v5, :cond_16

    const/16 v1, 0x6c

    :goto_b
    goto :goto_a

    :cond_16
    const/16 v1, 0x8

    goto :goto_b

    :cond_17
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-eqz v7, :cond_1b

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_1b

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->isInputMethodShown()Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-nez v7, :cond_1b

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_19

    if-eqz v5, :cond_18

    const/16 v1, 0x6c

    :goto_c
    goto :goto_a

    :cond_18
    const/16 v1, 0x8

    goto :goto_c

    :cond_19
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_13

    if-eqz v5, :cond_1a

    const/16 v1, 0x6d

    :goto_d
    goto :goto_a

    :cond_1a
    const/16 v1, 0x9

    goto :goto_d

    :cond_1b
    if-eqz v5, :cond_1c

    const/16 v1, 0x65

    :goto_e
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    goto :goto_a

    :cond_1c
    const/4 v1, 0x1

    goto :goto_e

    .end local v2    # "isCorner":Z
    .end local v3    # "isEdge":Z
    :cond_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_9

    if-eqz v5, :cond_1e

    const/16 v1, 0x65

    :goto_f
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastHoverEdge:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastCorner:Z

    goto/16 :goto_5

    :cond_1e
    const/4 v1, 0x1

    goto :goto_f

    :cond_1f
    const/4 v7, -0x1

    :try_start_2
    invoke-static {v1, v7}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v7, "MultiPhoneWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to change Pen Point to HOVERING / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_20
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto/16 :goto_2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    .local v3, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :goto_0
    return v4

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTitleBarHeight:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->clear()V

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsPenButtonPressed:Z
    invoke-static {v5, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1702(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z

    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(Z)V
    invoke-static {v5, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1800(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->clear()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    iget v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    iget v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->check(II)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsPenButtonPressed:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isCorner()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_6
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->forceHideInputMethod()Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIvt:[B
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)[B

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v6

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V
    invoke-static {v5, v6, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$500(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V

    goto/16 :goto_0

    :cond_7
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "rect":Landroid/graphics/Rect;
    :pswitch_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge()Z

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isCorner()Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_9
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v5

    if-nez v5, :cond_a

    const v5, 0x8000

    invoke-virtual {v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isCorner()Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_a
    move v1, v4

    .local v1, "fixedRatio":Z
    :cond_b
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsPenButtonPressed:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->resizePenWindow(ZLandroid/view/MotionEvent;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    :cond_c
    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->resizePenWindow(ZLandroid/view/MotionEvent;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto/16 :goto_0

    .end local v1    # "fixedRatio":Z
    :cond_d
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isCandidate()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    iget v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    iget v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->check(II)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge()Z

    move-result v5

    if-nez v5, :cond_f

    :cond_e
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isCorner()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_f
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->forceHideInputMethod()Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    :try_start_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIvt:[B
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)[B

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v6

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V
    invoke-static {v5, v6, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$500(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsPenButtonPressed:Z
    invoke-static {v5, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1702(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    iput v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isEdge()Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->isCorner()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_10
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    if-gt v5, v6, :cond_11

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    if-le v5, v6, :cond_12

    :cond_11
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V
    invoke-static {v5, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2100(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V

    goto/16 :goto_0

    :cond_12
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2200(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    :cond_13
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    goto/16 :goto_0

    :cond_14
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->clear()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->drawBorder(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->onAttachedToWindow()V

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->hackTurnOffWindowResizeAnim(Z)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->register()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "dragModeReceiver":Landroid/content/IntentFilter;
    const-string v2, "com.sec.android.action.NOTIFY_STOP_DRAG_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sec.android.action.NOTIFY_START_DRAG_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDragModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v4, :cond_1

    :goto_0
    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsFullScreen:Z
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3802(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(I)V
    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3900(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->updateMultiPhoneWindowLayout()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->unregister()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDragModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iput-object v2, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDragModeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4402(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackFocus(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2800(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasWindowFocus:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->invalidate()V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasWindowFocus:Z
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2902(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    :cond_2
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mBlackColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v3

    if-eq p1, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v3

    if-eq p1, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v3, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4202(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v3

    if-eq p1, v3, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "here"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v3, "MultiPhoneWindow"

    const-string v4, "ignore setBackgroundDrawable for minimized floating app"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->hackTurnOffWindowResizeAnim(Z)V

    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez p1, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mBlackColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object p1

    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mBlackColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v3

    if-eq p1, v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v3

    if-eq p1, v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "contents":Landroid/view/View;
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .end local v0    # "contents":Landroid/view/View;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    if-nez p1, :cond_5

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v5, :cond_5

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mBlackColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v3

    invoke-super {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->hackTurnOffWindowResizeAnim(Z)V

    goto :goto_0

    :cond_5
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method protected updateColorViewInt(Landroid/view/View;IIIIIILjava/lang/String;IZ)Landroid/view/View;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sysUiVis"    # I
    .param p3, "systemUiHideFlag"    # I
    .param p4, "translucentFlag"    # I
    .param p5, "color"    # I
    .param p6, "height"    # I
    .param p7, "verticalGravity"    # I
    .param p8, "transitionName"    # Ljava/lang/String;
    .param p9, "id"    # I
    .param p10, "hiddenByWindowFlag"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->updateMultiPhoneWindowLayout()V

    const/4 p1, 0x0

    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-super/range {p0 .. p10}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateColorViewInt(Landroid/view/View;IIIIIILjava/lang/String;IZ)Landroid/view/View;

    move-result-object p1

    goto :goto_0
.end method

.method protected updateMultiPhoneWindowLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mStatusColorView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mStatusColorView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mStatusColorView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mNavigationColorView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mNavigationColorView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mNavigationColorView:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mStatusGuard:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mNavigationGuard:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mNavigationGuard:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mNavigationGuard:Landroid/view/View;

    :cond_3
    return-void
.end method
