.class Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;
.super Ljava/lang/Object;
.source "TwGLWheelList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLWheelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/high16 v6, 0x43160000    # 150.0f

    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, "layoutIndexDiff":I
    const/16 v0, 0x96

    .line 217
    .local v0, "duration":I
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastTouchedLayoutIndex:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 263
    :goto_0
    return-void

    .line 220
    :cond_0
    monitor-enter p0

    .line 221
    const/4 v2, 0x0

    .line 222
    .local v2, "mInnerScrollToCenterAnimator":Landroid/animation/ValueAnimator;
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastTouchedLayoutIndex:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I

    move-result v3

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->CENTER_LAYOUT_INDEX:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$700()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 223
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastTouchedLayoutIndex:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I

    move-result v3

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->CENTER_LAYOUT_INDEX:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$700()I

    move-result v4

    sub-int v1, v3, v4

    .line 224
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    neg-int v5, v1

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 225
    neg-int v3, v1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    float-to-int v0, v3

    .line 233
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollToCenterAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v3, v2}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$802(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 235
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    const/4 v4, 0x0

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$002(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;F)F

    .line 236
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    const/4 v4, 0x0

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutIndexCompensation:I
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$902(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;I)I

    .line 237
    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 238
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 239
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 240
    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 261
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 262
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 226
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastTouchedLayoutIndex:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I

    move-result v3

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->CENTER_LAYOUT_INDEX:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$700()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 227
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastTouchedLayoutIndex:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I

    move-result v3

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->CENTER_LAYOUT_INDEX:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$700()I

    move-result v4

    sub-int v1, v3, v4

    .line 228
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    neg-int v5, v1

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 229
    int-to-float v3, v1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v4

    add-float/2addr v3, v4

    mul-float/2addr v3, v6

    float-to-int v0, v3

    goto :goto_1

    .line 231
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
