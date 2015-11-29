.class public Lcom/sec/android/touchwiz/widget/TwExpandableListView;
.super Lcom/sec/android/touchwiz/widget/TwListView;
.source "TwExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandableListContextMenuInfo;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;
    }
.end annotation


# static fields
.field private static final ANIMATION_STATE_COLLAPSING:I = 0x3

.field private static final ANIMATION_STATE_COLLAPSING_ALL:I = 0x5

.field private static final ANIMATION_STATE_EXPANDING:I = 0x2

.field private static final ANIMATION_STATE_EXPANDING_ALL:I = 0x4

.field private static final ANIMATION_STATE_IDLE:I = 0x1

.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final CHILD_LAST_STATE_SET:[I

.field private static final COLLAPSE_ALL_PENDING:I = 0x2

.field private static final DECORATED_VIEW_TAG:I = 0x7a0a1eff

.field private static final EMPTY_STATE_SET:[I

.field private static final EXPAND_ALL_PENDING:I = 0x1

.field private static final EXPAND_COLLAPSE_ALL_IDLE:I = 0x0

.field private static final EXPAND_COLLAPSE_BASE_DURATION:I = 0x2bc

.field private static EXPAND_COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator; = null

.field private static final EXPAND_COLLAPSE_MIN_DURATION:I = 0x96

.field private static final GROUP_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_STATE_SET:[I

.field private static final GROUP_STATE_SETS:[[I

.field private static final INDICATOR_UNDEFINED:I = -0x2

.field private static final PACKED_POSITION_FOOTER_VIEW_BASE:J = -0x100000000L

.field private static final PACKED_POSITION_GROUP_FOOTER_TYPE:I = -0x3

.field private static final PACKED_POSITION_GROUP_HEADER_TYPE:I = -0x2

.field private static final PACKED_POSITION_HEADER_VIEW_BASE:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final PACKED_POSITION_VALUE_NULL:J = 0xffffffffL

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final COLLAPSE_CONTENT_DESCRIPTION:Ljava/lang/String;

.field private final EXPAND_CONTENT_DESCRIPTION:Ljava/lang/String;

.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mAnimationEnabled:Z

.field private mAnimationState:I

.field private mBitmapUpdateBounds:Landroid/graphics/Rect;

.field mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorEnd:I

.field private mChildIndicatorLeft:I

.field private mChildIndicatorRight:I

.field private mChildIndicatorStart:I

.field private mCollapsedGroupTopEnd:I

.field private mCollapsedGroupTopStart:I

.field private mCollapsingRects:[Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;

.field private mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

.field private mExpListDividerHeight:[I

.field private mExpandCollapseAllState:I

.field private mExpandingRects:[Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;

.field private mGhostExpandCollapseChildViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGhostViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGhostViewsVisibleArea:Landroid/graphics/RectF;

.field private mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private mIndicatorEnd:I

.field private mIndicatorGravity:I

.field private mIndicatorLeft:I

.field private mIndicatorPaddingLeft:I

.field private mIndicatorPaddingRight:I

.field private mIndicatorRight:I

.field private mIndicatorStart:I

.field private mItemDecorator:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$ItemDecorator;

.field private mOnChildClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;

.field private mOnGroupClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

.field private mRotationAngle:I

.field private mTranslationOffset:I

.field private mViewSnapshots:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    const-class v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->TAG:Ljava/lang/String;

    .line 235
    new-array v0, v3, [I

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EMPTY_STATE_SET:[I

    .line 238
    new-array v0, v4, [I

    const v1, 0x10100a8

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    .line 242
    new-array v0, v4, [I

    const v1, 0x10100a9

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    .line 246
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    .line 250
    const/4 v0, 0x4

    new-array v0, v0, [[I

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EMPTY_STATE_SET:[I

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    aput-object v1, v0, v2

    const/4 v1, 0x3

    sget-object v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->GROUP_STATE_SETS:[[I

    .line 258
    new-array v0, v4, [I

    const v1, 0x10100a6

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->CHILD_LAST_STATE_SET:[I

    .line 291
    new-instance v0, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void

    .line 246
    nop

    :array_0
    .array-data 4
        0x10100a8
        0x10100a9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 315
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 329
    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 330
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 347
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, -0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 368
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 264
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationEnabled:Z

    .line 271
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    .line 272
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    .line 273
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    .line 274
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBitmapUpdateBounds:Landroid/graphics/Rect;

    .line 275
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mTranslationOffset:I

    .line 276
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapsedGroupTopStart:I

    .line 277
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapsedGroupTopEnd:I

    .line 278
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    .line 283
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorPaddingLeft:I

    .line 284
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorPaddingRight:I

    .line 285
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorGravity:I

    .line 287
    const/16 v1, 0xb4

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mRotationAngle:I

    .line 298
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationState:I

    .line 303
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpandCollapseAllState:I

    .line 501
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mItemDecorator:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$ItemDecorator;

    .line 1745
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 370
    sget-object v1, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 373
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 375
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 377
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorLeft:I

    .line 379
    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRight:I

    .line 381
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRight:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 382
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorLeft:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRight:I

    .line 384
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorLeft:I

    .line 387
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorRight:I

    .line 390
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 393
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isRtlCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 394
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorStart:I

    .line 397
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorEnd:I

    .line 401
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorStart:I

    .line 404
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorEnd:I

    .line 409
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 410
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpListDividerHeight:[I

    if-nez v1, :cond_2

    .line 411
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpListDividerHeight:[I

    .line 413
    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2080028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_CONTENT_DESCRIPTION:Ljava/lang/String;

    .line 414
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2080027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->COLLAPSE_CONTENT_DESCRIPTION:Ljava/lang/String;

    .line 415
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorLeft:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorRight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRight:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    .param p1, "x1"    # Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getIndicator(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    .param p1, "x1"    # Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDivider(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorGravity:I

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorPaddingLeft:I

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorPaddingRight:I

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/widget/ExpandableListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->resetExpandAnimationState()V

    return-void
.end method

.method static synthetic access$2800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mTranslationOffset:I

    return v0
.end method

.method static synthetic access$2902(Lcom/sec/android/touchwiz/widget/TwExpandableListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    .param p1, "x1"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mTranslationOffset:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpListDividerHeight:[I

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/util/LongSparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/android/touchwiz/widget/TwExpandableListView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    .param p1, "x1"    # I

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->startIndicatorAnimation(Landroid/view/View;ZI)V

    return-void
.end method

.method static synthetic access$3500(Lcom/sec/android/touchwiz/widget/TwExpandableListView;ILcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->createViewSnapshotAnimation(ILcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3700()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationState:I

    return v0
.end method

.method static synthetic access$3802(Lcom/sec/android/touchwiz/widget/TwExpandableListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    .param p1, "x1"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationState:I

    return p1
.end method

.method static synthetic access$3900(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getLastNonFooterPosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->COLLAPSE_CONTENT_DESCRIPTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)[Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/sec/android/touchwiz/widget/TwExpandableListView;[Landroid/graphics/RectF;)[Landroid/graphics/RectF;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    .param p1, "x1"    # [Landroid/graphics/RectF;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)[Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpandingRects:[Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/sec/android/touchwiz/widget/TwExpandableListView;[Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;)[Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    .param p1, "x1"    # [Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpandingRects:[Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/sec/android/touchwiz/widget/TwExpandableListView;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    .param p1, "x1"    # I

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/sec/android/touchwiz/widget/TwExpandableListView;ILcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->createViewSnapshotAnimationReverse(ILcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->resetCollapseAnimationState()V

    return-void
.end method

.method static synthetic access$4500(Lcom/sec/android/touchwiz/widget/TwExpandableListView;I)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    .param p1, "x1"    # I

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getSelectorRectAnim(I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapsedGroupTopEnd:I

    return v0
.end method

.method static synthetic access$4602(Lcom/sec/android/touchwiz/widget/TwExpandableListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    .param p1, "x1"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapsedGroupTopEnd:I

    return p1
.end method

.method static synthetic access$4700(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapsedGroupTopStart:I

    return v0
.end method

.method static synthetic access$4800(Lcom/sec/android/touchwiz/widget/TwExpandableListView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    .param p1, "x1"    # I

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)[Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapsingRects:[Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_CONTENT_DESCRIPTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBitmapUpdateBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$5200()[I
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBottom:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .prologue
    .line 116
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorLeft:I

    return v0
.end method

.method private captureViewsPriorAnimation()V
    .locals 8

    .prologue
    .line 1790
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v1

    .line 1791
    .local v1, "childCount":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v2

    .line 1794
    .local v2, "firstVisiblePos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1795
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1796
    .local v0, "child":Landroid/view/View;
    add-int v7, v3, v2

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v4

    .line 1797
    .local v4, "packedPos":J
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    if-nez v7, :cond_1

    .line 1794
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1799
    :cond_1
    new-instance v6, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;

    invoke-direct {v6, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;-><init>(Landroid/view/View;)V

    .line 1800
    .local v6, "viewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    iget-object v7, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_0

    .line 1801
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 1804
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "packedPos":J
    .end local v6    # "viewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    :cond_2
    return-void
.end method

.method private collapseAllGroups()V
    .locals 3

    .prologue
    .line 2708
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 2709
    .local v0, "groupCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2710
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->collapseGroup(I)Z

    .line 2709
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2712
    :cond_0
    return-void
.end method

.method private createViewSnapshotAnimation(ILcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;
    .locals 8
    .param p1, "translationOffset"    # I
    .param p2, "viewInfo"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;

    .prologue
    const/4 v7, 0x0

    .line 1737
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->left:I

    iget v4, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->top:I

    iget v5, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->right:I

    iget v6, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->bottom:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1738
    .local v2, "oldViewBounds":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1739
    .local v1, "newViewBounds":Landroid/graphics/Rect;
    invoke-virtual {v1, v7, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 1740
    iget-object v3, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    const-string v4, "bounds"

    sget-object v5, Lcom/sec/android/touchwiz/animator/TwAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v3, v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1742
    .local v0, "animBounds":Landroid/animation/ObjectAnimator;
    return-object v0
.end method

.method private createViewSnapshotAnimationReverse(ILcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;
    .locals 8
    .param p1, "translationOffset"    # I
    .param p2, "viewInfo"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;

    .prologue
    const/4 v7, 0x0

    .line 1728
    new-instance v1, Landroid/graphics/Rect;

    iget v3, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->left:I

    iget v4, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->top:I

    iget v5, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->right:I

    iget v6, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->bottom:I

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1729
    .local v1, "newViewBounds":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1730
    .local v2, "oldViewBounds":Landroid/graphics/Rect;
    invoke-virtual {v2, v7, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 1731
    iget-object v3, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    const-string v4, "bounds"

    sget-object v5, Lcom/sec/android/touchwiz/animator/TwAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v3, v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1733
    .local v0, "animBounds":Landroid/animation/ObjectAnimator;
    return-object v0
.end method

.method private drawGhostViews(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 665
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v6, v7

    if-nez v6, :cond_0

    .line 722
    :goto_0
    return-void

    .line 666
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 668
    .local v4, "saveCount":I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationState:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 669
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 672
    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;

    .line 673
    .local v5, "vInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    iget-object v6, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 676
    .end local v5    # "vInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    :cond_2
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 677
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 678
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;

    .line 679
    .restart local v5    # "vInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    iget-object v6, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 683
    .end local v5    # "vInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    :cond_3
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7

    .line 686
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpandingRects:[Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;

    array-length v3, v6

    .line 687
    .local v3, "len":I
    const/4 v0, 0x0

    .line 688
    .local v0, "firstRectProcessed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v3, :cond_6

    .line 689
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpandingRects:[Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;

    aget-object v6, v6, v1

    if-nez v6, :cond_4

    .line 688
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 691
    :cond_4
    if-eqz v0, :cond_5

    .line 692
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpandingRects:[Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;->destinationRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    goto :goto_4

    .line 694
    :cond_5
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpandingRects:[Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;->destinationRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 695
    const/4 v0, 0x1

    goto :goto_4

    .line 698
    :cond_6
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;

    .line 699
    .restart local v5    # "vInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    iget-object v6, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    .line 702
    .end local v0    # "firstRectProcessed":Z
    .end local v1    # "i":I
    .end local v3    # "len":I
    .end local v5    # "vInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    :cond_7
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationState:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_b

    .line 705
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapsingRects:[Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;

    array-length v3, v6

    .line 706
    .restart local v3    # "len":I
    const/4 v0, 0x0

    .line 707
    .restart local v0    # "firstRectProcessed":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-ge v1, v3, :cond_a

    .line 708
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapsingRects:[Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;

    aget-object v6, v6, v1

    if-nez v6, :cond_8

    .line 707
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 710
    :cond_8
    if-eqz v0, :cond_9

    .line 711
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapsingRects:[Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;->destinationRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    goto :goto_7

    .line 713
    :cond_9
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapsingRects:[Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;->destinationRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 714
    const/4 v0, 0x1

    goto :goto_7

    .line 717
    :cond_a
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;

    .line 718
    .restart local v5    # "vInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    iget-object v6, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_8

    .line 721
    .end local v0    # "firstRectProcessed":Z
    .end local v1    # "i":I
    .end local v3    # "len":I
    .end local v5    # "vInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    :cond_b
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0
.end method

.method private expandAllGroups()V
    .locals 3

    .prologue
    .line 2701
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 2702
    .local v0, "groupCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2703
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->expandGroup(I)Z

    .line 2702
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2705
    :cond_0
    return-void
.end method

.method private getAbsoluteFlatPosition(I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    .prologue
    .line 904
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getChildOrGroupId(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)J
    .locals 3
    .param p1, "position"    # Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    .prologue
    .line 2297
    iget v0, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2298
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iget v2, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 2300
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private getDivider(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "pos"    # Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    .prologue
    .line 802
    iget-object v0, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 803
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 805
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private getExpandedState()[Z
    .locals 7

    .prologue
    .line 2680
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getLastNonFooterPosition()I

    move-result v3

    .line 2681
    .local v3, "lastValidPos":I
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v4

    .line 2682
    .local v4, "lastPosPackedPos":J
    invoke-static {v4, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    .line 2683
    .local v2, "lastGroupId":I
    add-int/lit8 v6, v2, 0x1

    new-array v0, v6, [Z

    .line 2684
    .local v0, "expandedState":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v2, :cond_0

    .line 2685
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v6, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isGroupExpanded(I)Z

    move-result v6

    aput-boolean v6, v0, v1

    .line 2684
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2687
    :cond_0
    return-object v0
.end method

.method private getFlatPositionForConnector(I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    .prologue
    .line 893
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private getHeaderFooterPackedPosition(I)J
    .locals 8
    .param p1, "flatListPosition"    # I

    .prologue
    .line 2259
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 2260
    move v2, p1

    .line 2261
    .local v2, "headerViewPosition":I
    const-wide v4, 0x7fffffff00000000L

    int-to-long v6, v2

    or-long/2addr v4, v6

    .line 2265
    .end local v2    # "headerViewPosition":I
    :goto_0
    return-wide v4

    .line 2263
    :cond_0
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mItemCount:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFooterViewsCount()I

    move-result v4

    sub-int v1, v3, v4

    .line 2264
    .local v1, "footerViewsStart":I
    sub-int v0, p1, v1

    .line 2265
    .local v0, "footerViewPosition":I
    const-wide v4, -0x100000000L

    int-to-long v6, v0

    or-long/2addr v4, v6

    goto :goto_0
.end method

.method private getIndicator(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "pos"    # Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 734
    iget-object v7, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    if-ne v7, v6, :cond_5

    .line 735
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 737
    .local v0, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 741
    iget-object v7, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    if-eqz v7, :cond_0

    iget-object v7, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v8, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v7, v8, :cond_3

    :cond_0
    move v1, v5

    .line 744
    .local v1, "isEmpty":Z
    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_1
    if-eqz v1, :cond_1

    move v4, v6

    :cond_1
    or-int v3, v5, v4

    .line 747
    .local v3, "stateSetIndex":I
    sget-object v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 760
    .end local v1    # "isEmpty":Z
    .end local v3    # "stateSetIndex":I
    :cond_2
    :goto_2
    return-object v0

    :cond_3
    move v1, v4

    .line 741
    goto :goto_0

    .restart local v1    # "isEmpty":Z
    :cond_4
    move v5, v4

    .line 744
    goto :goto_1

    .line 750
    .end local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    .end local v1    # "isEmpty":Z
    :cond_5
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 752
    .restart local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 754
    iget-object v4, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    iget-object v5, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v4, v5, :cond_6

    sget-object v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->CHILD_LAST_STATE_SET:[I

    .line 757
    .local v2, "stateSet":[I
    :goto_3
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_2

    .line 754
    .end local v2    # "stateSet":[I
    :cond_6
    sget-object v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method private getLastNonFooterPosition()I
    .locals 4

    .prologue
    .line 2691
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getLastVisiblePosition()I

    move-result v1

    .line 2692
    .local v1, "lastPos":I
    move v2, v1

    .line 2693
    .local v2, "lastValidPos":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v0

    .line 2694
    .local v0, "firstPos":I
    :goto_0
    if-lt v2, v0, :cond_0

    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2695
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2697
    :cond_0
    return v2
.end method

.method public static getPackedPositionChild(J)I
    .locals 8
    .param p0, "packedPosition"    # J

    .prologue
    const-wide v6, 0xffffffffL

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v0, -0x1

    .line 2208
    cmp-long v1, p0, v6

    if-nez v1, :cond_1

    .line 2213
    :cond_0
    :goto_0
    return v0

    .line 2211
    :cond_1
    and-long v2, p0, v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 2213
    and-long v0, p0, v6

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionForChild(II)J
    .locals 6
    .param p0, "groupPosition"    # I
    .param p1, "childPosition"    # I

    .prologue
    .line 2233
    const-wide/high16 v0, -0x8000000000000000L

    int-to-long v2, p0

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionForGroup(I)J
    .locals 4
    .param p0, "groupPosition"    # I

    .prologue
    .line 2248
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionGroup(J)I
    .locals 6
    .param p0, "packedPosition"    # J

    .prologue
    const-wide v4, -0x100000000L

    const-wide v2, 0x7fffffff00000000L

    .line 2184
    and-long v0, p0, v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 2186
    const/4 v0, -0x3

    .line 2191
    :goto_0
    return v0

    .line 2187
    :cond_0
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 2189
    const/4 v0, -0x2

    goto :goto_0

    .line 2191
    :cond_1
    and-long v0, p0, v2

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionType(J)I
    .locals 4
    .param p0, "packedPosition"    # J

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 2162
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 2163
    const/4 v0, 0x2

    .line 2166
    :goto_0
    return v0

    :cond_0
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSelectorRectAnim(I)Landroid/animation/Animator;
    .locals 8
    .param p1, "offset"    # I

    .prologue
    const/4 v7, 0x0

    .line 1560
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1561
    .local v1, "newViewBounds":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1562
    .local v2, "oldViewBounds":Landroid/graphics/Rect;
    invoke-virtual {v2, v7, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 1563
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    const-string v4, ""

    sget-object v5, Lcom/sec/android/touchwiz/animator/TwAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v3, v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1565
    .local v0, "animBounds":Landroid/animation/ObjectAnimator;
    return-object v0
.end method

.method private hasRtlSupport()Z
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    return v0
.end method

.method private isHeaderOrFooterPosition(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 881
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mItemCount:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFooterViewsCount()I

    move-result v2

    sub-int v0, v1, v2

    .line 882
    .local v0, "footerViewsStart":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRtlCompatibilityMode()Z
    .locals 2

    .prologue
    .line 422
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 423
    .local v0, "targetSdkVersion":I
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->hasRtlSupport()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private printArrays([I)Ljava/lang/String;
    .locals 6
    .param p1, "arr"    # [I

    .prologue
    .line 2584
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 2585
    .local v4, "sb":Ljava/lang/StringBuffer;
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    .line 2586
    .local v2, "item":I
    if-gtz v2, :cond_0

    .line 2585
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2588
    :cond_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2589
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2591
    .end local v2    # "item":I
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private resetCollapseAnimationState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1546
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapsedGroupTopStart:I

    .line 1547
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapsedGroupTopEnd:I

    .line 1549
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1550
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1551
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mTranslationOffset:I

    .line 1552
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationState:I

    .line 1553
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    .line 1554
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapsingRects:[Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;

    .line 1556
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setEnabled(Z)V

    .line 1557
    return-void
.end method

.method private resetExpandAnimationState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1155
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1156
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1157
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mTranslationOffset:I

    .line 1158
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationState:I

    .line 1159
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    .line 1160
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpandingRects:[Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;

    .line 1162
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setEnabled(Z)V

    .line 1165
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v0

    .line 1166
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1167
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1169
    :cond_0
    return-void
.end method

.method private resolveChildIndicator()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 469
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isLayoutRtl()Z

    move-result v0

    .line 470
    .local v0, "isLayoutRtl":Z
    if-eqz v0, :cond_2

    .line 471
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorStart:I

    if-lt v1, v2, :cond_0

    .line 472
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorStart:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorRight:I

    .line 474
    :cond_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorEnd:I

    if-lt v1, v2, :cond_1

    .line 475
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorEnd:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorLeft:I

    .line 485
    :cond_1
    :goto_0
    return-void

    .line 478
    :cond_2
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorStart:I

    if-lt v1, v2, :cond_3

    .line 479
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorStart:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorLeft:I

    .line 481
    :cond_3
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorEnd:I

    if-lt v1, v2, :cond_1

    .line 482
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorEnd:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorRight:I

    goto :goto_0
.end method

.method private resolveIndicator()V
    .locals 3

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isLayoutRtl()Z

    move-result v0

    .line 444
    .local v0, "isLayoutRtl":Z
    if-eqz v0, :cond_3

    .line 445
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorStart:I

    if-ltz v1, :cond_0

    .line 446
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorStart:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRight:I

    .line 448
    :cond_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorEnd:I

    if-ltz v1, :cond_1

    .line 449
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorEnd:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorLeft:I

    .line 459
    :cond_1
    :goto_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRight:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 460
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorLeft:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRight:I

    .line 462
    :cond_2
    return-void

    .line 452
    :cond_3
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorStart:I

    if-ltz v1, :cond_4

    .line 453
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorStart:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorLeft:I

    .line 455
    :cond_4
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorEnd:I

    if-ltz v1, :cond_1

    .line 456
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorEnd:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRight:I

    goto :goto_0
.end method

.method private startCollapseAllAnimation([ZLjava/lang/Runnable;)V
    .locals 33
    .param p1, "expanded"    # [Z
    .param p2, "animationEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1570
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v16

    .line 1572
    .local v16, "firstVisiblePos":I
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getLastNonFooterPosition()I

    move-result v28

    .line 1573
    .local v28, "lastValidPos":I
    move/from16 v0, v28

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 1708
    :goto_0
    return-void

    .line 1575
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v26

    .line 1576
    .local v26, "lastPosPackedPos":J
    invoke-static/range {v26 .. v27}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionGroup(J)I

    move-result v7

    .line 1577
    .local v7, "lastGroupIdBefore":I
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 1579
    .local v8, "lastPositionBottomBefore":I
    add-int/lit8 v4, v7, 0x1

    new-array v0, v4, [I

    move-object/from16 v18, v0

    .line 1580
    .local v18, "groupOffsets":[I
    add-int/lit8 v4, v7, 0x1

    new-array v4, v4, [Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    .line 1581
    add-int/lit8 v4, v7, 0x1

    new-array v4, v4, [Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapsingRects:[Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;

    .line 1582
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v12

    .line 1583
    .local v12, "childCount":I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v13

    .line 1584
    .local v13, "firstGroupPosition":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 1586
    .local v25, "lastGroupView":Landroid/view/View;
    const/16 v22, 0x1

    .local v22, "i":I
    :goto_1
    move-object/from16 v0, v18

    array-length v4, v0

    move/from16 v0, v22

    if-ge v0, v4, :cond_1

    .line 1587
    invoke-static/range {v22 .. v22}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v20

    .line 1588
    .local v20, "groupPackedPos":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatListPosition(J)I

    move-result v29

    .line 1589
    .local v29, "pos":I
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 1590
    .local v19, "groupView":Landroid/view/View;
    add-int/lit8 v4, v22, -0x1

    aget v4, v18, v4

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v4, v5

    aput v4, v18, v22

    .line 1592
    new-instance v30, Landroid/graphics/RectF;

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    move-object/from16 v0, v30

    invoke-direct {v0, v4, v5, v6, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1593
    .local v30, "startRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    add-int/lit8 v5, v22, -0x1

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    aput-object v6, v4, v5

    .line 1594
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapsingRects:[Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;

    add-int/lit8 v5, v22, -0x1

    new-instance v6, Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    add-int/lit8 v32, v22, -0x1

    aget-object v9, v9, v32

    move-object/from16 v0, v30

    invoke-direct {v6, v0, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    aput-object v6, v4, v5

    .line 1595
    move-object/from16 v25, v19

    .line 1586
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 1598
    .end local v19    # "groupView":Landroid/view/View;
    .end local v20    # "groupPackedPos":J
    .end local v29    # "pos":I
    .end local v30    # "startRect":Landroid/graphics/RectF;
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 1599
    .local v24, "lastChild":Landroid/view/View;
    new-instance v30, Landroid/graphics/RectF;

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getBottom()I

    move-result v9

    int-to-float v9, v9

    move-object/from16 v0, v30

    invoke-direct {v0, v4, v5, v6, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1600
    .restart local v30    # "startRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    aput-object v5, v4, v7

    .line 1601
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapsingRects:[Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;

    new-instance v5, Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    aget-object v6, v6, v7

    move-object/from16 v0, v30

    invoke-direct {v5, v0, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    aput-object v5, v4, v7

    .line 1603
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1605
    .local v10, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/16 v22, 0x0

    :goto_2
    move/from16 v0, v22

    if-ge v0, v12, :cond_5

    .line 1606
    add-int v4, v22, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1605
    :cond_2
    :goto_3
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 1608
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v14

    .line 1609
    .local v14, "expandableListPos":J
    invoke-static {v14, v15}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionType(J)I

    move-result v4

    if-nez v4, :cond_4

    const/16 v23, 0x1

    .line 1610
    .local v23, "isGroup":Z
    :goto_4
    if-nez v23, :cond_2

    .line 1612
    invoke-static {v14, v15}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionGroup(J)I

    move-result v17

    .line 1613
    .local v17, "groupId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v14, v15}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;

    .line 1615
    .local v31, "viewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1616
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v14, v15}, Landroid/util/LongSparseArray;->remove(J)V

    .line 1617
    aget v4, v18, v17

    neg-int v4, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v4, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->createViewSnapshotAnimation(ILcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 1619
    .local v11, "animBounds":Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1609
    .end local v11    # "animBounds":Landroid/animation/ObjectAnimator;
    .end local v17    # "groupId":I
    .end local v23    # "isGroup":Z
    .end local v31    # "viewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    :cond_4
    const/16 v23, 0x0

    goto :goto_4

    .line 1622
    .end local v14    # "expandableListPos":J
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setEnabled(Z)V

    .line 1624
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v32

    new-instance v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Ljava/lang/Runnable;II[ZLjava/util/ArrayList;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/16 :goto_0
.end method

.method private startCollapseAnimation(ILjava/lang/Runnable;)V
    .locals 22
    .param p1, "groupPosBefore"    # I
    .param p2, "animationEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1400
    invoke-static/range {p1 .. p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v14

    .line 1401
    .local v14, "collapsedGroupPackedPosition":J
    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v20

    .line 1403
    .local v20, "nextCollapsedGroupPackedPosition":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatListPosition(J)I

    move-result v8

    .line 1404
    .local v8, "collapsedGroupFlatPosBefore":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatListPosition(J)I

    move-result v18

    .line 1406
    .local v18, "nextCollapsedGroupFlatPos":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v10

    .line 1407
    .local v10, "firstVisiblePosBefore":I
    sub-int v4, v8, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1408
    .local v13, "collapsedGroupBefore":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    .line 1410
    .local v12, "collapsedGroupTopBefore":I
    sub-int v4, v18, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 1411
    .local v17, "nextCollapsedGroup":Landroid/view/View;
    if-nez v17, :cond_0

    .line 1412
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 1413
    .local v16, "listBottom":I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v4, v16, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mTranslationOffset:I

    .line 1418
    .end local v16    # "listBottom":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v4}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v9

    .line 1419
    .local v9, "groupCountBefore":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v11

    .line 1420
    .local v11, "listTotalChildrenCountBefore":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getX()F

    move-result v5

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 1421
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getX()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 1422
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapsedGroupTopStart:I

    .line 1423
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setEnabled(Z)V

    .line 1425
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v19

    new-instance v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move/from16 v7, p1

    invoke-direct/range {v4 .. v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Ljava/lang/Runnable;IIIIII)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1542
    return-void

    .line 1415
    .end local v9    # "groupCountBefore":I
    .end local v11    # "listTotalChildrenCountBefore":I
    :cond_0
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mTranslationOffset:I

    goto :goto_0
.end method

.method private startExpandAllAnimation([ZLjava/lang/Runnable;)V
    .locals 2
    .param p1, "expanded"    # [Z
    .param p2, "animationEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setEnabled(Z)V

    .line 1174
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Ljava/lang/Runnable;[Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1327
    return-void
.end method

.method private startExpandAnimation(ILjava/lang/Runnable;)V
    .locals 2
    .param p1, "groupPos"    # I
    .param p2, "animationEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1024
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setEnabled(Z)V

    .line 1026
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Ljava/lang/Runnable;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1152
    return-void
.end method

.method private startIndicatorAnimation(Landroid/view/View;ZI)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "isExpanding"    # Z
    .param p3, "duration"    # I

    .prologue
    .line 1711
    if-eqz p2, :cond_1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mRotationAngle:I

    .line 1712
    .local v2, "startAngle":I
    :goto_0
    const v3, 0x7a0a1eff

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;

    .line 1713
    .local v0, "holder":Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;

    if-nez v3, :cond_2

    .line 1714
    :cond_0
    sget-object v3, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startIndicatorAnimation() holder or indicatorImgView is null, startAngle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    :goto_1
    return-void

    .line 1711
    .end local v0    # "holder":Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;
    .end local v2    # "startAngle":I
    :cond_1
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mRotationAngle:I

    neg-int v2, v3

    goto :goto_0

    .line 1717
    .restart local v0    # "holder":Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;
    .restart local v2    # "startAngle":I
    :cond_2
    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;

    .line 1718
    .local v1, "img":Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;
    int-to-float v3, v2

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;->setRotation(F)V

    .line 1719
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, p3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 1724
    if-eqz p2, :cond_3

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->COLLAPSE_CONTENT_DESCRIPTION:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_CONTENT_DESCRIPTION:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public collapseAll()V
    .locals 2

    .prologue
    .line 2629
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 2638
    :cond_0
    :goto_0
    return-void

    .line 2631
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2633
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpandCollapseAllState:I

    .line 2634
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationEnabled:Z

    if-nez v0, :cond_2

    .line 2635
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->collapseAllGroups()V

    .line 2637
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerJumpScrollToTop()V

    goto :goto_0
.end method

.method public collapseGroup(I)Z
    .locals 2
    .param p1, "groupPos"    # I

    .prologue
    .line 1877
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->collapseGroup(I)Z

    move-result v0

    .line 1879
    .local v0, "retValue":Z
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_0

    .line 1880
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 1883
    :cond_0
    return v0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flatListPosition"    # I
    .param p3, "id"    # J

    .prologue
    .line 2271
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2273
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 2285
    :goto_0
    return-object v0

    .line 2276
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatPositionForConnector(I)I

    move-result v6

    .line 2277
    .local v6, "adjustedPosition":I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v7

    .line 2278
    .local v7, "pm":Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v8, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    .line 2280
    .local v8, "pos":Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildOrGroupId(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)J

    move-result-wide p3

    .line 2281
    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 2283
    .local v2, "packedPosition":J
    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 2285
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandableListContextMenuInfo;

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 489
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 491
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->drawGhostViews(Landroid/graphics/Canvas;)V

    .line 494
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 496
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 498
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->drawGhostViews(Landroid/graphics/Canvas;)V

    .line 499
    :cond_3
    return-void
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    .line 776
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFirstPosition:I

    add-int v2, p3, v4

    .line 780
    .local v2, "flatListPosition":I
    if-ltz v2, :cond_2

    .line 781
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 782
    .local v0, "adjustedPosition":I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v3

    .line 785
    .local v3, "pos":Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v4, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v5, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->flPos:I

    if-eq v4, v5, :cond_1

    .line 788
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 789
    .local v1, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 790
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 791
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 799
    .end local v0    # "adjustedPosition":I
    .end local v1    # "divider":Landroid/graphics/drawable/Drawable;
    .end local v3    # "pos":Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :goto_0
    return-void

    .line 794
    .restart local v0    # "adjustedPosition":I
    .restart local v3    # "pos":Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_1
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 798
    .end local v0    # "adjustedPosition":I
    .end local v3    # "pos":Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_2
    invoke-super {p0, p1, p2, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_0
.end method

.method public expandAll()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2612
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 2622
    :cond_0
    :goto_0
    return-void

    .line 2614
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationState:I

    if-ne v0, v1, :cond_0

    .line 2616
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpandCollapseAllState:I

    .line 2617
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationEnabled:Z

    if-nez v0, :cond_2

    .line 2618
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->expandAllGroups()V

    goto :goto_0

    .line 2621
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerJumpScrollToTop()V

    goto :goto_0
.end method

.method public expandCollapseAll(Z)Z
    .locals 1
    .param p1, "isExpand"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2805
    const/4 v0, 0x0

    return v0
.end method

.method public expandGroup(I)Z
    .locals 1
    .param p1, "groupPos"    # I

    .prologue
    .line 1832
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->expandGroup(IZ)Z

    move-result v0

    return v0
.end method

.method public expandGroup(IZ)Z
    .locals 7
    .param p1, "groupPos"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v6, -0x1

    .line 1844
    const/4 v5, 0x2

    invoke-static {v5, p1, v6, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtain(IIII)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v0

    .line 1846
    .local v0, "elGroupPos":Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 1847
    .local v2, "pm":Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    if-nez v2, :cond_0

    .line 1848
    const/4 v3, 0x0

    .line 1866
    :goto_0
    return v3

    .line 1850
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->recycle()V

    .line 1851
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v5, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->expandGroup(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Z

    move-result v3

    .line 1853
    .local v3, "retValue":Z
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    if-eqz v5, :cond_1

    .line 1854
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    invoke-interface {v5, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 1857
    :cond_1
    if-eqz p2, :cond_2

    .line 1858
    iget-object v5, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v1, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    .line 1860
    .local v1, "groupFlatPos":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v5

    add-int v4, v1, v5

    .line 1861
    .local v4, "shiftedGroupPosition":I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0, v5, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->smoothScrollToPosition(II)V

    .line 1864
    .end local v1    # "groupFlatPos":I
    .end local v4    # "shiftedGroupPosition":I
    :cond_2
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 832
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getExpandCollapseDuration()I
    .locals 6

    .prologue
    .line 1374
    const-wide v2, 0x4085e00000000000L    # 700.0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mTranslationOffset:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 1375
    .local v0, "animationDuration":I
    const/16 v1, 0x96

    if-ge v0, v1, :cond_0

    .line 1376
    const/16 v0, 0x96

    .line 1378
    :cond_0
    return v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .locals 5
    .param p1, "flatListPosition"    # I

    .prologue
    .line 2010
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2012
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderFooterPackedPosition(I)J

    move-result-wide v2

    .line 2019
    :goto_0
    return-wide v2

    .line 2015
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 2016
    .local v0, "adjustedPosition":I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 2017
    .local v1, "pm":Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v4, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 2018
    .local v2, "packedPos":J
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0
.end method

.method public getFlatListPosition(J)I
    .locals 5
    .param p1, "packedPosition"    # J

    .prologue
    const/4 v3, -0x1

    .line 2034
    invoke-static {p1, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtainPosition(J)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v0

    .line 2036
    .local v0, "elPackedPos":Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    if-nez v0, :cond_1

    .line 2044
    :cond_0
    :goto_0
    return v3

    .line 2038
    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 2039
    .local v2, "pm":Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->recycle()V

    .line 2040
    if-eqz v2, :cond_0

    .line 2042
    iget-object v3, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v1, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    .line 2043
    .local v1, "flatListPosition":I
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 2044
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v3

    goto :goto_0
.end method

.method public getSelectedId()J
    .locals 6

    .prologue
    .line 2070
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getSelectedPosition()J

    move-result-wide v2

    .line 2071
    .local v2, "packedPos":J
    const-wide v4, 0xffffffffL

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const-wide/16 v4, -0x1

    .line 2080
    :goto_0
    return-wide v4

    .line 2073
    :cond_0
    invoke-static {v2, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    .line 2075
    .local v0, "groupPos":I
    invoke-static {v2, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionType(J)I

    move-result v1

    if-nez v1, :cond_1

    .line 2077
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    goto :goto_0

    .line 2080
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v2, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v1, v0, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v4

    goto :goto_0
.end method

.method public getSelectedPosition()J
    .locals 4

    .prologue
    .line 2056
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getSelectedItemPosition()I

    move-result v0

    .line 2059
    .local v0, "selectedPos":I
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public getUnfoldedChildAt(I)Landroid/view/View;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 2762
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mItemDecorator:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$ItemDecorator;

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$ItemDecorator;->unfoldDecoratedView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 932
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v10

    .line 934
    .local v10, "posMetadata":Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v0, v10, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildOrGroupId(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)J

    move-result-wide p3

    .line 937
    iget-object v0, v10, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 941
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;

    iget-object v1, v10, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;->onGroupClick(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 945
    const/4 v11, 0x1

    .line 1020
    :goto_0
    return v11

    .line 949
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationEnabled:Z

    if-eqz v0, :cond_1

    .line 950
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->captureViewsPriorAnimation()V

    .line 952
    :cond_1
    iget-object v0, v10, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v9, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    .line 954
    .local v9, "groupPos":I
    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 955
    new-instance v8, Lcom/sec/android/touchwiz/widget/TwExpandableListView$2;

    invoke-direct {v8, p0, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$2;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;I)V

    .line 963
    .local v8, "animationEndRunnable":Ljava/lang/Runnable;
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationEnabled:Z

    if-eqz v0, :cond_2

    .line 964
    invoke-direct {p0, v9, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->startCollapseAnimation(ILjava/lang/Runnable;)V

    .line 968
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->collapseGroup(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Z

    .line 970
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$3;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->post(Ljava/lang/Runnable;)Z

    .line 977
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->playSoundEffect(I)V

    .line 979
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationEnabled:Z

    if-nez v0, :cond_3

    .line 980
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 1006
    :cond_3
    :goto_1
    const/4 v11, 0x1

    .line 1018
    .end local v8    # "animationEndRunnable":Ljava/lang/Runnable;
    .end local v9    # "groupPos":I
    .local v11, "returnValue":Z
    :goto_2
    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0

    .line 985
    .end local v11    # "returnValue":Z
    .restart local v9    # "groupPos":I
    :cond_4
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->expandGroup(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Z

    .line 987
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->playSoundEffect(I)V

    .line 989
    iget-object v0, v10, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v1

    add-int v12, v0, v1

    .line 990
    .local v12, "shiftedGroupPosition":I
    new-instance v8, Lcom/sec/android/touchwiz/widget/TwExpandableListView$4;

    invoke-direct {v8, p0, v9, v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$4;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;II)V

    .line 999
    .restart local v8    # "animationEndRunnable":Ljava/lang/Runnable;
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationEnabled:Z

    if-eqz v0, :cond_5

    .line 1000
    invoke-direct {p0, v9, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->startExpandAnimation(ILjava/lang/Runnable;)V

    goto :goto_1

    .line 1002
    :cond_5
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 1009
    .end local v8    # "animationEndRunnable":Ljava/lang/Runnable;
    .end local v9    # "groupPos":I
    .end local v12    # "shiftedGroupPosition":I
    :cond_6
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnChildClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;

    if-eqz v0, :cond_7

    .line 1010
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->playSoundEffect(I)V

    .line 1011
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnChildClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;

    iget-object v0, v10, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iget-object v0, v10, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v6, p3

    invoke-interface/range {v1 .. v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;->onChildClick(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;IIJ)Z

    move-result v11

    goto :goto_0

    .line 1015
    :cond_7
    const/4 v11, 0x0

    .restart local v11    # "returnValue":Z
    goto :goto_2
.end method

.method public isGroupExpanded(I)Z
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 2149
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method protected layoutChildren()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 1389
    const/4 v0, 0x0

    .line 1390
    .local v0, "before":Landroid/graphics/Rect;
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationState:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 1391
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "before":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1393
    .restart local v0    # "before":Landroid/graphics/Rect;
    :cond_0
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->layoutChildren()V

    .line 1394
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationState:I

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 1395
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1397
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2500
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2501
    const-class v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2502
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2506
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2507
    const-class v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2508
    return-void
.end method

.method onJumpScrollToTopFinished()V
    .locals 4

    .prologue
    .line 2642
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->onJumpScrollToTopFinished()V

    .line 2643
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 2677
    :goto_0
    return-void

    .line 2645
    :cond_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpandCollapseAllState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2646
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->captureViewsPriorAnimation()V

    .line 2647
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getExpandedState()[Z

    move-result-object v1

    .line 2648
    .local v1, "expanded":[Z
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->expandAllGroups()V

    .line 2649
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$10;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$10;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    .line 2659
    .local v0, "animationEndRunnable":Ljava/lang/Runnable;
    invoke-direct {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->startExpandAllAnimation([ZLjava/lang/Runnable;)V

    .line 2676
    .end local v0    # "animationEndRunnable":Ljava/lang/Runnable;
    .end local v1    # "expanded":[Z
    :cond_1
    :goto_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpandCollapseAllState:I

    goto :goto_0

    .line 2660
    :cond_2
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpandCollapseAllState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 2661
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->captureViewsPriorAnimation()V

    .line 2662
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$11;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$11;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    .line 2672
    .restart local v0    # "animationEndRunnable":Ljava/lang/Runnable;
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getExpandedState()[Z

    move-result-object v1

    .line 2673
    .restart local v1    # "expanded":[Z
    invoke-direct {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->startCollapseAllAnimation([ZLjava/lang/Runnable;)V

    .line 2674
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->collapseAllGroups()V

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2485
    instance-of v1, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;

    if-nez v1, :cond_1

    .line 2486
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2496
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 2490
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;

    .line 2491
    .local v0, "ss":Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2493
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 2494
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->resolveIndicator()V

    .line 435
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->resolveChildIndicator()V

    .line 436
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 2478
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2479
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-direct {v2, v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 909
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mItemDecorator:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$ItemDecorator;

    invoke-interface {v2, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$ItemDecorator;->unfoldDecoratedView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 912
    .local v1, "unfoldedDecoratedItemView":Landroid/view/View;
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 914
    invoke-super {p0, v1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v2

    .line 919
    :goto_0
    return v2

    .line 918
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 919
    .local v0, "adjustedPosition":I
    invoke-virtual {p0, v1, v0, p3, p4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v2

    goto :goto_0
.end method

.method public scrollTo(Landroid/view/View;IILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "groupPos"    # I
    .param p3, "expandingChildCount"    # I
    .param p4, "pos"    # Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2798
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 116
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    .line 854
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 856
    if-eqz p1, :cond_0

    .line 858
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-direct {v0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    .line 859
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mItemDecorator:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$ItemDecorator;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setItemDecorator(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$ItemDecorator;)V

    .line 865
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-super {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 866
    return-void

    .line 861
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 817
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childDivider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 772
    return-void
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childIndicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2312
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 2313
    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 2327
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorLeft:I

    .line 2328
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorRight:I

    .line 2329
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->resolveChildIndicator()V

    .line 2330
    return-void
.end method

.method public setChildIndicatorBoundsRelative(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2344
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorStart:I

    .line 2345
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorEnd:I

    .line 2346
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->resolveChildIndicator()V

    .line 2347
    return-void
.end method

.method public setCollapseAllSpeedFactor(F)V
    .locals 0
    .param p1, "collapseAllSpeedFactor"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2791
    return-void
.end method

.method public setCollapseSpeedFactor(F)V
    .locals 0
    .param p1, "collapseSpeedFactor"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2777
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 2512
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2513
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mDividerHeight:I

    .line 2514
    if-eqz p1, :cond_1

    .line 2515
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpListDividerHeight:[I

    if-nez v0, :cond_0

    .line 2516
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpListDividerHeight:[I

    .line 2518
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpListDividerHeight:[I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    aput v1, v0, v3

    .line 2519
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDivider() height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpListDividerHeight:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    :cond_1
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 3
    .param p1, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 2525
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->setDividerHeight(I)V

    .line 2526
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mDividerHeight:I

    .line 2527
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpListDividerHeight:[I

    if-nez v0, :cond_0

    .line 2528
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpListDividerHeight:[I

    .line 2530
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpListDividerHeight:[I

    aput p1, v0, v1

    .line 2531
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDividerHeight() height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    return-void
.end method

.method public setExpandAllSpeedFactor(F)V
    .locals 0
    .param p1, "expandAllSpeedFactor"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2784
    return-void
.end method

.method public setExpandSpeedFactor(F)V
    .locals 0
    .param p1, "expandSpeedFactor"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2770
    return-void
.end method

.method public setExpandableListAnimationEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 2720
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationEnabled:Z

    .line 2721
    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "groupIndicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2358
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 2359
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRight:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2360
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorLeft:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRight:I

    .line 2362
    :cond_0
    return-void
.end method

.method public setGroupIndicatorRotationAngle(I)V
    .locals 0
    .param p1, "angle"    # I

    .prologue
    .line 2604
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mRotationAngle:I

    .line 2605
    return-void
.end method

.method public setIndicatorBounds(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 2376
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorLeft:I

    .line 2377
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRight:I

    .line 2378
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->resolveIndicator()V

    .line 2379
    return-void
.end method

.method public setIndicatorBoundsRelative(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2393
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorStart:I

    .line 2394
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorEnd:I

    .line 2395
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->resolveIndicator()V

    .line 2396
    return-void
.end method

.method public setIndicatorGravity(I)V
    .locals 3
    .param p1, "gravity"    # I

    .prologue
    .line 2740
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 2741
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorGravity:I

    .line 2744
    :cond_1
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIndicatorGravity() gravity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIndicatorGravity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorGravity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    return-void
.end method

.method public setIndicatorPaddings(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 2730
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorPaddingLeft:I

    .line 2731
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorPaddingRight:I

    .line 2732
    return-void
.end method

.method public setOnChildClickListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;)V
    .locals 0
    .param p1, "onChildClickListener"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;

    .prologue
    .line 1992
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnChildClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;

    .line 1993
    return-void
.end method

.method public setOnGroupClickListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;)V
    .locals 0
    .param p1, "onGroupClickListener"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;

    .prologue
    .line 1960
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;

    .line 1961
    return-void
.end method

.method public setOnGroupCollapseListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;)V
    .locals 0
    .param p1, "onGroupCollapseListener"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    .prologue
    .line 1906
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    .line 1907
    return-void
.end method

.method public setOnGroupExpandListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;)V
    .locals 0
    .param p1, "onGroupExpandListener"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    .prologue
    .line 1930
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    .line 1931
    return-void
.end method

.method public setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    .prologue
    .line 845
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 846
    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "shouldExpandGroup"    # Z

    .prologue
    .line 2113
    invoke-static {p1, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtainChildPosition(II)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v1

    .line 2115
    .local v1, "elChildPos":Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 2117
    .local v2, "flatChildPos":Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    if-nez v2, :cond_1

    .line 2121
    if-nez p3, :cond_0

    const/4 v3, 0x0

    .line 2139
    :goto_0
    return v3

    .line 2123
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->expandGroup(I)Z

    .line 2125
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 2128
    if-nez v2, :cond_1

    .line 2129
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not find child"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2133
    :cond_1
    iget-object v3, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 2134
    .local v0, "absoluteFlatPosition":I
    invoke-super {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    .line 2136
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->recycle()V

    .line 2137
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 2139
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setSelectedGroup(I)V
    .locals 4
    .param p1, "groupPosition"    # I

    .prologue
    .line 2089
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtainGroupPosition(I)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v1

    .line 2091
    .local v1, "elGroupPos":Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 2092
    .local v2, "pm":Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    if-nez v2, :cond_0

    .line 2099
    :goto_0
    return-void

    .line 2095
    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->recycle()V

    .line 2096
    iget-object v3, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 2097
    .local v0, "absoluteFlatPosition":I
    invoke-super {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    .line 2098
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0
.end method
