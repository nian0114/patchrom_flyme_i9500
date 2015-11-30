.class public Lcom/sec/android/glview/TwGLScroll;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLScroll.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;
.implements Lcom/sec/android/glview/TwGLView$OnFocusListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/TwGLScroll$TwGLListGestureDetectorListener;,
        Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;
    }
.end annotation


# static fields
.field private static final BOUNCE_DECELERATION_POSITION_DIVIDE_FACTOR:F = 2.0f

.field private static final BOUNCE_EFFECT_IMAGE_DEFAULT_ALPHA:F = 0.0f

.field private static final BOUNCE_IMAGE_FULLY_VISIBLE_THRESHOLD_DIP:F = 100.0f

.field private static final BOUNCE_SEVERAL_TIMES:Z = false

.field private static final BOUNCE_SMOOTH_LANDING_FACTOR:F = 0.3f

.field private static final BOUNCING_VELOCITY_DIP:F = 3.0f

.field private static final COEFFICIENT_OF_RESTITUTION:F = 0.4f

.field private static final DEFAULT_SCROLLBAR_PADDING:I = 0x1

.field private static final DEFAULT_SCROLL_THRESHOLD_DIP:F = 10.0f

.field private static final DRAG_ATTENUATION_RATE_FACTOR:F = 0.2f

.field private static final FLING_VELOCITY_DIP:F = 0.6f

.field private static final SCROLLBAR_ID:I = 0xfffff

.field private static final SCROLL_BAR_HEIGHT:I

.field public static final SCROLL_LANDSCAPE:I = 0x2

.field private static final SCROLL_LINE_WIDTH:I

.field public static final SCROLL_NOT_MOVE:I = 0x0

.field public static final SCROLL_PORTRAIT:I = 0x1

.field public static final STACK_DOWN:I = 0x0

.field public static final STACK_RIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TwGLScroll"

.field private static final VELOCITY_MODERATION_RATIO:F = 0.3f

.field private static final VELOCITY_REVISE_LIMIT_DIP:F = 30.0f


# instance fields
.field private isLock:Z

.field private final mBounceImageMaxAlphaThreshold:F

.field private mBouncing:Z

.field private final mBouncingVelocity:F

.field private mContentHeight:F

.field private mContentWidth:F

.field private mFirstFullyVisibleViewIndex:I

.field private final mFlingVelocity:F

.field private mFlingVelocityX:F

.field private mFlingVelocityY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLandscapeBounceMaxOffset:F

.field private mLandscapeBounceOffset:F

.field private mListVisibleHeight:F

.field private mListVisibleWidth:F

.field private mOnScrollListener:Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;

.field private mPortraitBounceMaxOffset:F

.field private mPortraitBounceOffset:F

.field private mScroll:I

.field private mScrollBar:Lcom/sec/android/glview/TwGLImage;

.field private mScrollLine:Lcom/sec/android/glview/TwGLNinePatch;

.field private mScrollRequested:Z

.field private mScrollSumX:F

.field private mScrollSumY:F

.field private mScrollThreshold:F

.field private mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

.field private mScrollX:F

.field private mScrollY:F

.field private mScrolling:Z

.field private mStackOrientation:I

.field private final mVelocityLimit:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 174
    const v0, 0x7f0a0051

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLScroll;->SCROLL_LINE_WIDTH:I

    .line 175
    const v0, 0x7f0a0056

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLScroll;->SCROLL_BAR_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 8
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 225
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 51
    iput v0, p0, Lcom/sec/android/glview/TwGLScroll;->mStackOrientation:I

    .line 63
    iput v7, p0, Lcom/sec/android/glview/TwGLScroll;->mScroll:I

    .line 66
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrolling:Z

    .line 69
    iput v2, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollThreshold:F

    .line 74
    iput v3, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollX:F

    .line 77
    iput v3, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollY:F

    .line 80
    iput v3, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    .line 83
    iput v3, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    .line 86
    iput v3, p0, Lcom/sec/android/glview/TwGLScroll;->mContentWidth:F

    .line 89
    iput v3, p0, Lcom/sec/android/glview/TwGLScroll;->mContentHeight:F

    .line 92
    iput v3, p0, Lcom/sec/android/glview/TwGLScroll;->mPortraitBounceOffset:F

    .line 95
    iput v3, p0, Lcom/sec/android/glview/TwGLScroll;->mLandscapeBounceOffset:F

    .line 98
    iput v3, p0, Lcom/sec/android/glview/TwGLScroll;->mPortraitBounceMaxOffset:F

    .line 101
    iput v3, p0, Lcom/sec/android/glview/TwGLScroll;->mLandscapeBounceMaxOffset:F

    .line 118
    iput v3, p0, Lcom/sec/android/glview/TwGLScroll;->mListVisibleWidth:F

    .line 121
    iput v3, p0, Lcom/sec/android/glview/TwGLScroll;->mListVisibleHeight:F

    .line 127
    iput v3, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    .line 130
    iput v3, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    .line 139
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLScroll;->mBouncing:Z

    .line 163
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollRequested:Z

    .line 167
    iput v0, p0, Lcom/sec/android/glview/TwGLScroll;->mFirstFullyVisibleViewIndex:I

    .line 169
    iput-object v4, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    .line 170
    iput-object v4, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollLine:Lcom/sec/android/glview/TwGLNinePatch;

    .line 172
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLScroll;->isLock:Z

    .line 227
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollThreshold:F

    .line 228
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocity:F

    .line 229
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLScroll;->mBouncingVelocity:F

    .line 230
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLScroll;->mBounceImageMaxAlphaThreshold:F

    .line 231
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLScroll;->mVelocityLimit:F

    .line 237
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f020299

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    .line 238
    iget-object v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    const v1, 0xfffff

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setTag(I)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    const-string v1, "mScrollbar"

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setTitle(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 243
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLScroll;->setVisibleArea()V

    .line 245
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/glview/TwGLScroll;->SCROLL_LINE_WIDTH:I

    int-to-float v4, v1

    iget v5, p0, Lcom/sec/android/glview/TwGLScroll;->mListVisibleHeight:F

    const v6, 0x7f02029a

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollLine:Lcom/sec/android/glview/TwGLNinePatch;

    .line 246
    iget-object v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollLine:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 248
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getHeight()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    sget v1, Lcom/sec/android/glview/TwGLScroll;->SCROLL_BAR_HEIGHT:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLScroll;->mContentHeight:F

    .line 249
    sget v0, Lcom/sec/android/glview/TwGLScroll;->SCROLL_BAR_HEIGHT:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    .line 251
    iget-object v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollLine:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLScroll;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLScroll;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getHeight()F

    move-result v1

    sget v2, Lcom/sec/android/glview/TwGLScroll;->SCROLL_BAR_HEIGHT:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 255
    iget-object v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    invoke-virtual {v0, v3, v1, v7}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FFZ)V

    .line 256
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/glview/TwGLScroll;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLScroll;

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScroll:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/glview/TwGLScroll;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLScroll;
    .param p1, "x1"    # F

    .prologue
    .line 36
    iput p1, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    return p1
.end method

.method static synthetic access$202(Lcom/sec/android/glview/TwGLScroll;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLScroll;
    .param p1, "x1"    # F

    .prologue
    .line 36
    iput p1, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/glview/TwGLScroll;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLScroll;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLScroll;->checkBoundary()Z

    move-result v0

    return v0
.end method

.method private checkBoundary()Z
    .locals 7

    .prologue
    const v6, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    .line 873
    const/4 v1, 0x0

    .line 874
    .local v1, "ret":Z
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mScroll:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 875
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 877
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    iput v2, p0, Lcom/sec/android/glview/TwGLScroll;->mPortraitBounceOffset:F

    .line 878
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mPortraitBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLScroll;->mPortraitBounceOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 879
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mPortraitBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    .line 881
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    iget v3, p0, Lcom/sec/android/glview/TwGLScroll;->mVelocityLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 882
    iget v0, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    .line 883
    .local v0, "originalVelocity":F
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mVelocityLimit:F

    iget v3, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    iget v4, p0, Lcom/sec/android/glview/TwGLScroll;->mVelocityLimit:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    .line 884
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    iget v3, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    .line 885
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mPortraitBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLScroll;->mPortraitBounceOffset:F

    .line 888
    .end local v0    # "originalVelocity":F
    :cond_0
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mPortraitBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLScroll;->mPortraitBounceMaxOffset:F

    .line 890
    :cond_1
    const/4 v1, 0x1

    .line 949
    :cond_2
    :goto_0
    return v1

    .line 891
    :cond_3
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mContentHeight:F

    iget v3, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getContentAreaHeight()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 893
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getContentAreaHeight()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLScroll;->mContentHeight:F

    iget v4, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLScroll;->mPortraitBounceOffset:F

    .line 894
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mPortraitBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLScroll;->mPortraitBounceOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 895
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mPortraitBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_4

    .line 897
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLScroll;->mVelocityLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 898
    iget v0, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    .line 899
    .restart local v0    # "originalVelocity":F
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mVelocityLimit:F

    iget v3, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/sec/android/glview/TwGLScroll;->mVelocityLimit:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    neg-float v2, v2

    iput v2, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    .line 900
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    iget v3, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    .line 901
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mPortraitBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLScroll;->mPortraitBounceOffset:F

    .line 904
    .end local v0    # "originalVelocity":F
    :cond_4
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mPortraitBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLScroll;->mPortraitBounceMaxOffset:F

    .line 906
    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    .line 908
    :cond_6
    iput v5, p0, Lcom/sec/android/glview/TwGLScroll;->mPortraitBounceOffset:F

    .line 909
    iput v5, p0, Lcom/sec/android/glview/TwGLScroll;->mPortraitBounceMaxOffset:F

    goto :goto_0

    .line 911
    :cond_7
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mScroll:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 912
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_a

    .line 914
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    iput v2, p0, Lcom/sec/android/glview/TwGLScroll;->mLandscapeBounceOffset:F

    .line 915
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mLandscapeBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLScroll;->mLandscapeBounceOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    .line 916
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mLandscapeBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_8

    .line 918
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLScroll;->mVelocityLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 919
    iget v0, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    .line 920
    .restart local v0    # "originalVelocity":F
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mVelocityLimit:F

    iget v3, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLScroll;->mVelocityLimit:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    .line 921
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    .line 922
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mLandscapeBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLScroll;->mLandscapeBounceOffset:F

    .line 925
    .end local v0    # "originalVelocity":F
    :cond_8
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mLandscapeBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLScroll;->mLandscapeBounceMaxOffset:F

    .line 927
    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 928
    :cond_a
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mContentWidth:F

    iget v3, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getContentAreaWidth()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_d

    .line 930
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getContentAreaWidth()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLScroll;->mContentWidth:F

    iget v4, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLScroll;->mLandscapeBounceOffset:F

    .line 931
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mLandscapeBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLScroll;->mLandscapeBounceOffset:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_c

    .line 932
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mLandscapeBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_b

    .line 934
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLScroll;->mVelocityLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    .line 935
    iget v0, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    .line 936
    .restart local v0    # "originalVelocity":F
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mVelocityLimit:F

    iget v3, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/sec/android/glview/TwGLScroll;->mVelocityLimit:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    neg-float v2, v2

    iput v2, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    .line 937
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    .line 938
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mLandscapeBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLScroll;->mLandscapeBounceOffset:F

    .line 941
    .end local v0    # "originalVelocity":F
    :cond_b
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mLandscapeBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLScroll;->mLandscapeBounceMaxOffset:F

    .line 943
    :cond_c
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 945
    :cond_d
    iput v5, p0, Lcom/sec/android/glview/TwGLScroll;->mLandscapeBounceOffset:F

    .line 946
    iput v5, p0, Lcom/sec/android/glview/TwGLScroll;->mLandscapeBounceMaxOffset:F

    goto/16 :goto_0
.end method

.method private setVisibleArea()V
    .locals 2

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLScroll;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLScroll;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLScroll;->mListVisibleWidth:F

    .line 326
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLScroll;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLScroll;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLScroll;->mListVisibleHeight:F

    .line 327
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1090
    iget-object v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 1092
    iput-object v1, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    .line 1095
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollLine:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 1096
    iget-object v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollLine:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->clear()V

    .line 1097
    iput-object v1, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollLine:Lcom/sec/android/glview/TwGLNinePatch;

    .line 1100
    :cond_1
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1101
    return-void
.end method

.method public contains(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 316
    const/4 v0, 0x0

    .line 318
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0
.end method

.method public findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;
    .locals 2
    .param p1, "focusedView"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "direction"    # I

    .prologue
    .line 1011
    const/4 v0, 0x0

    .line 1015
    .local v0, "newDirection":I
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getCenterPivot()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1016
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1067
    move v0, p2

    .line 1071
    :cond_0
    :goto_0
    invoke-super {p0, p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    return-object v1

    .line 1018
    :pswitch_0
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 1020
    :sswitch_0
    const/16 v0, 0x82

    .line 1021
    goto :goto_0

    .line 1023
    :sswitch_1
    const/16 v0, 0x21

    .line 1024
    goto :goto_0

    .line 1026
    :sswitch_2
    const/16 v0, 0x11

    .line 1027
    goto :goto_0

    .line 1029
    :sswitch_3
    const/16 v0, 0x42

    goto :goto_0

    .line 1034
    :pswitch_1
    sparse-switch p2, :sswitch_data_1

    goto :goto_0

    .line 1036
    :sswitch_4
    const/16 v0, 0x42

    .line 1037
    goto :goto_0

    .line 1039
    :sswitch_5
    const/16 v0, 0x11

    .line 1040
    goto :goto_0

    .line 1042
    :sswitch_6
    const/16 v0, 0x82

    .line 1043
    goto :goto_0

    .line 1045
    :sswitch_7
    const/16 v0, 0x21

    goto :goto_0

    .line 1050
    :pswitch_2
    sparse-switch p2, :sswitch_data_2

    goto :goto_0

    .line 1052
    :sswitch_8
    const/16 v0, 0x21

    .line 1053
    goto :goto_0

    .line 1055
    :sswitch_9
    const/16 v0, 0x82

    .line 1056
    goto :goto_0

    .line 1058
    :sswitch_a
    const/16 v0, 0x42

    .line 1059
    goto :goto_0

    .line 1061
    :sswitch_b
    const/16 v0, 0x11

    goto :goto_0

    .line 1016
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1018
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch

    .line 1034
    :sswitch_data_1
    .sparse-switch
        0x11 -> :sswitch_4
        0x21 -> :sswitch_6
        0x42 -> :sswitch_5
        0x82 -> :sswitch_7
    .end sparse-switch

    .line 1050
    :sswitch_data_2
    .sparse-switch
        0x11 -> :sswitch_8
        0x21 -> :sswitch_a
        0x42 -> :sswitch_9
        0x82 -> :sswitch_b
    .end sparse-switch
.end method

.method public getContentHeight()F
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/sec/android/glview/TwGLScroll;->mContentHeight:F

    return v0
.end method

.method public getContentWidth()F
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/sec/android/glview/TwGLScroll;->mContentWidth:F

    return v0
.end method

.method public getScrollThreshold()F
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollThreshold:F

    return v0
.end method

.method public moveItem(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x2

    const v10, 0x3e4ccccd    # 0.2f

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 697
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 698
    .local v2, "et":Landroid/view/MotionEvent;
    iget-object v6, p0, Lcom/sec/android/glview/TwGLScroll;->mTransformedScreenCoordinate:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/sec/android/glview/TwGLScroll;->mapPointReverse([FFF)V

    .line 699
    iget-object v6, p0, Lcom/sec/android/glview/TwGLScroll;->mTransformedScreenCoordinate:[F

    aget v6, v6, v5

    iget-object v7, p0, Lcom/sec/android/glview/TwGLScroll;->mTransformedScreenCoordinate:[F

    aget v7, v7, v4

    invoke-virtual {v2, v6, v7}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 701
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLScroll;->checkBoundary()Z

    move-result v3

    .line 703
    .local v3, "mBoundary":Z
    iget-object v6, p0, Lcom/sec/android/glview/TwGLScroll;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v6, :cond_0

    .line 704
    new-instance v6, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Lcom/sec/android/glview/TwGLScroll$TwGLListGestureDetectorListener;

    invoke-direct {v8, p0}, Lcom/sec/android/glview/TwGLScroll$TwGLListGestureDetectorListener;-><init>(Lcom/sec/android/glview/TwGLScroll;)V

    invoke-direct {v6, v7, v8}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v6, p0, Lcom/sec/android/glview/TwGLScroll;->mGestureDetector:Landroid/view/GestureDetector;

    .line 707
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/glview/TwGLScroll;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v6, v2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 708
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    :goto_0
    return v4

    .line 711
    :catch_0
    move-exception v6

    .line 715
    :cond_1
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_2

    .line 716
    const-string v4, "TwGLScroll"

    const-string v6, "ACTION_DOWN"

    invoke-static {v4, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollX:F

    .line 718
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollY:F

    .line 719
    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    .line 720
    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    .line 721
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    move v4, v5

    .line 722
    goto :goto_0

    .line 724
    :cond_2
    iget-boolean v6, p0, Lcom/sec/android/glview/TwGLScroll;->mScrolling:Z

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/sec/android/glview/TwGLScroll;->mDragging:Z

    if-nez v6, :cond_5

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v11, :cond_5

    .line 725
    iget v6, p0, Lcom/sec/android/glview/TwGLScroll;->mScroll:I

    and-int/lit8 v6, v6, 0x1

    if-ne v6, v4, :cond_3

    .line 726
    iget v6, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollY:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 728
    invoke-virtual {p0, v4}, Lcom/sec/android/glview/TwGLScroll;->setScrolling(Z)V

    .line 729
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 732
    :cond_3
    iget v6, p0, Lcom/sec/android/glview/TwGLScroll;->mScroll:I

    and-int/lit8 v6, v6, 0x2

    if-ne v6, v11, :cond_4

    .line 733
    iget v6, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollX:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    .line 735
    invoke-virtual {p0, v4}, Lcom/sec/android/glview/TwGLScroll;->setScrolling(Z)V

    .line 736
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 739
    :cond_4
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    move v4, v5

    .line 740
    goto :goto_0

    .line 742
    :cond_5
    iget-boolean v6, p0, Lcom/sec/android/glview/TwGLScroll;->mScrolling:Z

    if-eqz v6, :cond_1a

    iget-boolean v6, p0, Lcom/sec/android/glview/TwGLScroll;->mDragging:Z

    if-nez v6, :cond_1a

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v11, :cond_1a

    .line 743
    iget v6, p0, Lcom/sec/android/glview/TwGLScroll;->mScroll:I

    and-int/lit8 v6, v6, 0x1

    if-ne v6, v4, :cond_a

    .line 744
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollY:F

    sub-float v0, v6, v7

    .line 745
    .local v0, "delta":F
    move v1, v0

    .line 748
    .local v1, "deltaForContents":F
    iget v6, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    cmpl-float v6, v6, v9

    if-gez v6, :cond_6

    iget v6, p0, Lcom/sec/android/glview/TwGLScroll;->mContentHeight:F

    iget v7, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    add-float/2addr v6, v7

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getContentAreaHeight()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_10

    .line 750
    :cond_6
    const/4 v1, 0x0

    .line 762
    :cond_7
    :goto_1
    iget-object v6, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    if-eqz v6, :cond_8

    .line 763
    if-nez v3, :cond_12

    .line 764
    iget-object v6, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6, v9, v1, v5}, Lcom/sec/android/glview/TwGLImage;->translate(FFZ)V

    .line 770
    :cond_8
    :goto_2
    iget-object v6, p0, Lcom/sec/android/glview/TwGLScroll;->mOnScrollListener:Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;

    if-eqz v6, :cond_9

    .line 771
    if-nez v3, :cond_13

    .line 772
    iget-object v6, p0, Lcom/sec/android/glview/TwGLScroll;->mOnScrollListener:Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;

    invoke-interface {v6, v9, v1, v5}, Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;->onScrollBarScroll(FFI)V

    .line 778
    :cond_9
    :goto_3
    if-nez v3, :cond_14

    .line 779
    iget v6, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    add-float/2addr v6, v0

    iput v6, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    .line 784
    :goto_4
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollY:F

    .line 786
    .end local v0    # "delta":F
    .end local v1    # "deltaForContents":F
    :cond_a
    iget v6, p0, Lcom/sec/android/glview/TwGLScroll;->mScroll:I

    and-int/lit8 v6, v6, 0x2

    if-ne v6, v11, :cond_f

    .line 787
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollX:F

    sub-float v0, v6, v7

    .line 788
    .restart local v0    # "delta":F
    move v1, v0

    .line 791
    .restart local v1    # "deltaForContents":F
    iget v6, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    cmpl-float v6, v6, v9

    if-gez v6, :cond_b

    iget v6, p0, Lcom/sec/android/glview/TwGLScroll;->mContentWidth:F

    iget v7, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    add-float/2addr v6, v7

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getContentAreaWidth()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_15

    .line 793
    :cond_b
    const/4 v1, 0x0

    .line 805
    :cond_c
    :goto_5
    iget-object v6, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    if-eqz v6, :cond_d

    .line 806
    if-nez v3, :cond_17

    .line 807
    iget-object v6, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6, v1, v9, v5}, Lcom/sec/android/glview/TwGLImage;->translate(FFZ)V

    .line 813
    :cond_d
    :goto_6
    iget-object v6, p0, Lcom/sec/android/glview/TwGLScroll;->mOnScrollListener:Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;

    if-eqz v6, :cond_e

    .line 814
    if-nez v3, :cond_18

    .line 815
    iget-object v6, p0, Lcom/sec/android/glview/TwGLScroll;->mOnScrollListener:Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;

    invoke-interface {v6, v1, v9, v5}, Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;->onScrollBarScroll(FFI)V

    .line 821
    :cond_e
    :goto_7
    if-nez v3, :cond_19

    .line 822
    iget v5, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    add-float/2addr v5, v0

    iput v5, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    .line 826
    :goto_8
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollX:F

    .line 828
    .end local v0    # "delta":F
    .end local v1    # "deltaForContents":F
    :cond_f
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    .line 751
    .restart local v0    # "delta":F
    .restart local v1    # "deltaForContents":F
    :cond_10
    iget v6, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    add-float/2addr v6, v0

    cmpl-float v6, v6, v9

    if-lez v6, :cond_11

    .line 753
    iget v6, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    sub-float v1, v0, v6

    .line 754
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLScroll;->mBouncing:Z

    goto :goto_1

    .line 755
    :cond_11
    iget v6, p0, Lcom/sec/android/glview/TwGLScroll;->mContentHeight:F

    iget v7, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    add-float/2addr v6, v7

    add-float/2addr v6, v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getContentAreaHeight()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    .line 757
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getContentAreaHeight()F

    move-result v6

    iget v7, p0, Lcom/sec/android/glview/TwGLScroll;->mContentHeight:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    add-float/2addr v6, v7

    sub-float v1, v0, v6

    .line 758
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLScroll;->mBouncing:Z

    goto/16 :goto_1

    .line 766
    :cond_12
    iget-object v6, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    mul-float v7, v1, v10

    invoke-virtual {v6, v9, v7, v5}, Lcom/sec/android/glview/TwGLImage;->translate(FFZ)V

    goto/16 :goto_2

    .line 774
    :cond_13
    iget-object v6, p0, Lcom/sec/android/glview/TwGLScroll;->mOnScrollListener:Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;

    mul-float v7, v1, v10

    invoke-interface {v6, v9, v7, v5}, Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;->onScrollBarScroll(FFI)V

    goto/16 :goto_3

    .line 781
    :cond_14
    iget v6, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    mul-float v7, v0, v10

    add-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    goto/16 :goto_4

    .line 794
    :cond_15
    iget v6, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    add-float/2addr v6, v0

    cmpl-float v6, v6, v9

    if-lez v6, :cond_16

    .line 796
    iget v6, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    sub-float v1, v0, v6

    .line 797
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLScroll;->mBouncing:Z

    goto :goto_5

    .line 798
    :cond_16
    iget v6, p0, Lcom/sec/android/glview/TwGLScroll;->mContentWidth:F

    iget v7, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    add-float/2addr v6, v7

    add-float/2addr v6, v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getContentAreaWidth()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_c

    .line 800
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getContentAreaWidth()F

    move-result v6

    iget v7, p0, Lcom/sec/android/glview/TwGLScroll;->mContentWidth:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    add-float/2addr v6, v7

    sub-float v1, v0, v6

    .line 801
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLScroll;->mBouncing:Z

    goto/16 :goto_5

    .line 809
    :cond_17
    iget-object v6, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    mul-float v7, v1, v10

    invoke-virtual {v6, v7, v9, v5}, Lcom/sec/android/glview/TwGLImage;->translate(FFZ)V

    goto/16 :goto_6

    .line 817
    :cond_18
    iget-object v6, p0, Lcom/sec/android/glview/TwGLScroll;->mOnScrollListener:Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;

    mul-float v7, v1, v10

    invoke-interface {v6, v7, v9, v5}, Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;->onScrollBarScroll(FFI)V

    goto/16 :goto_7

    .line 824
    :cond_19
    iget v5, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    mul-float v6, v0, v10

    add-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    goto/16 :goto_8

    .line 831
    .end local v0    # "delta":F
    .end local v1    # "deltaForContents":F
    :cond_1a
    iget-boolean v6, p0, Lcom/sec/android/glview/TwGLScroll;->mScrolling:Z

    if-eqz v6, :cond_1c

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v4, :cond_1b

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1c

    .line 832
    :cond_1b
    const-string v6, "TwGLScroll"

    const-string v7, "ACTION_UP"

    invoke-static {v6, v7}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-virtual {p0, v5}, Lcom/sec/android/glview/TwGLScroll;->setScrolling(Z)V

    .line 834
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLScroll;->mBouncing:Z

    .line 835
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 836
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 837
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    goto/16 :goto_0

    .line 840
    :cond_1c
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    move v4, v5

    .line 841
    goto/16 :goto_0
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 658
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->onAlphaUpdated()V

    .line 659
    iget-object v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->onAlphaUpdated()V

    .line 662
    :cond_0
    return-void
.end method

.method public onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "dx"    # F
    .param p5, "dy"    # F

    .prologue
    .line 676
    invoke-virtual {p0, p4, p5}, Lcom/sec/android/glview/TwGLScroll;->translate(FF)V

    .line 677
    return-void
.end method

.method public onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 684
    return-void
.end method

.method public onDragStart(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 669
    return-void
.end method

.method protected onDraw()V
    .locals 13

    .prologue
    .line 433
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    add-float/2addr v9, v10

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    .line 434
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    add-float/2addr v9, v10

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    .line 436
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLScroll;->checkBoundary()Z

    move-result v9

    if-nez v9, :cond_8

    .line 438
    iget-object v9, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    if-eqz v9, :cond_0

    .line 439
    iget-object v9, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    iget v11, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/sec/android/glview/TwGLImage;->translate(FFZ)V

    .line 442
    :cond_0
    iget-object v9, p0, Lcom/sec/android/glview/TwGLScroll;->mOnScrollListener:Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;

    if-eqz v9, :cond_1

    .line 443
    iget-object v9, p0, Lcom/sec/android/glview/TwGLScroll;->mOnScrollListener:Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    iget v11, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;->onScrollBarScroll(FFI)V

    .line 447
    :cond_1
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    .line 448
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocity:F

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    .line 449
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 450
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    .line 456
    :cond_2
    :goto_0
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_7

    .line 457
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocity:F

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    .line 458
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    .line 459
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    .line 638
    :cond_3
    :goto_1
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_4

    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_5

    .line 639
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 641
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getMatrix()[F

    move-result-object v5

    .line 642
    .local v5, "matrix":[F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 645
    .local v1, "clipRect":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/sec/android/glview/TwGLScroll;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 646
    .local v4, "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/glview/TwGLView;>;"
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    .line 647
    .local v6, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v6, :cond_22

    .line 648
    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/glview/TwGLView;

    .line 649
    .local v7, "view":Lcom/sec/android/glview/TwGLView;
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->clip()V

    .line 650
    invoke-virtual {v7, v5, v1}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    .line 651
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->clearClip()V

    .line 647
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 452
    .end local v1    # "clipRect":Landroid/graphics/Rect;
    .end local v3    # "i":I
    .end local v4    # "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/glview/TwGLView;>;"
    .end local v5    # "matrix":[F
    .end local v6    # "size":I
    .end local v7    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_6
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocity:F

    add-float/2addr v9, v10

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    .line 453
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    .line 454
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    goto :goto_0

    .line 461
    :cond_7
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocity:F

    add-float/2addr v9, v10

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    .line 462
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    .line 463
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    goto :goto_1

    .line 465
    :cond_8
    iget-boolean v9, p0, Lcom/sec/android/glview/TwGLScroll;->mBouncing:Z

    if-eqz v9, :cond_3

    .line 475
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mScroll:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_16

    .line 476
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getHeight()F

    move-result v9

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mContentHeight:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_e

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getHeight()F

    move-result v2

    .line 478
    .local v2, "height":F
    :goto_3
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_11

    .line 482
    iget-object v9, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    if-eqz v9, :cond_9

    .line 483
    iget-object v9, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FFZ)V

    .line 485
    :cond_9
    iget-object v9, p0, Lcom/sec/android/glview/TwGLScroll;->mOnScrollListener:Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;

    if-eqz v9, :cond_a

    .line 486
    iget-object v9, p0, Lcom/sec/android/glview/TwGLScroll;->mOnScrollListener:Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-interface {v9, v10, v11, v12}, Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;->onScrollBarScroll(FFI)V

    .line 492
    :cond_a
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_f

    .line 493
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mBouncingVelocity:F

    iget v11, p0, Lcom/sec/android/glview/TwGLScroll;->mPortraitBounceOffset:F

    iget v12, p0, Lcom/sec/android/glview/TwGLScroll;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    .line 506
    :goto_4
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    add-float/2addr v9, v10

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_b

    .line 508
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    .line 509
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    .line 510
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/glview/TwGLScroll;->mBouncing:Z

    .line 626
    .end local v2    # "height":F
    :cond_b
    :goto_5
    iget-boolean v9, p0, Lcom/sec/android/glview/TwGLScroll;->mBouncing:Z

    if-nez v9, :cond_3

    .line 628
    iget-object v9, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    if-eqz v9, :cond_c

    .line 629
    iget-object v9, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    iget v11, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FFZ)V

    .line 631
    :cond_c
    iget-object v9, p0, Lcom/sec/android/glview/TwGLScroll;->mOnScrollListener:Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;

    if-eqz v9, :cond_d

    .line 632
    iget-object v9, p0, Lcom/sec/android/glview/TwGLScroll;->mOnScrollListener:Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    iget v11, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    const/4 v12, 0x1

    invoke-interface {v9, v10, v11, v12}, Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;->onScrollBarScroll(FFI)V

    .line 634
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    goto/16 :goto_1

    .line 476
    :cond_e
    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mContentHeight:F

    goto :goto_3

    .line 496
    .restart local v2    # "height":F
    :cond_f
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mPortraitBounceOffset:F

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mBounceImageMaxAlphaThreshold:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_10

    .line 497
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mBouncingVelocity:F

    iget v11, p0, Lcom/sec/android/glview/TwGLScroll;->mPortraitBounceOffset:F

    iget v12, p0, Lcom/sec/android/glview/TwGLScroll;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    goto :goto_4

    .line 499
    :cond_10
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    const v10, 0x3e99999a    # 0.3f

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mBouncingVelocity:F

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    goto :goto_4

    .line 512
    :cond_11
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mContentHeight:F

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    add-float/2addr v9, v10

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getContentAreaHeight()F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_b

    .line 516
    iget-object v9, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    if-eqz v9, :cond_12

    .line 517
    iget-object v9, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/android/glview/TwGLScroll;->mPaddings:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    sub-float v11, v2, v11

    iget-object v12, p0, Lcom/sec/android/glview/TwGLScroll;->mPaddings:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/glview/TwGLScroll;->mContentHeight:F

    sub-float/2addr v11, v12

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FFZ)V

    .line 519
    :cond_12
    iget-object v9, p0, Lcom/sec/android/glview/TwGLScroll;->mOnScrollListener:Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;

    if-eqz v9, :cond_13

    .line 520
    iget-object v9, p0, Lcom/sec/android/glview/TwGLScroll;->mOnScrollListener:Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/android/glview/TwGLScroll;->mPaddings:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    sub-float v11, v2, v11

    iget-object v12, p0, Lcom/sec/android/glview/TwGLScroll;->mPaddings:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/glview/TwGLScroll;->mContentHeight:F

    sub-float/2addr v11, v12

    const/4 v12, 0x1

    invoke-interface {v9, v10, v11, v12}, Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;->onScrollBarScroll(FFI)V

    .line 527
    :cond_13
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_14

    .line 528
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mBouncingVelocity:F

    iget v11, p0, Lcom/sec/android/glview/TwGLScroll;->mPortraitBounceOffset:F

    iget v12, p0, Lcom/sec/android/glview/TwGLScroll;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    .line 541
    :goto_6
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mContentHeight:F

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/sec/android/glview/TwGLScroll;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    sub-float v10, v2, v10

    iget-object v11, p0, Lcom/sec/android/glview/TwGLScroll;->mPaddings:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_b

    .line 543
    iget-object v9, p0, Lcom/sec/android/glview/TwGLScroll;->mPaddings:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float v9, v2, v9

    iget-object v10, p0, Lcom/sec/android/glview/TwGLScroll;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mContentHeight:F

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    .line 544
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    .line 545
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/glview/TwGLScroll;->mBouncing:Z

    goto/16 :goto_5

    .line 531
    :cond_14
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mPortraitBounceOffset:F

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mBounceImageMaxAlphaThreshold:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_15

    .line 532
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mBouncingVelocity:F

    iget v11, p0, Lcom/sec/android/glview/TwGLScroll;->mPortraitBounceOffset:F

    iget v12, p0, Lcom/sec/android/glview/TwGLScroll;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    goto :goto_6

    .line 534
    :cond_15
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    const v10, 0x3e99999a    # 0.3f

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mBouncingVelocity:F

    add-float/2addr v9, v10

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    goto :goto_6

    .line 548
    .end local v2    # "height":F
    :cond_16
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mScroll:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_b

    .line 549
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getWidth()F

    move-result v9

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mContentWidth:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_19

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getWidth()F

    move-result v8

    .line 551
    .local v8, "width":F
    :goto_7
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mLandscapeBounceOffset:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mListVisibleWidth:F

    const v11, 0x3dcccccd    # 0.1f

    mul-float/2addr v10, v11

    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1a

    const/high16 v0, 0x3f800000    # 1.0f

    .line 552
    .local v0, "alpha":F
    :goto_8
    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v9, v0

    const/4 v10, 0x0

    add-float v0, v9, v10

    .line 554
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1d

    .line 558
    iget-object v9, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    if-eqz v9, :cond_17

    .line 559
    iget-object v9, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FFZ)V

    .line 561
    :cond_17
    iget-object v9, p0, Lcom/sec/android/glview/TwGLScroll;->mOnScrollListener:Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;

    if-eqz v9, :cond_18

    .line 562
    iget-object v9, p0, Lcom/sec/android/glview/TwGLScroll;->mOnScrollListener:Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-interface {v9, v10, v11, v12}, Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;->onScrollBarScroll(FFI)V

    .line 569
    :cond_18
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1b

    .line 570
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mBouncingVelocity:F

    iget v11, p0, Lcom/sec/android/glview/TwGLScroll;->mLandscapeBounceOffset:F

    iget v12, p0, Lcom/sec/android/glview/TwGLScroll;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    .line 583
    :goto_9
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    add-float/2addr v9, v10

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_b

    .line 585
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    .line 586
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    .line 587
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/glview/TwGLScroll;->mBouncing:Z

    goto/16 :goto_5

    .line 549
    .end local v0    # "alpha":F
    .end local v8    # "width":F
    :cond_19
    iget v8, p0, Lcom/sec/android/glview/TwGLScroll;->mContentWidth:F

    goto :goto_7

    .line 551
    .restart local v8    # "width":F
    :cond_1a
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mLandscapeBounceOffset:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mListVisibleWidth:F

    const v11, 0x3e4ccccd    # 0.2f

    mul-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    div-float v0, v9, v10

    goto :goto_8

    .line 573
    .restart local v0    # "alpha":F
    :cond_1b
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mLandscapeBounceOffset:F

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mBounceImageMaxAlphaThreshold:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1c

    .line 574
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mBouncingVelocity:F

    iget v11, p0, Lcom/sec/android/glview/TwGLScroll;->mLandscapeBounceOffset:F

    iget v12, p0, Lcom/sec/android/glview/TwGLScroll;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    goto :goto_9

    .line 576
    :cond_1c
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    const v10, 0x3e99999a    # 0.3f

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mBouncingVelocity:F

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    goto :goto_9

    .line 589
    :cond_1d
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mContentWidth:F

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    add-float/2addr v9, v10

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getContentAreaWidth()F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_b

    .line 593
    iget-object v9, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    if-eqz v9, :cond_1e

    .line 594
    iget-object v9, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    iget-object v10, p0, Lcom/sec/android/glview/TwGLScroll;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    sub-float v10, v8, v10

    iget-object v11, p0, Lcom/sec/android/glview/TwGLScroll;->mPaddings:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/glview/TwGLScroll;->mContentWidth:F

    sub-float/2addr v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FFZ)V

    .line 596
    :cond_1e
    iget-object v9, p0, Lcom/sec/android/glview/TwGLScroll;->mOnScrollListener:Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;

    if-eqz v9, :cond_1f

    .line 597
    iget-object v9, p0, Lcom/sec/android/glview/TwGLScroll;->mOnScrollListener:Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;

    iget-object v10, p0, Lcom/sec/android/glview/TwGLScroll;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    sub-float v10, v8, v10

    iget-object v11, p0, Lcom/sec/android/glview/TwGLScroll;->mPaddings:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/glview/TwGLScroll;->mContentWidth:F

    sub-float/2addr v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-interface {v9, v10, v11, v12}, Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;->onScrollBarScroll(FFI)V

    .line 604
    :cond_1f
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_20

    .line 605
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mBouncingVelocity:F

    iget v11, p0, Lcom/sec/android/glview/TwGLScroll;->mLandscapeBounceOffset:F

    iget v12, p0, Lcom/sec/android/glview/TwGLScroll;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    .line 618
    :goto_a
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mContentWidth:F

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/sec/android/glview/TwGLScroll;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    sub-float v10, v8, v10

    iget-object v11, p0, Lcom/sec/android/glview/TwGLScroll;->mPaddings:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_b

    .line 620
    iget-object v9, p0, Lcom/sec/android/glview/TwGLScroll;->mPaddings:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    sub-float v9, v8, v9

    iget-object v10, p0, Lcom/sec/android/glview/TwGLScroll;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mContentWidth:F

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    .line 621
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    .line 622
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/glview/TwGLScroll;->mBouncing:Z

    goto/16 :goto_5

    .line 608
    :cond_20
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mLandscapeBounceOffset:F

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mBounceImageMaxAlphaThreshold:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_21

    .line 609
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mBouncingVelocity:F

    iget v11, p0, Lcom/sec/android/glview/TwGLScroll;->mLandscapeBounceOffset:F

    iget v12, p0, Lcom/sec/android/glview/TwGLScroll;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    goto :goto_a

    .line 611
    :cond_21
    iget v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    const v10, 0x3e99999a    # 0.3f

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/glview/TwGLScroll;->mBouncingVelocity:F

    add-float/2addr v9, v10

    iput v9, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    goto :goto_a

    .line 653
    .end local v0    # "alpha":F
    .end local v8    # "width":F
    .restart local v1    # "clipRect":Landroid/graphics/Rect;
    .restart local v3    # "i":I
    .restart local v4    # "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/glview/TwGLView;>;"
    .restart local v5    # "matrix":[F
    .restart local v6    # "size":I
    :cond_22
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/glview/TwGLScroll;->mDrawFirstTime:Z

    .line 654
    return-void
.end method

.method public onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "focusStatus"    # I

    .prologue
    const/4 v0, 0x1

    .line 857
    if-ne p2, v0, :cond_0

    .line 858
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollRequested:Z

    .line 859
    iput-object p1, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    .line 861
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onReset()V
    .locals 2

    .prologue
    .line 1076
    iget-object v1, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    .line 1077
    iget-object v1, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->reset()V

    .line 1079
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollLine:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_1

    .line 1080
    iget-object v1, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollLine:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatch;->reset()V

    .line 1082
    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLScroll;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1083
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1084
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->reset()V

    goto :goto_0

    .line 1086
    :cond_2
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 690
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLScroll;->isLock:Z

    if-eqz v0, :cond_0

    .line 691
    const/4 v0, 0x0

    .line 693
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/glview/TwGLScroll;->moveItem(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 849
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLScroll;->isLock:Z

    if-eqz v0, :cond_0

    .line 850
    const/4 v0, 0x0

    .line 852
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public refreshList()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 259
    iput v5, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    .line 260
    iput v5, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    .line 261
    iput v5, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollX:F

    .line 262
    iput v5, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollY:F

    .line 263
    iput v5, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityX:F

    .line 264
    iput v5, p0, Lcom/sec/android/glview/TwGLScroll;->mFlingVelocityY:F

    .line 266
    const/4 v1, 0x0

    .line 268
    .local v1, "offset":F
    iget-object v3, p0, Lcom/sec/android/glview/TwGLScroll;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 269
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 270
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    .line 271
    .local v2, "view":Lcom/sec/android/glview/TwGLView;
    iget v3, p0, Lcom/sec/android/glview/TwGLScroll;->mScroll:I

    if-ne v3, v6, :cond_1

    .line 272
    invoke-virtual {v2, v5, v1, v7}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FFZ)V

    .line 273
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    add-float/2addr v1, v3

    goto :goto_0

    .line 274
    :cond_1
    iget v3, p0, Lcom/sec/android/glview/TwGLScroll;->mScroll:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 275
    invoke-virtual {v2, v1, v5, v7}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FFZ)V

    .line 276
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    add-float/2addr v1, v3

    goto :goto_0

    .line 279
    .end local v2    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_2
    iget v3, p0, Lcom/sec/android/glview/TwGLScroll;->mScroll:I

    if-ne v3, v6, :cond_4

    .line 280
    iput v1, p0, Lcom/sec/android/glview/TwGLScroll;->mContentHeight:F

    .line 284
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 285
    return-void

    .line 281
    :cond_4
    iget v3, p0, Lcom/sec/android/glview/TwGLScroll;->mScroll:I

    if-ne v3, v6, :cond_3

    .line 282
    iput v1, p0, Lcom/sec/android/glview/TwGLScroll;->mContentWidth:F

    goto :goto_1
.end method

.method public setLock(Z)V
    .locals 0
    .param p1, "lock"    # Z

    .prologue
    .line 1104
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLScroll;->isLock:Z

    .line 1105
    return-void
.end method

.method public setOnScrollBarScrollListener(Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/sec/android/glview/TwGLScroll;->mOnScrollListener:Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;

    .line 213
    return-void
.end method

.method public setPosition(FFI)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "type"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1108
    if-nez p3, :cond_1

    .line 1109
    iget-object v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p1, p2, v3}, Lcom/sec/android/glview/TwGLImage;->translate(FFZ)V

    .line 1111
    iget v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    .line 1112
    iget v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1114
    :cond_1
    cmpl-float v0, p1, v1

    if-nez v0, :cond_2

    cmpl-float v0, p2, v1

    if-nez v0, :cond_2

    .line 1115
    iget v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScroll:I

    if-ne v0, v3, :cond_0

    .line 1116
    iput v1, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    .line 1117
    sget v0, Lcom/sec/android/glview/TwGLScroll;->SCROLL_BAR_HEIGHT:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    .line 1118
    iget-object v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/glview/TwGLScroll;->SCROLL_BAR_HEIGHT:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, p1, v1, v3}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FFZ)V

    goto :goto_0

    .line 1123
    :cond_2
    iput v1, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumX:F

    .line 1124
    iput v1, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    .line 1125
    iget-object v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1, v1, v3}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FFZ)V

    goto :goto_0
.end method

.method public setScrollThreshold(F)V
    .locals 3
    .param p1, "scrollThresholdDIP"    # F

    .prologue
    .line 343
    const-string v0, "TwGLScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollThreshold : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iput p1, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollThreshold:F

    .line 346
    return-void
.end method

.method public setScrolling(Z)V
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrolling:Z

    if-eq v0, p1, :cond_0

    .line 362
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLScroll;->mScrolling:Z

    .line 363
    iget-object v0, p0, Lcom/sec/android/glview/TwGLScroll;->mOnScrollListener:Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;

    if-eqz v0, :cond_0

    .line 364
    if-eqz p1, :cond_2

    .line 365
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLScroll;->isLock:Z

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/sec/android/glview/TwGLScroll;->mOnScrollListener:Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;

    invoke-interface {v0}, Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;->onScrollBarScrollStart()V

    .line 372
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 373
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->resetDrag()V

    .line 374
    :cond_1
    return-void

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLScroll;->mOnScrollListener:Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;

    invoke-interface {v0}, Lcom/sec/android/glview/TwGLScroll$OnScrollBarScrollListener;->onScrollBarScrollEnd()V

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 5
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 292
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 294
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLScroll;->checkBoundary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLScroll;->mBouncing:Z

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getHeight()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    sget v1, Lcom/sec/android/glview/TwGLScroll;->SCROLL_BAR_HEIGHT:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLScroll;->mContentHeight:F

    .line 298
    sget v0, Lcom/sec/android/glview/TwGLScroll;->SCROLL_BAR_HEIGHT:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    .line 300
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLScroll;->setVisibleArea()V

    .line 302
    iget-object v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollLine:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/glview/TwGLScroll;->SCROLL_LINE_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/glview/TwGLScroll;->mListVisibleHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 304
    iget-object v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v3, v1}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FFZ)V

    .line 306
    iget-object v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLScroll;->getHeight()F

    move-result v1

    sget v2, Lcom/sec/android/glview/TwGLScroll;->SCROLL_BAR_HEIGHT:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 307
    iget-object v0, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollBar:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLScroll;->mScrollSumY:F

    invoke-virtual {v0, v3, v1, v4}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FFZ)V

    .line 309
    :cond_1
    return-void
.end method
