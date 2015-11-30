.class public Lcom/sec/android/glview/TwGLGridList;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLGridList.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;
.implements Lcom/sec/android/glview/TwGLView$OnFocusListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/TwGLGridList$TwGLListGestureDetectorListener;,
        Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;,
        Lcom/sec/android/glview/TwGLGridList$OnItemSelectedListener;,
        Lcom/sec/android/glview/TwGLGridList$Adapter;
    }
.end annotation


# static fields
.field private static final BOUNCE_DECELERATION_POSITION_DIVIDE_FACTOR:F = 2.0f

.field private static final BOUNCE_EDGE_SIZE:F = 1.0f

.field private static final BOUNCE_EFFECT_IMAGE_DEFAULT_ALPHA:F = 0.0f

.field private static final BOUNCE_IMAGE_FULLY_VISIBLE_THRESHOLD_DIP:F = 100.0f

.field private static final BOUNCE_IMAGE_SIZE:F = 185.0f

.field private static final BOUNCE_SEVERAL_TIMES:Z = false

.field private static final BOUNCE_SMOOTH_LANDING_FACTOR:F = 0.3f

.field private static final BOUNCING_VELOCITY_DIP:F = 3.0f

.field private static final COEFFICIENT_OF_RESTITUTION:F = 0.4f

.field private static final DEFAULT_SCROLLBAR_PADDING:I = 0x1

.field private static final DEFAULT_SCROLL_THRESHOLD_DIP:F = 10.0f

.field private static final DRAG_ATTENUATION_RATE_FACTOR:F = 0.2f

.field private static final DRAG_OUT_DISTANCE_LIMIT_DIP:F = 100.0f

.field private static final FLING_VELOCITY_DIP:F = 0.6f

.field private static final GRID_MENU_SCALE_RATIO:F

.field private static final HIDE_SCROLLBAR:I = 0x1

.field private static final LANDSCAPE_CONTENT_BOTTOM_MARGIN:I

.field private static final LANDSCAPE_CONTENT_COLUMN_GAP:I

.field private static final LANDSCAPE_CONTENT_LEFT_MARGIN:I

.field private static final LANDSCAPE_CONTENT_RIGHT_MARGIN:I

.field private static final LANDSCAPE_CONTENT_ROW_GAP:I

.field private static final LANDSCAPE_CONTENT_TOP_MARGIN:I

.field private static final LANDSCAPE_TOP_MARGIN_FOR_OVERSIZE_CONTENT:I

.field private static final PORTRAIT_CONTENT_BOTTOM_MARGIN:I

.field private static final PORTRAIT_CONTENT_COLUMN_GAP:I

.field private static final PORTRAIT_CONTENT_LEFT_MARGIN:I

.field private static final PORTRAIT_CONTENT_RIGHT_MARGIN:I

.field private static final PORTRAIT_CONTENT_ROW_GAP:I

.field private static final PORTRAIT_CONTENT_TOP_MARGIN:I

.field private static final PORTRAIT_TOP_MARGIN_FOR_OVERSIZE_CONTENT:I

.field private static final SCROLLBAR_ID:I = 0xfffff

.field private static final SCROLLBAR_TIMEOUT:I = 0x3e8

.field public static final SCROLL_LANDSCAPE:I = 0x2

.field public static final SCROLL_NOT_MOVE:I = 0x0

.field public static final SCROLL_PORTRAIT:I = 0x1

.field public static final STACK_DOWN:I = 0x0

.field public static final STACK_RIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TwGLGridList"

.field public static final TYPE_NONE:I = -0x1

.field private static final VELOCITY_MODERATION_RATIO:F = 0.3f

.field private static final VELOCITY_REVISE_LIMIT_DIP:F = 30.0f


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

.field private mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

.field private mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

.field private mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

.field private final mBounceImageMaxAlphaThreshold:F

.field private mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

.field private mBouncing:Z

.field private final mBouncingVelocity:F

.field private mColumns:I

.field private mContentHeight:F

.field private mContentWidth:F

.field private final mDragOutDistanceLimit:F

.field private mFirstFullyVisibleViewIndex:I

.field private final mFlingVelocity:F

.field private mFlingVelocityX:F

.field private mFlingVelocityY:F

.field private mFocusedView:Lcom/sec/android/glview/TwGLView;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLandscapeBounceMaxOffset:F

.field private mLandscapeBounceOffset:F

.field private mLastOrientation:I

.field protected mMainHandler:Landroid/os/Handler;

.field private mOnScrollListener:Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;

.field private mPortraitBounceMaxOffset:F

.field private mPortraitBounceOffset:F

.field private mRows:I

.field private mScroll:I

.field private mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

.field private mScrollBarOffset:F

.field private mScrollBarSize:F

.field private mScrollBarVisible:Z

.field private mScrollPadding:I

.field private mScrollRequested:Z

.field private mScrollSumX:F

.field private mScrollSumY:F

.field private mScrollThreshold:F

.field private mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

.field private mScrollX:F

.field private mScrollY:F

.field private mScrolling:Z

.field private mSelectedIndex:I

.field private mStackOrientation:I

.field private mType:I

.field private final mVelocityLimit:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 224
    const v0, 0x7f0b0005

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/glview/TwGLGridList;->GRID_MENU_SCALE_RATIO:F

    .line 226
    const v0, 0x7f0a005e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_LEFT_MARGIN:I

    .line 227
    const v0, 0x7f0a005f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_TOP_MARGIN:I

    .line 228
    const v0, 0x7f0a0060

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_RIGHT_MARGIN:I

    .line 229
    const v0, 0x7f0a0061

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_BOTTOM_MARGIN:I

    .line 231
    const v0, 0x7f0a006a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_TOP_MARGIN_FOR_OVERSIZE_CONTENT:I

    .line 233
    const v0, 0x7f0a0066

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_ROW_GAP:I

    .line 234
    const v0, 0x7f0a0067

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_COLUMN_GAP:I

    .line 236
    const v0, 0x7f0a0062

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_LEFT_MARGIN:I

    .line 237
    const v0, 0x7f0a0063

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_TOP_MARGIN:I

    .line 238
    const v0, 0x7f0a0064

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_RIGHT_MARGIN:I

    .line 239
    const v0, 0x7f0a0065

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_BOTTOM_MARGIN:I

    .line 241
    const v0, 0x7f0a006b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_TOP_MARGIN_FOR_OVERSIZE_CONTENT:I

    .line 243
    const v0, 0x7f0a0068

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_ROW_GAP:I

    .line 244
    const v0, 0x7f0a0069

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_COLUMN_GAP:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFF)V
    .locals 10
    .param p1, "activitycontext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 349
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 58
    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mStackOrientation:I

    .line 60
    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mLastOrientation:I

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    .line 78
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrolling:Z

    .line 81
    iput v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollThreshold:F

    .line 86
    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollX:F

    .line 89
    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollY:F

    .line 92
    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    .line 95
    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    .line 98
    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    .line 101
    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    .line 104
    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    .line 107
    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    .line 110
    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceMaxOffset:F

    .line 113
    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceMaxOffset:F

    .line 133
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarVisible:Z

    .line 136
    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarSize:F

    .line 139
    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarOffset:F

    .line 159
    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    .line 162
    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    .line 174
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    .line 207
    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollPadding:I

    .line 209
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollRequested:Z

    .line 213
    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mFirstFullyVisibleViewIndex:I

    .line 219
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLGridList;->mType:I

    .line 220
    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mSelectedIndex:I

    .line 246
    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mRows:I

    .line 247
    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    .line 250
    new-instance v0, Lcom/sec/android/glview/TwGLGridList$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLGridList$1;-><init>(Lcom/sec/android/glview/TwGLGridList;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mMainHandler:Landroid/os/Handler;

    .line 1896
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mFocusedView:Lcom/sec/android/glview/TwGLView;

    .line 350
    iput-object p1, p0, Lcom/sec/android/glview/TwGLGridList;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 352
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v8

    iput v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollThreshold:F

    .line 353
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocity:F

    .line 354
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBouncingVelocity:F

    .line 355
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v9

    iput v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    .line 356
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLGridList;->mVelocityLimit:F

    .line 357
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v9

    iput v0, p0, Lcom/sec/android/glview/TwGLGridList;->mDragOutDistanceLimit:F

    .line 362
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/glview/TwGLGridList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLGridList;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/glview/TwGLGridList;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLGridList;

    .prologue
    .line 42
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/glview/TwGLGridList;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLGridList;
    .param p1, "x1"    # F

    .prologue
    .line 42
    iput p1, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    return p1
.end method

.method static synthetic access$302(Lcom/sec/android/glview/TwGLGridList;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLGridList;
    .param p1, "x1"    # F

    .prologue
    .line 42
    iput p1, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/glview/TwGLGridList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLGridList;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLGridList;->checkBoundary()Z

    move-result v0

    return v0
.end method

.method private checkBoundary()Z
    .locals 7

    .prologue
    const v6, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    .line 1574
    const/4 v1, 0x0

    .line 1575
    .local v1, "ret":Z
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1576
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 1578
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    .line 1579
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 1580
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    .line 1582
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mVelocityLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 1583
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    .line 1584
    .local v0, "originalVelocity":F
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mVelocityLimit:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mVelocityLimit:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    .line 1585
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    .line 1586
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    .line 1589
    .end local v0    # "originalVelocity":F
    :cond_0
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceMaxOffset:F

    .line 1591
    :cond_1
    const/4 v1, 0x1

    .line 1650
    :cond_2
    :goto_0
    return v1

    .line 1592
    :cond_3
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 1594
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    .line 1595
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 1596
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_4

    .line 1598
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mVelocityLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 1599
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    .line 1600
    .restart local v0    # "originalVelocity":F
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mVelocityLimit:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mVelocityLimit:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    neg-float v2, v2

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    .line 1601
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    .line 1602
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    .line 1605
    .end local v0    # "originalVelocity":F
    :cond_4
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceMaxOffset:F

    .line 1607
    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    .line 1609
    :cond_6
    iput v5, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    .line 1610
    iput v5, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceMaxOffset:F

    goto :goto_0

    .line 1612
    :cond_7
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1613
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_a

    .line 1615
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    .line 1616
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    .line 1617
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_8

    .line 1619
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mVelocityLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 1620
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    .line 1621
    .restart local v0    # "originalVelocity":F
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mVelocityLimit:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mVelocityLimit:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    .line 1622
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    .line 1623
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    .line 1626
    .end local v0    # "originalVelocity":F
    :cond_8
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceMaxOffset:F

    .line 1628
    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1629
    :cond_a
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_d

    .line 1631
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    .line 1632
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_c

    .line 1633
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_b

    .line 1635
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mVelocityLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    .line 1636
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    .line 1637
    .restart local v0    # "originalVelocity":F
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mVelocityLimit:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mVelocityLimit:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    neg-float v2, v2

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    .line 1638
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    .line 1639
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    .line 1642
    .end local v0    # "originalVelocity":F
    :cond_b
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceMaxOffset:F

    .line 1644
    :cond_c
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1646
    :cond_d
    iput v5, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    .line 1647
    iput v5, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceMaxOffset:F

    goto/16 :goto_0
.end method

.method private setScrollBarLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 531
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_1

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mStackOrientation:I

    if-nez v0, :cond_4

    .line 535
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_3

    .line 539
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getRight()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getLeft()F

    move-result v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v4

    iget-object v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    .line 543
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarSize:F

    .line 544
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarSize:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 557
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    mul-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    mul-float/2addr v2, v3

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    .line 558
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarVisible:Z

    goto :goto_0

    .line 541
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getRight()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getLeft()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    goto :goto_1

    .line 545
    :cond_4
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mStackOrientation:I

    if-ne v0, v5, :cond_2

    .line 546
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_5

    .line 550
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v4

    iget-object v3, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    .line 554
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarSize:F

    .line 555
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget v1, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarSize:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    goto/16 :goto_2

    .line 552
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v4

    iget-object v3, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    goto :goto_3
.end method

.method private setVisibleArea()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v2, 0x43390000    # 185.0f

    .line 494
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mStackOrientation:I

    if-nez v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 497
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 498
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v1

    sub-float/2addr v1, v2

    sub-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 499
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 500
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 501
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v1

    sub-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mStackOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 504
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getHeight()F

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 506
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getHeight()F

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 507
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v1

    sub-float/2addr v1, v2

    sub-float/2addr v1, v4

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 508
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 509
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 510
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v1

    sub-float/2addr v1, v4

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    goto :goto_0
.end method


# virtual methods
.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 783
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 784
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1803
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_0

    .line 1804
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->clear()V

    .line 1805
    iput-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    .line 1807
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 1808
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 1809
    iput-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    .line 1811
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_2

    .line 1812
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 1813
    iput-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    .line 1815
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_3

    .line 1816
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 1817
    iput-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    .line 1819
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_4

    .line 1820
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 1821
    iput-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    .line 1824
    :cond_4
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1825
    return-void
.end method

.method public contains(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 471
    const/4 v0, 0x0

    .line 473
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0
.end method

.method public estimateContentArea()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 820
    iget-object v2, p0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mRows:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    if-nez v2, :cond_2

    .line 821
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v2

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    .line 822
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v2

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    .line 843
    :cond_1
    :goto_0
    return-void

    .line 826
    :cond_2
    iget-object v2, p0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sget v3, Lcom/sec/android/glview/TwGLGridList;->GRID_MENU_SCALE_RATIO:F

    mul-float v1, v2, v3

    .line 827
    .local v1, "viewWidth":F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    sget v3, Lcom/sec/android/glview/TwGLGridList;->GRID_MENU_SCALE_RATIO:F

    mul-float v0, v2, v3

    .line 829
    .local v0, "viewHeight":F
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLastOrientation:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    .line 830
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    sget v3, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_COLUMN_GAP:I

    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_LEFT_MARGIN:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_RIGHT_MARGIN:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    .line 831
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mRows:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sget v3, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_ROW_GAP:I

    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mRows:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    .line 832
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 833
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    sget v3, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_TOP_MARGIN_FOR_OVERSIZE_CONTENT:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    .line 841
    :cond_3
    :goto_1
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 842
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v2

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    goto :goto_0

    .line 835
    :cond_4
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    sget v3, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_COLUMN_GAP:I

    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_LEFT_MARGIN:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_RIGHT_MARGIN:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    .line 836
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mRows:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sget v3, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_ROW_GAP:I

    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mRows:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    .line 837
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 838
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    sget v3, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_TOP_MARGIN_FOR_OVERSIZE_CONTENT:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    goto :goto_1
.end method

.method public estimateRowColumn()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 795
    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 796
    :cond_0
    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mRows:I

    .line 797
    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    .line 798
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->estimateContentArea()V

    .line 817
    :goto_0
    return-void

    .line 802
    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    sget v2, Lcom/sec/android/glview/TwGLGridList;->GRID_MENU_SCALE_RATIO:F

    mul-float v0, v1, v2

    .line 804
    .local v0, "viewWidth":F
    iget v1, p0, Lcom/sec/android/glview/TwGLGridList;->mLastOrientation:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 805
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v1

    sget v2, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_LEFT_MARGIN:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_RIGHT_MARGIN:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_COLUMN_GAP:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    .line 806
    iget v1, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    sget v2, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_COLUMN_GAP:I

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v2

    sget v3, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_LEFT_MARGIN:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_RIGHT_MARGIN:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    .line 807
    iget v1, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    .line 814
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    div-int/2addr v1, v2

    :goto_2
    iput v1, p0, Lcom/sec/android/glview/TwGLGridList;->mRows:I

    .line 816
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->estimateContentArea()V

    goto :goto_0

    .line 809
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v1

    sget v2, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_LEFT_MARGIN:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_RIGHT_MARGIN:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_COLUMN_GAP:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    .line 810
    iget v1, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    sget v2, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_COLUMN_GAP:I

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v2

    sget v3, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_LEFT_MARGIN:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_RIGHT_MARGIN:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    .line 811
    iget v1, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    goto :goto_1

    .line 814
    :cond_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;
    .locals 2
    .param p1, "focusedView"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "direction"    # I

    .prologue
    .line 1715
    const/4 v0, 0x0

    .line 1719
    .local v0, "newDirection":I
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getCenterPivot()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1720
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1771
    move v0, p2

    .line 1775
    :cond_0
    :goto_0
    invoke-super {p0, p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    return-object v1

    .line 1722
    :pswitch_0
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 1724
    :sswitch_0
    const/16 v0, 0x82

    .line 1725
    goto :goto_0

    .line 1727
    :sswitch_1
    const/16 v0, 0x21

    .line 1728
    goto :goto_0

    .line 1730
    :sswitch_2
    const/16 v0, 0x11

    .line 1731
    goto :goto_0

    .line 1733
    :sswitch_3
    const/16 v0, 0x42

    goto :goto_0

    .line 1738
    :pswitch_1
    sparse-switch p2, :sswitch_data_1

    goto :goto_0

    .line 1740
    :sswitch_4
    const/16 v0, 0x42

    .line 1741
    goto :goto_0

    .line 1743
    :sswitch_5
    const/16 v0, 0x11

    .line 1744
    goto :goto_0

    .line 1746
    :sswitch_6
    const/16 v0, 0x82

    .line 1747
    goto :goto_0

    .line 1749
    :sswitch_7
    const/16 v0, 0x21

    goto :goto_0

    .line 1754
    :pswitch_2
    sparse-switch p2, :sswitch_data_2

    goto :goto_0

    .line 1756
    :sswitch_8
    const/16 v0, 0x21

    .line 1757
    goto :goto_0

    .line 1759
    :sswitch_9
    const/16 v0, 0x82

    .line 1760
    goto :goto_0

    .line 1762
    :sswitch_a
    const/16 v0, 0x42

    .line 1763
    goto :goto_0

    .line 1765
    :sswitch_b
    const/16 v0, 0x11

    goto :goto_0

    .line 1720
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1722
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch

    .line 1738
    :sswitch_data_1
    .sparse-switch
        0x11 -> :sswitch_4
        0x21 -> :sswitch_6
        0x42 -> :sswitch_5
        0x82 -> :sswitch_7
    .end sparse-switch

    .line 1754
    :sswitch_data_2
    .sparse-switch
        0x11 -> :sswitch_8
        0x21 -> :sswitch_a
        0x42 -> :sswitch_9
        0x82 -> :sswitch_b
    .end sparse-switch
.end method

.method public get(I)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 846
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLView;

    return-object v0
.end method

.method public getContentHeight()F
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    return v0
.end method

.method public getContentWidth()F
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    return v0
.end method

.method public getFirstFullyVisibleViewIndex()I
    .locals 1

    .prologue
    .line 516
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mFirstFullyVisibleViewIndex:I

    return v0
.end method

.method public getLastOrientation()I
    .locals 1

    .prologue
    .line 2000
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mLastOrientation:I

    return v0
.end method

.method public getScrollThreshold()F
    .locals 1

    .prologue
    .line 585
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollThreshold:F

    return v0
.end method

.method protected hideScrollBar()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 620
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getScrollBarAutoHide()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_1

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 624
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->restartScrollBarTimer()V

    goto :goto_0

    .line 627
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_4

    .line 628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarVisible:Z

    goto :goto_0

    .line 632
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 633
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    new-instance v1, Lcom/sec/android/glview/TwGLGridList$2;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLGridList$2;-><init>(Lcom/sec/android/glview/TwGLGridList;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 643
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->startAnimation()V

    goto :goto_0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    iget v1, p0, Lcom/sec/android/glview/TwGLGridList;->mStackOrientation:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLGridList;->setAdapter(Lcom/sec/android/glview/TwGLGridList$Adapter;I)V

    .line 775
    return-void
.end method

.method public declared-synchronized moveItem(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1350
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 1351
    .local v3, "et":Landroid/view/MotionEvent;
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mTransformedScreenCoordinate:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/sec/android/glview/TwGLGridList;->mapPointReverse([FFF)V

    .line 1352
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mTransformedScreenCoordinate:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, p0, Lcom/sec/android/glview/TwGLGridList;->mTransformedScreenCoordinate:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v3, v7, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1354
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLGridList;->checkBoundary()Z

    move-result v5

    .line 1356
    .local v5, "mBoundary":Z
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v7, :cond_0

    .line 1357
    new-instance v7, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Lcom/sec/android/glview/TwGLGridList$TwGLListGestureDetectorListener;

    invoke-direct {v9, p0}, Lcom/sec/android/glview/TwGLGridList$TwGLListGestureDetectorListener;-><init>(Lcom/sec/android/glview/TwGLGridList;)V

    invoke-direct {v7, v8, v9}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mGestureDetector:Landroid/view/GestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1360
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, v3}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1361
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1362
    const/4 v7, 0x1

    .line 1553
    :goto_0
    monitor-exit p0

    return v7

    .line 1364
    :catch_0
    move-exception v7

    .line 1368
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_2

    .line 1369
    const-string v7, "TwGLGridList"

    const-string v8, "ACTION_DOWN"

    invoke-static {v7, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollX:F

    .line 1372
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollY:F

    .line 1373
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    .line 1374
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    .line 1375
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 1376
    const/4 v7, 0x0

    goto :goto_0

    .line 1379
    :cond_2
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrolling:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mDragging:Z

    if-nez v7, :cond_5

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 1380
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 1381
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollY:F

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollThreshold:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    .line 1383
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLGridList;->setScrolling(Z)V

    .line 1384
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1387
    :cond_3
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    and-int/lit8 v7, v7, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 1388
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollX:F

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollThreshold:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    .line 1390
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLGridList;->setScrolling(Z)V

    .line 1391
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1394
    :cond_4
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 1395
    const/4 v7, 0x0

    goto :goto_0

    .line 1398
    :cond_5
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrolling:Z

    if-eqz v7, :cond_24

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mDragging:Z

    if-nez v7, :cond_24

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_24

    .line 1399
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_f

    .line 1400
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollY:F

    sub-float v1, v7, v8

    .line 1401
    .local v1, "delta":F
    move v2, v1

    .line 1403
    .local v2, "deltaForContents":F
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-gez v7, :cond_6

    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_8

    .line 1405
    :cond_6
    const/4 v2, 0x0

    .line 1416
    :cond_7
    :goto_1
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1417
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1418
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/glview/TwGLView;

    .line 1419
    .local v6, "view":Lcom/sec/android/glview/TwGLView;
    if-nez v5, :cond_a

    .line 1420
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v2, v8}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1350
    .end local v1    # "delta":F
    .end local v2    # "deltaForContents":F
    .end local v3    # "et":Landroid/view/MotionEvent;
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    .end local v5    # "mBoundary":Z
    .end local v6    # "view":Lcom/sec/android/glview/TwGLView;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1406
    .restart local v1    # "delta":F
    .restart local v2    # "deltaForContents":F
    .restart local v3    # "et":Landroid/view/MotionEvent;
    .restart local v5    # "mBoundary":Z
    :cond_8
    :try_start_3
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v7, v1

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_9

    .line 1408
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    sub-float v2, v1, v7

    .line 1409
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    goto :goto_1

    .line 1410
    :cond_9
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v7, v8

    add-float/2addr v7, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_7

    .line 1412
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v7, v8

    sub-float v2, v1, v7

    .line 1413
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    goto :goto_1

    .line 1422
    .restart local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    .restart local v6    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_a
    const/4 v7, 0x0

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v8, v2

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_2

    .line 1426
    .end local v6    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_b
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mOnScrollListener:Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;

    if-eqz v7, :cond_c

    .line 1427
    if-nez v5, :cond_12

    .line 1428
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mOnScrollListener:Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v7, v8, v2, v9}, Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;->onGridScroll(FFI)V

    .line 1435
    :cond_c
    :goto_3
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarVisible:Z

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v7, :cond_d

    .line 1436
    if-nez v5, :cond_13

    .line 1437
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    div-float/2addr v7, v8

    mul-float/2addr v7, v2

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarOffset:F

    .line 1441
    :goto_4
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarOffset:F

    neg-float v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLNinePatch;->translate(FF)V

    .line 1445
    :cond_d
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_e

    .line 1447
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iget-object v8, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v8

    iget v9, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1448
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget-object v8, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v8

    iget v9, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1449
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v9

    iget v10, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 1453
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_14

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1454
    .local v0, "alpha":F
    :goto_5
    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v7, v0

    const/4 v8, 0x0

    add-float v0, v7, v8

    .line 1455
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_15

    .line 1456
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1457
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1463
    .end local v0    # "alpha":F
    :cond_e
    :goto_6
    if-nez v5, :cond_16

    .line 1464
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v7, v1

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    .line 1468
    :goto_7
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollY:F

    .line 1470
    .end local v1    # "delta":F
    .end local v2    # "deltaForContents":F
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_f
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    and-int/lit8 v7, v7, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1e

    .line 1471
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollX:F

    sub-float v1, v7, v8

    .line 1472
    .restart local v1    # "delta":F
    move v2, v1

    .line 1474
    .restart local v2    # "deltaForContents":F
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-gez v7, :cond_10

    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_17

    .line 1476
    :cond_10
    const/4 v2, 0x0

    .line 1488
    :cond_11
    :goto_8
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1489
    .restart local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 1490
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/glview/TwGLView;

    .line 1491
    .restart local v6    # "view":Lcom/sec/android/glview/TwGLView;
    if-nez v5, :cond_19

    .line 1492
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v7, v8}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_9

    .line 1430
    .end local v6    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_12
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mOnScrollListener:Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;

    const/4 v8, 0x0

    const v9, 0x3e4ccccd    # 0.2f

    mul-float/2addr v9, v2

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v10}, Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;->onGridScroll(FFI)V

    goto/16 :goto_3

    .line 1439
    :cond_13
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    div-float/2addr v7, v8

    mul-float/2addr v7, v2

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarOffset:F

    goto/16 :goto_4

    .line 1453
    :cond_14
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    div-float v0, v7, v8

    goto/16 :goto_5

    .line 1458
    .restart local v0    # "alpha":F
    :cond_15
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getHeight()F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_e

    .line 1459
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1460
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    goto/16 :goto_6

    .line 1466
    .end local v0    # "alpha":F
    :cond_16
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    goto/16 :goto_7

    .line 1477
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_17
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v7, v1

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_18

    .line 1479
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    sub-float v2, v1, v7

    .line 1480
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    goto/16 :goto_8

    .line 1481
    :cond_18
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v7, v8

    add-float/2addr v7, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_11

    .line 1483
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v7, v8

    sub-float v2, v1, v7

    .line 1484
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    goto/16 :goto_8

    .line 1494
    .restart local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    .restart local v6    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_19
    const v7, 0x3e4ccccd    # 0.2f

    mul-float/2addr v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto/16 :goto_9

    .line 1498
    .end local v6    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_1a
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mOnScrollListener:Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;

    if-eqz v7, :cond_1b

    .line 1499
    if-nez v5, :cond_1f

    .line 1500
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mOnScrollListener:Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v7, v2, v8, v9}, Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;->onGridScroll(FFI)V

    .line 1507
    :cond_1b
    :goto_a
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarVisible:Z

    if-eqz v7, :cond_1c

    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v7, :cond_1c

    .line 1508
    if-nez v5, :cond_20

    .line 1509
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    div-float/2addr v7, v8

    mul-float/2addr v7, v2

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarOffset:F

    .line 1513
    :goto_b
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarOffset:F

    neg-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLNinePatch;->translate(FF)V

    .line 1515
    :cond_1c
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_1d

    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_1d

    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_1d

    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_1d

    .line 1517
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    iget-object v9, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1518
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1519
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v8

    iget v9, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float/2addr v8, v9

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 1522
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v8

    const v9, 0x3dcccccd    # 0.1f

    mul-float/2addr v8, v9

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_21

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1524
    .restart local v0    # "alpha":F
    :goto_c
    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v7, v0

    const/4 v8, 0x0

    add-float v0, v7, v8

    .line 1526
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_22

    .line 1527
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1532
    .end local v0    # "alpha":F
    :cond_1d
    :goto_d
    if-nez v5, :cond_23

    .line 1533
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v7, v1

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    .line 1537
    :goto_e
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollX:F

    .line 1539
    .end local v1    # "delta":F
    .end local v2    # "deltaForContents":F
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_1e
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 1540
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1502
    .restart local v1    # "delta":F
    .restart local v2    # "deltaForContents":F
    .restart local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_1f
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mOnScrollListener:Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v10}, Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;->onGridScroll(FFI)V

    goto/16 :goto_a

    .line 1511
    :cond_20
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    div-float/2addr v7, v8

    mul-float/2addr v7, v2

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarOffset:F

    goto/16 :goto_b

    .line 1522
    :cond_21
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v8

    const v9, 0x3e4ccccd    # 0.2f

    mul-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    div-float v0, v7, v8

    goto :goto_c

    .line 1528
    .restart local v0    # "alpha":F
    :cond_22
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getWidth()F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1d

    .line 1529
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    goto :goto_d

    .line 1535
    .end local v0    # "alpha":F
    :cond_23
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    goto :goto_e

    .line 1543
    .end local v1    # "delta":F
    .end local v2    # "deltaForContents":F
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_24
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrolling:Z

    if-eqz v7, :cond_26

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_25

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_26

    .line 1544
    :cond_25
    const-string v7, "TwGLGridList"

    const-string v8, "ACTION_UP"

    invoke-static {v7, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLGridList;->setScrolling(Z)V

    .line 1546
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    .line 1547
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1548
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 1549
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1550
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1552
    :cond_26
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1553
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 1277
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->onAlphaUpdated()V

    .line 1278
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->onAlphaUpdated()V

    .line 1281
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 1282
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->onAlphaUpdated()V

    .line 1284
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 1285
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->onAlphaUpdated()V

    .line 1287
    :cond_2
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
    .line 1301
    invoke-virtual {p0, p4, p5}, Lcom/sec/android/glview/TwGLGridList;->translate(FF)V

    .line 1302
    return-void
.end method

.method public onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 1309
    return-void
.end method

.method public onDragStart(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 1294
    return-void
.end method

.method protected declared-synchronized onDraw()V
    .locals 17

    .prologue
    .line 935
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollRequested:Z

    if-eqz v12, :cond_0

    .line 936
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->scrollToVisible()Z

    .line 938
    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    .line 939
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    .line 941
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->checkBoundary()Z

    move-result v12

    if-nez v12, :cond_c

    .line 943
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 944
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 945
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/glview/TwGLView;

    .line 946
    .local v10, "view":Lcom/sec/android/glview/TwGLView;
    if-eqz v10, :cond_1

    .line 950
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    const/4 v14, 0x0

    invoke-virtual {v10, v12, v13, v14}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 935
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    .end local v10    # "view":Lcom/sec/android/glview/TwGLView;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 953
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarVisible:Z

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_3

    .line 954
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    mul-float/2addr v13, v14

    neg-float v13, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    mul-float/2addr v14, v15

    neg-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLNinePatch;->translate(FFZ)V

    .line 957
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_4

    .line 958
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 959
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 960
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 961
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 965
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_a

    .line 966
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocity:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    .line 967
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    .line 968
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    .line 974
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_b

    .line 975
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocity:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    .line 976
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_6

    .line 977
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    .line 1236
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_8

    .line 1237
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1239
    :cond_8
    const/4 v2, 0x0

    .line 1240
    .local v2, "checked":Z
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->getMatrix()[F

    move-result-object v8

    .line 1241
    .local v8, "matrix":[F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1244
    .local v3, "clipRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1245
    .local v7, "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/glview/TwGLView;>;"
    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    .line 1246
    .local v9, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v9, :cond_2f

    .line 1247
    invoke-virtual {v7, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/glview/TwGLView;

    .line 1249
    .restart local v10    # "view":Lcom/sec/android/glview/TwGLView;
    if-nez v2, :cond_9

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLView;->isClipped()Z

    move-result v12

    if-nez v12, :cond_9

    .line 1250
    if-nez v5, :cond_2e

    .line 1251
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFirstFullyVisibleViewIndex:I

    .line 1252
    const/4 v2, 0x1

    .line 1258
    :cond_9
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->clip()V

    .line 1260
    invoke-virtual {v10, v8, v3}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    .line 1262
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->clearClip()V

    .line 1246
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 970
    .end local v2    # "checked":Z
    .end local v3    # "clipRect":Landroid/graphics/Rect;
    .end local v5    # "i":I
    .end local v7    # "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/glview/TwGLView;>;"
    .end local v8    # "matrix":[F
    .end local v9    # "size":I
    .end local v10    # "view":Lcom/sec/android/glview/TwGLView;
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_a
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocity:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    .line 971
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_5

    .line 972
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    goto/16 :goto_1

    .line 979
    :cond_b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocity:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    .line 980
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_6

    .line 981
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    goto/16 :goto_2

    .line 983
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    if-eqz v12, :cond_27

    .line 985
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_19

    .line 986
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->getHeight()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->getHeight()F

    move-result v4

    .line 988
    .local v4, "height":F
    :goto_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    div-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_e

    const/high16 v1, 0x3f800000    # 1.0f

    .line 989
    .local v1, "alpha":F
    :goto_6
    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v12, v1

    const/4 v13, 0x0

    add-float v1, v12, v13

    .line 991
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_14

    .line 994
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 995
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 996
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLView;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_7

    .line 986
    .end local v1    # "alpha":F
    .end local v4    # "height":F
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    goto :goto_5

    .line 988
    .restart local v4    # "height":F
    :cond_e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    div-float v1, v12, v13

    goto :goto_6

    .line 1003
    .restart local v1    # "alpha":F
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarVisible:Z

    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_10

    .line 1004
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FFZ)V

    .line 1007
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1008
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1013
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_12

    .line 1014
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000    # 1.0f

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    .line 1027
    :goto_8
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    add-float/2addr v12, v13

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_11

    .line 1034
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    .line 1035
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    .line 1036
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    .line 1195
    .end local v1    # "alpha":F
    .end local v4    # "height":F
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_11
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    if-nez v12, :cond_6

    .line 1197
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1198
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_25

    .line 1199
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_a

    .line 1017
    .restart local v1    # "alpha":F
    .restart local v4    # "height":F
    :cond_12
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_13

    .line 1018
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000    # 1.0f

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    goto :goto_8

    .line 1020
    :cond_13
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    const v13, 0x3e99999a    # 0.3f

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncingVelocity:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    goto :goto_8

    .line 1039
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_14
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_11

    .line 1042
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1043
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_15

    .line 1044
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLView;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    sub-float v14, v4, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    sub-float/2addr v14, v15

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_b

    .line 1051
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarVisible:Z

    if-eqz v12, :cond_16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_16

    .line 1052
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    sub-float v15, v4, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    neg-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FFZ)V

    .line 1055
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    sub-float/2addr v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 1058
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1063
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_17

    .line 1064
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000    # 1.0f

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    .line 1077
    :goto_c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    sub-float v13, v4, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_11

    .line 1084
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    sub-float v12, v4, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    .line 1085
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    .line 1086
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    goto/16 :goto_9

    .line 1067
    :cond_17
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_18

    .line 1068
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000    # 1.0f

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    goto :goto_c

    .line 1070
    :cond_18
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    const v13, 0x3e99999a    # 0.3f

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncingVelocity:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    goto/16 :goto_c

    .line 1090
    .end local v1    # "alpha":F
    .end local v4    # "height":F
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_19
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_11

    .line 1091
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->getWidth()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->getWidth()F

    move-result v11

    .line 1093
    .local v11, "width":F
    :goto_d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v13

    const v14, 0x3dcccccd    # 0.1f

    mul-float/2addr v13, v14

    div-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1b

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1095
    .restart local v1    # "alpha":F
    :goto_e
    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v12, v1

    const/4 v13, 0x0

    add-float v1, v12, v13

    .line 1097
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_20

    .line 1100
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1101
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 1102
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLView;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_f

    .line 1091
    .end local v1    # "alpha":F
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    .end local v11    # "width":F
    :cond_1a
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    goto :goto_d

    .line 1093
    .restart local v11    # "width":F
    :cond_1b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v13

    const v14, 0x3e4ccccd    # 0.2f

    mul-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    div-float v1, v12, v13

    goto :goto_e

    .line 1104
    .restart local v1    # "alpha":F
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_1c
    const-string v12, "TwGLGridList"

    const-string v13, "mScrollSumX -- translateAbolute1 = 0"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarVisible:Z

    if-eqz v12, :cond_1d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_1d

    .line 1109
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FFZ)V

    .line 1112
    :cond_1d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1113
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1118
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1e

    .line 1119
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000    # 1.0f

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    .line 1132
    :goto_10
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    add-float/2addr v12, v13

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_11

    .line 1139
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    .line 1140
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    .line 1141
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    goto/16 :goto_9

    .line 1122
    :cond_1e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1f

    .line 1123
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000    # 1.0f

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    goto :goto_10

    .line 1125
    :cond_1f
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    const v13, 0x3e99999a    # 0.3f

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncingVelocity:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    goto :goto_10

    .line 1144
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_20
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_11

    .line 1147
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1148
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_21

    .line 1149
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    sub-float v13, v11, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    sub-float/2addr v13, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_11

    .line 1155
    :cond_21
    const-string v12, "TwGLGridList"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mScrollSumX -- translateAbolute2= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    sub-float v14, v11, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    sub-float/2addr v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarVisible:Z

    if-eqz v12, :cond_22

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_22

    .line 1157
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    sub-float v14, v11, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    sub-float/2addr v14, v15

    mul-float/2addr v13, v14

    neg-float v13, v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FFZ)V

    .line 1160
    :cond_22
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1162
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    sub-float/2addr v13, v14

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 1167
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_23

    .line 1168
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000    # 1.0f

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    .line 1181
    :goto_12
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    sub-float v13, v11, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_11

    .line 1188
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    sub-float v12, v11, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    .line 1189
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    .line 1190
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    goto/16 :goto_9

    .line 1171
    :cond_23
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_24

    .line 1172
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000    # 1.0f

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    goto :goto_12

    .line 1174
    :cond_24
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    const v13, 0x3e99999a    # 0.3f

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncingVelocity:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    goto/16 :goto_12

    .line 1207
    .end local v1    # "alpha":F
    .end local v11    # "width":F
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarVisible:Z

    if-eqz v12, :cond_26

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_26

    .line 1208
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    mul-float/2addr v13, v14

    neg-float v13, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    mul-float/2addr v14, v15

    neg-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FFZ)V

    .line 1210
    :cond_26
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1211
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1212
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1213
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1214
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    goto/16 :goto_2

    .line 1218
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_27
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2b

    .line 1219
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_29

    .line 1220
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    .line 1233
    :cond_28
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    goto/16 :goto_2

    .line 1221
    :cond_29
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_28

    .line 1222
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->getHeight()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->getHeight()F

    move-result v4

    .line 1223
    .restart local v4    # "height":F
    :goto_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    sub-float v12, v4, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    goto :goto_13

    .line 1222
    .end local v4    # "height":F
    :cond_2a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    goto :goto_14

    .line 1225
    :cond_2b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_28

    .line 1226
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2c

    .line 1227
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    goto :goto_13

    .line 1228
    :cond_2c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_28

    .line 1229
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->getWidth()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->getWidth()F

    move-result v11

    .line 1230
    .restart local v11    # "width":F
    :goto_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    sub-float v12, v11, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    goto/16 :goto_13

    .line 1229
    .end local v11    # "width":F
    :cond_2d
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    goto :goto_15

    .line 1253
    .restart local v2    # "checked":Z
    .restart local v3    # "clipRect":Landroid/graphics/Rect;
    .restart local v5    # "i":I
    .restart local v7    # "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/glview/TwGLView;>;"
    .restart local v8    # "matrix":[F
    .restart local v9    # "size":I
    .restart local v10    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_2e
    add-int/lit8 v12, v5, -0x1

    invoke-virtual {v7, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLView;->isClipped()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1254
    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/glview/TwGLGridList;->mFirstFullyVisibleViewIndex:I

    .line 1255
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 1265
    .end local v10    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_30

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarVisible:Z

    if-eqz v12, :cond_30

    .line 1266
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->clip()V

    .line 1268
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v12, v8, v3}, Lcom/sec/android/glview/TwGLNinePatch;->draw([FLandroid/graphics/Rect;)V

    .line 1270
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->clearClip()V

    .line 1272
    :cond_30
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mDrawFirstTime:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1273
    monitor-exit p0

    return-void
.end method

.method public onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "focusStatus"    # I

    .prologue
    const/4 v0, 0x1

    .line 1558
    if-ne p2, v0, :cond_0

    .line 1559
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollRequested:Z

    .line 1560
    iput-object p1, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    .line 1562
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onReset()V
    .locals 2

    .prologue
    .line 1780
    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_0

    .line 1781
    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatch;->reset()V

    .line 1782
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_1

    .line 1783
    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->reset()V

    .line 1785
    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_2

    .line 1786
    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->reset()V

    .line 1788
    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_3

    .line 1789
    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->reset()V

    .line 1791
    :cond_3
    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_4

    .line 1792
    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->reset()V

    .line 1795
    :cond_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1796
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1797
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->reset()V

    goto :goto_0

    .line 1799
    :cond_5
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 1315
    iget-object v2, p0, Lcom/sec/android/glview/TwGLGridList;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v2, :cond_0

    .line 1316
    const-string v2, "TwGLGridList"

    const-string v3, "onTouch return false mActivityContext is null"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    :goto_0
    return v1

    .line 1320
    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLGridList;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1321
    const-string v2, "TwGLGridList"

    const-string v3, "onTouch return false getCameraSettings() is null"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1325
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLGridList;->mAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mSelectedIndex:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    .line 1327
    .local v0, "mTemp":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    iget-object v2, p0, Lcom/sec/android/glview/TwGLGridList;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v2

    const/16 v3, 0xcb

    if-eq v2, v3, :cond_2

    .line 1328
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 1329
    if-eqz v0, :cond_2

    .line 1330
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setSelect(Z)V

    .line 1338
    :cond_2
    :goto_1
    invoke-virtual {p0, p2}, Lcom/sec/android/glview/TwGLGridList;->moveItem(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 1332
    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLGridList;->mScrolling:Z

    if-eqz v1, :cond_2

    .line 1333
    if-eqz v0, :cond_2

    .line 1334
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setSelect(Z)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1346
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLGridList;->moveItem(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public refreshItemPosition()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 1836
    iget-object v4, p0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1894
    :cond_0
    :goto_0
    return-void

    .line 1840
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->estimateRowColumn()V

    .line 1842
    const/4 v1, 0x0

    .line 1843
    .local v1, "left":F
    const/4 v2, 0x0

    .line 1845
    .local v2, "top":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 1846
    iget-object v4, p0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    .line 1848
    .local v3, "view":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    const-wide/16 v4, 0x5

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1853
    :goto_2
    if-eqz v3, :cond_0

    .line 1856
    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1857
    invoke-virtual {v3, v10}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setSelect(Z)V

    .line 1858
    iput v0, p0, Lcom/sec/android/glview/TwGLGridList;->mSelectedIndex:I

    .line 1863
    :goto_3
    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->resetScale()V

    .line 1865
    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mLastOrientation:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_4

    .line 1866
    iget-object v4, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    rem-int v5, v0, v5

    int-to-float v5, v5

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getWidth()F

    move-result v6

    sget v7, Lcom/sec/android/glview/TwGLGridList;->GRID_MENU_SCALE_RATIO:F

    mul-float/2addr v6, v7

    sget v7, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_COLUMN_GAP:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_LEFT_MARGIN:I

    int-to-float v5, v5

    add-float v1, v4, v5

    .line 1867
    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 1868
    iget-object v4, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sget v5, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_TOP_MARGIN_FOR_OVERSIZE_CONTENT:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    div-int v5, v0, v5

    int-to-float v5, v5

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getHeight()F

    move-result v6

    sget v7, Lcom/sec/android/glview/TwGLGridList;->GRID_MENU_SCALE_RATIO:F

    mul-float/2addr v6, v7

    sget v7, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_ROW_GAP:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float v2, v4, v5

    .line 1879
    :goto_4
    invoke-virtual {v3, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveLayoutAbsolute(FF)V

    .line 1880
    sget v4, Lcom/sec/android/glview/TwGLGridList;->GRID_MENU_SCALE_RATIO:F

    sget v5, Lcom/sec/android/glview/TwGLGridList;->GRID_MENU_SCALE_RATIO:F

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->scale(FF)V

    .line 1881
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setAlpha(F)V

    .line 1882
    invoke-virtual {v3, p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 1883
    invoke-virtual {v3, v10}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->updateLayout(Z)V

    .line 1845
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1860
    :cond_2
    invoke-virtual {v3, v9}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setSelect(Z)V

    goto :goto_3

    .line 1870
    :cond_3
    iget-object v4, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v5

    iget v6, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    div-int v5, v0, v5

    int-to-float v5, v5

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getHeight()F

    move-result v6

    sget v7, Lcom/sec/android/glview/TwGLGridList;->GRID_MENU_SCALE_RATIO:F

    mul-float/2addr v6, v7

    sget v7, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_ROW_GAP:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float v2, v4, v5

    goto :goto_4

    .line 1872
    :cond_4
    iget-object v4, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    rem-int v5, v0, v5

    int-to-float v5, v5

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getWidth()F

    move-result v6

    sget v7, Lcom/sec/android/glview/TwGLGridList;->GRID_MENU_SCALE_RATIO:F

    mul-float/2addr v6, v7

    sget v7, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_COLUMN_GAP:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_LEFT_MARGIN:I

    int-to-float v5, v5

    add-float v1, v4, v5

    .line 1873
    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    .line 1874
    iget-object v4, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sget v5, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_TOP_MARGIN_FOR_OVERSIZE_CONTENT:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    div-int v5, v0, v5

    int-to-float v5, v5

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getHeight()F

    move-result v6

    sget v7, Lcom/sec/android/glview/TwGLGridList;->GRID_MENU_SCALE_RATIO:F

    mul-float/2addr v6, v7

    sget v7, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_ROW_GAP:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float v2, v4, v5

    goto :goto_4

    .line 1876
    :cond_5
    iget-object v4, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v5

    iget v6, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    div-int v5, v0, v5

    int-to-float v5, v5

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getHeight()F

    move-result v6

    sget v7, Lcom/sec/android/glview/TwGLGridList;->GRID_MENU_SCALE_RATIO:F

    mul-float/2addr v6, v7

    sget v7, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_ROW_GAP:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float v2, v4, v5

    goto/16 :goto_4

    .line 1886
    .end local v3    # "view":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    :cond_6
    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mType:I

    packed-switch v4, :pswitch_data_0

    .line 1893
    :goto_5
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->showScrollBar()V

    goto/16 :goto_0

    .line 1888
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentHeight()F

    move-result v4

    iput v4, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    .line 1889
    iget-object v4, p0, Lcom/sec/android/glview/TwGLGridList;->mAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    iget v5, p0, Lcom/sec/android/glview/TwGLGridList;->mSelectedIndex:I

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/glview/TwGLGridList;->setScrollToFocusedView(Lcom/sec/android/glview/TwGLView;)V

    .line 1890
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->rotationFocusView()V

    goto :goto_5

    .line 1849
    .restart local v3    # "view":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    :catch_0
    move-exception v4

    goto/16 :goto_2

    .line 1886
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removeView(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 791
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 792
    return-void
.end method

.method protected restartScrollBarTimer()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 612
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 613
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 614
    return-void
.end method

.method public scrollToFocusedView()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 1904
    iget-object v6, p0, Lcom/sec/android/glview/TwGLGridList;->mFocusedView:Lcom/sec/android/glview/TwGLView;

    if-nez v6, :cond_1

    .line 1905
    iput-boolean v9, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollRequested:Z

    .line 1943
    :cond_0
    :goto_0
    return-void

    .line 1909
    :cond_1
    const/4 v3, 0x1

    .line 1911
    .local v3, "mNeedMove":Z
    const/4 v4, 0x0

    .line 1912
    .local v4, "mScrollX":F
    const/4 v5, 0x0

    .line 1914
    .local v5, "mScrollY":F
    iget-object v6, p0, Lcom/sec/android/glview/TwGLGridList;->mFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getArea()Landroid/graphics/RectF;

    move-result-object v0

    .line 1915
    .local v0, "itemCurrentRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getArea()Landroid/graphics/RectF;

    move-result-object v2

    .line 1917
    .local v2, "listCurrentRect":Landroid/graphics/RectF;
    iget v6, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 1918
    iput v7, v0, Landroid/graphics/RectF;->top:F

    .line 1920
    :cond_2
    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    add-float/2addr v6, v7

    iget v7, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    .line 1921
    iget v6, v2, Landroid/graphics/RectF;->top:F

    iget v7, v0, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/sec/android/glview/TwGLGridList;->mFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v8

    add-float/2addr v7, v8

    sub-float v5, v6, v7

    .line 1922
    iget v6, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v6, v5

    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    .line 1930
    :goto_1
    if-eqz v3, :cond_0

    .line 1933
    iget-object v6, p0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1934
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1935
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/glview/TwGLView;

    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_2

    .line 1923
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_3
    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    add-float/2addr v6, v7

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    .line 1924
    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/sec/android/glview/TwGLGridList;->mFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v8

    add-float/2addr v7, v8

    sub-float v5, v6, v7

    .line 1925
    iget v6, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v6, v5

    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    goto :goto_1

    .line 1927
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 1938
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_5
    iget-object v6, p0, Lcom/sec/android/glview/TwGLGridList;->mOnScrollListener:Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;

    if-eqz v6, :cond_6

    .line 1939
    iget-object v6, p0, Lcom/sec/android/glview/TwGLGridList;->mOnScrollListener:Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;

    invoke-interface {v6, v4, v5, v9}, Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;->onGridScroll(FFI)V

    .line 1942
    :cond_6
    iput-boolean v9, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollRequested:Z

    goto/16 :goto_0
.end method

.method public scrollToVisible(Lcom/sec/android/glview/TwGLView;)V
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 850
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollRequested:Z

    .line 851
    iput-object p1, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    .line 852
    return-void
.end method

.method public scrollToVisible()Z
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 855
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    if-nez v7, :cond_0

    move v7, v8

    .line 927
    :goto_0
    return v7

    .line 859
    :cond_0
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getCurrentContentArea()Landroid/graphics/RectF;

    move-result-object v1

    .line 860
    .local v1, "itemCurrentRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getCurrentContentArea()Landroid/graphics/RectF;

    move-result-object v3

    .line 863
    .local v3, "listCurrentRect":Landroid/graphics/RectF;
    invoke-virtual {v3, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 864
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollRequested:Z

    .line 865
    const-string v7, "TwGLGridList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "scrollToVisible : do nothing, view = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLView;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", visibility = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLView;->isVisible()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v9

    .line 866
    goto :goto_0

    .line 868
    :cond_1
    const/4 v5, 0x0

    .line 869
    .local v5, "offsetY":F
    const/4 v4, 0x0

    .line 871
    .local v4, "offsetX":F
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mStackOrientation:I

    if-nez v7, :cond_6

    .line 872
    iget v7, v1, Landroid/graphics/RectF;->top:F

    iget v10, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v7, v10

    if-nez v7, :cond_2

    .line 874
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollRequested:Z

    move v7, v9

    .line 875
    goto :goto_0

    .line 876
    :cond_2
    iget v7, v1, Landroid/graphics/RectF;->top:F

    iget v10, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v7, v7, v10

    if-gez v7, :cond_5

    .line 877
    iget v7, v3, Landroid/graphics/RectF;->top:F

    iget v10, v1, Landroid/graphics/RectF;->top:F

    sub-float v5, v7, v10

    .line 878
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v7, v5

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    .line 897
    :cond_3
    :goto_1
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    if-ne v7, v9, :cond_b

    .line 898
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    cmpl-float v7, v7, v11

    if-lez v7, :cond_9

    .line 899
    iput v11, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    .line 912
    :cond_4
    :goto_2
    iput v11, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    .line 913
    iput v11, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    .line 916
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 917
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 918
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/glview/TwGLView;

    iget v10, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    iget v11, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    invoke-virtual {v7, v10, v11, v8}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_3

    .line 879
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_5
    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    iget v10, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v7, v7, v10

    if-lez v7, :cond_3

    .line 880
    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    iget v10, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v5, v7, v10

    .line 881
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v7, v5

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    goto :goto_1

    .line 883
    :cond_6
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mStackOrientation:I

    if-ne v7, v9, :cond_3

    .line 884
    iget v7, v1, Landroid/graphics/RectF;->left:F

    iget v10, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v10

    if-nez v7, :cond_7

    .line 886
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollRequested:Z

    move v7, v9

    .line 887
    goto/16 :goto_0

    .line 888
    :cond_7
    iget v7, v1, Landroid/graphics/RectF;->left:F

    iget v10, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v7, v7, v10

    if-gez v7, :cond_8

    .line 889
    iget v7, v3, Landroid/graphics/RectF;->left:F

    iget v10, v1, Landroid/graphics/RectF;->left:F

    sub-float v4, v7, v10

    .line 890
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v7, v4

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    goto :goto_1

    .line 891
    :cond_8
    iget v7, v1, Landroid/graphics/RectF;->right:F

    iget v10, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v7, v7, v10

    if-lez v7, :cond_3

    .line 892
    iget v7, v3, Landroid/graphics/RectF;->right:F

    iget v10, v1, Landroid/graphics/RectF;->right:F

    sub-float v4, v7, v10

    .line 893
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v7, v4

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    goto :goto_1

    .line 900
    :cond_9
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    iget v10, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v7, v10

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v10

    cmpg-float v7, v7, v10

    if-gez v7, :cond_4

    .line 901
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getHeight()F

    move-result v7

    iget v10, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    cmpg-float v7, v7, v10

    if-gez v7, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getHeight()F

    move-result v0

    .line 902
    .local v0, "height":F
    :goto_4
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float v7, v0, v7

    iget-object v10, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v7, v10

    iget v10, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    sub-float/2addr v7, v10

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    goto/16 :goto_2

    .line 901
    .end local v0    # "height":F
    :cond_a
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    goto :goto_4

    .line 904
    :cond_b
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    const/4 v10, 0x2

    if-ne v7, v10, :cond_4

    .line 905
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    cmpl-float v7, v7, v11

    if-lez v7, :cond_c

    .line 906
    iput v11, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    goto/16 :goto_2

    .line 907
    :cond_c
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    iget v10, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v7, v10

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v10

    cmpg-float v7, v7, v10

    if-gez v7, :cond_4

    .line 908
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getWidth()F

    move-result v7

    iget v10, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    cmpg-float v7, v7, v10

    if-gez v7, :cond_d

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getWidth()F

    move-result v6

    .line 909
    .local v6, "width":F
    :goto_5
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float v7, v6, v7

    iget-object v10, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    sub-float/2addr v7, v10

    iget v10, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    sub-float/2addr v7, v10

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    goto/16 :goto_2

    .line 908
    .end local v6    # "width":F
    :cond_d
    iget v6, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    goto :goto_5

    .line 921
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_e
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarVisible:Z

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v7, :cond_f

    .line 922
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaWidth()F

    move-result v10

    iget v11, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    div-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    mul-float/2addr v10, v11

    neg-float v10, v10

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentAreaHeight()F

    move-result v11

    iget v12, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    div-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    mul-float/2addr v11, v12

    neg-float v11, v11

    invoke-virtual {v7, v10, v11, v8}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FFZ)V

    .line 924
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->showScrollBar()V

    .line 925
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollRequested:Z

    .line 926
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    move v7, v9

    .line 927
    goto/16 :goto_0
.end method

.method public setAdapter(Lcom/sec/android/glview/TwGLGridList$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/sec/android/glview/TwGLGridList$Adapter;

    .prologue
    .line 680
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/glview/TwGLGridList;->setAdapter(Lcom/sec/android/glview/TwGLGridList$Adapter;I)V

    .line 681
    return-void
.end method

.method public setAdapter(Lcom/sec/android/glview/TwGLGridList$Adapter;I)V
    .locals 11
    .param p1, "adapter"    # Lcom/sec/android/glview/TwGLGridList$Adapter;
    .param p2, "stackOrientation"    # I

    .prologue
    .line 690
    if-nez p1, :cond_0

    .line 691
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 693
    :cond_0
    iput-object p1, p0, Lcom/sec/android/glview/TwGLGridList;->mAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    .line 694
    iput p2, p0, Lcom/sec/android/glview/TwGLGridList;->mStackOrientation:I

    .line 696
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 697
    .local v9, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 698
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    goto :goto_0

    .line 701
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mStackOrientation:I

    if-nez v0, :cond_3

    .line 702
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLGridList;->setScroll(I)V

    .line 707
    :goto_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    invoke-interface {v0}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_5

    .line 708
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    const/4 v1, 0x0

    invoke-interface {v0, v8, v1}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v10

    .line 709
    .local v10, "view":Lcom/sec/android/glview/TwGLView;
    if-nez v10, :cond_4

    .line 768
    .end local v10    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_2
    :goto_3
    return-void

    .line 704
    .end local v8    # "i":I
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLGridList;->setScroll(I)V

    goto :goto_1

    .line 730
    .restart local v8    # "i":I
    .restart local v10    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_4
    invoke-virtual {v10, p0}, Lcom/sec/android/glview/TwGLView;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 732
    invoke-virtual {p0, v10}, Lcom/sec/android/glview/TwGLGridList;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 707
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 735
    .end local v10    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_5
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mStackOrientation:I

    if-nez v0, :cond_6

    .line 736
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getWidth()F

    move-result v4

    const/high16 v5, 0x43390000    # 185.0f

    const/4 v6, 0x1

    const v7, 0x7f020457

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    .line 737
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getWidth()F

    move-result v4

    const/high16 v5, 0x43390000    # 185.0f

    const/4 v6, 0x1

    const v7, 0x7f020455

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    .line 738
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getWidth()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const v7, 0x7f020456

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    .line 739
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getWidth()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const v7, 0x7f020456

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    .line 746
    :goto_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLImage;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 747
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLImage;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 748
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLImage;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 749
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLImage;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 750
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 751
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 752
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 753
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 755
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->estimateRowColumn()V

    .line 756
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLGridList;->setVisibleArea()V

    .line 758
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 759
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLGridList;->setScrollBarLayout()V

    goto/16 :goto_3

    .line 741
    :cond_6
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x43390000    # 185.0f

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getHeight()F

    move-result v5

    const/4 v6, 0x1

    const v7, 0x7f020453

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    .line 742
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x43390000    # 185.0f

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getHeight()F

    move-result v5

    const/4 v6, 0x1

    const v7, 0x7f020454

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    .line 743
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getHeight()F

    move-result v5

    const/4 v6, 0x1

    const v7, 0x7f020452

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    .line 744
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getHeight()F

    move-result v5

    const/4 v6, 0x1

    const v7, 0x7f020452

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    goto/16 :goto_4
.end method

.method public setContentType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 1832
    iput p1, p0, Lcom/sec/android/glview/TwGLGridList;->mType:I

    .line 1833
    return-void
.end method

.method public declared-synchronized setHeight(F)V
    .locals 1
    .param p1, "height"    # F

    .prologue
    .line 453
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setHeight(F)V

    .line 454
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->estimateRowColumn()V

    .line 456
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLGridList;->checkBoundary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    .line 459
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLGridList;->setVisibleArea()V

    .line 461
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 462
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLGridList;->setScrollBarLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    :cond_1
    monitor-exit p0

    return-void

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLastOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 1994
    iput p1, p0, Lcom/sec/android/glview/TwGLGridList;->mLastOrientation:I

    .line 1996
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->estimateRowColumn()V

    .line 1997
    return-void
.end method

.method public setOnScrollListener(Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/sec/android/glview/TwGLGridList;->mOnScrollListener:Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;

    .line 371
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "paddings"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x0

    .line 378
    iput-object p1, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    .line 379
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getLeft()F

    move-result v3

    .line 380
    .local v3, "left":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getRight()F

    move-result v4

    .line 381
    .local v4, "right":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getTop()F

    move-result v5

    .line 382
    .local v5, "top":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getBottom()F

    move-result v0

    .line 384
    .local v0, "bottom":F
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 385
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 386
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/glview/TwGLView;

    .line 387
    .local v6, "view":Lcom/sec/android/glview/TwGLView;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v9, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 389
    .local v1, "childPaddings":Landroid/graphics/Rect;
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mStackOrientation:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 390
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v7

    sub-float/2addr v7, v3

    iget v8, p1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v7

    cmpl-float v7, v7, v3

    if-ltz v7, :cond_2

    .line 391
    iget v7, p1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v8

    sub-float/2addr v8, v3

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 395
    :goto_1
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v7

    sub-float v7, v4, v7

    iget v8, p1, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v7

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_3

    .line 396
    iget v7, p1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v8

    sub-float v8, v4, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 400
    :goto_2
    iget-object v7, v6, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 401
    iget-object v7, v6, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 403
    :cond_0
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mStackOrientation:I

    if-eqz v7, :cond_1

    .line 404
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v7

    sub-float/2addr v7, v5

    iget v8, p1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v7

    cmpl-float v7, v7, v5

    if-ltz v7, :cond_4

    .line 405
    iget v7, p1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v8

    sub-float/2addr v8, v5

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 409
    :goto_3
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v7

    sub-float v7, v0, v7

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_5

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v7

    cmpl-float v7, v0, v7

    if-ltz v7, :cond_5

    .line 410
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v8

    sub-float v8, v0, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 414
    :goto_4
    iget-object v7, v6, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 415
    iget-object v7, v6, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 417
    :cond_1
    invoke-virtual {v6, v1}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 393
    :cond_2
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iput v7, v1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 398
    :cond_3
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 407
    :cond_4
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iput v7, v1, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 412
    :cond_5
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 420
    .end local v1    # "childPaddings":Landroid/graphics/Rect;
    .end local v6    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->estimateRowColumn()V

    .line 421
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLGridList;->setVisibleArea()V

    .line 423
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v7, :cond_7

    .line 424
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLGridList;->setScrollBarLayout()V

    .line 426
    :cond_7
    return-void
.end method

.method public setPosition(FFI)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "type"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1946
    if-nez p3, :cond_3

    .line 1947
    iget-object v3, p0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1948
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1949
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    .line 1950
    .local v2, "view":Lcom/sec/android/glview/TwGLView;
    if-eqz v2, :cond_0

    .line 1954
    invoke-virtual {v2, p1, p2, v6}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_0

    .line 1957
    .end local v2    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_1
    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v3, p1

    iput v3, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    .line 1958
    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v3, p2

    iput v3, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    .line 1991
    :cond_2
    :goto_1
    return-void

    .line 1961
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_3
    cmpl-float v3, p1, v5

    if-nez v3, :cond_7

    cmpl-float v3, p2, v5

    if-nez v3, :cond_7

    .line 1962
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getHeight()F

    move-result v3

    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getHeight()F

    move-result v0

    .line 1964
    .local v0, "height":F
    :goto_2
    iget-object v3, p0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1965
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1966
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    .line 1967
    .restart local v2    # "view":Lcom/sec/android/glview/TwGLView;
    if-eqz v2, :cond_4

    .line 1971
    iget-object v3, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v5, v3, v6}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_3

    .line 1962
    .end local v0    # "height":F
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    .end local v2    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_5
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    goto :goto_2

    .line 1974
    .restart local v0    # "height":F
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_6
    iput v5, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    .line 1975
    iget-object v3, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLGridList;->mPaddings:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    goto :goto_1

    .line 1977
    .end local v0    # "height":F
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_7
    iput v5, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    .line 1978
    iput v5, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    .line 1980
    iget-object v3, p0, Lcom/sec/android/glview/TwGLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1981
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1982
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    .line 1983
    .restart local v2    # "view":Lcom/sec/android/glview/TwGLView;
    if-eqz v2, :cond_8

    .line 1987
    invoke-virtual {v2, v5, v5, v6}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_4
.end method

.method public setScroll(I)V
    .locals 0
    .param p1, "scroll"    # I

    .prologue
    .line 567
    iput p1, p0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    .line 568
    return-void
.end method

.method public setScrollBarResource(I)V
    .locals 1
    .param p1, "ninepatchId"    # I

    .prologue
    .line 483
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    .line 489
    return-void
.end method

.method public setScrollPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 1828
    iput p1, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollPadding:I

    .line 1829
    return-void
.end method

.method public setScrollThreshold(F)V
    .locals 3
    .param p1, "scrollThresholdDIP"    # F

    .prologue
    .line 576
    const-string v0, "TwGLGridList"

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

    .line 578
    iput p1, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollThreshold:F

    .line 579
    return-void
.end method

.method public setScrollToFocusedView(Lcom/sec/android/glview/TwGLView;)V
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 1899
    iput-object p1, p0, Lcom/sec/android/glview/TwGLGridList;->mFocusedView:Lcom/sec/android/glview/TwGLView;

    .line 1900
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollRequested:Z

    .line 1901
    return-void
.end method

.method public setScrolling(Z)V
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrolling:Z

    if-eq v0, p1, :cond_0

    .line 595
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLGridList;->mScrolling:Z

    .line 596
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mOnScrollListener:Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;

    if-eqz v0, :cond_0

    .line 597
    if-eqz p1, :cond_2

    .line 598
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mOnScrollListener:Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;

    invoke-interface {v0}, Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;->onGridScrollStart()V

    .line 604
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 605
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->resetDrag()V

    .line 606
    :cond_1
    return-void

    .line 600
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mOnScrollListener:Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;

    invoke-interface {v0}, Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;->onGridScrollEnd()V

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 433
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 434
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->estimateRowColumn()V

    .line 436
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLGridList;->checkBoundary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    .line 439
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLGridList;->setVisibleArea()V

    .line 440
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 441
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLGridList;->setScrollBarLayout()V

    .line 443
    :cond_1
    return-void
.end method

.method public declared-synchronized setWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 447
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setWidth(F)V

    .line 448
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->estimateRowColumn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    monitor-exit p0

    return-void

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showScrollBar()V
    .locals 2

    .prologue
    .line 651
    const-string v0, "TwGLGridList"

    const-string v1, "Scroll bar is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return-void
.end method
