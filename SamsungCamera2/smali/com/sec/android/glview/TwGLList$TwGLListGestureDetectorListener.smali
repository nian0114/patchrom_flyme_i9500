.class public Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TwGLList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/glview/TwGLList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwGLListGestureDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/TwGLList;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLList;)V
    .locals 0

    .prologue
    .line 1716
    iput-object p1, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    .line 1745
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    # getter for: Lcom/sec/android/glview/TwGLList;->mScroll:I
    invoke-static {v0}, Lcom/sec/android/glview/TwGLList;->access$100(Lcom/sec/android/glview/TwGLList;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1746
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    div-float v1, p4, v3

    # setter for: Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F
    invoke-static {v0, v1}, Lcom/sec/android/glview/TwGLList;->access$202(Lcom/sec/android/glview/TwGLList;F)F

    .line 1747
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    # invokes: Lcom/sec/android/glview/TwGLList;->checkBoundary()Z
    invoke-static {v0}, Lcom/sec/android/glview/TwGLList;->access$400(Lcom/sec/android/glview/TwGLList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1749
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    # setter for: Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F
    invoke-static {v0, v2}, Lcom/sec/android/glview/TwGLList;->access$202(Lcom/sec/android/glview/TwGLList;F)F

    .line 1752
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    # getter for: Lcom/sec/android/glview/TwGLList;->mScroll:I
    invoke-static {v0}, Lcom/sec/android/glview/TwGLList;->access$100(Lcom/sec/android/glview/TwGLList;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1753
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    div-float v1, p3, v3

    # setter for: Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F
    invoke-static {v0, v1}, Lcom/sec/android/glview/TwGLList;->access$302(Lcom/sec/android/glview/TwGLList;F)F

    .line 1754
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    # invokes: Lcom/sec/android/glview/TwGLList;->checkBoundary()Z
    invoke-static {v0}, Lcom/sec/android/glview/TwGLList;->access$400(Lcom/sec/android/glview/TwGLList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1756
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    # setter for: Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F
    invoke-static {v0, v2}, Lcom/sec/android/glview/TwGLList;->access$302(Lcom/sec/android/glview/TwGLList;F)F

    .line 1760
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 1761
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v0, 0x1

    const/high16 v6, 0x41200000    # 10.0f

    .line 1727
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1737
    :goto_0
    return v0

    .line 1730
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    # getter for: Lcom/sec/android/glview/TwGLList;->mScroll:I
    invoke-static {v1}, Lcom/sec/android/glview/TwGLList;->access$100(Lcom/sec/android/glview/TwGLList;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_1

    .line 1731
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    mul-float v1, p4, v6

    neg-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v1, v2

    # setter for: Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F
    invoke-static {v0, v1}, Lcom/sec/android/glview/TwGLList;->access$202(Lcom/sec/android/glview/TwGLList;F)F

    .line 1733
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    # getter for: Lcom/sec/android/glview/TwGLList;->mScroll:I
    invoke-static {v0}, Lcom/sec/android/glview/TwGLList;->access$100(Lcom/sec/android/glview/TwGLList;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1734
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    mul-float v1, p3, v6

    neg-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v1, v2

    # setter for: Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F
    invoke-static {v0, v1}, Lcom/sec/android/glview/TwGLList;->access$302(Lcom/sec/android/glview/TwGLList;F)F

    .line 1736
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 1737
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method
