.class public abstract Lcom/sec/android/touchwiz/widget/TwAbsListView;
.super Lcom/sec/android/touchwiz/widget/TwAdapterView;
.source "TwAbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwAbsListView$PenSelectVibrator;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$InputConnectionWrapper;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$TwSmoothScrollByMove;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForDoubleFling;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$WindowRunnnable;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$SelectionBoundsAdjuster;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/touchwiz/widget/TwAdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final DEBUG:Z = false

.field private static DEBUG_VELOCITY_TRACKER_TRACE:Z = false

.field static final DOUBLE_FLING_DETECTING_INTERVAL:I = 0xc8

.field private static final DRAGSCROLL_WORKING_ZONE_DP:I = 0x19

.field static final FLING_DOUBLE:I = 0x66

.field static final FLING_NONE:I = 0x64

.field static final FLING_SINGLE:I = 0x65

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_HEIGHT_BOTTOM_DP:I = 0x19

.field private static final HOVERSCROLL_HEIGHT_TOP_DP:I = 0x19

.field private static final HOVERSCROLL_SPEED_FASTER:F = 30.0f

.field private static final HOVERSCROLL_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field private static JUMP_SCROLL_TO_TOP_FINISHING:I = 0x0

.field private static JUMP_SCROLL_TO_TOP_IDLE:I = 0x0

.field private static JUMP_SCROLL_TO_TOP_INITIATED:I = 0x0

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field private static final MSG_HOVERSCROLL_MOVE:I = 0x1

.field private static final MSG_HOVERSCROLL_MOVE_FASTER:I = 0x2

.field private static final MSG_HOVERSCROLL_MOVE_TO_END:I = 0x3

.field private static final MSG_QC_HIDE:I = 0x0

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final QC_BOTTOM:I = 0x4

.field private static final QC_LEFT:I = 0x1

.field private static final QC_RIGHT:I = 0x3

.field private static final QC_SCROLL_HIDE:I = 0x0

.field private static final QC_STATE_NONE:I = 0x0

.field private static final QC_STATE_PRESSED:I = 0x2

.field private static final QC_STATE_SHOWN:I = 0x1

.field private static final QC_TOP:I = 0x2

.field private static final SAVED_STATE_KEY_FOR_BUNDLE:Ljava/lang/String; = "com.sec.android.touchwiz.widget.TwAbsListView.SavedState"

.field private static final TAG:Ljava/lang/String; = "TwAbsListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1

.field private static mTwScrollAmount:I

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:F

.field private QC_ICON_HIDE_DELAY:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mAccessibilityDelegate:Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

.field private mAlwaysDisableHoverHighlight:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mCurrentKeyCode:I

.field private mDVFSCookie:I

.field private mDVFSLockAcquired:Z

.field mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDensityScale:F

.field private mDirection:I

.field mDoubleFlingEnabled:Z

.field private mDragScrollWorkingZonePx:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

.field private mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

.field private mExtraPaddingInBottomHoverArea:I

.field private mExtraPaddingInTopHoverArea:I

.field private mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

.field mFastScrollAlwaysVisible:Z

.field mFastScrollEnabled:Z

.field private mFastScrollStyle:I

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFirstPressedPoint:I

.field mFlingMode:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mForcedClick:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mGlowPaddingLeft:I

.field private mGlowPaddingRight:I

.field private mHapticOverScroll:Z

.field private mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

.field private mHasWindowFocusForMotion:Z

.field public mHoverAreaEnter:Z

.field private mHoverBottomAreaHeight:I

.field private mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

.field private mHoverPosition:I

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollStateForListener:I

.field private mHoverScrollTimeInterval:J

.field private mHoverTopAreaHeight:I

.field private mHoveredOnEllipsizedText:Z

.field mHoveringEnabled:Z

.field private mIsChildViewEnabled:Z

.field private mIsCloseChildSetted:Z

.field private mIsCtrlkeyPressed:Z

.field private mIsDetaching:Z

.field private mIsDoubleTapDone:Z

.field private mIsDragBlockEnabled:Z

.field private mIsDragScrolled:Z

.field private mIsEnabledPaddingInHoverScroll:Z

.field private mIsHoverOverscrolled:Z

.field private mIsHoveredByMouse:Z

.field private mIsMultiFocusEnabled:Z

.field private mIsNeedPenSelectIconSet:Z

.field private mIsNeedPenSelection:Z

.field private mIsPenHovered:Z

.field private mIsPenPressed:Z

.field private mIsPenSelectPointerSetted:Z

.field private mIsQCShown:Z

.field final mIsScrap:[Z

.field private mIsSendHoverScrollState:Z

.field private mIsShiftkeyPressed:Z

.field private mIsTextSelectionStarted:Z

.field private mIsTwOnClickEnabled:Z

.field private mIsfirstMoveEvent:Z

.field private mJumpScrollToTopState:I

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field mLastFlingSpeed:I

.field private mLastHandledItemCount:I

.field private mLastPosition:I

.field private mLastPositionDistanceGuess:I

.field mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field private mLinearFlingEnabled:Z

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field private mMotionEnable:Z

.field mMotionPosition:I

.field private mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

.field private mMultiFocusImage:Landroid/graphics/drawable/Drawable;

.field public mMultiSelectionStart:Z

.field private mNeedsHoverScroll:Z

.field private mNestedYOffset:I

.field private mNewTextViewHoverState:Z

.field private mOldAdapterItemCount:I

.field private mOldHoverScrollDirection:I

.field private mOldKeyCode:I

.field private mOldTextViewHoverState:Z

.field private mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPenDragScrollTimeInterval:J

.field private mPenSelectVibrator:Lcom/sec/android/touchwiz/widget/TwAbsListView$PenSelectVibrator;

.field private mPendingCheckForDoubleFling:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForDoubleFling;

.field private mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;

.field private mPendingSync:Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

.field private mPerformClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

.field private mPointerCount:I

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

.field private mPreviousTextViewScroll:Z

.field private mPublicInputConnection:Lcom/sec/android/touchwiz/widget/TwAbsListView$InputConnectionWrapper;

.field private mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCLocation:I

.field private mQCRect:Landroid/graphics/Rect;

.field private mQCScrollDirection:I

.field private mQCScrollFrom:I

.field private mQCScrollNext:I

.field private mQCScrollRunnable:Ljava/lang/Runnable;

.field private mQCScrollTo:I

.field private mQCScrollingCount:I

.field private mQCstate:I

.field final mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

.field private mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field mResurrectToPosition:I

.field private final mScrollConsumed:[I

.field mScrollDown:Landroid/view/View;

.field private mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private final mScrollOffset:[I

.field private mScrollProfilingStarted:Z

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field private mSecondPressedPoint:I

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mTwCloseChildByBottom:Landroid/view/View;

.field private mTwCloseChildByTop:Landroid/view/View;

.field private mTwCloseChildPositionByBottom:I

.field private mTwCloseChildPositionByTop:I

.field public mTwCurrentFocusPosition:I

.field private mTwCustomMultiChoiceMode:Z

.field private mTwDistanceFromCloseChildBottom:I

.field private mTwDistanceFromCloseChildTop:I

.field private mTwDistanceFromTrackedChildTop:I

.field private mTwDragBlockBottom:I

.field private mTwDragBlockImage:Landroid/graphics/drawable/Drawable;

.field private mTwDragBlockLeft:I

.field private mTwDragBlockRect:Landroid/graphics/Rect;

.field private mTwDragBlockRight:I

.field private mTwDragBlockTop:I

.field private mTwDragEndX:I

.field private mTwDragEndY:I

.field private mTwDragSelectedItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTwDragSelectedItemSize:I

.field private mTwDragSelectedViewPosition:I

.field private mTwDragStartX:I

.field private mTwDragStartY:I

.field private mTwPressItemListArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTwSmoothScrollByMove:Lcom/sec/android/touchwiz/widget/TwAbsListView$TwSmoothScrollByMove;

.field private mTwTrackedChild:Landroid/view/View;

.field private mTwTrackedChildPosition:I

.field private mTwTwScrollRemains:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I

.field private methodPauseGc:Ljava/lang/reflect/Method;

.field private methodResumeGc:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    sput-boolean v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->DEBUG_VELOCITY_TRACKER_TRACE:Z

    .line 907
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 5873
    sput v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    .line 5874
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    .line 5875
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I

    .line 6896
    const/16 v0, 0x1f4

    sput v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwScrollAmount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 1166
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;-><init>(Landroid/content/Context;)V

    .line 160
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 165
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDoubleTapDone:Z

    .line 167
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionEnable:Z

    .line 169
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHasWindowFocusForMotion:Z

    .line 171
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 320
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    .line 353
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 378
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 383
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDrawSelectorOnTop:Z

    .line 393
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    .line 398
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 404
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    .line 409
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionLeftPadding:I

    .line 414
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionTopPadding:I

    .line 419
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionRightPadding:I

    .line 424
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionBottomPadding:I

    .line 429
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 434
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mWidthMeasureSpec:I

    .line 482
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 484
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDoubleFlingEnabled:Z

    .line 489
    const/16 v1, 0x64

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingMode:I

    .line 491
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastFlingSpeed:I

    .line 522
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 565
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmoothScrollbarEnabled:Z

    .line 585
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 587
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 613
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastTouchMode:I

    .line 616
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollProfilingStarted:Z

    .line 619
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingProfilingStarted:Z

    .line 628
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 629
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 677
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    .line 702
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityScale:F

    .line 704
    new-array v1, v7, [Z

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    .line 706
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollOffset:[I

    .line 707
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollConsumed:[I

    .line 713
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNestedYOffset:I

    .line 723
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 728
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPointerCount:I

    .line 735
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHapticOverScroll:Z

    .line 785
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDirection:I

    .line 813
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLinearFlingEnabled:Z

    .line 831
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverTopAreaHeight:I

    .line 833
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverBottomAreaHeight:I

    .line 843
    iput-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:J

    .line 845
    iput-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionCurrentTime:J

    .line 847
    iput-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:J

    .line 849
    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollTimeInterval:J

    .line 851
    const-wide/16 v2, 0x1f4

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPenDragScrollTimeInterval:J

    .line 853
    iput-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:J

    .line 855
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 860
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    .line 865
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollEnable:Z

    .line 871
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 873
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsSendHoverScrollState:Z

    .line 878
    const/high16 v1, 0x40c00000    # 6.0f

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_SPEED:F

    .line 888
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_DELAY:I

    .line 890
    const/16 v1, 0x1e

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->QC_ICON_HIDE_DELAY:I

    .line 892
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNeedsHoverScroll:Z

    .line 894
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStateForListener:I

    .line 896
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 899
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoveringEnabled:Z

    .line 901
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mExtraPaddingInTopHoverArea:I

    .line 902
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mExtraPaddingInBottomHoverArea:I

    .line 930
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCustomMultiChoiceMode:Z

    .line 932
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsCtrlkeyPressed:Z

    .line 933
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsShiftkeyPressed:Z

    .line 934
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsPenHovered:Z

    .line 935
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsPenPressed:Z

    .line 936
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsfirstMoveEvent:Z

    .line 938
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsMultiFocusEnabled:Z

    .line 942
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPressedPoint:I

    .line 943
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSecondPressedPoint:I

    .line 944
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOldAdapterItemCount:I

    .line 945
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOldKeyCode:I

    .line 946
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCurrentKeyCode:I

    .line 947
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCurrentFocusPosition:I

    .line 950
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiSelectionStart:Z

    .line 951
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsTextSelectionStarted:Z

    .line 952
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsNeedPenSelection:Z

    .line 954
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedItemSize:I

    .line 955
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedViewPosition:I

    .line 956
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsPenSelectPointerSetted:Z

    .line 957
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsNeedPenSelectIconSet:Z

    .line 958
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOldTextViewHoverState:Z

    .line 959
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNewTextViewHoverState:Z

    .line 960
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPreviousTextViewScroll:Z

    .line 963
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragBlockEnabled:Z

    .line 964
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartX:I

    .line 965
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartY:I

    .line 966
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragEndX:I

    .line 967
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragEndY:I

    .line 969
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockLeft:I

    .line 970
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockTop:I

    .line 971
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockRight:I

    .line 972
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockBottom:I

    .line 974
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 975
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTrackedChildPosition:I

    .line 976
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDistanceFromTrackedChildTop:I

    .line 978
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsCloseChildSetted:Z

    .line 979
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOldHoverScrollDirection:I

    .line 980
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildByTop:Landroid/view/View;

    .line 981
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildPositionByTop:I

    .line 982
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDistanceFromCloseChildTop:I

    .line 983
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildByBottom:Landroid/view/View;

    .line 984
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildPositionByBottom:I

    .line 985
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDistanceFromCloseChildBottom:I

    .line 988
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockRect:Landroid/graphics/Rect;

    .line 990
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsTwOnClickEnabled:Z

    .line 1058
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSLockAcquired:Z

    .line 1059
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSCookie:I

    .line 1060
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->methodPauseGc:Ljava/lang/reflect/Method;

    .line 1061
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    .line 3734
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mForcedClick:Z

    .line 4872
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    .line 4873
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    .line 5876
    sget v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mJumpScrollToTopState:I

    .line 5921
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverPosition:I

    .line 5923
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoveredOnEllipsizedText:Z

    .line 5924
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoveredByMouse:Z

    .line 5925
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAlwaysDisableHoverHighlight:Z

    .line 6894
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwSmoothScrollByMove:Lcom/sec/android/touchwiz/widget/TwAbsListView$TwSmoothScrollByMove;

    .line 6895
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 9754
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I

    .line 10231
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPenSelectVibrator:Lcom/sec/android/touchwiz/widget/TwAbsListView$PenSelectVibrator;

    .line 10279
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCLocation:I

    .line 10280
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    .line 10281
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsQCShown:Z

    .line 10286
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollingCount:I

    .line 10441
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$6;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$6;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    .line 1168
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->initAbsListView()V

    .line 1170
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 1172
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 1173
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1174
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    .line 1175
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1180
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v1, :cond_0

    .line 1181
    const-string v1, "TwAbsListView"

    const-string v2, "Get MotionRecognitionManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    const-string v1, "motion_recognition"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1186
    :cond_0
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$PenSelectVibrator;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PenSelectVibrator;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPenSelectVibrator:Lcom/sec/android/touchwiz/widget/TwAbsListView$PenSelectVibrator;

    .line 1188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1191
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 1195
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 1199
    invoke-direct/range {p0 .. p4}, Lcom/sec/android/touchwiz/widget/TwAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 160
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v14

    const-string v15, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 165
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDoubleTapDone:Z

    .line 167
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionEnable:Z

    .line 169
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHasWindowFocusForMotion:Z

    .line 171
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 320
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    .line 353
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 378
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 383
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDrawSelectorOnTop:Z

    .line 393
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    .line 398
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 404
    new-instance v14, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    .line 409
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionLeftPadding:I

    .line 414
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionTopPadding:I

    .line 419
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionRightPadding:I

    .line 424
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionBottomPadding:I

    .line 429
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 434
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mWidthMeasureSpec:I

    .line 482
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 484
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDoubleFlingEnabled:Z

    .line 489
    const/16 v14, 0x64

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingMode:I

    .line 491
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastFlingSpeed:I

    .line 522
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 565
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmoothScrollbarEnabled:Z

    .line 585
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 587
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 613
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastTouchMode:I

    .line 616
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollProfilingStarted:Z

    .line 619
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingProfilingStarted:Z

    .line 628
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 629
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 677
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    .line 702
    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityScale:F

    .line 704
    const/4 v14, 0x1

    new-array v14, v14, [Z

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    .line 706
    const/4 v14, 0x2

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollOffset:[I

    .line 707
    const/4 v14, 0x2

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollConsumed:[I

    .line 713
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNestedYOffset:I

    .line 723
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 728
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPointerCount:I

    .line 735
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHapticOverScroll:Z

    .line 785
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDirection:I

    .line 813
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLinearFlingEnabled:Z

    .line 831
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverTopAreaHeight:I

    .line 833
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverBottomAreaHeight:I

    .line 843
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:J

    .line 845
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionCurrentTime:J

    .line 847
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:J

    .line 849
    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollTimeInterval:J

    .line 851
    const-wide/16 v14, 0x1f4

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPenDragScrollTimeInterval:J

    .line 853
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:J

    .line 855
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 860
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    .line 865
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollEnable:Z

    .line 871
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 873
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsSendHoverScrollState:Z

    .line 878
    const/high16 v14, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_SPEED:F

    .line 888
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_DELAY:I

    .line 890
    const/16 v14, 0x1e

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->QC_ICON_HIDE_DELAY:I

    .line 892
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNeedsHoverScroll:Z

    .line 894
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStateForListener:I

    .line 896
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 899
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoveringEnabled:Z

    .line 901
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mExtraPaddingInTopHoverArea:I

    .line 902
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mExtraPaddingInBottomHoverArea:I

    .line 930
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCustomMultiChoiceMode:Z

    .line 932
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsCtrlkeyPressed:Z

    .line 933
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsShiftkeyPressed:Z

    .line 934
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsPenHovered:Z

    .line 935
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsPenPressed:Z

    .line 936
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsfirstMoveEvent:Z

    .line 938
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsMultiFocusEnabled:Z

    .line 942
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPressedPoint:I

    .line 943
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSecondPressedPoint:I

    .line 944
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOldAdapterItemCount:I

    .line 945
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOldKeyCode:I

    .line 946
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCurrentKeyCode:I

    .line 947
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCurrentFocusPosition:I

    .line 950
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiSelectionStart:Z

    .line 951
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsTextSelectionStarted:Z

    .line 952
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsNeedPenSelection:Z

    .line 954
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedItemSize:I

    .line 955
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedViewPosition:I

    .line 956
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsPenSelectPointerSetted:Z

    .line 957
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsNeedPenSelectIconSet:Z

    .line 958
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOldTextViewHoverState:Z

    .line 959
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNewTextViewHoverState:Z

    .line 960
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPreviousTextViewScroll:Z

    .line 963
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragBlockEnabled:Z

    .line 964
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartX:I

    .line 965
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartY:I

    .line 966
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragEndX:I

    .line 967
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragEndY:I

    .line 969
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockLeft:I

    .line 970
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockTop:I

    .line 971
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockRight:I

    .line 972
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockBottom:I

    .line 974
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 975
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTrackedChildPosition:I

    .line 976
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDistanceFromTrackedChildTop:I

    .line 978
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsCloseChildSetted:Z

    .line 979
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOldHoverScrollDirection:I

    .line 980
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildByTop:Landroid/view/View;

    .line 981
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildPositionByTop:I

    .line 982
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDistanceFromCloseChildTop:I

    .line 983
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildByBottom:Landroid/view/View;

    .line 984
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildPositionByBottom:I

    .line 985
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDistanceFromCloseChildBottom:I

    .line 988
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockRect:Landroid/graphics/Rect;

    .line 990
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsTwOnClickEnabled:Z

    .line 1058
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSLockAcquired:Z

    .line 1059
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSCookie:I

    .line 1060
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->methodPauseGc:Ljava/lang/reflect/Method;

    .line 1061
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    .line 3734
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mForcedClick:Z

    .line 4872
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    .line 4873
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    .line 5876
    sget v14, Lcom/sec/android/touchwiz/widget/TwAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mJumpScrollToTopState:I

    .line 5921
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverPosition:I

    .line 5923
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoveredOnEllipsizedText:Z

    .line 5924
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoveredByMouse:Z

    .line 5925
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAlwaysDisableHoverHighlight:Z

    .line 6894
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwSmoothScrollByMove:Lcom/sec/android/touchwiz/widget/TwAbsListView$TwSmoothScrollByMove;

    .line 6895
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 9754
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I

    .line 10231
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPenSelectVibrator:Lcom/sec/android/touchwiz/widget/TwAbsListView$PenSelectVibrator;

    .line 10279
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCLocation:I

    .line 10280
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    .line 10281
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsQCShown:Z

    .line 10286
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollingCount:I

    .line 10441
    new-instance v14, Lcom/sec/android/touchwiz/widget/TwAbsListView$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$6;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    .line 1201
    if-nez p1, :cond_0

    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "No context is provided"

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1203
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->initAbsListView()V

    .line 1205
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 1207
    sget-object v14, Lcom/android/internal/R$styleable;->AbsListView:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1210
    .local v4, "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1211
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    .line 1212
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1215
    :cond_1
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDrawSelectorOnTop:Z

    .line 1218
    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 1219
    .local v11, "stackFromBottom":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setStackFromBottom(Z)V

    .line 1221
    const/4 v14, 0x3

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 1222
    .local v9, "scrollingCacheEnabled":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setScrollingCacheEnabled(Z)V

    .line 1224
    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 1225
    .local v13, "useTextFilter":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setTextFilterEnabled(Z)V

    .line 1227
    const/4 v14, 0x5

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 1229
    .local v12, "transcriptMode":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setTranscriptMode(I)V

    .line 1231
    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 1232
    .local v5, "color":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setCacheColorHint(I)V

    .line 1234
    const/16 v14, 0x8

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 1235
    .local v7, "enableFastScroll":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setFastScrollEnabled(Z)V

    .line 1237
    const/16 v14, 0xb

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 1238
    .local v8, "fastScrollStyle":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setFastScrollStyle(I)V

    .line 1240
    const/16 v14, 0x9

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 1241
    .local v10, "smoothScrollbar":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 1243
    const/4 v14, 0x7

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setChoiceMode(I)V

    .line 1244
    const/16 v14, 0xa

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 1247
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1252
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v14, :cond_2

    .line 1253
    const-string v14, "TwAbsListView"

    const-string v15, "Get MotionRecognitionManager"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    const-string v14, "motion_recognition"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/motion/MotionRecognitionManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1258
    :cond_2
    new-instance v14, Lcom/sec/android/touchwiz/widget/TwAbsListView$PenSelectVibrator;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PenSelectVibrator;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPenSelectVibrator:Lcom/sec/android/touchwiz/widget/TwAbsListView$PenSelectVibrator;

    .line 1260
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 2498
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPressedPoint:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;
    .param p1, "x1"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPressedPoint:I

    return p1
.end method

.method static synthetic access$1102(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsChildViewEnabled:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;)Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;
    .param p1, "x1"    # Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/sec/android/touchwiz/widget/TwAbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDetaching:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/view/VelocityTracker;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/os/StrictMode$Span;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;
    .param p1, "x1"    # Landroid/os/StrictMode$Span;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$3200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLinearFlingEnabled:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$3400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$3600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$3700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$3800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$3900(Lcom/sec/android/touchwiz/widget/TwAbsListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    .line 152
    invoke-virtual/range {p0 .. p9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mJumpScrollToTopState:I

    return v0
.end method

.method static synthetic access$4002(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;
    .param p1, "x1"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mJumpScrollToTopState:I

    return p1
.end method

.method static synthetic access$4100()I
    .locals 1

    .prologue
    .line 152
    sget v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I

    return v0
.end method

.method static synthetic access$4200()I
    .locals 1

    .prologue
    .line 152
    sget v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    return v0
.end method

.method static synthetic access$4300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postOnJumpScrollToFinished()V

    return-void
.end method

.method static synthetic access$4400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$4500(Lcom/sec/android/touchwiz/widget/TwAbsListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    .line 152
    invoke-virtual/range {p0 .. p9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$5100(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$5200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwFastScroller;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCustomMultiChoiceMode:Z

    return v0
.end method

.method static synthetic access$5700(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5900()I
    .locals 1

    .prologue
    .line 152
    sget v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    return v0
.end method

.method static synthetic access$6000(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollTo:I

    return v0
.end method

.method static synthetic access$6600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollNext:I

    return v0
.end method

.method static synthetic access$6602(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;
    .param p1, "x1"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollNext:I

    return p1
.end method

.method static synthetic access$6700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollFrom:I

    return v0
.end method

.method static synthetic access$6800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollingCount:I

    return v0
.end method

.method static synthetic access$6808(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollingCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollingCount:I

    return v0
.end method

.method static synthetic access$6900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/view/animation/DecelerateInterpolator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsShiftkeyPressed:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollDirection:I

    return v0
.end method

.method static synthetic access$7100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsCtrlkeyPressed:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwAbsListView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->addToPressItemListArray(II)V

    return-void
.end method

.method private addToPressItemListArray(II)V
    .locals 4
    .param p1, "firstpoint"    # I
    .param p2, "secondpoint"    # I

    .prologue
    .line 10158
    const/4 v0, 0x0

    .line 10160
    .local v0, "checkCount":I
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsMultiFocusEnabled:Z

    if-nez v2, :cond_0

    .line 10201
    :goto_0
    return-void

    .line 10164
    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 10165
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10166
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10200
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    goto :goto_0

    .line 10168
    :cond_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10171
    :cond_3
    if-ge p1, p2, :cond_5

    .line 10172
    sub-int v2, p2, p1

    add-int/lit8 v0, v2, 0x1

    .line 10173
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_1

    .line 10174
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10175
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10179
    :goto_3
    add-int/lit8 p1, p1, 0x1

    .line 10173
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10177
    :cond_4
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 10181
    .end local v1    # "i":I
    :cond_5
    if-le p1, p2, :cond_7

    .line 10182
    sub-int v2, p1, p2

    add-int/lit8 v0, v2, 0x1

    .line 10183
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v0, :cond_1

    .line 10184
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 10185
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10189
    :goto_5
    add-int/lit8 p1, p1, -0x1

    .line 10183
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 10187
    :cond_6
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 10192
    .end local v1    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 10193
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10195
    :cond_8
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 7055
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7056
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 7057
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$5;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$5;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 7073
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 7075
    :cond_1
    return-void
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1786
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 1787
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 1790
    :cond_0
    :goto_0
    return v1

    .line 1788
    :cond_1
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    if-eq v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 1790
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 7047
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7048
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 7049
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 7050
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingActive:Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingStarted:Z

    .line 7052
    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 4
    .param p1, "animateEntrance"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 8119
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 8120
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 8121
    .local v0, "p":Landroid/widget/PopupWindow;
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 8122
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 8123
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 8124
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 8125
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 8126
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 8127
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8128
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 8129
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8130
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 8132
    .end local v0    # "p":Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 8133
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10302d9

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 8137
    :goto_0
    return-void

    .line 8135
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10302da

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 7762
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 7763
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 7765
    :cond_0
    return-void
.end method

.method private doScrollToBottomEnd()V
    .locals 1

    .prologue
    .line 10428
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollDirection:I

    .line 10429
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollFrom:I

    .line 10430
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollTo:I

    .line 10431
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollNext:I

    .line 10432
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollingCount:I

    .line 10434
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    .line 10435
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 10438
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 10439
    return-void
.end method

.method private doScrollToTopEnd()V
    .locals 1

    .prologue
    .line 10414
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollDirection:I

    .line 10415
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollFrom:I

    .line 10416
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollTo:I

    .line 10417
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollNext:I

    .line 10418
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollingCount:I

    .line 10420
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    .line 10421
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 10424
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 10425
    return-void
.end method

.method private drawQuickController(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 10394
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    if-ne v2, v5, :cond_3

    .line 10395
    :cond_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    .line 10396
    .local v1, "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 10397
    .local v0, "restoreCount":I
    const/4 v2, 0x0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10399
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    if-ne v2, v4, :cond_2

    .line 10400
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10405
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 10407
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsQCShown:Z

    .line 10411
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollY":I
    :goto_1
    return-void

    .line 10401
    .restart local v0    # "restoreCount":I
    .restart local v1    # "scrollY":I
    :cond_2
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    if-ne v2, v5, :cond_1

    .line 10402
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 10409
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollY":I
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsQCShown:Z

    goto :goto_1
.end method

.method private finishGlows()V
    .locals 1

    .prologue
    .line 8360
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v0, :cond_0

    .line 8361
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->finish()V

    .line 8362
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->finish()V

    .line 8364
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .prologue
    .line 7808
    sparse-switch p2, :sswitch_data_0

    .line 7841
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 7810
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 7811
    .local v4, "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7812
    .local v5, "sY":I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 7813
    .local v0, "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7845
    .local v1, "dY":I
    :goto_0
    sub-int v2, v0, v4

    .line 7846
    .local v2, "deltaX":I
    sub-int v3, v1, v5

    .line 7847
    .local v3, "deltaY":I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 7816
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v2    # "deltaX":I
    .end local v3    # "deltaY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 7817
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 7818
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7819
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 7820
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7822
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 7823
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7824
    .restart local v5    # "sY":I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 7825
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7826
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7828
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 7829
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 7830
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7831
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 7832
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7835
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_4
    iget v6, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 7836
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7837
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7838
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7839
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7808
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private getTextFilterInput()Landroid/widget/EditText;
    .locals 3

    .prologue
    .line 8140
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 8141
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 8142
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x1090148

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 8147
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 8149
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 8150
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8152
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    return-object v1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 9773
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 9934
    :cond_0
    :goto_0
    return-void

    .line 9775
    :pswitch_0
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    .line 9776
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 9779
    :pswitch_1
    const/4 v5, 0x0

    .line 9781
    .local v5, "offset":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionCurrentTime:J

    .line 9782
    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iput-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:J

    .line 9784
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsPenHovered:Z

    if-eqz v7, :cond_1

    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollTimeInterval:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    .line 9786
    :cond_1
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsPenPressed:Z

    if-eqz v7, :cond_2

    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPenDragScrollTimeInterval:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    .line 9790
    :cond_2
    const/4 v7, 0x1

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_SPEED:F

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I

    .line 9793
    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x2

    cmp-long v7, v8, v10

    if-lez v7, :cond_8

    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x4

    cmp-long v7, v8, v10

    if-gez v7, :cond_8

    .line 9794
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I

    .line 9801
    :cond_3
    :goto_1
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_a

    .line 9802
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I

    mul-int/lit8 v5, v7, -0x1

    .line 9803
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTrackedChild:Landroid/view/View;

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildByBottom:Landroid/view/View;

    if-nez v7, :cond_5

    :cond_4
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOldHoverScrollDirection:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    if-eq v7, v8, :cond_6

    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsCloseChildSetted:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 9804
    :cond_5
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildByBottom:Landroid/view/View;

    iput-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 9805
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDistanceFromCloseChildBottom:I

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDistanceFromTrackedChildTop:I

    .line 9806
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildPositionByBottom:I

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTrackedChildPosition:I

    .line 9807
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOldHoverScrollDirection:I

    .line 9808
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsCloseChildSetted:Z

    .line 9821
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 9825
    if-gez v5, :cond_d

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    if-nez v7, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingTop()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    if-eq v7, v8, :cond_d

    .line 9826
    :cond_7
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    .line 9827
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v8, 0x1

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 9795
    :cond_8
    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x4

    cmp-long v7, v8, v10

    if-ltz v7, :cond_9

    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x5

    cmp-long v7, v8, v10

    if-gez v7, :cond_9

    .line 9796
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I

    goto :goto_1

    .line 9797
    :cond_9
    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x5

    cmp-long v7, v8, v10

    if-ltz v7, :cond_3

    .line 9798
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I

    goto/16 :goto_1

    .line 9811
    :cond_a
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I

    mul-int/lit8 v5, v7, 0x1

    .line 9812
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTrackedChild:Landroid/view/View;

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildByBottom:Landroid/view/View;

    if-nez v7, :cond_c

    :cond_b
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOldHoverScrollDirection:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    if-eq v7, v8, :cond_6

    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsCloseChildSetted:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 9813
    :cond_c
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildByBottom:Landroid/view/View;

    iput-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 9814
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDistanceFromCloseChildBottom:I

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDistanceFromTrackedChildTop:I

    .line 9815
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildPositionByBottom:I

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTrackedChildPosition:I

    .line 9816
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOldHoverScrollDirection:I

    .line 9817
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsCloseChildSetted:Z

    goto/16 :goto_2

    .line 9829
    :cond_d
    if-lez v5, :cond_f

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getCount()I

    move-result v8

    if-ne v7, v8, :cond_e

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    if-eq v7, v8, :cond_f

    .line 9833
    :cond_e
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    .line 9834
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v8, 0x1

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 9837
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getOverScrollMode()I

    move-result v6

    .line 9838
    .local v6, "overscrollMode":I
    if-eqz v6, :cond_10

    const/4 v7, 0x1

    if-ne v6, v7, :cond_15

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->contentFits()Z

    move-result v7

    if-nez v7, :cond_15

    :cond_10
    const/4 v0, 0x1

    .line 9841
    .local v0, "canOverscroll":Z
    :goto_3
    if-eqz v0, :cond_14

    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_14

    .line 9842
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_16

    .line 9843
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 9844
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_11

    .line 9845
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 9854
    :cond_11
    :goto_4
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_13

    .line 9855
    :cond_12
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 9858
    :cond_13
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    .line 9861
    :cond_14
    if-nez v0, :cond_0

    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_0

    .line 9862
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 9838
    .end local v0    # "canOverscroll":Z
    :cond_15
    const/4 v0, 0x0

    goto :goto_3

    .line 9847
    .restart local v0    # "canOverscroll":Z
    :cond_16
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_11

    .line 9848
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 9849
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_11

    .line 9850
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto :goto_4

    .line 9870
    .end local v0    # "canOverscroll":Z
    .end local v5    # "offset":I
    .end local v6    # "overscrollMode":I
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v3

    .line 9872
    .local v3, "childCount":I
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 9877
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getCount()I

    move-result v8

    if-ne v7, v8, :cond_17

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    if-eq v7, v8, :cond_1b

    :cond_17
    const/4 v1, 0x1

    .line 9880
    .local v1, "canScrollDown":Z
    :goto_5
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    if-nez v7, :cond_18

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingTop()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    if-eq v7, v8, :cond_1c

    :cond_18
    const/4 v2, 0x1

    .line 9882
    .local v2, "canScrollUp":Z
    :goto_6
    const/4 v7, 0x1

    const/high16 v8, 0x41f00000    # 30.0f

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I

    .line 9885
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCLocation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1d

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I

    neg-int v4, v7

    .line 9887
    .local v4, "distanceToMove":I
    :goto_7
    if-gez v4, :cond_19

    if-nez v2, :cond_1a

    :cond_19
    if-lez v4, :cond_1e

    if-eqz v1, :cond_1e

    .line 9889
    :cond_1a
    const/4 v7, 0x0

    invoke-virtual {p0, v4, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    .line 9890
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v8, 0x2

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 9877
    .end local v1    # "canScrollDown":Z
    .end local v2    # "canScrollUp":Z
    .end local v4    # "distanceToMove":I
    :cond_1b
    const/4 v1, 0x0

    goto :goto_5

    .line 9880
    .restart local v1    # "canScrollDown":Z
    :cond_1c
    const/4 v2, 0x0

    goto :goto_6

    .line 9885
    .restart local v2    # "canScrollUp":Z
    :cond_1d
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I

    goto :goto_7

    .line 9893
    .restart local v4    # "distanceToMove":I
    :cond_1e
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getOverScrollMode()I

    move-result v6

    .line 9894
    .restart local v6    # "overscrollMode":I
    if-eqz v6, :cond_1f

    const/4 v7, 0x1

    if-ne v6, v7, :cond_24

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->contentFits()Z

    move-result v7

    if-nez v7, :cond_24

    :cond_1f
    const/4 v0, 0x1

    .line 9897
    .restart local v0    # "canOverscroll":Z
    :goto_8
    if-eqz v0, :cond_23

    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_23

    .line 9898
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCLocation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_25

    .line 9899
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 9900
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_20

    .line 9901
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 9910
    :cond_20
    :goto_9
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v7, :cond_22

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_21

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_22

    .line 9911
    :cond_21
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 9914
    :cond_22
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    .line 9917
    :cond_23
    if-nez v0, :cond_0

    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_0

    .line 9918
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 9894
    .end local v0    # "canOverscroll":Z
    :cond_24
    const/4 v0, 0x0

    goto :goto_8

    .line 9903
    .restart local v0    # "canOverscroll":Z
    :cond_25
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCLocation:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_20

    .line 9904
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 9905
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_20

    .line 9906
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto :goto_9

    .line 9924
    .end local v0    # "canOverscroll":Z
    .end local v1    # "canScrollDown":Z
    .end local v2    # "canScrollUp":Z
    .end local v3    # "childCount":I
    .end local v4    # "distanceToMove":I
    .end local v6    # "overscrollMode":I
    :pswitch_3
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCLocation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_26

    .line 9925
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->doScrollToTopEnd()V

    goto/16 :goto_0

    .line 9926
    :cond_26
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCLocation:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 9927
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->doScrollToBottomEnd()V

    goto/16 :goto_0

    .line 9773
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initAbsListView()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 1264
    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setClickable(Z)V

    .line 1265
    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setFocusableInTouchMode(Z)V

    .line 1266
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setWillNotDraw(Z)V

    .line 1267
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 1268
    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setScrollingCacheEnabled(Z)V

    .line 1270
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 1271
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 1272
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchSlop:I

    .line 1273
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMinimumVelocity:I

    .line 1274
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMaximumVelocity:I

    .line 1275
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverscrollDistance:I

    .line 1276
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverflingDistance:I

    .line 1279
    .end local v1    # "configuration":Landroid/view/ViewConfiguration;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1280
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDensityScale:F

    .line 1295
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1296
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAudioManager:Landroid/media/AudioManager;

    .line 1300
    :cond_2
    const-class v0, Ldalvik/system/VMRuntime;

    .line 1302
    .local v0, "clazz":Ljava/lang/Class;
    :try_start_0
    const-string v4, "pauseGc"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->methodPauseGc:Ljava/lang/reflect/Method;

    .line 1303
    const-string v4, "resumeGc"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->methodResumeGc:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1309
    :goto_0
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 1310
    .local v3, "value":Landroid/util/TypedValue;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_4

    .line 1311
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x10105ae

    invoke-virtual {v4, v5, v3, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    .line 1313
    .local v2, "resolved":Z
    if-eqz v2, :cond_3

    .line 1314
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    .line 1318
    :cond_3
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x10105b2

    invoke-virtual {v4, v5, v3, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    .line 1320
    if-eqz v2, :cond_4

    .line 1321
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockImage:Landroid/graphics/drawable/Drawable;

    .line 1326
    .end local v2    # "resolved":Z
    :cond_4
    return-void

    .line 1305
    .end local v3    # "value":Landroid/util/TypedValue;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1304
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 6214
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 6215
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6219
    :goto_0
    return-void

    .line 6217
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 6222
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 6223
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6225
    :cond_0
    return-void
.end method

.method private isLockScreenMode()Z
    .locals 7

    .prologue
    .line 4450
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 4451
    .local v3, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v2, 0x0

    .line 4452
    .local v2, "isLockState":Z
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 4454
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 4455
    .local v4, "windowManager":Landroid/view/IWindowManager;
    const/4 v0, 0x1

    .line 4456
    .local v0, "isCoverOpen":Z
    if-eqz v4, :cond_0

    .line 4464
    :cond_0
    const/4 v1, 0x0

    .line 4465
    .local v1, "isLockScreenAndCoverOpen":Z
    if-nez v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 4467
    :goto_0
    return v1

    .line 4465
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMultiWindows()Z
    .locals 2

    .prologue
    .line 1992
    const-string v0, "1"

    const-string v1, "sys.multiwindow.running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isOwnerThread()Z
    .locals 2

    .prologue
    .line 1900
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isQCSupported()Z
    .locals 2

    .prologue
    .line 10292
    sget v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->sSpenUspLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 10293
    const/4 v0, 0x1

    .line 10295
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 9948
    const-string v0, "TwAbsListView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9949
    return-void
.end method

.method private onHoverDrawableState(Landroid/view/MotionEvent;)V
    .locals 17
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5939
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 5940
    .local v1, "action":I
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    .line 5943
    .local v11, "toolType":I
    const/4 v14, 0x7

    if-eq v1, v14, :cond_0

    const/16 v14, 0x9

    if-ne v1, v14, :cond_3

    :cond_0
    const/4 v14, 0x2

    if-ne v11, v14, :cond_3

    .line 5944
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsPenHovered:Z

    .line 5950
    :cond_1
    :goto_0
    const/4 v14, 0x1

    if-eq v11, v14, :cond_5

    .line 5951
    const/4 v14, 0x3

    if-ne v11, v14, :cond_4

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoveredByMouse:Z

    .line 6065
    :cond_2
    :goto_2
    return-void

    .line 5945
    :cond_3
    const/16 v14, 0xa

    if-ne v1, v14, :cond_1

    .line 5946
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsPenHovered:Z

    goto :goto_0

    .line 5951
    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    .line 5954
    :cond_5
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoveredByMouse:Z

    .line 5957
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAlwaysDisableHoverHighlight:Z

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    .line 5962
    const/16 v14, 0x9

    if-ne v1, v14, :cond_6

    .line 5963
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsPenHovered:Z

    if-nez v14, :cond_2

    .line 5964
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    .line 5970
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isMultiWindows()Z

    move-result v14

    if-nez v14, :cond_2

    .line 5974
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsPenHovered:Z

    if-nez v14, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isInDialog()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 5975
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5976
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    .line 5980
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "finger_air_view"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    const/4 v6, 0x1

    .line 5985
    .local v6, "isFingerAirView":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "finger_air_view_information_preview"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_d

    const/4 v7, 0x1

    .line 5988
    .local v7, "isFingerAirViewPreview":Z
    :goto_4
    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    .line 5991
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isHovered()Z

    move-result v14

    if-nez v14, :cond_9

    .line 5992
    const/4 v14, 0x1

    if-ne v11, v14, :cond_8

    .line 5993
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setFingerHovered(Z)V

    .line 5995
    :cond_8
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setHovered(Z)V

    .line 5997
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    .line 5998
    .local v12, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    .line 5999
    .local v13, "y":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v9

    .line 6000
    .local v9, "newHoverPosition":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverPosition:I

    if-eq v14, v9, :cond_e

    const/4 v2, 0x1

    .line 6001
    .local v2, "bChanged":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->shouldShowSelectorDefault()Z

    move-result v10

    .line 6003
    .local v10, "shouldShowSelector":Z
    const/4 v3, 0x0

    .line 6005
    .local v3, "child":Landroid/view/View;
    if-gez v9, :cond_f

    .line 6006
    if-nez v10, :cond_a

    .line 6007
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 6010
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_b

    .line 6011
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6012
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postInvalidateOnAnimation()V

    .line 6013
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoveredOnEllipsizedText:Z

    .line 6015
    :cond_b
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverPosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 6061
    .end local v2    # "bChanged":Z
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "newHoverPosition":I
    .end local v10    # "shouldShowSelector":Z
    .end local v12    # "x":I
    .end local v13    # "y":I
    :catch_0
    move-exception v4

    .line 6062
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 5980
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "isFingerAirView":Z
    .end local v7    # "isFingerAirViewPreview":Z
    :cond_c
    const/4 v6, 0x0

    goto :goto_3

    .line 5985
    .restart local v6    # "isFingerAirView":Z
    :cond_d
    const/4 v7, 0x0

    goto :goto_4

    .line 6000
    .restart local v7    # "isFingerAirViewPreview":Z
    .restart local v9    # "newHoverPosition":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_e
    const/4 v2, 0x0

    goto :goto_5

    .line 6019
    .restart local v2    # "bChanged":Z
    .restart local v3    # "child":Landroid/view/View;
    .restart local v10    # "shouldShowSelector":Z
    :cond_f
    :try_start_1
    move-object/from16 v0, p0

    iput v9, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverPosition:I

    .line 6021
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6023
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v5

    .line 6025
    .local v5, "foundEllipsizedTextView":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->findSetFingerHovedInAppWidget(Landroid/view/View;)Z

    move-result v8

    .line 6039
    .local v8, "isSetFingerHovedInAppWidget":Z
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_12

    if-eqz v5, :cond_12

    if-eqz v8, :cond_12

    .line 6040
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 6041
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoveredOnEllipsizedText:Z

    .line 6048
    :cond_10
    :goto_6
    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_11

    .line 6049
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->refreshDrawableState()V

    .line 6050
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postInvalidateOnAnimation()V

    .line 6053
    :cond_11
    const/16 v14, 0xa

    if-ne v1, v14, :cond_2

    if-nez v10, :cond_2

    .line 6054
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoveredOnEllipsizedText:Z

    .line 6055
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverPosition:I

    .line 6056
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    .line 6057
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6058
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 6059
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postInvalidateOnAnimation()V

    goto/16 :goto_2

    .line 6043
    :cond_12
    if-nez v10, :cond_10

    .line 6044
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 6345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 6347
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 6348
    .local v1, "pointerId":I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    if-ne v1, v4, :cond_0

    .line 6352
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 6353
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionX:I

    .line 6354
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 6355
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    .line 6356
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 6361
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    .line 6363
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 6352
    goto :goto_0
.end method

.method private onTouchCancel()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 5834
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    packed-switch v1, :pswitch_data_0

    .line 5847
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5848
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setPressed(Z)V

    .line 5849
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5850
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 5851
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 5853
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearScrollingCache()V

    .line 5854
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5855
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->recycleVelocityTracker()V

    .line 5858
    .end local v0    # "motionView":Landroid/view/View;
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v1, :cond_1

    .line 5859
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 5860
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 5862
    :cond_1
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 5863
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPointerCount:I

    .line 5871
    return-void

    .line 5836
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-nez v1, :cond_2

    .line 5837
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    .line 5839
    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->startSpringback()V

    goto :goto_0

    .line 5834
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 5541
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 5543
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 5545
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 5546
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    if-eqz v4, :cond_0

    .line 5547
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;->stop()V

    .line 5549
    :cond_0
    const/4 v4, 0x5

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5550
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionX:I

    .line 5551
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 5552
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    .line 5553
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    .line 5554
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDirection:I

    .line 5603
    :goto_0
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    if-nez v4, :cond_1

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5605
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForTap:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5611
    :cond_1
    return-void

    .line 5556
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 5557
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 5558
    .local v3, "y":I
    invoke-virtual {p0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v0

    .line 5560
    .local v0, "motionPosition":I
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataChanged:Z

    if-nez v4, :cond_3

    .line 5561
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 5563
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createScrollingCache()V

    .line 5564
    const/4 v4, 0x3

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5565
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    .line 5566
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->findMotionRow(I)I

    move-result v0

    .line 5567
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->flywheelTouch()V

    .line 5591
    :cond_3
    :goto_1
    if-ltz v0, :cond_4

    .line 5593
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5594
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 5597
    .end local v1    # "v":Landroid/view/View;
    :cond_4
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionX:I

    .line 5598
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 5599
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 5600
    const/high16 v4, -0x80000000

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    goto :goto_0

    .line 5568
    :cond_5
    if-ltz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5572
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5581
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForTap:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;

    if-nez v4, :cond_6

    .line 5582
    new-instance v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForTap:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;

    .line 5585
    :cond_6
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForTap:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->x:F

    .line 5586
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForTap:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->y:F

    .line 5587
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForTap:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {p0, v4, v6, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 5614
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 5615
    .local v1, "pointerIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 5616
    const/4 v1, 0x0

    .line 5617
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 5620
    :cond_0
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataChanged:Z

    if-eqz v4, :cond_1

    .line 5623
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    .line 5626
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v3, v4

    .line 5628
    .local v3, "y":I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    packed-switch v4, :pswitch_data_0

    .line 5662
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 5634
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v4, v3, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5639
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 5640
    .local v2, "x":F
    int-to-float v4, v3

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchSlop:I

    int-to-float v5, v5

    invoke-virtual {p0, v2, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointInView(FFF)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5641
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setPressed(Z)V

    .line 5642
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5643
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 5644
    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 5646
    :cond_3
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForTap:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;

    :goto_1
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5648
    const/4 v4, 0x2

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5649
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    goto :goto_0

    .line 5646
    :cond_4
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    goto :goto_1

    .line 5659
    .end local v0    # "motionView":Landroid/view/View;
    .end local v2    # "x":F
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v4, v3, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 5628
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)V
    .locals 20
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 5665
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 5805
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setPressed(Z)V

    .line 5807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 5808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 5809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 5813
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 5814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5815
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->recycleVelocityTracker()V

    .line 5817
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 5818
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPointerCount:I

    .line 5827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 5828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StrictMode$Span;->finish()V

    .line 5829
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 5831
    :cond_2
    :goto_1
    return-void

    .line 5669
    :pswitch_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 5670
    .local v13, "motionPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5671
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_d

    .line 5672
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 5673
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5676
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    .line 5677
    .local v16, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v16, v17

    if-lez v17, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_9

    const/4 v10, 0x1

    .line 5678
    .local v10, "inList":Z
    :goto_2
    if-eqz v10, :cond_d

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v17

    if-nez v17, :cond_d

    .line 5679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    .line 5680
    new-instance v17, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    .line 5683
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    .line 5684
    .local v14, "performClick":Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;
    iput v13, v14, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->mClickMotionPosition:I

    .line 5685
    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 5687
    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 5689
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 5690
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForTap:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;

    move-object/from16 v17, v0

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5692
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 5693
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 5694
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5695
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelectedPositionInt(I)V

    .line 5696
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    .line 5697
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5698
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 5699
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setPressed(Z)V

    .line 5700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 5701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 5702
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    instance-of v0, v8, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 5703
    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 5705
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 5707
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 5708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5710
    :cond_8
    new-instance v17, Lcom/sec/android/touchwiz/widget/TwAbsListView$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView$3;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 5722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 5677
    .end local v10    # "inList":Z
    .end local v14    # "performClick":Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 5690
    .restart local v10    # "inList":Z
    .restart local v14    # "performClick":Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    move-object/from16 v17, v0

    goto/16 :goto_3

    .line 5725
    :cond_b
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5726
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    goto/16 :goto_1

    .line 5729
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 5730
    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->run()V

    .line 5734
    .end local v10    # "inList":Z
    .end local v14    # "performClick":Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;
    .end local v16    # "x":F
    :cond_d
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5735
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    goto/16 :goto_0

    .line 5738
    .end local v4    # "child":Landroid/view/View;
    .end local v13    # "motionPosition":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v5

    .line 5739
    .local v5, "childCount":I
    if-lez v5, :cond_14

    .line 5740
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v9

    .line 5741
    .local v9, "firstChildTop":I
    add-int/lit8 v17, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 5742
    .local v12, "lastChildBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 5743
    .local v7, "contentTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    .line 5744
    .local v6, "contentBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_e

    if-lt v9, v7, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v17

    sub-int v17, v17, v6

    move/from16 v0, v17

    if-gt v12, v0, :cond_e

    .line 5747
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5748
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 5750
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5751
    .local v15, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 5753
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v11, v0

    .line 5759
    .local v11, "initialVelocity":I
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverscrollDistance:I

    move/from16 v17, v0

    sub-int v17, v7, v17

    move/from16 v0, v17

    if-eq v9, v0, :cond_12

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverscrollDistance:I

    move/from16 v17, v0

    add-int v17, v17, v6

    move/from16 v0, v17

    if-eq v12, v0, :cond_12

    .line 5764
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_11

    .line 5765
    new-instance v17, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    .line 5767
    :cond_11
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 5769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    .line 5771
    :cond_12
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5772
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 5773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    .line 5774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 5776
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 5777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;->stop()V

    goto/16 :goto_0

    .line 5782
    .end local v6    # "contentBottom":I
    .end local v7    # "contentTop":I
    .end local v9    # "firstChildTop":I
    .end local v11    # "initialVelocity":I
    .end local v12    # "lastChildBottom":I
    .end local v15    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_14
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5783
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 5788
    .end local v5    # "childCount":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_15

    .line 5789
    new-instance v17, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    .line 5791
    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5792
    .restart local v15    # "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 5793
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v11, v0

    .line 5795
    .restart local v11    # "initialVelocity":I
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 5796
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_16

    .line 5797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_0

    .line 5799
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 5665
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 7781
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 7782
    .local v1, "screenHeight":I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 7783
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getLocationOnScreen([I)V

    .line 7786
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDensityScale:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 7787
    .local v0, "bottomGap":I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7788
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 7793
    :goto_0
    return-void

    .line 7791
    :cond_0
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private postOnJumpScrollToFinished()V
    .locals 1

    .prologue
    .line 5884
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$4;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$4;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5889
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 6228
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 6229
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 6230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6232
    :cond_0
    return-void
.end method

.method private registerMotionListener()V
    .locals 0

    .prologue
    .line 9718
    return-void
.end method

.method private releaseAllBoosters()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1064
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_0

    .line 1065
    invoke-static {v1}, Landroid/os/DVFSHelper;->onScrollEvent(Z)V

    .line 1066
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSLockAcquired:Z

    .line 1068
    :cond_0
    return-void
.end method

.method private scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .locals 37
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4206
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    sub-int v34, p2, v3

    .line 4207
    .local v34, "rawDeltaY":I
    const/16 v36, 0x0

    .line 4208
    .local v36, "scrollOffsetCorrection":I
    const/16 v35, 0x0

    .line 4209
    .local v35, "scrollConsumedCorrection":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 4210
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    sub-int v34, v34, v3

    .line 4212
    :cond_0
    const/4 v3, 0x0

    move/from16 v0, v34

    neg-int v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollOffset:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4213
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollConsumed:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int v34, v34, v3

    .line 4214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollOffset:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    neg-int v0, v3

    move/from16 v36, v0

    .line 4215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollConsumed:[I

    const/4 v4, 0x1

    aget v35, v3, v4

    .line 4216
    if-eqz p3, :cond_1

    .line 4217
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4220
    :cond_1
    move/from16 v20, v34

    .line 4221
    .local v20, "deltaY":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    sub-int v3, p2, v3

    add-int v21, v3, v35

    .line 4223
    .local v21, "incrementalDeltaY":I
    :goto_0
    const/16 v22, 0x0

    .line 4225
    .local v22, "lastYCorrection":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_12

    .line 4233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_2

    .line 4235
    const-string v3, "AbsListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 4238
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    move/from16 v0, p2

    if-eq v0, v3, :cond_8

    .line 4242
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-nez v3, :cond_3

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchSlop:I

    if-le v3, v4, :cond_3

    .line 4244
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v33

    .line 4245
    .local v33, "parent":Landroid/view/ViewParent;
    if-eqz v33, :cond_3

    .line 4246
    const/4 v3, 0x1

    move-object/from16 v0, v33

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4251
    .end local v33    # "parent":Landroid/view/ViewParent;
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    if-ltz v3, :cond_a

    .line 4252
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    sub-int v23, v3, v4

    .line 4259
    .local v23, "motionIndex":I
    :goto_1
    const/16 v26, 0x0

    .line 4260
    .local v26, "motionViewPrevTop":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4261
    .local v25, "motionView":Landroid/view/View;
    if-eqz v25, :cond_4

    .line 4262
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v26

    .line 4266
    :cond_4
    const/16 v18, 0x0

    .line 4267
    .local v18, "atEdge":Z
    if-eqz v21, :cond_5

    .line 4268
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->trackMotionScroll(II)Z

    move-result v18

    .line 4272
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4273
    if-eqz v25, :cond_7

    .line 4276
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v27

    .line 4277
    .local v27, "motionViewRealTop":I
    if-eqz v18, :cond_6

    .line 4280
    move/from16 v0, v21

    neg-int v3, v0

    sub-int v4, v27, v26

    sub-int v7, v3, v4

    .line 4282
    .local v7, "overscroll":I
    const/4 v4, 0x0

    sub-int v5, v7, v21

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollOffset:[I

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dispatchNestedScroll(IIII[I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollOffset:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int v22, v22, v3

    .line 4285
    if-eqz p3, :cond_6

    .line 4286
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4336
    .end local v7    # "overscroll":I
    :cond_6
    :goto_2
    add-int v3, p2, v22

    add-int v3, v3, v36

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 4338
    .end local v27    # "motionViewRealTop":I
    :cond_7
    add-int v3, p2, v22

    add-int v3, v3, v36

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    .line 4411
    .end local v18    # "atEdge":Z
    .end local v23    # "motionIndex":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v26    # "motionViewPrevTop":I
    :cond_8
    :goto_3
    return-void

    .end local v21    # "incrementalDeltaY":I
    .end local v22    # "lastYCorrection":I
    :cond_9
    move/from16 v21, v20

    .line 4221
    goto/16 :goto_0

    .line 4256
    .restart local v21    # "incrementalDeltaY":I
    .restart local v22    # "lastYCorrection":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v3

    div-int/lit8 v23, v3, 0x2

    .restart local v23    # "motionIndex":I
    goto :goto_1

    .line 4289
    .restart local v7    # "overscroll":I
    .restart local v18    # "atEdge":Z
    .restart local v25    # "motionView":Landroid/view/View;
    .restart local v26    # "motionViewPrevTop":I
    .restart local v27    # "motionViewRealTop":I
    :cond_b
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverscrollDistance:I

    const/4 v14, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v19

    .line 4292
    .local v19, "atOverscrollEdge":Z
    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_c

    .line 4294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 4297
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getOverScrollMode()I

    move-result v32

    .line 4298
    .local v32, "overscrollMode":I
    if-eqz v32, :cond_d

    const/4 v3, 0x1

    move/from16 v0, v32

    if-ne v0, v3, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_6

    .line 4301
    :cond_d
    if-nez v19, :cond_e

    .line 4302
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDirection:I

    .line 4303
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4305
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v31, v0

    .line 4306
    .local v31, "oldTouchMode":I
    if-lez v21, :cond_10

    .line 4316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    neg-int v4, v7

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(FF)V

    .line 4318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_f

    .line 4319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 4321
    :cond_f
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->getMaxHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingTop()I

    move-result v8

    add-int/2addr v6, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate(IIII)V

    goto/16 :goto_2

    .line 4323
    :cond_10
    if-gez v21, :cond_6

    .line 4324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v4, v7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, p1

    int-to-float v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(FF)V

    .line 4326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_11

    .line 4327
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 4329
    :cond_11
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->getMaxHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate(IIII)V

    goto/16 :goto_2

    .line 4340
    .end local v7    # "overscroll":I
    .end local v18    # "atEdge":Z
    .end local v19    # "atOverscrollEdge":Z
    .end local v23    # "motionIndex":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v26    # "motionViewPrevTop":I
    .end local v27    # "motionViewRealTop":I
    .end local v31    # "oldTouchMode":I
    .end local v32    # "overscrollMode":I
    :cond_12
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    .line 4341
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    move/from16 v0, p2

    if-eq v0, v3, :cond_8

    .line 4342
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    move/from16 v30, v0

    .line 4343
    .local v30, "oldScroll":I
    sub-int v29, v30, v21

    .line 4344
    .local v29, "newScroll":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    move/from16 v0, p2

    if-le v0, v3, :cond_1b

    const/16 v28, 0x1

    .line 4346
    .local v28, "newDirection":I
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDirection:I

    if-nez v3, :cond_13

    .line 4347
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDirection:I

    .line 4350
    :cond_13
    move/from16 v0, v21

    neg-int v10, v0

    .line 4351
    .local v10, "overScrollDistance":I
    if-gez v29, :cond_14

    if-gez v30, :cond_15

    :cond_14
    if-lez v29, :cond_1c

    if-gtz v30, :cond_1c

    .line 4352
    :cond_15
    move/from16 v0, v30

    neg-int v10, v0

    .line 4353
    add-int v21, v21, v10

    .line 4358
    :goto_5
    if-eqz v10, :cond_18

    .line 4359
    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverscrollDistance:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v17}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 4361
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getOverScrollMode()I

    move-result v32

    .line 4362
    .restart local v32    # "overscrollMode":I
    if-eqz v32, :cond_16

    const/4 v3, 0x1

    move/from16 v0, v32

    if-ne v0, v3, :cond_18

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_18

    .line 4365
    :cond_16
    if-lez v34, :cond_1d

    .line 4366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v4, v10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(FF)V

    .line 4368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_17

    .line 4369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 4371
    :cond_17
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->getMaxHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingTop()I

    move-result v8

    add-int/2addr v6, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate(IIII)V

    .line 4386
    .end local v32    # "overscrollMode":I
    :cond_18
    :goto_6
    if-eqz v21, :cond_1a

    .line 4388
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    if-eqz v3, :cond_19

    .line 4389
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    .line 4390
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidateParentIfNeeded()V

    .line 4393
    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->trackMotionScroll(II)Z

    .line 4395
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4399
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->findClosestMotionRow(I)I

    move-result v24

    .line 4401
    .local v24, "motionPosition":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    .line 4402
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    sub-int v3, v24, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4403
    .restart local v25    # "motionView":Landroid/view/View;
    if-eqz v25, :cond_1f

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v3

    :goto_7
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 4404
    add-int v3, p2, v36

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 4405
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 4407
    .end local v24    # "motionPosition":I
    .end local v25    # "motionView":Landroid/view/View;
    :cond_1a
    add-int v3, p2, v22

    add-int v3, v3, v36

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    .line 4408
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDirection:I

    goto/16 :goto_3

    .line 4344
    .end local v10    # "overScrollDistance":I
    .end local v28    # "newDirection":I
    :cond_1b
    const/16 v28, -0x1

    goto/16 :goto_4

    .line 4355
    .restart local v10    # "overScrollDistance":I
    .restart local v28    # "newDirection":I
    :cond_1c
    const/16 v21, 0x0

    goto/16 :goto_5

    .line 4373
    .restart local v32    # "overscrollMode":I
    :cond_1d
    if-gez v34, :cond_18

    .line 4374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v4, v10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, p1

    int-to-float v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(FF)V

    .line 4376
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 4377
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 4379
    :cond_1e
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->getMaxHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate(IIII)V

    goto/16 :goto_6

    .line 4403
    .end local v32    # "overscrollMode":I
    .restart local v24    # "motionPosition":I
    .restart local v25    # "motionView":Landroid/view/View;
    :cond_1f
    const/4 v3, 0x0

    goto :goto_7
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_0

    .line 1892
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setAlwaysShow(Z)V

    .line 1894
    :cond_0
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_2

    .line 1828
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setEnabled(Z)V

    .line 1834
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resolvePadding()V

    .line 1836
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_1

    .line 1837
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->updateLayout()V

    .line 1839
    :cond_1
    return-void

    .line 1829
    :cond_2
    if-eqz p1, :cond_0

    .line 1830
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    .line 1831
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setItemViewLayoutParams(Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 2971
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2973
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_1

    .line 2974
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 2981
    .local v0, "lp":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapterHasStableIds:Z

    if-eqz v2, :cond_0

    .line 2982
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->itemId:J

    .line 2984
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    .line 2985
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2986
    return-void

    .line 2975
    .end local v0    # "lp":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2976
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .restart local v0    # "lp":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    goto :goto_0

    .end local v0    # "lp":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_2
    move-object v0, v1

    .line 2978
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .restart local v0    # "lp":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    goto :goto_0
.end method

.method private setupQuickController(I)V
    .locals 21
    .param p1, "where"    # I

    .prologue
    .line 10299
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWidth()I

    move-result v15

    .line 10300
    .local v15, "w":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v9

    .line 10301
    .local v9, "h":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingLeft:I

    move/from16 v16, v0

    sub-int v16, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingRight:I

    move/from16 v17, v0

    sub-int v7, v16, v17

    .line 10302
    .local v7, "contentW":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingLeft:I

    move/from16 v16, v0

    div-int/lit8 v17, v7, 0x2

    add-int v5, v16, v17

    .line 10304
    .local v5, "centerX":I
    const/4 v4, 0x0

    .line 10305
    .local v4, "btnW":I
    const/4 v3, 0x0

    .line 10307
    .local v3, "btnH":I
    const/4 v14, 0x0

    .line 10308
    .local v14, "paddingTop":I
    const/4 v13, 0x0

    .line 10310
    .local v13, "paddingBottom":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCLocation:I

    .line 10311
    .local v11, "oldLocation":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCLocation:I

    .line 10313
    const/4 v6, 0x1

    .line 10314
    .local v6, "checkBoundary":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    .line 10315
    .local v2, "basePkgName":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v16, "cocktailbarservice"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 10318
    const/4 v6, 0x0

    .line 10323
    :cond_0
    if-eqz v6, :cond_2

    .line 10324
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v10, v0, [I

    fill-array-data v10, :array_0

    .line 10325
    .local v10, "locOnScr":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getLocationOnScreen([I)V

    .line 10326
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 10329
    .local v8, "dm":Landroid/util/DisplayMetrics;
    const/16 v16, 0x0

    aget v16, v10, v16

    if-gez v16, :cond_1

    .line 10330
    const/16 v16, 0x0

    aget v16, v10, v16

    move/from16 v0, v16

    neg-int v12, v0

    .line 10331
    .local v12, "overlappedW":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingLeft:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v12, v0, :cond_1

    .line 10332
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingLeft:I

    move/from16 v16, v0

    sub-int v16, v12, v16

    div-int/lit8 v16, v16, 0x2

    add-int v5, v5, v16

    .line 10337
    .end local v12    # "overlappedW":I
    :cond_1
    const/16 v16, 0x0

    aget v16, v10, v16

    add-int v16, v16, v15

    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 10338
    const/16 v16, 0x0

    aget v16, v10, v16

    add-int v16, v16, v15

    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    sub-int v12, v16, v17

    .line 10339
    .restart local v12    # "overlappedW":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingRight:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v12, v0, :cond_2

    .line 10340
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingRight:I

    move/from16 v16, v0

    sub-int v16, v12, v16

    div-int/lit8 v16, v16, 0x2

    sub-int v5, v5, v16

    .line 10345
    .end local v8    # "dm":Landroid/util/DisplayMetrics;
    .end local v10    # "locOnScr":[I
    .end local v12    # "overlappedW":I
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 10346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v14, v0, Landroid/graphics/Rect;->top:I

    .line 10347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    .line 10353
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 10389
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10391
    return-void

    .line 10349
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mExtraPaddingInTopHoverArea:I

    .line 10350
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mExtraPaddingInBottomHoverArea:I

    goto :goto_0

    .line 10355
    :pswitch_0
    new-instance v16, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCRect:Landroid/graphics/Rect;

    goto :goto_1

    .line 10359
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCLocation:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v0, v11, :cond_4

    .line 10360
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x10805bb

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 10361
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x10805bc

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 10364
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 10365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 10366
    new-instance v16, Landroid/graphics/Rect;

    div-int/lit8 v17, v4, 0x2

    sub-int v17, v5, v17

    add-int/lit8 v18, v14, 0x0

    div-int/lit8 v19, v4, 0x2

    add-int v19, v19, v5

    add-int v20, v3, v14

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 10370
    :pswitch_2
    new-instance v16, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 10374
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCLocation:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v0, v11, :cond_5

    .line 10375
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x10805b9

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 10376
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x10805ba

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 10379
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 10380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 10381
    new-instance v16, Landroid/graphics/Rect;

    div-int/lit8 v17, v4, 0x2

    sub-int v17, v5, v17

    sub-int v18, v9, v3

    sub-int v18, v18, v13

    div-int/lit8 v19, v4, 0x2

    add-int v19, v19, v5

    sub-int v20, v9, v13

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 10324
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 10353
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPointerIcon(I)Z
    .locals 4
    .param p1, "iconId"    # I

    .prologue
    .line 9938
    const/4 v1, -0x1

    :try_start_0
    invoke-static {p1, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9940
    const/4 v1, 0x1

    .line 9943
    :goto_0
    return v1

    .line 9941
    :catch_0
    move-exception v0

    .line 9942
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TwAbsListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to change PointerIcon to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9943
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 7772
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 7773
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createTextFilter(Z)V

    .line 7774
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionPopup()V

    .line 7776
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->checkFocus()V

    .line 7778
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(IILandroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 4160
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    sub-int v1, p2, v7

    .line 4161
    .local v1, "deltaY":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4162
    .local v2, "distance":I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    if-eqz v7, :cond_2

    move v5, v8

    .line 4163
    .local v5, "overscroll":Z
    :goto_0
    if-nez v5, :cond_0

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchSlop:I

    if-le v2, v7, :cond_7

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getNestedScrollAxes()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_7

    .line 4165
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createScrollingCache()V

    .line 4166
    if-eqz v5, :cond_3

    .line 4167
    const/4 v7, 0x5

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4168
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    .line 4173
    :goto_1
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4174
    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setPressed(Z)V

    .line 4175
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    sub-int/2addr v7, v10

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4176
    .local v4, "motionView":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 4177
    invoke-virtual {v4, v9}, Landroid/view/View;->setPressed(Z)V

    .line 4180
    :cond_1
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPointerCount:I

    if-le v7, v8, :cond_5

    .line 4186
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 4187
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_5

    .line 4188
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setPressed(Z)V

    .line 4187
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "motionView":Landroid/view/View;
    .end local v5    # "overscroll":Z
    :cond_2
    move v5, v9

    .line 4162
    goto :goto_0

    .line 4170
    .restart local v5    # "overscroll":Z
    :cond_3
    const/4 v7, 0x3

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4171
    if-lez v1, :cond_4

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchSlop:I

    :goto_3
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    goto :goto_1

    :cond_4
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchSlop:I

    neg-int v7, v7

    goto :goto_3

    .line 4191
    .restart local v4    # "motionView":Landroid/view/View;
    :cond_5
    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 4194
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 4195
    .local v6, "parent":Landroid/view/ViewParent;
    if-eqz v6, :cond_6

    .line 4196
    invoke-interface {v6, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4198
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    move v7, v8

    .line 4202
    .end local v4    # "motionView":Landroid/view/View;
    .end local v6    # "parent":Landroid/view/ViewParent;
    :goto_4
    return v7

    :cond_7
    move v7, v9

    goto :goto_4
.end method

.method private twNotifyMultiSelectState(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1650
    const/4 v0, 0x0

    .line 1651
    .local v0, "handledNotifyMultiSelect":Z
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsShiftkeyPressed:Z

    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsCtrlkeyPressed:Z

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsPenPressed:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v8}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->twNotifyMultiSelectedState(Landroid/view/View;IJZZZ)Z

    move-result v0

    .line 1653
    return v0
.end method

.method private unregisterMotionListener()V
    .locals 0

    .prologue
    .line 9728
    return-void
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    .prologue
    .line 1662
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    .line 1663
    .local v2, "firstPos":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v1

    .line 1664
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    const/4 v5, 0x1

    .line 1666
    .local v5, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 1667
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1668
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 1670
    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    .line 1671
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1666
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1664
    .end local v3    # "i":I
    .end local v4    # "position":I
    .end local v5    # "useActivated":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1672
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "position":I
    .restart local v5    # "useActivated":Z
    :cond_2
    if-eqz v5, :cond_0

    .line 1673
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    .line 1676
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "position":I
    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 2202
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2204
    return-void
.end method


# virtual methods
.method public addExtraPaddingInBottomHoverArea(I)V
    .locals 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 4528
    const/4 v0, 0x1

    int-to-float v1, p1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mExtraPaddingInBottomHoverArea:I

    .line 4531
    return-void
.end method

.method public addExtraPaddingInTopHoverArea(I)V
    .locals 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 4519
    const/4 v0, 0x1

    int-to-float v1, p1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mExtraPaddingInTopHoverArea:I

    .line 4522
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6370
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v2

    .line 6371
    .local v2, "count":I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    .line 6372
    .local v3, "firstPosition":I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 6374
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 6385
    :cond_0
    return-void

    .line 6378
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 6379
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6380
    .local v1, "child":Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6381
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6383
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 6378
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 8238
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 8197
    return-void
.end method

.method public canScrollList(I)Z
    .locals 10
    .param p1, "direction"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7097
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 7098
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 7110
    :cond_0
    :goto_0
    return v6

    .line 7102
    :cond_1
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    .line 7103
    .local v1, "firstPosition":I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 7104
    .local v5, "listPadding":Landroid/graphics/Rect;
    if-lez p1, :cond_3

    .line 7105
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 7106
    .local v3, "lastBottom":I
    add-int v4, v1, v0

    .line 7107
    .local v4, "lastPosition":I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    if-lt v4, v8, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v3, v8, :cond_0

    :cond_2
    move v6, v7

    goto :goto_0

    .line 7109
    .end local v3    # "lastBottom":I
    .end local v4    # "lastPosition":I
    :cond_3
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    .line 7110
    .local v2, "firstTop":I
    if-gtz v1, :cond_4

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-ge v2, v8, :cond_0

    :cond_4
    move v6, v7

    goto :goto_0
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 8110
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 8266
    instance-of v0, p1, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1470
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1472
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1473
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1475
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    .line 1476
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 8159
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 8160
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    .line 8162
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8163
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dismissPopup()V

    .line 8166
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 2594
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v1

    .line 2595
    .local v1, "count":I
    if-lez v1, :cond_3

    .line 2596
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 2597
    mul-int/lit8 v2, v1, 0x64

    .line 2599
    .local v2, "extent":I
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2600
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2601
    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2602
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 2603
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 2606
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2607
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2608
    .local v0, "bottom":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2609
    if-lez v3, :cond_1

    .line 2610
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    .line 2618
    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    .line 2615
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    .line 2618
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 2623
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    .line 2624
    .local v2, "firstPosition":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 2625
    .local v0, "childCount":I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 2626
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 2627
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2628
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2629
    .local v5, "top":I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2630
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 2631
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2647
    .end local v3    # "height":I
    .end local v5    # "top":I
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return v7

    .line 2636
    :cond_1
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    .line 2637
    .local v1, "count":I
    if-nez v2, :cond_2

    .line 2638
    const/4 v4, 0x0

    .line 2644
    .local v4, "index":I
    :goto_1
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_0

    .line 2639
    .end local v4    # "index":I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 2640
    move v4, v1

    .restart local v4    # "index":I
    goto :goto_1

    .line 2642
    .end local v4    # "index":I
    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    .restart local v4    # "index":I
    goto :goto_1
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 2653
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 2654
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2655
    .local v0, "result":I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    if-eqz v1, :cond_0

    .line 2657
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2662
    :cond_0
    :goto_0
    return v0

    .line 2660
    .end local v0    # "result":I
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 18

    .prologue
    .line 7548
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 7550
    const/4 v2, 0x0

    .line 7551
    .local v2, "checkedCountChanged":Z
    const/4 v9, 0x0

    .local v9, "checkedIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v9, v3, :cond_4

    .line 7552
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 7553
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 7555
    .local v5, "lastPos":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    .line 7556
    .local v12, "lastPosId":J
    cmp-long v3, v6, v12

    if-eqz v3, :cond_3

    .line 7558
    const/4 v3, 0x0

    add-int/lit8 v4, v5, -0x14

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 7559
    .local v17, "start":I
    add-int/lit8 v3, v5, 0x14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 7560
    .local v10, "end":I
    const/4 v11, 0x0

    .line 7561
    .local v11, "found":Z
    move/from16 v16, v17

    .local v16, "searchPos":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v10, :cond_0

    .line 7562
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    .line 7563
    .local v14, "searchId":J
    cmp-long v3, v6, v14

    if-nez v3, :cond_2

    .line 7564
    const/4 v11, 0x1

    .line 7565
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 7566
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 7571
    .end local v14    # "searchId":J
    :cond_0
    if-nez v11, :cond_1

    .line 7572
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    .line 7573
    add-int/lit8 v9, v9, -0x1

    .line 7574
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    .line 7575
    const/4 v2, 0x1

    .line 7576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    if-eqz v3, :cond_1

    .line 7577
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 7551
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 7561
    .restart local v10    # "end":I
    .restart local v11    # "found":Z
    .restart local v14    # "searchId":J
    .restart local v16    # "searchPos":I
    .restart local v17    # "start":I
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 7582
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v14    # "searchId":J
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 7586
    .end local v5    # "lastPos":I
    .end local v6    # "id":J
    .end local v12    # "lastPosId":J
    :cond_4
    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_5

    .line 7587
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 7589
    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 3697
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method createPositionScroller()Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;
    .locals 1

    .prologue
    .line 6801
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 8411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 8412
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 18
    .param p1, "ev"    # Landroid/view/DragEvent;

    .prologue
    .line 4880
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    .line 4882
    .local v2, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v5

    .line 4883
    .local v5, "cd":Landroid/content/ClipDescription;
    if-eqz v5, :cond_0

    const-string v13, "cropUri"

    invoke-virtual {v5}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 4884
    :cond_0
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    .line 5032
    :goto_0
    return v13

    .line 4888
    :cond_1
    const/4 v13, 0x1

    if-ne v2, v13, :cond_4

    .line 4889
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    if-gtz v13, :cond_2

    .line 4890
    const/4 v13, 0x1

    const/high16 v14, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-static {v13, v14, v15}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    .line 4894
    :cond_2
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    if-nez v13, :cond_3

    :cond_3
    const/4 v13, 0x1

    goto :goto_0

    .line 4897
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    .line 4898
    .local v11, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    .line 4899
    .local v12, "y":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v7

    .line 4900
    .local v7, "childCount":I
    const/4 v8, 0x0

    .line 4901
    .local v8, "contentBottom":I
    const/4 v10, 0x0

    .line 4902
    .local v10, "lastChildBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v9

    .line 4906
    .local v9, "count":I
    if-eqz v7, :cond_5

    .line 4907
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v8

    .line 4911
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    add-int/2addr v13, v9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    if-ge v13, v14, :cond_f

    const/4 v3, 0x1

    .line 4913
    .local v3, "canScrollDown":Z
    :goto_1
    if-nez v3, :cond_7

    if-lez v9, :cond_7

    .line 4914
    add-int/lit8 v13, v9, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4915
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    if-gt v13, v14, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    if-le v13, v14, :cond_10

    :cond_6
    const/4 v3, 0x1

    .line 4920
    .end local v6    # "child":Landroid/view/View;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    if-lez v13, :cond_11

    const/4 v4, 0x1

    .line 4922
    .local v4, "canScrollUp":Z
    :goto_3
    if-nez v4, :cond_8

    .line 4923
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v13

    if-lez v13, :cond_8

    .line 4924
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4925
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    if-ge v13, v14, :cond_12

    const/4 v4, 0x1

    .line 4930
    .end local v6    # "child":Landroid/view/View;
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    if-le v12, v13, :cond_9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-lt v12, v13, :cond_a

    :cond_9
    if-lez v11, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getRight()I

    move-result v13

    if-gt v11, v13, :cond_a

    if-nez v4, :cond_13

    if-nez v3, :cond_13

    .line 4933
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 4934
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4937
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    const/4 v14, 0x1

    if-eq v13, v14, :cond_c

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_d

    .line 4938
    :cond_c
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    .line 4941
    :cond_d
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:J

    .line 4942
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:J

    .line 4943
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 4946
    const/4 v13, 0x2

    if-ne v2, v13, :cond_e

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    if-eqz v13, :cond_e

    .line 4947
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    .line 4948
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resetDragableChildren(Landroid/view/DragEvent;)Z

    .line 4951
    :cond_e
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    goto/16 :goto_0

    .line 4911
    .end local v3    # "canScrollDown":Z
    .end local v4    # "canScrollUp":Z
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 4915
    .restart local v3    # "canScrollDown":Z
    .restart local v6    # "child":Landroid/view/View;
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 4920
    .end local v6    # "child":Landroid/view/View;
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 4925
    .restart local v4    # "canScrollUp":Z
    .restart local v6    # "child":Landroid/view/View;
    :cond_12
    const/4 v4, 0x0

    goto :goto_4

    .line 4955
    .end local v6    # "child":Landroid/view/View;
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    if-nez v13, :cond_14

    .line 4956
    new-instance v13, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    .line 4958
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    if-nez v13, :cond_15

    .line 4959
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:J

    .line 4961
    :cond_15
    packed-switch v2, :pswitch_data_0

    .line 5032
    :cond_16
    :goto_5
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    goto/16 :goto_0

    .line 4963
    :pswitch_0
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 4964
    if-ltz v12, :cond_17

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    if-gt v12, v13, :cond_17

    .line 4966
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_16

    .line 4967
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    .line 4968
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:J

    .line 4969
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 4970
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 4972
    :cond_17
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-lt v12, v13, :cond_16

    if-gt v12, v8, :cond_16

    .line 4974
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_16

    .line 4975
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    .line 4976
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:J

    .line 4977
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 4978
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 4984
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    if-nez v13, :cond_18

    .line 4985
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 4988
    :cond_18
    if-ltz v12, :cond_19

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    if-gt v12, v13, :cond_19

    .line 4990
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_16

    .line 4991
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    .line 4992
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:J

    .line 4993
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 4994
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 4996
    :cond_19
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-lt v12, v13, :cond_16

    if-gt v12, v8, :cond_16

    .line 4998
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_16

    .line 4999
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    .line 5000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:J

    .line 5001
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 5002
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 5009
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    if-eqz v13, :cond_1a

    .line 5010
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    .line 5011
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resetDragableChildren(Landroid/view/DragEvent;)Z

    .line 5017
    :cond_1a
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 5018
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5020
    :cond_1b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    .line 5022
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:J

    .line 5023
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:J

    .line 5024
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    .line 5025
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    goto/16 :goto_5

    .line 4961
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3167
    const/4 v4, 0x0

    .line 3168
    .local v4, "saveCount":I
    const/4 v7, 0x0

    .line 3169
    .local v7, "trackChildTop":I
    const/4 v2, 0x0

    .line 3170
    .local v2, "firstChildPosition":I
    const/4 v3, 0x0

    .line 3172
    .local v3, "lastChildPosition":I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v8, v8, 0x22

    const/16 v9, 0x22

    if-ne v8, v9, :cond_5

    const/4 v0, 0x1

    .line 3173
    .local v0, "clipToPadding":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 3174
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3175
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollX:I

    .line 3176
    .local v5, "scrollX":I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    .line 3177
    .local v6, "scrollY":I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingLeft:I

    add-int/2addr v8, v5

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    add-int/2addr v9, v6

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRight:I

    add-int/2addr v10, v5

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingRight:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBottom:I

    add-int/2addr v11, v6

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTop:I

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    sub-int/2addr v11, v12

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3180
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v8, v8, -0x23

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    .line 3183
    .end local v5    # "scrollX":I
    .end local v6    # "scrollY":I
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDrawSelectorOnTop:Z

    .line 3184
    .local v1, "drawSelectorOnTop":Z
    if-nez v1, :cond_1

    .line 3185
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 3188
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3190
    if-eqz v1, :cond_2

    .line 3191
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 3194
    :cond_2
    if-eqz v0, :cond_3

    .line 3195
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3196
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    or-int/lit8 v8, v8, 0x22

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    .line 3199
    :cond_3
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragBlockEnabled:Z

    if-eqz v8, :cond_4

    .line 3200
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockLeft:I

    if-nez v8, :cond_6

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockTop:I

    if-nez v8, :cond_6

    .line 3221
    :cond_4
    :goto_1
    return-void

    .line 3172
    .end local v0    # "clipToPadding":Z
    .end local v1    # "drawSelectorOnTop":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 3203
    .restart local v0    # "clipToPadding":Z
    .restart local v1    # "drawSelectorOnTop":Z
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 3204
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getLastVisiblePosition()I

    move-result v3

    .line 3206
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTrackedChildPosition:I

    if-lt v8, v2, :cond_8

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTrackedChildPosition:I

    if-gt v8, v3, :cond_8

    .line 3207
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTrackedChildPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 3208
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTrackedChild:Landroid/view/View;

    if-eqz v8, :cond_7

    .line 3209
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTrackedChild:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v7

    .line 3211
    :cond_7
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDistanceFromTrackedChildTop:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartY:I

    .line 3214
    :cond_8
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartY:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragEndY:I

    if-ge v8, v9, :cond_9

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartY:I

    :goto_2
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockTop:I

    .line 3215
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragEndY:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartY:I

    if-le v8, v9, :cond_a

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragEndY:I

    :goto_3
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockBottom:I

    .line 3217
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockRect:Landroid/graphics/Rect;

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockLeft:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockTop:I

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockRight:I

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockBottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 3218
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockImage:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3219
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 3214
    :cond_9
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragEndY:I

    goto :goto_2

    .line 3215
    :cond_a
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartY:I

    goto :goto_3
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4535
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 4538
    .local v4, "action":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoveringEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsPenPressed:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 4539
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onHoverDrawableState(Landroid/view/MotionEvent;)V

    .line 4546
    :cond_1
    invoke-static {}, Landroid/text/MultiSelection;->isTextViewHovered()Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNewTextViewHoverState:Z

    .line 4548
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNewTextViewHoverState:Z

    move/from16 v22, v0

    if-nez v22, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOldTextViewHoverState:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 4550
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsNeedPenSelectIconSet:Z

    .line 4556
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNewTextViewHoverState:Z

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOldTextViewHoverState:Z

    .line 4559
    const/16 v22, 0x9

    move/from16 v0, v22

    if-ne v4, v0, :cond_d

    .line 4560
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v19

    .line 4562
    .local v19, "toolType":I
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNeedsHoverScroll:Z

    .line 4565
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isHoveringUIEnabled()Z

    move-result v22

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollEnable:Z

    move/from16 v22, v0

    if-nez v22, :cond_3

    .line 4566
    :cond_2
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNeedsHoverScroll:Z

    .line 4570
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNeedsHoverScroll:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    const/16 v22, 0x2

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 4572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "pen_hovering"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    const/4 v14, 0x1

    .line 4574
    .local v14, "isHoveringOn":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "pen_hovering_list_scroll"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    const/4 v13, 0x1

    .line 4576
    .local v13, "isHoverListScrollOn":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "car_mode_on"

    const/16 v24, 0x0

    const/16 v25, -0x3

    invoke-static/range {v22 .. v25}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    const/4 v12, 0x1

    .line 4579
    .local v12, "isCarModeOn":Z
    :goto_3
    if-eqz v14, :cond_4

    if-eqz v12, :cond_5

    .line 4580
    :cond_4
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNeedsHoverScroll:Z

    .line 4583
    :cond_5
    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v22, v0

    if-nez v22, :cond_6

    const/16 v22, 0x2

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 4585
    const/16 v22, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->showPointerIcon(I)Z

    .line 4586
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsPenSelectPointerSetted:Z

    .line 4589
    :cond_6
    if-nez v13, :cond_7

    .line 4590
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNeedsHoverScroll:Z

    .line 4595
    .end local v12    # "isCarModeOn":Z
    .end local v13    # "isHoverListScrollOn":Z
    .end local v14    # "isHoveringOn":Z
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNeedsHoverScroll:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    const/16 v22, 0x3

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 4596
    const/16 v16, 0x0

    .line 4597
    .local v16, "isMouseHoveringOn":Z
    const/4 v15, 0x0

    .line 4601
    .local v15, "isMouseHoverListScrollOn":Z
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNeedsHoverScroll:Z

    .line 4621
    .end local v15    # "isMouseHoverListScrollOn":Z
    .end local v16    # "isMouseHoveringOn":Z
    .end local v19    # "toolType":I
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNeedsHoverScroll:Z

    move/from16 v22, v0

    if-nez v22, :cond_12

    .line 4622
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    .line 4868
    :goto_5
    return v22

    .line 4553
    :cond_9
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsNeedPenSelectIconSet:Z

    goto/16 :goto_0

    .line 4572
    .restart local v19    # "toolType":I
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 4574
    .restart local v14    # "isHoveringOn":Z
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 4576
    .restart local v13    # "isHoverListScrollOn":Z
    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 4604
    .end local v13    # "isHoverListScrollOn":Z
    .end local v14    # "isHoveringOn":Z
    .end local v19    # "toolType":I
    :cond_d
    const/16 v22, 0x7

    move/from16 v0, v22

    if-ne v4, v0, :cond_11

    .line 4605
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v22, v0

    if-nez v22, :cond_e

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsNeedPenSelectIconSet:Z

    move/from16 v22, v0

    if-eqz v22, :cond_10

    .line 4607
    :cond_f
    const/16 v22, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->showPointerIcon(I)Z

    .line 4608
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsPenSelectPointerSetted:Z

    goto :goto_4

    .line 4609
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    .line 4610
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->showPointerIcon(I)Z

    .line 4611
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_4

    .line 4613
    :cond_11
    const/16 v22, 0xa

    move/from16 v0, v22

    if-ne v4, v0, :cond_8

    .line 4614
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 4615
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->showPointerIcon(I)Z

    .line 4616
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_4

    .line 4626
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 4627
    .local v20, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 4628
    .local v21, "y":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v8

    .line 4629
    .local v8, "childCount":I
    const/4 v10, 0x0

    .line 4630
    .local v10, "contentTop":I
    const/4 v9, 0x0

    .line 4631
    .local v9, "contentBottom":I
    const/16 v18, 0x0

    .line 4632
    .local v18, "lastChildBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v11

    .line 4637
    .local v11, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    if-nez v22, :cond_13

    .line 4638
    new-instance v22, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    .line 4641
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverTopAreaHeight:I

    move/from16 v22, v0

    if-lez v22, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverBottomAreaHeight:I

    move/from16 v22, v0

    if-gtz v22, :cond_15

    .line 4642
    :cond_14
    const/16 v22, 0x1

    const/high16 v23, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v22

    const/high16 v23, 0x3f000000    # 0.5f

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverTopAreaHeight:I

    .line 4650
    const/16 v22, 0x1

    const/high16 v23, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v22

    const/high16 v23, 0x3f000000    # 0.5f

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverBottomAreaHeight:I

    .line 4659
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_28

    .line 4660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 4661
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v9, v22, v23

    .line 4668
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    move/from16 v22, v0

    add-int v22, v22, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_29

    const/4 v5, 0x1

    .line 4670
    .local v5, "canScrollDown":Z
    :goto_7
    if-nez v5, :cond_17

    if-lez v11, :cond_17

    .line 4671
    add-int/lit8 v22, v11, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4672
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBottom:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_16

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_2a

    :cond_16
    const/4 v5, 0x1

    .line 4677
    .end local v7    # "child":Landroid/view/View;
    :cond_17
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    move/from16 v22, v0

    if-lez v22, :cond_2b

    const/4 v6, 0x1

    .line 4679
    .local v6, "canScrollUp":Z
    :goto_9
    if-nez v6, :cond_18

    .line 4680
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v22

    if-lez v22, :cond_18

    .line 4681
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4682
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2c

    const/4 v6, 0x1

    .line 4686
    .end local v7    # "child":Landroid/view/View;
    :cond_18
    :goto_a
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2d

    const/16 v17, 0x1

    .line 4688
    .local v17, "isPossibleTooltype":Z
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverTopAreaHeight:I

    move/from16 v22, v0

    add-int v22, v22, v10

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverBottomAreaHeight:I

    move/from16 v22, v0

    sub-int v22, v9, v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_1e

    :cond_19
    if-lez v20, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getRight()I

    move-result v22

    move/from16 v0, v20

    move/from16 v1, v22

    if-gt v0, v1, :cond_1e

    if-nez v6, :cond_1a

    if-eqz v5, :cond_1e

    :cond_1a
    move/from16 v0, v21

    if-lt v0, v10, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverTopAreaHeight:I

    move/from16 v22, v0

    add-int v22, v22, v10

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_1b

    if-nez v6, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    move/from16 v22, v0

    if-nez v22, :cond_1e

    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverBottomAreaHeight:I

    move/from16 v22, v0

    sub-int v22, v9, v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_1c

    move/from16 v0, v21

    if-gt v0, v9, :cond_1c

    if-nez v5, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    move/from16 v22, v0

    if-nez v22, :cond_1e

    :cond_1c
    if-eqz v17, :cond_1d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1e

    :cond_1d
    if-eqz v17, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isLockScreenMode()Z

    move-result v22

    if-eqz v22, :cond_2e

    .line 4695
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_1f

    .line 4696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4697
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->showPointerIcon(I)Z

    .line 4700
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_20

    .line 4701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4704
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverTopAreaHeight:I

    move/from16 v22, v0

    add-int v22, v22, v10

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverBottomAreaHeight:I

    move/from16 v22, v0

    sub-int v22, v9, v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_22

    :cond_21
    if-lez v20, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getRight()I

    move-result v22

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_23

    .line 4705
    :cond_22
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    .line 4708
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_25

    .line 4709
    :cond_24
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->showPointerIcon(I)Z

    .line 4711
    :cond_25
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:J

    .line 4712
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:J

    .line 4713
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 4714
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsSendHoverScrollState:Z

    .line 4716
    const/16 v22, 0xa

    move/from16 v0, v22

    if-ne v4, v0, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStateForListener:I

    move/from16 v22, v0

    if-eqz v22, :cond_26

    .line 4717
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStateForListener:I

    .line 4718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_26

    .line 4719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V

    .line 4724
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    move/from16 v22, v0

    if-eqz v22, :cond_27

    .line 4725
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    .line 4726
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postInvalidateOnAnimation()V

    .line 4729
    :cond_27
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    goto/16 :goto_5

    .line 4663
    .end local v5    # "canScrollDown":Z
    .end local v6    # "canScrollUp":Z
    .end local v17    # "isPossibleTooltype":Z
    :cond_28
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mExtraPaddingInTopHoverArea:I

    .line 4664
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mExtraPaddingInBottomHoverArea:I

    move/from16 v23, v0

    sub-int v9, v22, v23

    goto/16 :goto_6

    .line 4668
    :cond_29
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 4672
    .restart local v5    # "canScrollDown":Z
    .restart local v7    # "child":Landroid/view/View;
    :cond_2a
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 4677
    .end local v7    # "child":Landroid/view/View;
    :cond_2b
    const/4 v6, 0x0

    goto/16 :goto_9

    .line 4682
    .restart local v6    # "canScrollUp":Z
    .restart local v7    # "child":Landroid/view/View;
    :cond_2c
    const/4 v6, 0x0

    goto/16 :goto_a

    .line 4686
    .end local v7    # "child":Landroid/view/View;
    :cond_2d
    const/16 v17, 0x0

    goto/16 :goto_b

    .line 4732
    .restart local v17    # "isPossibleTooltype":Z
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    move/from16 v22, v0

    if-nez v22, :cond_2f

    .line 4733
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:J

    .line 4736
    :cond_2f
    packed-switch v4, :pswitch_data_0

    .line 4868
    :cond_30
    :goto_c
    :pswitch_0
    const/16 v22, 0x1

    goto/16 :goto_5

    .line 4738
    :pswitch_1
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 4740
    move/from16 v0, v21

    if-lt v0, v10, :cond_31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverTopAreaHeight:I

    move/from16 v22, v0

    add-int v22, v22, v10

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_31

    .line 4742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-nez v22, :cond_30

    .line 4743
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:J

    .line 4744
    const/16 v22, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->showPointerIcon(I)Z

    .line 4746
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 4747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 4750
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isQCSupported()Z

    move-result v22

    if-eqz v22, :cond_30

    const/16 v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->canScrollVertically(I)Z

    move-result v22

    if-eqz v22, :cond_30

    .line 4751
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setupQuickController(I)V

    .line 4752
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    goto :goto_c

    .line 4755
    :cond_31
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverBottomAreaHeight:I

    move/from16 v22, v0

    sub-int v22, v9, v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_30

    move/from16 v0, v21

    if-gt v0, v9, :cond_30

    .line 4757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-nez v22, :cond_30

    .line 4758
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:J

    .line 4759
    const/16 v22, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->showPointerIcon(I)Z

    .line 4761
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 4762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 4765
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isQCSupported()Z

    move-result v22

    if-eqz v22, :cond_30

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->canScrollVertically(I)Z

    move-result v22

    if-eqz v22, :cond_30

    .line 4766
    const/16 v22, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setupQuickController(I)V

    .line 4767
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    goto/16 :goto_c

    .line 4775
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    move/from16 v22, v0

    if-nez v22, :cond_32

    .line 4776
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 4777
    const/16 v22, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 4778
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    goto/16 :goto_5

    .line 4781
    :cond_32
    move/from16 v0, v21

    if-lt v0, v10, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverTopAreaHeight:I

    move/from16 v22, v0

    add-int v22, v22, v10

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_35

    .line 4783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-nez v22, :cond_30

    .line 4784
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:J

    .line 4787
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_34

    .line 4788
    :cond_33
    const/16 v22, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->showPointerIcon(I)Z

    .line 4791
    :cond_34
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 4792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 4795
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isQCSupported()Z

    move-result v22

    if-eqz v22, :cond_30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    move/from16 v22, v0

    if-nez v22, :cond_30

    const/16 v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->canScrollVertically(I)Z

    move-result v22

    if-eqz v22, :cond_30

    .line 4796
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setupQuickController(I)V

    .line 4797
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    goto/16 :goto_c

    .line 4800
    :cond_35
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverBottomAreaHeight:I

    move/from16 v22, v0

    sub-int v22, v9, v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_38

    move/from16 v0, v21

    if-gt v0, v9, :cond_38

    .line 4802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-nez v22, :cond_30

    .line 4803
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:J

    .line 4806
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_37

    .line 4807
    :cond_36
    const/16 v22, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->showPointerIcon(I)Z

    .line 4810
    :cond_37
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 4811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 4814
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isQCSupported()Z

    move-result v22

    if-eqz v22, :cond_30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    move/from16 v22, v0

    if-nez v22, :cond_30

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->canScrollVertically(I)Z

    move-result v22

    if-eqz v22, :cond_30

    .line 4815
    const/16 v22, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setupQuickController(I)V

    .line 4816
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    goto/16 :goto_c

    .line 4821
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_39

    .line 4822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4825
    :cond_39
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->showPointerIcon(I)Z

    .line 4827
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:J

    .line 4828
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:J

    .line 4829
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    .line 4830
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 4831
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsSendHoverScrollState:Z

    goto/16 :goto_c

    .line 4837
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_3a

    .line 4838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4841
    :cond_3a
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->showPointerIcon(I)Z

    .line 4843
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:J

    .line 4844
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:J

    .line 4845
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    .line 4846
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 4847
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsSendHoverScrollState:Z

    .line 4850
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3b

    .line 4853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->QC_ICON_HIDE_DELAY:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-virtual/range {v22 .. v25}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4856
    :cond_3b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStateForListener:I

    move/from16 v22, v0

    if-eqz v22, :cond_3c

    .line 4857
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStateForListener:I

    .line 4858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_3c

    .line 4859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V

    .line 4863
    :cond_3c
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    goto/16 :goto_5

    .line 4736
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 4040
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 32
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 5042
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v25, v0

    .line 5043
    .local v25, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v26, v0

    .line 5044
    .local v26, "y":I
    const/4 v13, 0x0

    .line 5045
    .local v13, "contentTop":I
    const/4 v12, 0x0

    .line 5046
    .local v12, "contentBottom":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 5047
    .local v6, "action":I
    const/16 v20, 0x0

    .line 5049
    .local v20, "needToScroll":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    if-nez v27, :cond_0

    .line 5050
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    .line 5053
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    if-nez v27, :cond_1

    .line 5054
    new-instance v27, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    .line 5057
    :cond_1
    invoke-static {}, Landroid/text/MultiSelection;->getIsMultiSelectingText()Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsTextSelectionStarted:Z

    .line 5058
    invoke-static {}, Landroid/text/MultiSelection;->isNeedToScroll()Z

    move-result v20

    .line 5060
    const/16 v27, 0xd3

    move/from16 v0, v27

    if-ne v6, v0, :cond_2

    .line 5061
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsNeedPenSelection:Z

    .line 5062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "car_mode_on"

    const/16 v29, 0x0

    const/16 v30, -0x3

    invoke-static/range {v27 .. v30}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    const/16 v18, 0x1

    .line 5065
    .local v18, "isCarModeOn":Z
    :goto_0
    if-eqz v18, :cond_2

    .line 5066
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsNeedPenSelection:Z

    .line 5070
    .end local v18    # "isCarModeOn":Z
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsTextSelectionStarted:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3

    .line 5071
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsNeedPenSelection:Z

    .line 5074
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverTopAreaHeight:I

    move/from16 v27, v0

    if-lez v27, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverBottomAreaHeight:I

    move/from16 v27, v0

    if-gtz v27, :cond_5

    .line 5075
    :cond_4
    const/16 v27, 0x1

    const/high16 v28, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v29

    invoke-static/range {v27 .. v29}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v27

    const/high16 v28, 0x3f000000    # 0.5f

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverTopAreaHeight:I

    .line 5079
    const/16 v27, 0x1

    const/high16 v28, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v29

    invoke-static/range {v27 .. v29}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v27

    const/high16 v28, 0x3f000000    # 0.5f

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverBottomAreaHeight:I

    .line 5084
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 5085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v13, v0, Landroid/graphics/Rect;->top:I

    .line 5086
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v12, v27, v28

    .line 5092
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v27, v0

    if-eqz v27, :cond_9

    move/from16 v0, v26

    if-lt v0, v13, :cond_6

    move/from16 v0, v26

    if-le v0, v12, :cond_9

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v27

    const/16 v28, 0xd4

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_9

    .line 5094
    const/16 v27, 0x1

    .line 5424
    :goto_2
    return v27

    .line 5062
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 5088
    :cond_8
    const/4 v13, 0x0

    .line 5089
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v12

    goto :goto_1

    .line 5097
    :cond_9
    sparse-switch v6, :sswitch_data_0

    .line 5424
    :cond_a
    :goto_3
    :sswitch_0
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v27

    goto :goto_2

    .line 5100
    :sswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 5101
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsQCShown:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 5102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 5103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5105
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 5106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5110
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 5112
    const/16 v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    .line 5113
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postInvalidateOnAnimation()V

    .line 5114
    const/16 v27, 0x1

    goto/16 :goto_2

    .line 5117
    :cond_d
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    goto/16 :goto_3

    .line 5125
    :sswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 5127
    const/16 v27, 0x1

    goto/16 :goto_2

    .line 5131
    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsNeedPenSelection:Z

    move/from16 v27, v0

    if-eqz v27, :cond_29

    .line 5132
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v14

    .line 5134
    .local v14, "count":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsfirstMoveEvent:Z

    move/from16 v27, v0

    if-eqz v27, :cond_12

    .line 5135
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartX:I

    .line 5136
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartY:I

    .line 5137
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-super {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->twNotifyMultiSelectedStart(II)V

    .line 5138
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsPenPressed:Z

    .line 5140
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTrackedChildPosition:I

    .line 5142
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTrackedChildPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_21

    .line 5143
    const/16 v24, 0x0

    .line 5144
    .local v24, "oldDistanceFromTop":I
    const/16 v23, 0x0

    .line 5145
    .local v23, "oldDistanceFromBottom":I
    const/16 v22, 0x0

    .line 5146
    .local v22, "newDistanceFromTop":I
    const/16 v21, 0x0

    .line 5148
    .local v21, "newDistanceFromBottom":I
    add-int/lit8 v16, v14, -0x1

    .local v16, "i":I
    :goto_4
    if-ltz v16, :cond_e

    .line 5149
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5150
    .local v7, "child":Landroid/view/View;
    if-eqz v7, :cond_1e

    .line 5151
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    .line 5152
    .local v11, "childTop":I
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 5155
    .local v8, "childBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartY:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v11, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartY:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v0, v8, :cond_1d

    .line 5156
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 5157
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v27

    add-int v27, v27, v16

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTrackedChildPosition:I

    .line 5184
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childBottom":I
    .end local v11    # "childTop":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTrackedChild:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_10

    .line 5185
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildPositionByTop:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildByTop:Landroid/view/View;

    .line 5186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildByTop:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_f

    .line 5187
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartY:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildByTop:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTop()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDistanceFromCloseChildTop:I

    .line 5190
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildPositionByBottom:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildByBottom:Landroid/view/View;

    .line 5191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildByBottom:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_10

    .line 5192
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartY:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildByBottom:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTop()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDistanceFromCloseChildBottom:I

    .line 5199
    .end local v16    # "i":I
    .end local v21    # "newDistanceFromBottom":I
    .end local v22    # "newDistanceFromTop":I
    .end local v23    # "oldDistanceFromBottom":I
    .end local v24    # "oldDistanceFromTop":I
    :cond_10
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTrackedChild:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_11

    .line 5200
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartY:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTrackedChild:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTop()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDistanceFromTrackedChildTop:I

    .line 5202
    :cond_11
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsfirstMoveEvent:Z

    .line 5205
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartX:I

    move/from16 v27, v0

    if-nez v27, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartY:I

    move/from16 v27, v0

    if-nez v27, :cond_13

    .line 5206
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartX:I

    .line 5207
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartY:I

    .line 5208
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-super {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->twNotifyMultiSelectedStart(II)V

    .line 5209
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsPenPressed:Z

    .line 5212
    :cond_13
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragEndX:I

    .line 5213
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragEndY:I

    .line 5215
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragEndY:I

    move/from16 v27, v0

    if-gez v27, :cond_22

    .line 5216
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragEndY:I

    .line 5221
    :cond_14
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedViewPosition:I

    .line 5223
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragEndX:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartX:I

    move/from16 v27, v0

    :goto_7
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockLeft:I

    .line 5224
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartY:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragEndY:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartY:I

    move/from16 v27, v0

    :goto_8
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockTop:I

    .line 5225
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragEndX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartX:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragEndX:I

    move/from16 v27, v0

    :goto_9
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockRight:I

    .line 5226
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragEndY:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartY:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragEndY:I

    move/from16 v27, v0

    :goto_a
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockBottom:I

    .line 5228
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_b
    move/from16 v0, v16

    if-ge v0, v14, :cond_28

    .line 5229
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5230
    .restart local v7    # "child":Landroid/view/View;
    if-eqz v7, :cond_1c

    .line 5231
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 5232
    .local v9, "childLeft":I
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    .line 5233
    .restart local v11    # "childTop":I
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v10

    .line 5234
    .local v10, "childRight":I
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 5236
    .restart local v8    # "childBottom":I
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v27

    if-nez v27, :cond_1c

    .line 5237
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockLeft:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v9, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v11, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockRight:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v10, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockBottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v8, :cond_1b

    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockLeft:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v9, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockRight:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v10, :cond_18

    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockLeft:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v9, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockRight:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v0, v9, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockLeft:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v10, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockRight:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v10, :cond_27

    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v11, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockBottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v8, :cond_1b

    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v0, v11, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockBottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v0, v11, :cond_1b

    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v8, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockBottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v8, :cond_27

    .line 5241
    :cond_1b
    add-int/lit8 v27, v9, 0x1

    add-int/lit8 v28, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedViewPosition:I

    .line 5242
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-interface/range {v27 .. v28}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1c

    .line 5243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5244
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->addToPressItemListArray(II)V

    .line 5245
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getItemIdAtPosition(I)J

    move-result-wide v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->twNotifyMultiSelectState(Landroid/view/View;IJ)Z

    .line 5228
    .end local v8    # "childBottom":I
    .end local v9    # "childLeft":I
    .end local v10    # "childRight":I
    .end local v11    # "childTop":I
    :cond_1c
    :goto_c
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_b

    .line 5162
    .restart local v8    # "childBottom":I
    .restart local v11    # "childTop":I
    .restart local v21    # "newDistanceFromBottom":I
    .restart local v22    # "newDistanceFromTop":I
    .restart local v23    # "oldDistanceFromBottom":I
    .restart local v24    # "oldDistanceFromTop":I
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartY:I

    move/from16 v27, v0

    sub-int v27, v27, v11

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v22

    .line 5163
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartY:I

    move/from16 v27, v0

    sub-int v27, v27, v8

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v21

    .line 5165
    add-int/lit8 v27, v14, -0x1

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_1f

    .line 5166
    add-int/lit8 v27, v14, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildPositionByTop:I

    .line 5167
    add-int/lit8 v27, v14, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildPositionByBottom:I

    .line 5168
    move/from16 v24, v22

    .line 5169
    move/from16 v23, v21

    .line 5148
    .end local v8    # "childBottom":I
    .end local v11    # "childTop":I
    :cond_1e
    :goto_d
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_4

    .line 5171
    .restart local v8    # "childBottom":I
    .restart local v11    # "childTop":I
    :cond_1f
    move/from16 v0, v22

    move/from16 v1, v24

    if-gt v0, v1, :cond_20

    .line 5172
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v27

    add-int v27, v27, v16

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildPositionByTop:I

    .line 5173
    move/from16 v24, v22

    .line 5176
    :cond_20
    move/from16 v0, v21

    move/from16 v1, v23

    if-gt v0, v1, :cond_1e

    .line 5177
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v27

    add-int v27, v27, v16

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildPositionByBottom:I

    .line 5178
    move/from16 v23, v21

    goto :goto_d

    .line 5196
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childBottom":I
    .end local v11    # "childTop":I
    .end local v16    # "i":I
    .end local v21    # "newDistanceFromBottom":I
    .end local v22    # "newDistanceFromTop":I
    .end local v23    # "oldDistanceFromBottom":I
    .end local v24    # "oldDistanceFromTop":I
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTrackedChildPosition:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTrackedChild:Landroid/view/View;

    goto/16 :goto_5

    .line 5217
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragEndY:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v12, :cond_14

    .line 5218
    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragEndY:I

    goto/16 :goto_6

    .line 5223
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragEndX:I

    move/from16 v27, v0

    goto/16 :goto_7

    .line 5224
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragEndY:I

    move/from16 v27, v0

    goto/16 :goto_8

    .line 5225
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartX:I

    move/from16 v27, v0

    goto/16 :goto_9

    .line 5226
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartY:I

    move/from16 v27, v0

    goto/16 :goto_a

    .line 5248
    .restart local v7    # "child":Landroid/view/View;
    .restart local v8    # "childBottom":I
    .restart local v9    # "childLeft":I
    .restart local v10    # "childRight":I
    .restart local v11    # "childTop":I
    .restart local v16    # "i":I
    :cond_27
    add-int/lit8 v27, v9, 0x1

    add-int/lit8 v28, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedViewPosition:I

    .line 5249
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-interface/range {v27 .. v28}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1c

    .line 5250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5251
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->addToPressItemListArray(II)V

    .line 5252
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getItemIdAtPosition(I)J

    move-result-wide v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->twNotifyMultiSelectState(Landroid/view/View;IJ)Z

    goto/16 :goto_c

    .line 5258
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childBottom":I
    .end local v9    # "childLeft":I
    .end local v10    # "childRight":I
    .end local v11    # "childTop":I
    :cond_28
    const/16 v20, 0x1

    .line 5261
    .end local v14    # "count":I
    .end local v16    # "i":I
    :cond_29
    if-eqz v20, :cond_32

    .line 5262
    add-int/lit8 v27, v13, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverTopAreaHeight:I

    move/from16 v27, v0

    add-int v27, v27, v13

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_2d

    .line 5263
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    move/from16 v27, v0

    if-nez v27, :cond_2a

    .line 5264
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 5265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:J

    .line 5267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2a

    .line 5268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V

    .line 5272
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-nez v27, :cond_2b

    .line 5273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:J

    .line 5274
    const/16 v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 5275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 5309
    :cond_2b
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2c

    .line 5310
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 5318
    :cond_2c
    :goto_f
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPreviousTextViewScroll:Z

    goto/16 :goto_3

    .line 5277
    :cond_2d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverBottomAreaHeight:I

    move/from16 v27, v0

    sub-int v27, v12, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_2f

    move/from16 v0, v26

    if-gt v0, v12, :cond_2f

    .line 5278
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    move/from16 v27, v0

    if-nez v27, :cond_2e

    .line 5279
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 5280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:J

    .line 5282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2e

    .line 5283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V

    .line 5287
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-nez v27, :cond_2b

    .line 5288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:J

    .line 5289
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 5290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 5293
    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_30

    .line 5294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V

    .line 5297
    :cond_30
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:J

    .line 5298
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:J

    .line 5299
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 5302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_31

    .line 5303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5306
    :cond_31
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_e

    .line 5312
    :cond_32
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPreviousTextViewScroll:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2c

    .line 5314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_2c

    .line 5315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->removeMessages(I)V

    goto/16 :goto_f

    .line 5323
    :sswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_35

    .line 5325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_33

    .line 5326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5329
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_34

    .line 5330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5333
    :cond_34
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    .line 5336
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    .line 5337
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postInvalidateOnAnimation()V

    .line 5338
    const/16 v27, 0x1

    goto/16 :goto_2

    .line 5343
    :cond_35
    :sswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsTextSelectionStarted:Z

    move/from16 v27, v0

    if-nez v27, :cond_3d

    .line 5344
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_36

    .line 5345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V

    .line 5348
    :cond_36
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:J

    .line 5349
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:J

    .line 5350
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 5351
    const/16 v19, 0x0

    .line 5353
    .local v19, "isNeedActionMode":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedItemSize:I

    .line 5355
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedItemSize:I

    move/from16 v27, v0

    if-eqz v27, :cond_3d

    .line 5356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    move/from16 v27, v0

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3c

    .line 5358
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_38
    :goto_10
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_39

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 5359
    .local v15, "dragSelectedViewPosition":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-interface/range {v27 .. v28}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_38

    .line 5360
    const/16 v19, 0x1

    goto :goto_10

    .line 5364
    .end local v15    # "dragSelectedViewPosition":Ljava/lang/Integer;
    :cond_39
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    move/from16 v27, v0

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3a

    .line 5365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move-object/from16 v27, v0

    if-nez v27, :cond_3a

    const/16 v27, 0x1

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_3a

    .line 5366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 5370
    :cond_3a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsTwOnClickEnabled:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3c

    .line 5371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3b
    :goto_11
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_3c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 5372
    .restart local v15    # "dragSelectedViewPosition":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-interface/range {v27 .. v28}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_3b

    .line 5373
    const/16 v27, 0x0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getItemIdAtPosition(I)J

    move-result-wide v30

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    move-wide/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_11

    .line 5377
    .end local v15    # "dragSelectedViewPosition":Ljava/lang/Integer;
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPenSelectVibrator:Lcom/sec/android/touchwiz/widget/TwAbsListView$PenSelectVibrator;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PenSelectVibrator;->playVibrator()V

    .line 5378
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-super {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->twNotifyMultiSelectedStop(II)V

    .line 5382
    .end local v19    # "isNeedActionMode":Z
    :cond_3d
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsPenPressed:Z

    .line 5383
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsfirstMoveEvent:Z

    .line 5384
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedViewPosition:I

    .line 5386
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartX:I

    .line 5387
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragStartY:I

    .line 5388
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragEndX:I

    .line 5389
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragEndY:I

    .line 5391
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockLeft:I

    .line 5392
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockTop:I

    .line 5393
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockRight:I

    .line 5394
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragBlockBottom:I

    .line 5396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 5397
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDragSelectedItemSize:I

    .line 5398
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 5399
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDistanceFromTrackedChildTop:I

    .line 5401
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsCloseChildSetted:Z

    .line 5402
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOldHoverScrollDirection:I

    .line 5403
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildByTop:Landroid/view/View;

    .line 5404
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildPositionByTop:I

    .line 5405
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDistanceFromCloseChildTop:I

    .line 5406
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildByBottom:Landroid/view/View;

    .line 5407
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCloseChildPositionByBottom:I

    .line 5408
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwDistanceFromCloseChildBottom:I

    .line 5410
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3e

    .line 5411
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 5415
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 5416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->removeMessages(I)V

    goto/16 :goto_3

    .line 5097
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_4
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0xd3 -> :sswitch_0
        0xd4 -> :sswitch_5
        0xd5 -> :sswitch_3
    .end sparse-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 6164
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 6165
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v6, :cond_3

    .line 6166
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    .line 6167
    .local v4, "scrollY":I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 6168
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 6169
    .local v3, "restoreCount":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWidth()I

    move-result v5

    .line 6171
    .local v5, "width":I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v6, v4

    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 6172
    .local v1, "edgeY":I
    int-to-float v6, v1

    invoke-virtual {p1, v10, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6173
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setSize(II)V

    .line 6174
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v6, p1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6175
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->getMaxHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0, v9, v9, v6, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate(IIII)V

    .line 6178
    :cond_0
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6180
    .end local v1    # "edgeY":I
    .end local v3    # "restoreCount":I
    .end local v5    # "width":I
    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 6181
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 6182
    .restart local v3    # "restoreCount":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWidth()I

    move-result v5

    .line 6183
    .restart local v5    # "width":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v2

    .line 6185
    .local v2, "height":I
    neg-int v0, v5

    .line 6186
    .local v0, "edgeX":I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v6, v4

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 6187
    .restart local v1    # "edgeY":I
    int-to-float v6, v0

    int-to-float v7, v1

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6188
    const/high16 v6, 0x43340000    # 180.0f

    int-to-float v7, v5

    invoke-virtual {p1, v6, v7, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 6189
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v6, v5, v2}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setSize(II)V

    .line 6190
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v6, p1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6191
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->getMaxHeight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v8

    invoke-virtual {p0, v9, v6, v7, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate(IIII)V

    .line 6195
    :cond_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6200
    .end local v0    # "edgeX":I
    .end local v1    # "edgeY":I
    .end local v2    # "height":I
    .end local v3    # "restoreCount":I
    .end local v4    # "scrollY":I
    .end local v5    # "width":I
    :cond_3
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    if-eqz v6, :cond_4

    .line 6201
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->drawQuickController(Landroid/graphics/Canvas;)V

    .line 6203
    :cond_4
    return-void
.end method

.method drawSelector(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3294
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 3295
    .local v4, "tempSelectorRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 3296
    .local v1, "selectedChild":Landroid/view/View;
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3297
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3298
    .local v3, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3299
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3303
    .end local v3    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v5, :cond_2

    .line 3304
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3305
    .local v2, "selectedPosition":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3307
    if-eqz v1, :cond_1

    .line 3308
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 3309
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3310
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 3314
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "selectedPosition":Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 3438
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->drawableStateChanged()V

    .line 3439
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    .line 3440
    return-void
.end method

.method public enableSmartScroll(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 9992
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .param p1, "y"    # I

    .prologue
    const/4 v2, -0x1

    .line 7401
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 7402
    .local v0, "childCount":I
    if-nez v0, :cond_1

    move v1, v2

    .line 7407
    :cond_0
    :goto_0
    return v1

    .line 7406
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->findMotionRow(I)I

    move-result v1

    .line 7407
    .local v1, "motionRow":I
    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method abstract findMotionRow(I)I
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 1
    .param p1, "accessibilityId"    # I

    .prologue
    .line 2113
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getAccessibilityViewId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2123
    .end local p0    # "this":Lcom/sec/android/touchwiz/widget/TwAbsListView;
    :goto_0
    return-object p0

    .line 2120
    .restart local p0    # "this":Lcom/sec/android/touchwiz/widget/TwAbsListView;
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 2121
    const/4 p0, 0x0

    goto :goto_0

    .line 2123
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0
.end method

.method public fling(I)V
    .locals 1
    .param p1, "velocityY"    # I

    .prologue
    .line 6110
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 6111
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    .line 6113
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 6114
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->start(I)V

    .line 6115
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 8250
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 8256
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 8261
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "focusedView"    # Landroid/view/View;

    .prologue
    .line 2784
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2785
    .local v0, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    if-eq v0, p0, :cond_0

    move-object p1, v0

    .line 2786
    check-cast p1, Landroid/view/View;

    .line 2787
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 2790
    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 2791
    const/4 p1, 0x0

    .line 2794
    .end local p1    # "focusedView":Landroid/view/View;
    :cond_1
    return-object p1
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 2684
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v1

    .line 2685
    .local v1, "count":I
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 2686
    .local v2, "fadeEdge":F
    if-nez v1, :cond_1

    .line 2696
    .end local v2    # "fadeEdge":F
    :cond_0
    :goto_0
    return v2

    .line 2689
    .restart local v2    # "fadeEdge":F
    :cond_1
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 2690
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2693
    :cond_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2694
    .local v0, "bottom":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v4

    .line 2695
    .local v4, "height":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 2696
    .local v3, "fadeLength":F
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_0

    sub-int v5, v0, v4

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    goto :goto_0
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    .prologue
    .line 3245
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 8327
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 1386
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 1450
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    .line 1451
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 1462
    :cond_1
    return-object v3

    .line 1454
    :cond_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1455
    .local v2, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1456
    .local v0, "count":I
    new-array v3, v0, [J

    .line 1458
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1459
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1458
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1418
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1419
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 1422
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 1435
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1438
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 1684
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 3883
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 2189
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2190
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 2193
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2194
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2199
    :goto_0
    return-void

    .line 2197
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 7344
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 7334
    const/4 v0, 0x0

    return v0
.end method

.method getHeightForPosition(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 9158
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v1

    .line 9159
    .local v1, "firstVisiblePosition":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 9160
    .local v0, "childCount":I
    sub-int v3, p1, v1

    .line 9161
    .local v3, "index":I
    if-ltz v3, :cond_0

    if-ge v3, v0, :cond_0

    .line 9163
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 9164
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 9171
    :goto_0
    return v2

    .line 9167
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v4

    .line 9168
    .restart local v4    # "view":Landroid/view/View;
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mWidthMeasureSpec:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 9169
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 9170
    .local v2, "height":I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v5, v4, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

    .prologue
    .line 3230
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingLeft:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 2862
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 2874
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 2886
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 2850
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightPaddingOffset()I
    .locals 2

    .prologue
    .line 3240
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingRight:I

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2834
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 2835
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2837
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getSelectionModeForAccessibility()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2072
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChoiceMode()I

    move-result v0

    .line 2073
    .local v0, "choiceMode":I
    packed-switch v0, :pswitch_data_0

    .line 2082
    :goto_0
    :pswitch_0
    return v1

    .line 2077
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 2080
    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 2073
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3363
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 8295
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2535
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2536
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2538
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 2667
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 2668
    .local v0, "count":I
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 2669
    .local v1, "fadeEdge":F
    if-nez v0, :cond_1

    .line 2678
    .end local v1    # "fadeEdge":F
    :cond_0
    :goto_0
    return v1

    .line 2672
    .restart local v1    # "fadeEdge":F
    :cond_1
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 2673
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2676
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2677
    .local v3, "top":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 2678
    .local v2, "fadeLength":F
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method protected getTopPaddingOffset()I
    .locals 2

    .prologue
    .line 3235
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 1128
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchSlop:I

    return v0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 8290
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTranscriptMode:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 2

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1921
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1923
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    goto :goto_0
.end method

.method protected handleDataChanged()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v13, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 7593
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    .line 7594
    .local v1, "count":I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastHandledItemCount:I

    .line 7595
    .local v4, "lastHandledItemCount":I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastHandledItemCount:I

    .line 7598
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsMultiFocusEnabled:Z

    if-ne v10, v9, :cond_0

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOldAdapterItemCount:I

    if-eq v10, v11, :cond_0

    .line 7599
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    .line 7600
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resetPressItemListArray()V

    .line 7601
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOldAdapterItemCount:I

    .line 7604
    :cond_0
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 7605
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->confirmCheckedPositionsById()V

    .line 7609
    :cond_1
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clearTransientStateViews()V

    .line 7611
    if-lez v1, :cond_f

    .line 7616
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNeedSync:Z

    if-eqz v10, :cond_8

    .line 7618
    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNeedSync:Z

    .line 7619
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    .line 7621
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 7622
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 7738
    :cond_2
    :goto_0
    return-void

    .line 7624
    :cond_3
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_7

    .line 7625
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_4

    .line 7626
    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mForceTranscriptScroll:Z

    .line 7627
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    goto :goto_0

    .line 7630
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 7631
    .local v0, "childCount":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingBottom()I

    move-result v11

    sub-int v5, v10, v11

    .line 7632
    .local v5, "listBottom":I
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7633
    .local v3, "lastChild":Landroid/view/View;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 7634
    .local v2, "lastBottom":I
    :goto_1
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v4, :cond_6

    if-gt v2, v5, :cond_6

    .line 7636
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    goto :goto_0

    .end local v2    # "lastBottom":I
    :cond_5
    move v2, v5

    .line 7633
    goto :goto_1

    .line 7641
    .restart local v2    # "lastBottom":I
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->awakenScrollBars()Z

    .line 7644
    .end local v0    # "childCount":I
    .end local v2    # "lastBottom":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v5    # "listBottom":I
    :cond_7
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSyncMode:I

    packed-switch v10, :pswitch_data_0

    .line 7692
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_e

    .line 7694
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getSelectedItemPosition()I

    move-result v6

    .line 7697
    .local v6, "newPos":I
    if-lt v6, v1, :cond_9

    .line 7698
    add-int/lit8 v6, v1, -0x1

    .line 7700
    :cond_9
    if-gez v6, :cond_a

    .line 7701
    const/4 v6, 0x0

    .line 7705
    :cond_a
    invoke-virtual {p0, v6, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7707
    .local v7, "selectablePos":I
    if-ltz v7, :cond_d

    .line 7708
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 7646
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 7651
    iput v14, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 7652
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSyncPosition:I

    goto :goto_0

    .line 7658
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->findSyncPosition()I

    move-result v6

    .line 7659
    .restart local v6    # "newPos":I
    if-ltz v6, :cond_8

    .line 7661
    invoke-virtual {p0, v6, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7662
    .restart local v7    # "selectablePos":I
    if-ne v7, v6, :cond_8

    .line 7664
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSyncPosition:I

    .line 7666
    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_c

    .line 7669
    iput v14, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 7677
    :goto_2
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 7673
    :cond_c
    const/4 v8, 0x2

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    goto :goto_2

    .line 7685
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_1
    iput v14, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 7686
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSyncPosition:I

    goto/16 :goto_0

    .line 7712
    .restart local v6    # "newPos":I
    .restart local v7    # "selectablePos":I
    :cond_d
    invoke-virtual {p0, v6, v12}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7713
    if-ltz v7, :cond_f

    .line 7714
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 7721
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_e
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    if-gez v10, :cond_2

    .line 7729
    :cond_f
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_10

    :goto_3
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 7730
    iput v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedPosition:I

    .line 7731
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedRowId:J

    .line 7732
    iput v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNextSelectedPosition:I

    .line 7733
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNextSelectedRowId:J

    .line 7734
    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNeedSync:Z

    .line 7735
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    .line 7736
    iput v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    .line 7737
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_10
    move v8, v9

    .line 7729
    goto :goto_3

    .line 7644
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 8172
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 7358
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 7359
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 7360
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedPosition:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 7362
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 7363
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 7365
    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelectedPositionInt(I)V

    .line 7366
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setNextSelectedPositionInt(I)V

    .line 7367
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 7369
    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 7414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataChanged:Z

    .line 7415
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->rememberSyncState()V

    .line 7416
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    .line 7417
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 7418
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2021
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_0

    .line 2022
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onScroll(III)V

    .line 2024
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 2025
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;->onScroll(Lcom/sec/android/touchwiz/widget/TwAbsListView;III)V

    .line 2027
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onScrollChanged(IIII)V

    .line 2028
    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1911
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-nez v2, :cond_2

    .line 1912
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScrollEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScrollAlwaysVisible:Z

    if-eqz v2, :cond_1

    .line 1914
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1912
    goto :goto_0

    .line 1914
    :cond_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->isAlwaysShowEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-nez v0, :cond_0

    .line 1935
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScrollEnabled:Z

    .line 1937
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 7852
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1401
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1402
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1405
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiFocusEnabled()Z
    .locals 1

    .prologue
    .line 10143
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsMultiFocusEnabled:Z

    return v0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    .line 3225
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2137
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2004
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2214
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2184
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isTwShowingScrollbar()Z
    .locals 1

    .prologue
    .line 6907
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->isTwShowingScrollbar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTwUsingAdapterView()Z
    .locals 1

    .prologue
    .line 6932
    const/4 v0, 0x1

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 1963
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 3483
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->jumpDrawablesToCurrentState()V

    .line 3484
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3485
    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 3371
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3408
    :cond_0
    :goto_0
    return-void

    .line 3375
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3376
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3377
    .local v3, "selectorRect":Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3380
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedPosition:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3382
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 3383
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3384
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3386
    :cond_3
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setPressed(Z)V

    .line 3388
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isLongClickable()Z

    move-result v1

    .line 3389
    .local v1, "longClickable":Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3390
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 3391
    if-eqz v1, :cond_5

    .line 3392
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 3398
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataChanged:Z

    if-nez v5, :cond_0

    .line 3399
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_6

    .line 3400
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;

    .line 3404
    :goto_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 3405
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3395
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1

    .line 3402
    :cond_6
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 2776
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .prologue
    const-wide/16 v10, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2902
    const-string v5, "obtainView"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2904
    aput-boolean v7, p2, v7

    .line 2908
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v3

    .line 2909
    .local v3, "transientView":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 2910
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 2913
    .local v1, "params":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    iget v5, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 2914
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2917
    .local v4, "updatedView":Landroid/view/View;
    if-eq v4, v3, :cond_0

    .line 2918
    invoke-direct {p0, v4, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2919
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v5, v4, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2924
    .end local v4    # "updatedView":Landroid/view/View;
    :cond_0
    aput-boolean v8, p2, v7

    .line 2967
    .end local v1    # "params":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .end local v3    # "transientView":Landroid/view/View;
    :goto_0
    return-object v3

    .line 2928
    .restart local v3    # "transientView":Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v2

    .line 2929
    .local v2, "scrapView":Landroid/view/View;
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2930
    .local v0, "child":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 2931
    if-eq v0, v2, :cond_3

    .line 2933
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v5, v2, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2942
    :cond_2
    :goto_1
    if-nez v0, :cond_4

    .line 2943
    const/4 v3, 0x0

    goto :goto_0

    .line 2935
    :cond_3
    aput-boolean v8, p2, v7

    .line 2937
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_1

    .line 2946
    :cond_4
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    if-eqz v5, :cond_5

    .line 2947
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v5}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2950
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v5

    if-nez v5, :cond_6

    .line 2951
    invoke-virtual {v0, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2954
    :cond_6
    invoke-direct {p0, v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2956
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2957
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAccessibilityDelegate:Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;

    if-nez v5, :cond_7

    .line 2958
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;

    invoke-direct {v5, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAccessibilityDelegate:Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;

    .line 2960
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v5

    if-nez v5, :cond_8

    .line 2961
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAccessibilityDelegate:Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2965
    :cond_8
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    move-object v3, v0

    .line 2967
    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 3489
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onAttachedToWindow()V

    .line 3491
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3492
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3498
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_0

    .line 3499
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3502
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_1

    .line 3503
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    .line 3504
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3507
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataChanged:Z

    .line 3508
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOldItemCount:I

    .line 3509
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    .line 3520
    :cond_1
    return-void
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    .prologue
    .line 3702
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onCancelPendingInputEvents()V

    .line 3703
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    if-eqz v0, :cond_0

    .line 3704
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3706
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForTap:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;

    if-eqz v0, :cond_1

    .line 3707
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForTap:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3709
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    if-eqz v0, :cond_2

    .line 3710
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3712
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;

    if-eqz v0, :cond_3

    .line 3713
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3715
    :cond_3
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .param p1, "extraSpace"    # I

    .prologue
    .line 3445
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 3447
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3473
    :cond_0
    :goto_0
    return-object v3

    .line 3453
    :cond_1
    sget-object v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 3458
    .local v1, "enabledState":I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3459
    .local v3, "state":[I
    const/4 v0, -0x1

    .line 3460
    .local v0, "enabledPos":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 3461
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 3462
    move v0, v2

    .line 3468
    :cond_2
    if-ltz v0, :cond_0

    .line 3469
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_0

    .line 3460
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 7947
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7948
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPublicInputConnection:Lcom/sec/android/touchwiz/widget/TwAbsListView$InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 7949
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 7950
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$InputConnectionWrapper;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPublicInputConnection:Lcom/sec/android/touchwiz/widget/TwAbsListView$InputConnectionWrapper;

    .line 7952
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 7953
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7954
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPublicInputConnection:Lcom/sec/android/touchwiz/widget/TwAbsListView$InputConnectionWrapper;

    .line 7956
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3524
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onDetachedFromWindow()V

    .line 3526
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDetaching:Z

    .line 3529
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dismissPopup()V

    .line 3532
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clear()V

    .line 3534
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3535
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3536
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 3537
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3538
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3541
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 3542
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3543
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    .line 3546
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    .line 3547
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3548
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3551
    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    .line 3552
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3553
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 3556
    :cond_3
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 3557
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3560
    :cond_4
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    .line 3561
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;->stop()V

    .line 3564
    :cond_5
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 3565
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3568
    :cond_6
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    if-eqz v1, :cond_7

    .line 3569
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3572
    :cond_7
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 3573
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3574
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3577
    :cond_8
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    if-eq v1, v5, :cond_9

    .line 3578
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3582
    :cond_9
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_a

    .line 3583
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3588
    :cond_a
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    if-eqz v1, :cond_b

    .line 3589
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    .line 3592
    :cond_b
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->releaseAllBoosters()V

    .line 3593
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDetaching:Z

    .line 3594
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    .prologue
    .line 7742
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onDisplayHint(I)V

    .line 7743
    sparse-switch p1, :sswitch_data_0

    .line 7755
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopupHidden:Z

    .line 7756
    return-void

    .line 7745
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7746
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dismissPopup()V

    goto :goto_0

    .line 7750
    :sswitch_1
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7751
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->showPopup()V

    goto :goto_0

    .line 7755
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 7743
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 8242
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 8243
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 8244
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelection()Z

    .line 8246
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2543
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2544
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2545
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataChanged:Z

    .line 2549
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOldItemCount:I

    .line 2550
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    .line 2552
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelection()Z

    .line 2555
    :cond_1
    if-nez p1, :cond_2

    .line 2558
    :cond_2
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6082
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 6083
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 6097
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 6085
    :pswitch_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 6086
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 6087
    .local v1, "vscroll":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 6088
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getVerticalScrollFactor()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 6089
    .local v0, "delta":I
    invoke-virtual {p0, v0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->trackMotionScroll(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6090
    const/4 v2, 0x1

    goto :goto_0

    .line 6083
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 8177
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8179
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    .line 8180
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->showPopup()V

    .line 8189
    :cond_0
    :goto_0
    return-void

    .line 8184
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8185
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2051
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2052
    const-class v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2053
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x1

    .line 2057
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2058
    const-class v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2059
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2060
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 2061
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2062
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2064
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 2065
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2066
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2069
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x1

    .line 3069
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 3070
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    if-nez v0, :cond_1

    .line 3096
    :cond_0
    :goto_0
    return-void

    .line 3075
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3076
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    goto :goto_0

    .line 3080
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getSelectedItemPosition()I

    move-result v1

    if-ne p2, v1, :cond_5

    .line 3081
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 3082
    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3087
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3088
    const/16 v1, 0x10

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3089
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 3092
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3093
    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3094
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    goto :goto_0

    .line 3084
    :cond_5
    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6244
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6245
    const/4 v0, 0x1

    .line 6248
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x4

    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 6253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 6256
    .local v0, "action":I
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    if-eqz v9, :cond_0

    .line 6257
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;->stop()V

    .line 6260
    :cond_0
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDetaching:Z

    if-nez v9, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isAttachedToWindow()Z

    move-result v9

    if-nez v9, :cond_3

    :cond_1
    move v7, v8

    .line 6341
    :cond_2
    :goto_0
    return v7

    .line 6268
    :cond_3
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v9, p1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 6272
    :cond_4
    and-int/lit16 v9, v0, 0xff

    packed-switch v9, :pswitch_data_0

    :cond_5
    :goto_1
    :pswitch_0
    move v7, v8

    .line 6341
    goto :goto_0

    .line 6274
    :pswitch_1
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 6275
    .local v3, "touchMode":I
    const/4 v9, 0x6

    if-eq v3, v9, :cond_6

    const/4 v9, 0x5

    if-ne v3, v9, :cond_7

    .line 6276
    :cond_6
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    goto :goto_0

    .line 6280
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 6281
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 6282
    .local v6, "y":I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 6284
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->findMotionRow(I)I

    move-result v1

    .line 6285
    .local v1, "motionPosition":I
    if-eq v3, v11, :cond_8

    if-ltz v1, :cond_8

    .line 6288
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    sub-int v9, v1, v9

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6289
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 6290
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionX:I

    .line 6291
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 6292
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 6293
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 6294
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearScrollingCache()V

    .line 6296
    .end local v4    # "v":Landroid/view/View;
    :cond_8
    const/high16 v9, -0x80000000

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    .line 6297
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->initOrResetVelocityTracker()V

    .line 6298
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6299
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->startNestedScroll(I)Z

    .line 6300
    if-ne v3, v11, :cond_5

    goto :goto_0

    .line 6307
    .end local v1    # "motionPosition":I
    .end local v3    # "touchMode":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_2
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    packed-switch v9, :pswitch_data_1

    goto :goto_1

    .line 6309
    :pswitch_3
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 6310
    .local v2, "pointerIndex":I
    if-ne v2, v10, :cond_9

    .line 6311
    const/4 v2, 0x0

    .line 6312
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 6314
    :cond_9
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v6, v9

    .line 6315
    .restart local v6    # "y":I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->initVelocityTrackerIfNotExists()V

    .line 6316
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6317
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    const/4 v10, 0x0

    invoke-direct {p0, v9, v6, v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto/16 :goto_0

    .line 6327
    .end local v2    # "pointerIndex":I
    .end local v6    # "y":I
    :pswitch_4
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 6328
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 6329
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->recycleVelocityTracker()V

    .line 6330
    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 6331
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->stopNestedScroll()V

    goto/16 :goto_1

    .line 6336
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 6272
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 6307
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method onJumpScrollToTopFinished()V
    .locals 2

    .prologue
    .line 5892
    const-string v0, "TwAbsListView"

    const-string v1, "onJumpScrollToTopFinished()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5893
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 3930
    sparse-switch p1, :sswitch_data_0

    .line 3944
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 3933
    :sswitch_0
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_0

    .line 3937
    :sswitch_1
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    .line 3940
    :sswitch_2
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsCtrlkeyPressed:Z

    if-ne v0, v1, :cond_0

    .line 3941
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resetPressItemListArray()V

    goto :goto_0

    .line 3930
    :sswitch_data_0
    .sparse-switch
        0x1f -> :sswitch_2
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x71 -> :sswitch_0
        0x72 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 3949
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedPosition:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3950
    .local v1, "selectedview":Landroid/view/View;
    const/4 v0, 0x0

    .line 3952
    .local v0, "currentview":Landroid/view/View;
    sparse-switch p1, :sswitch_data_0

    .line 4033
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    :cond_1
    :goto_1
    return v3

    .line 3955
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3958
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedPosition:I

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedPosition:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 3962
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedPosition:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3963
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 3964
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedPosition:I

    iget-wide v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v2, v4, v6, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3965
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3967
    :cond_2
    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setPressed(Z)V

    goto :goto_1

    .line 3976
    .end local v2    # "view":Landroid/view/View;
    :sswitch_1
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsShiftkeyPressed:Z

    if-ne v4, v3, :cond_3

    .line 3977
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOldKeyCode:I

    if-nez v4, :cond_5

    .line 3978
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOldKeyCode:I

    .line 3984
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedPosition:I

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedPosition:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 3988
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCurrentFocusPosition:I

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3990
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsShiftkeyPressed:Z

    if-ne v4, v3, :cond_4

    if-eqz v1, :cond_4

    .line 3991
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCurrentKeyCode:I

    if-nez v3, :cond_6

    .line 3992
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resetPressItemListArray()V

    .line 3993
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCurrentFocusPosition:I

    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3994
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedPosition:I

    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3997
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCurrentFocusPosition:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedPosition:I

    invoke-direct {p0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->addToPressItemListArray(II)V

    .line 3998
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCurrentFocusPosition:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPressedPoint:I

    .line 4007
    :cond_4
    :goto_3
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCurrentKeyCode:I

    if-eqz v3, :cond_0

    .line 4008
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCurrentKeyCode:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOldKeyCode:I

    goto/16 :goto_0

    .line 3980
    :cond_5
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCurrentKeyCode:I

    goto :goto_2

    .line 4000
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resetPressItemListArray()V

    .line 4001
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedPosition:I

    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 4003
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPressedPoint:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedPosition:I

    invoke-direct {p0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->addToPressItemListArray(II)V

    goto :goto_3

    .line 4015
    :sswitch_2
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_0

    .line 4019
    :sswitch_3
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsShiftkeyPressed:Z

    .line 4020
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOldKeyCode:I

    .line 4021
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCurrentKeyCode:I

    .line 4022
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPressedPoint:I

    .line 4023
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSecondPressedPoint:I

    goto/16 :goto_0

    .line 4026
    :sswitch_4
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsCtrlkeyPressed:Z

    if-ne v4, v3, :cond_0

    .line 4027
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resetPressItemListArray()V

    goto/16 :goto_0

    .line 3952
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_0
        0x1f -> :sswitch_4
        0x3b -> :sswitch_3
        0x3c -> :sswitch_3
        0x42 -> :sswitch_0
        0x71 -> :sswitch_2
        0x72 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 2729
    invoke-super/range {p0 .. p5}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onLayout(ZIIII)V

    .line 2731
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mInLayout:Z

    .line 2733
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 2734
    .local v0, "childCount":I
    if-eqz p1, :cond_1

    .line 2735
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2736
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 2735
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2738
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->markChildrenDirty()V

    .line 2741
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    .line 2742
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mInLayout:Z

    .line 2744
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverscrollMax:I

    .line 2747
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v2, :cond_2

    .line 2748
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onItemCountChanged(II)V

    .line 2750
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x1

    .line 2703
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 2704
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->useDefaultSelector()V

    .line 2706
    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 2707
    .local v4, "listPadding":Landroid/graphics/Rect;
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionLeftPadding:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 2708
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionTopPadding:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 2709
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionRightPadding:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingRight:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 2710
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionBottomPadding:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 2713
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTranscriptMode:I

    if-ne v6, v5, :cond_1

    .line 2714
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 2715
    .local v0, "childCount":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingBottom()I

    move-result v7

    sub-int v3, v6, v7

    .line 2716
    .local v3, "listBottom":I
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2717
    .local v2, "lastChild":Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2718
    .local v1, "lastBottom":I
    :goto_0
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    add-int/2addr v6, v0

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastHandledItemCount:I

    if-lt v6, v7, :cond_3

    if-gt v1, v3, :cond_3

    :goto_1
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mForceTranscriptScroll:Z

    .line 2721
    .end local v0    # "childCount":I
    .end local v1    # "lastBottom":I
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v3    # "listBottom":I
    :cond_1
    return-void

    .restart local v0    # "childCount":I
    .restart local v2    # "lastChild":Landroid/view/View;
    .restart local v3    # "listBottom":I
    :cond_2
    move v1, v3

    .line 2717
    goto :goto_0

    .line 2718
    .restart local v1    # "lastBottom":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 6147
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 6148
    .local v0, "childCount":I
    if-nez p4, :cond_2

    if-lez v0, :cond_2

    float-to-int v1, p3

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMinimumVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 6150
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 6151
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 6152
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    .line 6154
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6155
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    float-to-int v2, p3

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->start(I)V

    .line 6157
    :cond_1
    const/4 v1, 0x1

    .line 6159
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dispatchNestedFling(FFZ)Z

    move-result v1

    goto :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    const/4 v1, 0x0

    .line 6131
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 6132
    .local v6, "motionIndex":I
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 6133
    .local v7, "motionView":Landroid/view/View;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    .line 6134
    .local v8, "oldTop":I
    :goto_0
    if-eqz v7, :cond_0

    neg-int v0, p5

    neg-int v3, p5

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->trackMotionScroll(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6135
    :cond_0
    move v4, p5

    .line 6136
    .local v4, "myUnconsumed":I
    const/4 v2, 0x0

    .line 6137
    .local v2, "myConsumed":I
    if-eqz v7, :cond_1

    .line 6138
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v2, v0, v8

    .line 6139
    sub-int/2addr v4, v2

    .line 6141
    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dispatchNestedScroll(IIII[I)Z

    .line 6143
    .end local v2    # "myConsumed":I
    .end local v4    # "myUnconsumed":I
    :cond_2
    return-void

    .end local v8    # "oldTop":I
    :cond_3
    move v8, v1

    .line 6133
    goto :goto_0
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 6124
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 6125
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->startNestedScroll(I)Z

    .line 6126
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 6071
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    if-eq v0, p2, :cond_0

    .line 6072
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollX:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onScrollChanged(IIII)V

    .line 6073
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    .line 6074
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidateParentIfNeeded()V

    .line 6076
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->awakenScrollBars()Z

    .line 6078
    :cond_0
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 8419
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eq v1, v2, :cond_1

    .line 8420
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8421
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v1, :cond_0

    .line 8422
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 8423
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 8430
    :cond_0
    :goto_0
    return v0

    .line 8426
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_0

    .line 8427
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->twSuperNotifyDataSetChanged()V

    .line 8428
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .prologue
    .line 8443
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 2439
    instance-of v2, p1, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    if-eqz v2, :cond_4

    move-object v0, p1

    .line 2440
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    .line 2452
    .local v0, "ss":Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;
    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2453
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataChanged:Z

    .line 2455
    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->height:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSyncHeight:J

    .line 2457
    iget-wide v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->selectedId:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_6

    .line 2458
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNeedSync:Z

    .line 2459
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    .line 2460
    iget-wide v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->selectedId:J

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSyncRowId:J

    .line 2461
    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->position:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSyncPosition:I

    .line 2462
    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->viewTop:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSpecificTop:I

    .line 2463
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSyncMode:I

    .line 2477
    :cond_0
    :goto_1
    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setFilterText(Ljava/lang/String;)V

    .line 2479
    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_1

    .line 2480
    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2483
    :cond_1
    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_2

    .line 2484
    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2487
    :cond_2
    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkedItemCount:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    .line 2489
    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->inActionMode:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    if-eqz v2, :cond_3

    .line 2491
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2494
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    .line 2495
    .end local v0    # "ss":Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;
    :goto_2
    return-void

    .line 2441
    :cond_4
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_5

    move-object v1, p1

    .line 2442
    check-cast v1, Landroid/os/Bundle;

    .line 2443
    .local v1, "wrappedSavedState":Landroid/os/Bundle;
    const-class v2, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2444
    const-string v2, "com.sec.android.touchwiz.widget.TwAbsListView.SavedState"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    .line 2445
    .restart local v0    # "ss":Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;
    goto :goto_0

    .line 2447
    .end local v0    # "ss":Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;
    .end local v1    # "wrappedSavedState":Landroid/os/Bundle;
    :cond_5
    const-string v2, "TwAbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TwAbsListView.onRestoreInstanceState() is of neither SavedState type nor Bundle type, but of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_2

    .line 2464
    .restart local v0    # "ss":Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;
    :cond_6
    iget-wide v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->firstId:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    .line 2465
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelectedPositionInt(I)V

    .line 2467
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setNextSelectedPositionInt(I)V

    .line 2468
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    .line 2469
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNeedSync:Z

    .line 2470
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    .line 2471
    iget-wide v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSyncRowId:J

    .line 2472
    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->position:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSyncPosition:I

    .line 2473
    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->viewTop:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSpecificTop:I

    .line 2474
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSyncMode:I

    goto/16 :goto_1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 3679
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onRtlPropertiesChanged(I)V

    .line 3680
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_0

    .line 3681
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setScrollbarPosition(I)V

    .line 3683
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 18

    .prologue
    .line 2338
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dismissPopup()V

    .line 2340
    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v11

    .line 2342
    .local v11, "superState":Landroid/os/Parcelable;
    new-instance v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    invoke-direct {v10, v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2344
    .local v10, "ss":Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    if-eqz v15, :cond_0

    .line 2346
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    iget-wide v0, v15, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->selectedId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->selectedId:J

    .line 2347
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    iget-wide v0, v15, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->firstId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->firstId:J

    .line 2348
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    iget v15, v15, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->viewTop:I

    iput v15, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->viewTop:I

    .line 2349
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    iget v15, v15, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->position:I

    iput v15, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->position:I

    .line 2350
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    iget v15, v15, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->height:I

    iput v15, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->height:I

    .line 2351
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v15, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2352
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    iget-boolean v15, v15, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->inActionMode:Z

    iput-boolean v15, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->inActionMode:Z

    .line 2353
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    iget v15, v15, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkedItemCount:I

    iput v15, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkedItemCount:I

    .line 2354
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v15, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2355
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v15, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2432
    .end local v10    # "ss":Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;
    :goto_0
    return-object v10

    .line 2359
    .restart local v10    # "ss":Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v15

    if-lez v15, :cond_3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    if-lez v15, :cond_3

    const/4 v5, 0x1

    .line 2360
    .local v5, "haveChildren":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getSelectedItemId()J

    move-result-wide v8

    .line 2361
    .local v8, "selectedId":J
    iput-wide v8, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->selectedId:J

    .line 2362
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v15

    iput v15, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->height:I

    .line 2364
    const-wide/16 v16, 0x0

    cmp-long v15, v8, v16

    if-ltz v15, :cond_4

    .line 2366
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    iput v15, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->viewTop:I

    .line 2367
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getSelectedItemPosition()I

    move-result v15

    iput v15, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->position:I

    .line 2368
    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->firstId:J

    .line 2395
    :goto_2
    const/4 v15, 0x0

    iput-object v15, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2396
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    if-eqz v15, :cond_1

    .line 2397
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 2398
    .local v12, "textFilter":Landroid/widget/EditText;
    if-eqz v12, :cond_1

    .line 2399
    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 2400
    .local v3, "filterText":Landroid/text/Editable;
    if-eqz v3, :cond_1

    .line 2401
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2406
    .end local v3    # "filterText":Landroid/text/Editable;
    .end local v12    # "textFilter":Landroid/widget/EditText;
    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v15, :cond_7

    const/4 v15, 0x1

    :goto_3
    iput-boolean v15, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->inActionMode:Z

    .line 2408
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v15, :cond_2

    .line 2409
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v15

    iput-object v15, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2411
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v15, :cond_9

    .line 2412
    new-instance v7, Landroid/util/LongSparseArray;

    invoke-direct {v7}, Landroid/util/LongSparseArray;-><init>()V

    .line 2413
    .local v7, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v15}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .line 2414
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    if-ge v6, v2, :cond_8

    .line 2415
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v15, v6}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v15, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2414
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 2359
    .end local v2    # "count":I
    .end local v5    # "haveChildren":Z
    .end local v6    # "i":I
    .end local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v8    # "selectedId":J
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2370
    .restart local v5    # "haveChildren":Z
    .restart local v8    # "selectedId":J
    :cond_4
    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    if-lez v15, :cond_6

    .line 2380
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 2381
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    iput v15, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->viewTop:I

    .line 2382
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    .line 2383
    .local v4, "firstPos":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    if-lt v4, v15, :cond_5

    .line 2384
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    add-int/lit8 v4, v15, -0x1

    .line 2386
    :cond_5
    iput v4, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->position:I

    .line 2387
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->firstId:J

    goto/16 :goto_2

    .line 2389
    .end local v4    # "firstPos":I
    .end local v13    # "v":Landroid/view/View;
    :cond_6
    const/4 v15, 0x0

    iput v15, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->viewTop:I

    .line 2390
    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->firstId:J

    .line 2391
    const/4 v15, 0x0

    iput v15, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->position:I

    goto/16 :goto_2

    .line 2406
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2417
    .restart local v2    # "count":I
    .restart local v6    # "i":I
    .restart local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_8
    iput-object v7, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2419
    .end local v2    # "count":I
    .end local v6    # "i":I
    .end local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    iput v15, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkedItemCount:I

    .line 2421
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v15, :cond_a

    .line 2422
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v15}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    .line 2429
    :cond_a
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 2430
    .local v14, "wrappedSavedState":Landroid/os/Bundle;
    const-string v15, "com.sec.android.touchwiz.widget.TwAbsListView.SavedState"

    invoke-virtual {v14, v15, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object v10, v14

    .line 2432
    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 3250
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataChanged:Z

    .line 3252
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->rememberSyncState()V

    .line 3255
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_1

    .line 3256
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onSizeChanged(IIII)V

    .line 3258
    :cond_1
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 6119
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v4, 0x1

    .line 8206
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8207
    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createTextFilter(Z)V

    .line 8208
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 8209
    .local v1, "length":I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 8210
    .local v2, "showing":Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 8212
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->showPopup()V

    .line 8213
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    .line 8219
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 8220
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 8222
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 8223
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 8230
    .end local v0    # "f":Landroid/widget/Filter;
    .end local v1    # "length":I
    .end local v2    # "showing":Z
    :cond_1
    return-void

    .line 8214
    .restart local v1    # "length":I
    .restart local v2    # "showing":Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 8216
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dismissPopup()V

    .line 8217
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    goto :goto_0

    .line 8225
    .restart local v0    # "f":Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 5439
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_2

    .line 5442
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isClickable()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isLongClickable()Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    move v9, v10

    .line 5537
    :cond_1
    :goto_0
    return v9

    .line 5445
    :cond_2
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    if-eqz v11, :cond_3

    .line 5446
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;->stop()V

    .line 5449
    :cond_3
    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDetaching:Z

    if-nez v11, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isAttachedToWindow()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 5457
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->startNestedScroll(I)Z

    .line 5459
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v11, :cond_4

    .line 5460
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v11, p1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 5461
    .local v4, "intercepted":Z
    if-eqz v4, :cond_4

    move v9, v10

    .line 5462
    goto :goto_0

    .line 5466
    .end local v4    # "intercepted":Z
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->initVelocityTrackerIfNotExists()V

    .line 5467
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 5469
    .local v6, "vtev":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 5470
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    .line 5533
    :cond_5
    :goto_1
    :pswitch_0
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_6

    .line 5534
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5536
    :cond_6
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    move v9, v10

    .line 5537
    goto :goto_0

    .line 5472
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 5477
    :pswitch_2
    invoke-direct {p0, p1, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 5482
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 5487
    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onTouchCancel()V

    goto :goto_1

    .line 5492
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 5493
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionX:I

    .line 5494
    .local v7, "x":I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 5495
    .local v8, "y":I
    invoke-virtual {p0, v7, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v5

    .line 5496
    .local v5, "motionPosition":I
    if-ltz v5, :cond_7

    .line 5498
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5499
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 5500
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 5501
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v9

    if-nez v9, :cond_5

    .line 5502
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    goto :goto_1

    .line 5505
    .end local v1    # "child":Landroid/view/View;
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    goto :goto_1

    .line 5513
    .end local v5    # "motionPosition":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 5514
    .local v3, "index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 5515
    .local v2, "id":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    float-to-int v7, v11

    .line 5516
    .restart local v7    # "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    float-to-int v8, v11

    .line 5517
    .restart local v8    # "y":I
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    .line 5518
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 5519
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionX:I

    .line 5520
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 5521
    invoke-virtual {p0, v7, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v5

    .line 5522
    .restart local v5    # "motionPosition":I
    if-ltz v5, :cond_8

    .line 5524
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5525
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 5526
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 5528
    .end local v1    # "child":Landroid/view/View;
    :cond_8
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    goto/16 :goto_1

    .line 5470
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 4415
    if-eqz p1, :cond_2

    .line 4417
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->hideSelector()V

    .line 4421
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 4424
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    .line 4426
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    .line 4445
    :cond_1
    :goto_0
    return-void

    .line 4428
    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4429
    .local v0, "touchMode":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 4430
    :cond_3
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 4431
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 4433
    :cond_4
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    .line 4434
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;->stop()V

    .line 4437
    :cond_5
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    if-eqz v1, :cond_1

    .line 4438
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    .line 4439
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidateParentCaches()V

    .line 4440
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->finishGlows()V

    .line 4441
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 9732
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 9733
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverPosition:I

    .line 9735
    if-nez p2, :cond_0

    .line 9739
    :goto_0
    return-void

    .line 9737
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->releaseAllBoosters()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3598
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onWindowFocusChanged(Z)V

    .line 3603
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHasWindowFocusForMotion:Z

    .line 3617
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 3619
    .local v0, "touchMode":I
    :goto_0
    if-nez p1, :cond_6

    .line 3620
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 3621
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-eqz v3, :cond_1

    .line 3622
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3625
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 3626
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    if-eqz v3, :cond_0

    .line 3627
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;->stop()V

    .line 3629
    :cond_0
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    if-eqz v3, :cond_1

    .line 3630
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    .line 3631
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidateParentCaches()V

    .line 3632
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->finishGlows()V

    .line 3633
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 3637
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dismissPopup()V

    .line 3639
    if-ne v0, v2, :cond_2

    .line 3641
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedPosition:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 3645
    :cond_2
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    if-eqz v2, :cond_3

    .line 3646
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    .line 3670
    :cond_3
    :goto_1
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastTouchMode:I

    .line 3672
    if-nez p1, :cond_4

    .line 3673
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->releaseAllBoosters()V

    .line 3675
    :cond_4
    return-void

    .end local v0    # "touchMode":I
    :cond_5
    move v0, v2

    .line 3617
    goto :goto_0

    .line 3649
    .restart local v0    # "touchMode":I
    :cond_6
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopupHidden:Z

    if-nez v3, :cond_7

    .line 3651
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->showPopup()V

    .line 3655
    :cond_7
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_3

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 3657
    if-ne v0, v2, :cond_8

    .line 3659
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelection()Z

    goto :goto_1

    .line 3663
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->hideSelector()V

    .line 3664
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 3665
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0xc8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2088
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2107
    :goto_0
    return v1

    .line 2091
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v1, v2

    .line 2107
    goto :goto_0

    .line 2093
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 2094
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 2095
    .local v0, "viewportHeight":I
    invoke-virtual {p0, v0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v0    # "viewportHeight":I
    :cond_1
    move v1, v2

    .line 2098
    goto :goto_0

    .line 2100
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    if-lez v3, :cond_2

    .line 2101
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 2102
    .restart local v0    # "viewportHeight":I
    neg-int v2, v0

    invoke-virtual {p0, v2, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v0    # "viewportHeight":I
    :cond_2
    move v1, v2

    .line 2105
    goto :goto_0

    .line 2091
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1558
    const/4 v8, 0x0

    .line 1559
    .local v8, "handled":Z
    const/4 v9, 0x0

    .line 1560
    .local v9, "handledNotifykeyPress":Z
    const/4 v7, 0x1

    .line 1562
    .local v7, "dispatchItemClick":Z
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v3, :cond_f

    .line 1563
    const/4 v8, 0x1

    .line 1576
    const/4 v0, 0x0

    .line 1578
    .local v0, "checkedStateChanged":Z
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_9

    .line 1580
    :cond_0
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_6

    move v6, v1

    .line 1581
    .local v6, "checked":Z
    :goto_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1582
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1583
    if-eqz v6, :cond_7

    .line 1584
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1589
    :cond_1
    :goto_1
    if-eqz v6, :cond_8

    .line 1590
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    .line 1594
    :goto_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 1595
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1597
    const/4 v7, 0x0

    .line 1599
    :cond_2
    const/4 v0, 0x1

    .line 1616
    .end local v6    # "checked":Z
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 1617
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateOnScreenCheckedViews()V

    .line 1627
    .end local v0    # "checkedStateChanged":Z
    :cond_4
    :goto_4
    if-eqz v7, :cond_5

    .line 1628
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    or-int/2addr v8, v1

    .line 1631
    :cond_5
    return v8

    .restart local v0    # "checkedStateChanged":Z
    :cond_6
    move v6, v2

    .line 1580
    goto :goto_0

    .line 1586
    .restart local v6    # "checked":Z
    :cond_7
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1592
    :cond_8
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1600
    .end local v6    # "checked":Z
    :cond_9
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-ne v3, v1, :cond_3

    .line 1601
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_c

    move v6, v1

    .line 1602
    .restart local v6    # "checked":Z
    :goto_5
    if-eqz v6, :cond_d

    .line 1603
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1604
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1605
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1606
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1607
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1609
    :cond_a
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    .line 1613
    :cond_b
    :goto_6
    const/4 v0, 0x1

    goto :goto_3

    .end local v6    # "checked":Z
    :cond_c
    move v6, v2

    .line 1601
    goto :goto_5

    .line 1610
    .restart local v6    # "checked":Z
    :cond_d
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1611
    :cond_e
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    goto :goto_6

    .line 1619
    .end local v0    # "checkedStateChanged":Z
    .end local v6    # "checked":Z
    :cond_f
    if-eqz p1, :cond_4

    goto :goto_4
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    const/4 v1, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3852
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_2

    .line 3853
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 3856
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    .line 3857
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragBlockEnabled:Z

    .line 3860
    :cond_0
    invoke-virtual {p0, p2, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setItemChecked(IZ)V

    .line 3861
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->performHapticFeedback(I)Z

    .line 3878
    :cond_1
    :goto_0
    return v6

    .line 3866
    :cond_2
    const/4 v6, 0x0

    .line 3867
    .local v6, "handled":Z
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_3

    .line 3868
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3871
    :cond_3
    if-nez v6, :cond_4

    .line 3872
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3873
    invoke-super {p0, p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3875
    :cond_4
    if-eqz v6, :cond_1

    .line 3876
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 4051
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4052
    .local v4, "frame":Landroid/graphics/Rect;
    if-nez v4, :cond_0

    .line 4053
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4054
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4056
    :cond_0
    instance-of v6, p0, Lcom/sec/android/touchwiz/widget/TwListView;

    if-eqz v6, :cond_3

    move-object v6, p0

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwListView;

    iget v2, v6, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    .line 4057
    .local v2, "dividerHeight":I
    :goto_0
    if-lez v2, :cond_1

    move-object v6, p0

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    .line 4059
    .local v3, "drawDividers":Z
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v1

    .line 4060
    .local v1, "count":I
    add-int/lit8 v5, v1, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_5

    .line 4061
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4062
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    .line 4063
    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 4064
    if-eqz v3, :cond_2

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 4066
    :cond_2
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4067
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    add-int/2addr v6, v5

    .line 4071
    .end local v0    # "child":Landroid/view/View;
    :goto_2
    return v6

    .end local v1    # "count":I
    .end local v2    # "dividerHeight":I
    .end local v3    # "drawDividers":Z
    .end local v5    # "i":I
    :cond_3
    move v2, v3

    .line 4056
    goto :goto_0

    .line 4060
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "count":I
    .restart local v2    # "dividerHeight":I
    .restart local v3    # "drawDividers":Z
    .restart local v5    # "i":I
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 4071
    .end local v0    # "child":Landroid/view/View;
    :cond_5
    const/4 v6, -0x1

    goto :goto_2
.end method

.method public pointToRowId(II)J
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 4083
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v0

    .line 4084
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 4085
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 4087
    :goto_0
    return-wide v2

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_0
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/4 v7, -0x1

    .line 3134
    if-eq p1, v7, :cond_0

    .line 3135
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    .line 3138
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3139
    .local v2, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 3140
    instance-of v3, p2, Lcom/sec/android/touchwiz/widget/TwAbsListView$SelectionBoundsAdjuster;

    if-eqz v3, :cond_1

    move-object v3, p2

    .line 3141
    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$SelectionBoundsAdjuster;

    invoke-interface {v3, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 3145
    :cond_1
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionLeftPadding:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 3146
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionTopPadding:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 3147
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 3148
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionBottomPadding:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 3151
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3152
    .local v1, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 3153
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3156
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsChildViewEnabled:Z

    .line 3157
    .local v0, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eq v3, v0, :cond_3

    .line 3158
    if-nez v0, :cond_4

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsChildViewEnabled:Z

    .line 3159
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getSelectedItemPosition()I

    move-result v3

    if-eq v3, v7, :cond_3

    .line 3160
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->refreshDrawableState()V

    .line 3163
    :cond_3
    return-void

    .line 3158
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method positionSelectorLikeFocus(ILandroid/view/View;)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3115
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3116
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    if-eq v7, p1, :cond_2

    const/4 v7, -0x1

    if-eq p1, v7, :cond_2

    move v1, v5

    .line 3118
    .local v1, "manageState":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 3119
    invoke-virtual {v2, v6, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3122
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 3124
    if-eqz v1, :cond_1

    .line 3125
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3126
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    .line 3127
    .local v3, "x":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    .line 3128
    .local v4, "y":F
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    :goto_1
    invoke-virtual {v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3129
    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3131
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_1
    return-void

    .end local v1    # "manageState":Z
    :cond_2
    move v1, v6

    .line 3116
    goto :goto_0

    .restart local v0    # "bounds":Landroid/graphics/Rect;
    .restart local v1    # "manageState":Z
    .restart local v3    # "x":F
    .restart local v4    # "y":F
    :cond_3
    move v5, v6

    .line 3128
    goto :goto_1
.end method

.method positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 3102
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    .line 3104
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3105
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3107
    :cond_0
    return-void
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8338
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v1

    .line 8339
    .local v1, "childCount":I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->access$5400(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;)Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    move-result-object v3

    .line 8342
    .local v3, "listener":Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8343
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8344
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 8346
    .local v4, "lp":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    iget v6, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8347
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8348
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 8349
    if-eqz v3, :cond_0

    .line 8351
    invoke-interface {v3, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 8342
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8355
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 8356
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeAllViewsInLayout()V

    .line 8357
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 7377
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedPosition:I

    .line 7378
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 7379
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 7381
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7382
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 7383
    return v0
.end method

.method public registerDoubleTapMotion()V
    .locals 1

    .prologue
    .line 1097
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->registerMotionListener()V

    .line 1098
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setMotionEvent(Z)V

    .line 1099
    return-void
.end method

.method public registerIRMotion()V
    .locals 0

    .prologue
    .line 1075
    return-void
.end method

.method public registerSmartObserver()V
    .locals 0

    .prologue
    .line 10106
    return-void
.end method

.method public registerSmartScrollListener()V
    .locals 0

    .prologue
    .line 10084
    return-void
.end method

.method removePendingCallbacks()V
    .locals 2

    .prologue
    .line 5913
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 5914
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 5915
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForTap:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5916
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5918
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5919
    return-void
.end method

.method reportScrollStateChange(I)V
    .locals 8
    .param p1, "newState"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 6395
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_8

    .line 6397
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    if-ne v0, v7, :cond_2

    .line 6398
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSCookie:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 6400
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    .line 6404
    :goto_0
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSCookie:I

    .line 6406
    :cond_1
    invoke-static {v5}, Landroid/os/DVFSHelper;->onScrollEvent(Z)V

    .line 6407
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSLockAcquired:Z

    .line 6409
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    if-eq v0, v7, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwScrollingByScrollbar:Z

    if-nez v0, :cond_7

    .line 6410
    if-eqz p1, :cond_5

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    if-nez v0, :cond_5

    .line 6412
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSCookie:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    .line 6414
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    .line 6418
    :goto_1
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSCookie:I

    .line 6420
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->methodPauseGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    .line 6422
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->methodPauseGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "AbsListScroll"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSCookie:I
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    .line 6427
    :cond_4
    :goto_2
    invoke-static {v6}, Landroid/os/DVFSHelper;->onScrollEvent(Z)V

    .line 6428
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSLockAcquired:Z

    .line 6430
    :cond_5
    if-nez p1, :cond_7

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    if-eqz v0, :cond_7

    .line 6432
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_7

    .line 6433
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSCookie:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    .line 6435
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0

    .line 6439
    :goto_3
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSCookie:I

    .line 6441
    :cond_6
    invoke-static {v5}, Landroid/os/DVFSHelper;->onScrollEvent(Z)V

    .line 6442
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSLockAcquired:Z

    .line 6447
    :cond_7
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    .line 6448
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCstate:I

    if-eq v0, v7, :cond_8

    .line 6450
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V

    .line 6453
    :cond_8
    return-void

    .line 6437
    :catch_0
    move-exception v0

    goto :goto_3

    .line 6436
    :catch_1
    move-exception v0

    goto :goto_3

    .line 6424
    :catch_2
    move-exception v0

    goto :goto_2

    .line 6423
    :catch_3
    move-exception v0

    goto :goto_2

    .line 6416
    :catch_4
    move-exception v0

    goto :goto_1

    .line 6415
    :catch_5
    move-exception v0

    goto :goto_1

    .line 6402
    :catch_6
    move-exception v0

    goto/16 :goto_0

    .line 6401
    :catch_7
    move-exception v0

    goto/16 :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 6236
    if-eqz p1, :cond_0

    .line 6237
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->recycleVelocityTracker()V

    .line 6239
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 6240
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2562
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 2563
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->requestLayout()V

    .line 2565
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 2232
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2233
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resetList()V

    .line 2234
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    .line 2235
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 2237
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2571
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeAllViewsInLayout()V

    .line 2572
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    .line 2578
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataChanged:Z

    .line 2579
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2580
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNeedSync:Z

    .line 2581
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    .line 2582
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOldSelectedPosition:I

    .line 2583
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOldSelectedRowId:J

    .line 2584
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelectedPositionInt(I)V

    .line 2585
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setNextSelectedPositionInt(I)V

    .line 2586
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 2587
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    .line 2588
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2589
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 2590
    return-void
.end method

.method public resetPressItemListArray()V
    .locals 2

    .prologue
    .line 10207
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_1

    .line 10217
    :cond_0
    :goto_0
    return-void

    .line 10210
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 10212
    .local v0, "checkCount":I
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 10215
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 10216
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    goto :goto_0
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 7445
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v3

    .line 7447
    .local v3, "childCount":I
    if-gtz v3, :cond_0

    .line 7448
    const/16 v17, 0x0

    .line 7543
    :goto_0
    return v17

    .line 7451
    :cond_0
    const/4 v13, 0x0

    .line 7453
    .local v13, "selectedTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 7454
    .local v5, "childrenTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 7455
    .local v4, "childrenBottom":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    .line 7456
    .local v7, "firstPosition":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 7457
    .local v14, "toPosition":I
    const/4 v6, 0x1

    .line 7459
    .local v6, "down":Z
    if-lt v14, v7, :cond_4

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    .line 7460
    move v12, v14

    .line 7462
    .local v12, "selectedPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v12, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 7463
    .local v10, "selected":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    .line 7464
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 7467
    .local v11, "selectedBottom":I
    if-ge v13, v5, :cond_3

    .line 7468
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    .line 7524
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    :cond_1
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 7525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 7527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;->stop()V

    .line 7529
    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 7530
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearScrollingCache()V

    .line 7531
    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSpecificTop:I

    .line 7532
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->lookForSelectablePosition(IZ)I

    move-result v12

    .line 7533
    if-lt v12, v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_c

    .line 7534
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 7535
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    .line 7536
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelectionInt(I)V

    .line 7537
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invokeOnItemScrollListener()V

    .line 7541
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 7543
    if-ltz v12, :cond_d

    const/16 v17, 0x1

    goto/16 :goto_0

    .line 7469
    .restart local v10    # "selected":Landroid/view/View;
    .restart local v11    # "selectedBottom":I
    :cond_3
    if-le v11, v4, :cond_1

    .line 7470
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v13, v17, v18

    goto :goto_1

    .line 7474
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    .end local v12    # "selectedPos":I
    :cond_4
    if-ge v14, v7, :cond_8

    .line 7476
    move v12, v7

    .line 7477
    .restart local v12    # "selectedPos":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v3, :cond_1

    .line 7478
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 7479
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 7481
    .local v15, "top":I
    if-nez v8, :cond_6

    .line 7483
    move v13, v15

    .line 7485
    if-gtz v7, :cond_5

    if-ge v15, v5, :cond_6

    .line 7488
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    .line 7491
    :cond_6
    if-lt v15, v5, :cond_7

    .line 7493
    add-int v12, v7, v8

    .line 7494
    move v13, v15

    .line 7495
    goto/16 :goto_1

    .line 7477
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 7499
    .end local v8    # "i":I
    .end local v12    # "selectedPos":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    .line 7500
    .local v9, "itemCount":I
    const/4 v6, 0x0

    .line 7501
    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    .line 7503
    .restart local v12    # "selectedPos":I
    add-int/lit8 v8, v3, -0x1

    .restart local v8    # "i":I
    :goto_4
    if-ltz v8, :cond_1

    .line 7504
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 7505
    .restart local v16    # "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 7506
    .restart local v15    # "top":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 7508
    .local v2, "bottom":I
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_a

    .line 7509
    move v13, v15

    .line 7510
    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_9

    if-le v2, v4, :cond_a

    .line 7511
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 7515
    :cond_a
    if-gt v2, v4, :cond_b

    .line 7516
    add-int v12, v7, v8

    .line 7517
    move v13, v15

    .line 7518
    goto/16 :goto_1

    .line 7503
    :cond_b
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 7539
    .end local v2    # "bottom":I
    .end local v8    # "i":I
    .end local v9    # "itemCount":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_c
    const/4 v12, -0x1

    goto :goto_2

    .line 7543
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 1

    .prologue
    .line 7425
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7426
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    .line 7427
    const/4 v0, 0x1

    .line 7429
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollListBy(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 7084
    neg-int v0, p1

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->trackMotionScroll(II)Z

    .line 7085
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    .line 2035
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_1

    .line 2036
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 2037
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getLastVisiblePosition()I

    move-result v1

    .line 2038
    .local v1, "lastVisiblePosition":I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    .line 2047
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :goto_0
    return-void

    .line 2042
    .restart local v0    # "firstVisiblePosition":I
    .restart local v1    # "lastVisiblePosition":I
    :cond_0
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 2043
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastAccessibilityScrollEventToIndex:I

    .line 2046
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v11, 0x3c

    const/16 v10, 0x3b

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 7864
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->acceptFilter()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v5

    .line 7939
    :cond_0
    :goto_0
    return v2

    .line 7868
    :cond_1
    const/4 v2, 0x0

    .line 7869
    .local v2, "handled":Z
    const/4 v3, 0x1

    .line 7870
    .local v3, "okToSend":Z
    sparse-switch p1, :sswitch_data_0

    .line 7902
    :goto_1
    if-eqz v3, :cond_0

    .line 7903
    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createTextFilter(Z)V

    .line 7905
    move-object v1, p3

    .line 7906
    .local v1, "forwardEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 7907
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 7910
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 7911
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7913
    :pswitch_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7914
    if-eq p1, v10, :cond_3

    if-ne p1, v11, :cond_7

    .line 7915
    :cond_3
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    .line 7877
    .end local v0    # "action":I
    .end local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :sswitch_0
    const/4 v3, 0x0

    .line 7878
    goto :goto_1

    .line 7880
    :sswitch_1
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 7881
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_6

    .line 7883
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 7884
    .local v4, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_4

    .line 7885
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 7887
    :cond_4
    const/4 v2, 0x1

    .line 7894
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_5
    :goto_2
    const/4 v3, 0x0

    .line 7895
    goto :goto_1

    .line 7888
    :cond_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v8, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_5

    .line 7890
    const/4 v2, 0x1

    .line 7891
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 7898
    :sswitch_2
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    goto :goto_1

    .line 7916
    .restart local v0    # "action":I
    .restart local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :cond_7
    const/16 v5, 0x71

    if-eq p1, v5, :cond_8

    const/16 v5, 0x72

    if-ne p1, v5, :cond_0

    .line 7917
    :cond_8
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_0

    .line 7922
    :pswitch_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v6, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7923
    if-eq p1, v10, :cond_9

    if-ne p1, v11, :cond_a

    .line 7924
    :cond_9
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsShiftkeyPressed:Z

    .line 7925
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOldKeyCode:I

    .line 7926
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCurrentKeyCode:I

    .line 7927
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPressedPoint:I

    .line 7928
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSecondPressedPoint:I

    goto/16 :goto_0

    .line 7929
    :cond_a
    const/16 v6, 0x71

    if-eq p1, v6, :cond_b

    const/16 v6, 0x72

    if-ne p1, v6, :cond_0

    .line 7930
    :cond_b
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_0

    .line 7935
    :pswitch_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 7870
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 7911
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 152
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 1348
    if-eqz p1, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapterHasStableIds:Z

    .line 1350
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 1352
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1356
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 1357
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1360
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 1361
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1365
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsMultiFocusEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    .line 1366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    .line 1367
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resetPressItemListArray()V

    .line 1368
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOldAdapterItemCount:I

    .line 1370
    :cond_3
    return-void
.end method

.method public setAirScrollEnable(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1089
    return-void
.end method

.method public setAlwaysDisableHoverHighlight(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .prologue
    .line 5935
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAlwaysDisableHoverHighlight:Z

    .line 5936
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 8309
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 8310
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    .line 8311
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 8312
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8313
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 8312
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8315
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 8317
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 5
    .param p1, "choiceMode"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1697
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    .line 1698
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1699
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1700
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1702
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 1703
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 1704
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v3}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1706
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1707
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v3}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1710
    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-ne v0, v4, :cond_3

    .line 1711
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearChoices()V

    .line 1712
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setLongClickable(Z)V

    .line 1716
    :cond_3
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 1717
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragBlockEnabled:Z

    .line 1724
    :cond_4
    :goto_0
    return-void

    .line 1718
    :cond_5
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-ne v0, v4, :cond_6

    .line 1719
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragBlockEnabled:Z

    goto :goto_0

    .line 1720
    :cond_6
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-ne v0, v2, :cond_4

    .line 1721
    :cond_7
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragBlockEnabled:Z

    goto :goto_0
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "onTop"    # Z

    .prologue
    .line 3326
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDrawSelectorOnTop:Z

    .line 3327
    return-void
.end method

.method public setEnableDoubleFling(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1144
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDoubleFlingEnabled:Z

    .line 1145
    return-void
.end method

.method public setEnableDragBlock(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 10136
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragBlockEnabled:Z

    .line 10137
    return-void
.end method

.method public setEnableHoverDrawable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1155
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoveringEnabled:Z

    .line 1156
    return-void
.end method

.method setEnableLinearFling(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 816
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLinearFlingEnabled:Z

    .line 817
    return-void
.end method

.method public setEnableMultiFocus(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 10127
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsMultiFocusEnabled:Z

    .line 10128
    return-void
.end method

.method public setEnableOnclickInMultiSelectMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 10154
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsTwOnClickEnabled:Z

    .line 10155
    return-void
.end method

.method public setEnablePaddingInHoverScroll(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 4512
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 4513
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1870
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_1

    .line 1871
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    .line 1872
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setFastScrollEnabled(Z)V

    .line 1875
    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScrollAlwaysVisible:Z

    .line 1877
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1878
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    .line 1888
    :cond_1
    :goto_0
    return-void

    .line 1880
    :cond_2
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$2;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$2;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1810
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1811
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScrollEnabled:Z

    .line 1813
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1814
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setFastScrollerEnabledUiThread(Z)V

    .line 1824
    :cond_0
    :goto_0
    return-void

    .line 1816
    :cond_1
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollStyle(I)V
    .locals 1
    .param p1, "styleResId"    # I

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-nez v0, :cond_0

    .line 1849
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScrollStyle:I

    .line 1853
    :goto_0
    return-void

    .line 1851
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setStyle(I)V

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .param p1, "filterText"    # Ljava/lang/String;

    .prologue
    .line 2510
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2511
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createTextFilter(Z)V

    .line 2514
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2515
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 2516
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 2518
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 2519
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2520
    .local v0, "f":Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2524
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    .line 2525
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;->clearSavedState()V

    .line 2528
    :cond_1
    return-void
.end method

.method public setForcedClick(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 3744
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mForcedClick:Z

    .line 3745
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2757
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setFrame(IIII)Z

    move-result v0

    .line 2759
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 2763
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 2764
    .local v1, "visible":Z
    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2765
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionPopup()V

    .line 2769
    .end local v1    # "visible":Z
    :cond_0
    return v0

    .line 2763
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 6781
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 6782
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    .line 6784
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->access$2000(Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;)Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->setFriction(F)V

    .line 6785
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .locals 0
    .param p1, "hoverdelay"    # I

    .prologue
    .line 4505
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_DELAY:I

    .line 4506
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 4479
    if-eqz p1, :cond_0

    .line 4480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollEnable:Z

    .line 4484
    :goto_0
    return-void

    .line 4482
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public setHoverScrollSpeed(I)V
    .locals 1
    .param p1, "hoverspeed"    # I

    .prologue
    .line 4494
    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_SPEED:F

    .line 4495
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 1487
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-nez v2, :cond_1

    .line 1554
    :cond_0
    :goto_0
    return-void

    .line 1492
    :cond_1
    if-eqz p2, :cond_4

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-ne v2, v6, :cond_4

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_4

    .line 1493
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1495
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1499
    :cond_3
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1502
    :cond_4
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-ne v2, v6, :cond_c

    .line 1503
    :cond_5
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1504
    .local v0, "oldValue":Z
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1505
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1506
    if-eqz p2, :cond_a

    .line 1507
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1512
    :cond_6
    :goto_1
    if-eq v0, p2, :cond_7

    .line 1513
    if-eqz p2, :cond_b

    .line 1514
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    .line 1519
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_8

    .line 1520
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1521
    .local v4, "id":J
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1548
    .end local v0    # "oldValue":Z
    .end local v4    # "id":J
    :cond_8
    :goto_3
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mInLayout:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBlockLayoutRequests:Z

    if-nez v1, :cond_0

    .line 1549
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mForcedClick:Z

    if-nez v1, :cond_9

    .line 1550
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataChanged:Z

    .line 1551
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->rememberSyncState()V

    .line 1552
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    goto/16 :goto_0

    .line 1509
    .restart local v0    # "oldValue":Z
    :cond_a
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1516
    :cond_b
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1525
    .end local v0    # "oldValue":Z
    :cond_c
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_10

    move v7, v8

    .line 1528
    .local v7, "updateIds":Z
    :goto_4
    if-nez p2, :cond_d

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1529
    :cond_d
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1530
    if-eqz v7, :cond_e

    .line 1531
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1536
    :cond_e
    if-eqz p2, :cond_11

    .line 1537
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1538
    if-eqz v7, :cond_f

    .line 1539
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1541
    :cond_f
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v7    # "updateIds":Z
    :cond_10
    move v7, v1

    .line 1525
    goto :goto_4

    .line 1542
    .restart local v7    # "updateIds":Z
    :cond_11
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1543
    :cond_12
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setMotionEvent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1120
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionEnable:Z

    .line 1121
    return-void
.end method

.method public setMultiChoiceModeListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1737
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    .line 1739
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->setWrapped(Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;)V

    .line 1740
    return-void
.end method

.method public setMultiFocusListItem(II)V
    .locals 1
    .param p1, "startitem"    # I
    .param p2, "enditem"    # I

    .prologue
    .line 10224
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 10229
    :goto_0
    return-void

    .line 10227
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resetPressItemListArray()V

    .line 10228
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->addToPressItemListArray(II)V

    goto :goto_0
.end method

.method public setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    .prologue
    .line 2013
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    .line 2014
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invokeOnItemScrollListener()V

    .line 2015
    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .locals 0
    .param p1, "leftPadding"    # I
    .param p2, "rightPadding"    # I

    .prologue
    .line 6209
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlowPaddingLeft:I

    .line 6210
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlowPaddingRight:I

    .line 6211
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 1330
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 1331
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-nez v1, :cond_0

    .line 1332
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1333
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 1334
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 1340
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setOverScrollMode(I)V

    .line 1341
    return-void

    .line 1337
    :cond_1
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 1338
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    goto :goto_0
.end method

.method public setRecyclerListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    .prologue
    .line 8467
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    # setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;
    invoke-static {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->access$5402(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;)Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    .line 8468
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 8374
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_1

    .line 8375
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 8376
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 8378
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8388
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_0
    :goto_0
    return-void

    .line 8382
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 8384
    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 8385
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8386
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 8400
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 8401
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 8403
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 1951
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setScrollBarStyle(I)V

    .line 1952
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_0

    .line 1953
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setScrollBarStyle(I)V

    .line 1955
    :cond_0
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "up"    # Landroid/view/View;
    .param p2, "down"    # Landroid/view/View;

    .prologue
    .line 3411
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollUp:Landroid/view/View;

    .line 3412
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollDown:Landroid/view/View;

    .line 3413
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2154
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 2155
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearScrollingCache()V

    .line 2157
    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollingCacheEnabled:Z

    .line 2158
    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "y"    # I

    .prologue
    .line 9185
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 9212
    :cond_0
    :goto_0
    return-void

    .line 9189
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 9190
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 9191
    if-ltz p1, :cond_2

    .line 9192
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setNextSelectedPositionInt(I)V

    .line 9198
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 9199
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 9200
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSpecificTop:I

    .line 9202
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 9203
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSyncPosition:I

    .line 9204
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSyncRowId:J

    .line 9207
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    if-eqz v0, :cond_4

    .line 9208
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;->stop()V

    .line 9210
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    goto :goto_0

    .line 9195
    :cond_5
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 3337
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3338
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3341
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 3342
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3343
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3345
    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3346
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3347
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3348
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionLeftPadding:I

    .line 3349
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionTopPadding:I

    .line 3350
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionRightPadding:I

    .line 3351
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionBottomPadding:I

    .line 3352
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3353
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    .line 3354
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1985
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmoothScrollbarEnabled:Z

    .line 1986
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .param p1, "stackFromBottom"    # Z

    .prologue
    .line 2225
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 2226
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    .line 2227
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayoutIfNecessary()V

    .line 2229
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .param p1, "textFilterEnabled"    # Z

    .prologue
    .line 2171
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilterEnabled:Z

    .line 2172
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 1136
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchSlop:I

    .line 1137
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 8280
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTranscriptMode:I

    .line 8281
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 6794
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityScale:F

    .line 6795
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1943
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setVerticalScrollbarPosition(I)V

    .line 1944
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_0

    .line 1945
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setScrollbarPosition(I)V

    .line 1947
    :cond_0
    return-void
.end method

.method setVisibleRangeHint(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 8450
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 8451
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 8453
    :cond_0
    return-void
.end method

.method shouldShowSelector()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3283
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4

    move v0, v2

    .line 3284
    .local v0, "isFingerAirView":Z
    :goto_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view_information_preview"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_5

    move v1, v2

    .line 3286
    .local v1, "isFingerAirViewPreview":Z
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->touchModeDrawsInPressedState()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isPressed()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isHovered()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isFingerHovered()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v3, v2

    :cond_3
    return v3

    .end local v0    # "isFingerAirView":Z
    .end local v1    # "isFingerAirViewPreview":Z
    :cond_4
    move v0, v3

    .line 3283
    goto :goto_0

    .restart local v0    # "isFingerAirView":Z
    :cond_5
    move v1, v3

    .line 3284
    goto :goto_1
.end method

.method shouldShowSelectorDefault()Z
    .locals 1

    .prologue
    .line 3290
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenu(FFI)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "metaState"    # I

    .prologue
    .line 3889
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v1

    .line 3890
    .local v1, "position":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 3891
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3892
    .local v2, "id":J
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3893
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3894
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3895
    invoke-super {p0, p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    .line 3902
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "id":J
    :goto_0
    return v4

    .line 3900
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3902
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->showContextMenu(FFI)Z

    move-result v4

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 3907
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 3908
    .local v3, "longPressPosition":I
    if-ltz v3, :cond_2

    .line 3909
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 3910
    .local v4, "longPressId":J
    const/4 v6, 0x0

    .line 3912
    .local v6, "handled":Z
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 3913
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3916
    :cond_0
    if-nez v6, :cond_1

    .line 3917
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3920
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3925
    .end local v4    # "longPressId":J
    .end local v6    # "handled":Z
    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .prologue
    .line 6876
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(IIZ)V

    .line 6877
    return-void
.end method

.method smoothScrollBy(IIZ)V
    .locals 7
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    .line 6985
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-nez v5, :cond_0

    .line 6986
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-direct {v5, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    .line 6990
    :cond_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    .line 6991
    .local v2, "firstPos":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v1

    .line 6992
    .local v1, "childCount":I
    add-int v3, v2, v1

    .line 6993
    .local v3, "lastPos":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingTop()I

    move-result v4

    .line 6994
    .local v4, "topLimit":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 6996
    .local v0, "bottomLimit":I
    if-eqz p1, :cond_2

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-ne v5, v4, :cond_1

    if-ltz p1, :cond_2

    :cond_1
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    if-ne v3, v5, :cond_4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ne v5, v0, :cond_4

    if-lez p1, :cond_4

    .line 7000
    :cond_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 7001
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    if-eqz v5, :cond_3

    .line 7002
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;->stop()V

    .line 7008
    :cond_3
    :goto_0
    return-void

    .line 7005
    :cond_4
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 7006
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v5, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->startScroll(IIZ)V

    goto :goto_0
.end method

.method smoothScrollByOffset(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/high16 v9, 0x3f400000    # 0.75f

    .line 7014
    const/4 v2, -0x1

    .line 7015
    .local v2, "index":I
    if-gez p1, :cond_3

    .line 7016
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 7021
    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    .line 7022
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7023
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 7024
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 7025
    .local v4, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 7027
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 7028
    .local v1, "childRectArea":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 7029
    .local v5, "visibleRectArea":I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 7030
    .local v3, "visibleArea":F
    const/high16 v6, 0x3f400000    # 0.75f

    .line 7031
    .local v6, "visibleThreshold":F
    if-gez p1, :cond_4

    cmpg-float v7, v3, v9

    if-gez v7, :cond_4

    .line 7034
    add-int/lit8 v2, v2, 0x1

    .line 7041
    .end local v1    # "childRectArea":I
    .end local v3    # "visibleArea":F
    .end local v5    # "visibleRectArea":I
    .end local v6    # "visibleThreshold":F
    :cond_1
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getCount()I

    move-result v8

    add-int v9, v2, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollToPosition(I)V

    .line 7044
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "visibleRect":Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 7017
    :cond_3
    if-lez p1, :cond_0

    .line 7018
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_0

    .line 7035
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childRectArea":I
    .restart local v3    # "visibleArea":F
    .restart local v4    # "visibleRect":Landroid/graphics/Rect;
    .restart local v5    # "visibleRectArea":I
    .restart local v6    # "visibleThreshold":F
    :cond_4
    if-lez p1, :cond_1

    cmpg-float v7, v3, v9

    if-gez v7, :cond_1

    .line 7038
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 6810
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 6811
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createPositionScroller()Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    .line 6813
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;->start(I)V

    .line 6814
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 6864
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 6865
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createPositionScroller()Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    .line 6867
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;->start(II)V

    .line 6868
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 6847
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 6848
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createPositionScroller()Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    .line 6850
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;->startWithOffset(III)V

    .line 6851
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    .line 6829
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 6830
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createPositionScroller()Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    .line 6832
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;->startWithOffset(III)V

    .line 6833
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 3266
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 3271
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3269
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3266
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 32
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    .prologue
    .line 7123
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v8

    .line 7124
    .local v8, "childCount":I
    if-nez v8, :cond_0

    .line 7125
    const/16 v30, 0x1

    .line 7324
    :goto_0
    return v30

    .line 7128
    :cond_0
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getTop()I

    move-result v16

    .line 7129
    .local v16, "firstTop":I
    add-int/lit8 v30, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getBottom()I

    move-result v22

    .line 7131
    .local v22, "lastBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    .line 7136
    .local v23, "listPadding":Landroid/graphics/Rect;
    const/4 v13, 0x0

    .line 7137
    .local v13, "effectivePaddingTop":I
    const/4 v12, 0x0

    .line 7138
    .local v12, "effectivePaddingBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    .line 7139
    move-object/from16 v0, v23

    iget v13, v0, Landroid/graphics/Rect;->top:I

    .line 7140
    move-object/from16 v0, v23

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 7144
    :cond_1
    sub-int v26, v13, v16

    .line 7145
    .local v26, "spaceAbove":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v30

    sub-int v14, v30, v12

    .line 7146
    .local v14, "end":I
    sub-int v27, v22, v14

    .line 7148
    .local v27, "spaceBelow":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    move/from16 v31, v0

    sub-int v19, v30, v31

    .line 7149
    .local v19, "height":I
    if-gez p1, :cond_3

    .line 7150
    add-int/lit8 v30, v19, -0x1

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 7155
    :goto_1
    if-gez p2, :cond_4

    .line 7156
    add-int/lit8 v30, v19, -0x1

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 7161
    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    .line 7164
    .local v15, "firstPosition":I
    if-nez v15, :cond_5

    .line 7165
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v30, v16, v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPositionDistanceGuess:I

    .line 7169
    :goto_3
    add-int v30, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    .line 7170
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    add-int v30, v30, v22

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastPositionDistanceGuess:I

    .line 7175
    :goto_4
    if-nez v15, :cond_7

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v16

    move/from16 v1, v30

    if-lt v0, v1, :cond_7

    if-ltz p2, :cond_7

    const/4 v5, 0x1

    .line 7177
    .local v5, "cannotScrollDown":Z
    :goto_5
    add-int v30, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v30

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v0, v22

    move/from16 v1, v30

    if-gt v0, v1, :cond_8

    if-gtz p2, :cond_8

    const/4 v6, 0x1

    .line 7180
    .local v6, "cannotScrollUp":Z
    :goto_6
    if-nez v5, :cond_2

    if-eqz v6, :cond_a

    .line 7181
    :cond_2
    if-eqz p2, :cond_9

    const/16 v30, 0x1

    goto/16 :goto_0

    .line 7152
    .end local v5    # "cannotScrollDown":Z
    .end local v6    # "cannotScrollUp":Z
    .end local v15    # "firstPosition":I
    :cond_3
    add-int/lit8 v30, v19, -0x1

    move/from16 v0, v30

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_1

    .line 7158
    :cond_4
    add-int/lit8 v30, v19, -0x1

    move/from16 v0, v30

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    .line 7167
    .restart local v15    # "firstPosition":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v30, v0

    add-int v30, v30, p2

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_3

    .line 7172
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastPositionDistanceGuess:I

    move/from16 v30, v0

    add-int v30, v30, p2

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastPositionDistanceGuess:I

    goto :goto_4

    .line 7175
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 7177
    .restart local v5    # "cannotScrollDown":Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_6

    .line 7181
    .restart local v6    # "cannotScrollUp":Z
    :cond_9
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 7184
    :cond_a
    if-gez p2, :cond_14

    const/4 v11, 0x1

    .line 7186
    .local v11, "down":Z
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isInTouchMode()Z

    move-result v21

    .line 7187
    .local v21, "inTouchMode":Z
    if-eqz v21, :cond_b

    .line 7188
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->hideSelector()V

    .line 7191
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeaderViewsCount()I

    move-result v18

    .line 7192
    .local v18, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    move/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFooterViewsCount()I

    move-result v31

    sub-int v17, v30, v31

    .line 7194
    .local v17, "footerViewsStart":I
    const/16 v28, 0x0

    .line 7195
    .local v28, "start":I
    const/4 v10, 0x0

    .line 7198
    .local v10, "count":I
    const/16 v24, 0x1

    .line 7201
    .local v24, "performHaptic":Z
    if-eqz v11, :cond_18

    .line 7202
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v29, v0

    .line 7203
    .local v29, "top":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_c

    .line 7204
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    add-int v29, v29, v30

    .line 7206
    :cond_c
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_8
    move/from16 v0, v20

    if-ge v0, v8, :cond_d

    .line 7207
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 7208
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v29

    if-lt v0, v1, :cond_15

    .line 7280
    .end local v7    # "child":Landroid/view/View;
    .end local v29    # "top":I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    move/from16 v30, v0

    add-int v30, v30, p1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewNewTop:I

    .line 7282
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBlockLayoutRequests:Z

    .line 7284
    if-lez v10, :cond_e

    .line 7285
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1, v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->detachViewsFromParent(II)V

    .line 7286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->removeSkippedScrap()V

    .line 7291
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->awakenScrollBars()Z

    move-result v30

    if-nez v30, :cond_f

    .line 7292
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 7295
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->offsetChildrenTopAndBottom(I)V

    .line 7297
    if-eqz v11, :cond_10

    .line 7298
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    move/from16 v30, v0

    add-int v30, v30, v10

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    .line 7301
    :cond_10
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 7302
    .local v3, "absIncrementalDeltaY":I
    move/from16 v0, v26

    if-lt v0, v3, :cond_11

    move/from16 v0, v27

    if-ge v0, v3, :cond_12

    .line 7303
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->fillGap(Z)V

    .line 7306
    :cond_12
    if-nez v21, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedPosition:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1c

    .line 7307
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    move/from16 v31, v0

    sub-int v9, v30, v31

    .line 7308
    .local v9, "childIndex":I
    if-ltz v9, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v30

    move/from16 v0, v30

    if-ge v9, v0, :cond_13

    .line 7309
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 7320
    .end local v9    # "childIndex":I
    :cond_13
    :goto_9
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBlockLayoutRequests:Z

    .line 7322
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invokeOnItemScrollListener()V

    .line 7324
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 7184
    .end local v3    # "absIncrementalDeltaY":I
    .end local v10    # "count":I
    .end local v11    # "down":Z
    .end local v17    # "footerViewsStart":I
    .end local v18    # "headerViewsCount":I
    .end local v20    # "i":I
    .end local v21    # "inTouchMode":Z
    .end local v24    # "performHaptic":Z
    .end local v28    # "start":I
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 7211
    .restart local v7    # "child":Landroid/view/View;
    .restart local v10    # "count":I
    .restart local v11    # "down":Z
    .restart local v17    # "footerViewsStart":I
    .restart local v18    # "headerViewsCount":I
    .restart local v20    # "i":I
    .restart local v21    # "inTouchMode":Z
    .restart local v24    # "performHaptic":Z
    .restart local v28    # "start":I
    .restart local v29    # "top":I
    :cond_15
    add-int/lit8 v10, v10, 0x1

    .line 7212
    add-int v25, v15, v20

    .line 7213
    .local v25, "position":I
    move/from16 v0, v25

    move/from16 v1, v18

    if-lt v0, v1, :cond_17

    move/from16 v0, v25

    move/from16 v1, v17

    if-ge v0, v1, :cond_17

    .line 7232
    invoke-virtual {v7}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v30

    if-eqz v30, :cond_16

    .line 7233
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7235
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v7, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7206
    :cond_17
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_8

    .line 7240
    .end local v7    # "child":Landroid/view/View;
    .end local v20    # "i":I
    .end local v25    # "position":I
    .end local v29    # "top":I
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v30

    sub-int v4, v30, p2

    .line 7241
    .local v4, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_19

    .line 7242
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v4, v4, v30

    .line 7244
    :cond_19
    add-int/lit8 v20, v8, -0x1

    .restart local v20    # "i":I
    :goto_a
    if-ltz v20, :cond_d

    .line 7245
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 7246
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v30

    move/from16 v0, v30

    if-le v0, v4, :cond_d

    .line 7249
    move/from16 v28, v20

    .line 7250
    add-int/lit8 v10, v10, 0x1

    .line 7251
    add-int v25, v15, v20

    .line 7252
    .restart local v25    # "position":I
    move/from16 v0, v25

    move/from16 v1, v18

    if-lt v0, v1, :cond_1b

    move/from16 v0, v25

    move/from16 v1, v17

    if-ge v0, v1, :cond_1b

    .line 7271
    invoke-virtual {v7}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v30

    if-eqz v30, :cond_1a

    .line 7272
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7274
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v7, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7244
    :cond_1b
    add-int/lit8 v20, v20, -0x1

    goto :goto_a

    .line 7311
    .end local v4    # "bottom":I
    .end local v7    # "child":Landroid/view/View;
    .end local v25    # "position":I
    .restart local v3    # "absIncrementalDeltaY":I
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1d

    .line 7312
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    move/from16 v31, v0

    sub-int v9, v30, v31

    .line 7313
    .restart local v9    # "childIndex":I
    if-ltz v9, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v30

    move/from16 v0, v30

    if-ge v9, v0, :cond_13

    .line 7314
    const/16 v30, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_9

    .line 7317
    .end local v9    # "childIndex":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_9
.end method

.method triggerDoubleFling(I)V
    .locals 4
    .param p1, "initialVelocity"    # I

    .prologue
    .line 5896
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 5897
    .local v0, "adapterCount":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v1

    .line 5899
    .local v1, "visibleItemsCount":I
    if-lez p1, :cond_2

    .line 5900
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getLastVisiblePosition()I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    if-le v2, v3, :cond_0

    .line 5901
    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelection(I)V

    .line 5903
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollToPosition(I)V

    .line 5910
    :cond_1
    :goto_0
    return-void

    .line 5904
    :cond_2
    if-gez p1, :cond_1

    .line 5905
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x3

    if-le v2, v3, :cond_3

    .line 5906
    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v3, v1, 0x3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelection(I)V

    .line 5908
    :cond_3
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method

.method triggerJumpScrollToTop()V
    .locals 1

    .prologue
    .line 5879
    sget v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mJumpScrollToTopState:I

    .line 5880
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->triggerDoubleFling(I)V

    .line 5881
    return-void
.end method

.method protected twGetItemCount()I
    .locals 2

    .prologue
    .line 6919
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 6920
    .local v0, "adapter":Landroid/widget/Adapter;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    goto :goto_0
.end method

.method public twIsSetCustomMultiChoiceMode()Z
    .locals 1

    .prologue
    .line 1779
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCustomMultiChoiceMode:Z

    return v0
.end method

.method public twNotifyKeyPressState(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1640
    const/4 v0, 0x0

    .line 1642
    .local v0, "handledNotifyKeyPress":Z
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsShiftkeyPressed:Z

    if-eqz v1, :cond_0

    .line 1643
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsShiftkeyPressed:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v6}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->twNotifyKeyPress(Landroid/view/View;IJZ)Z

    move-result v0

    .line 1645
    :cond_0
    return v0
.end method

.method public twSetCustomMultiChoiceMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1770
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCustomMultiChoiceMode:Z

    .line 1771
    return-void
.end method

.method public twSetSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 6945
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelection(I)V

    .line 6946
    return-void
.end method

.method public twShowMultiChoiceMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1750
    if-eqz p1, :cond_1

    .line 1751
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_0

    .line 1752
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1760
    :cond_0
    :goto_0
    return-void

    .line 1755
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1756
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1757
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public twSmoothScrollBy(I)V
    .locals 3
    .param p1, "distance"    # I

    .prologue
    .line 6957
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 6958
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    .line 6961
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 6962
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 6963
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwSmoothScrollByMove;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwSmoothScrollByMove;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwSmoothScrollByMove:Lcom/sec/android/touchwiz/widget/TwAbsListView$TwSmoothScrollByMove;

    .line 6964
    const/high16 v1, 0x43160000    # 150.0f

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDensityScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwScrollAmount:I

    .line 6967
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    .line 6968
    .local v0, "isEmpty":Z
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwScrollAmount:I

    if-le v1, v2, :cond_3

    .line 6969
    if-lez p1, :cond_2

    .line 6970
    :goto_0
    sget v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwScrollAmount:I

    if-le p1, v1, :cond_3

    .line 6971
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    sget v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwScrollAmount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6970
    sget v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwScrollAmount:I

    sub-int/2addr p1, v1

    goto :goto_0

    .line 6974
    :cond_2
    :goto_1
    sget v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwScrollAmount:I

    neg-int v1, v1

    if-ge p1, v1, :cond_3

    .line 6975
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    sget v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwScrollAmount:I

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6974
    sget v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwScrollAmount:I

    add-int/2addr p1, v1

    goto :goto_1

    .line 6979
    :cond_3
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6980
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwSmoothScrollByMove:Lcom/sec/android/touchwiz/widget/TwAbsListView$TwSmoothScrollByMove;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 6981
    :cond_4
    return-void
.end method

.method public unregisterDoubleTapMotion()V
    .locals 1

    .prologue
    .line 1107
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->unregisterMotionListener()V

    .line 1108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setMotionEvent(Z)V

    .line 1109
    return-void
.end method

.method public unregisterIRMotion()V
    .locals 0

    .prologue
    .line 1082
    return-void
.end method

.method public unregisterSmartObserver()V
    .locals 0

    .prologue
    .line 10116
    return-void
.end method

.method public unregisterSmartScrollListener()V
    .locals 0

    .prologue
    .line 10093
    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1162
    return-void
.end method

.method updateScrollIndicators()V
    .locals 10

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2798
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 2801
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    if-lez v6, :cond_4

    move v1, v4

    .line 2804
    .local v1, "canScrollUp":Z
    :goto_0
    if-nez v1, :cond_0

    .line 2805
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 2806
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2807
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v6, v8, :cond_5

    move v1, v4

    .line 2811
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v1, :cond_6

    move v6, v5

    :goto_2
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2814
    .end local v1    # "canScrollUp":Z
    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 2816
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v3

    .line 2819
    .local v3, "count":I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    add-int/2addr v6, v3

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    if-ge v6, v8, :cond_7

    move v0, v4

    .line 2822
    .local v0, "canScrollDown":Z
    :goto_3
    if-nez v0, :cond_2

    if-lez v3, :cond_2

    .line 2823
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2824
    .restart local v2    # "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBottom:I

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_8

    move v0, v4

    .line 2827
    .end local v2    # "child":Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2829
    .end local v0    # "canScrollDown":Z
    .end local v3    # "count":I
    :cond_3
    return-void

    :cond_4
    move v1, v5

    .line 2801
    goto :goto_0

    .restart local v1    # "canScrollUp":Z
    .restart local v2    # "child":Landroid/view/View;
    :cond_5
    move v1, v5

    .line 2807
    goto :goto_1

    .end local v2    # "child":Landroid/view/View;
    :cond_6
    move v6, v7

    .line 2811
    goto :goto_2

    .end local v1    # "canScrollUp":Z
    .restart local v3    # "count":I
    :cond_7
    move v0, v5

    .line 2819
    goto :goto_3

    .restart local v0    # "canScrollDown":Z
    .restart local v2    # "child":Landroid/view/View;
    :cond_8
    move v0, v5

    .line 2824
    goto :goto_4

    .end local v2    # "child":Landroid/view/View;
    :cond_9
    move v5, v7

    .line 2827
    goto :goto_5
.end method

.method updateSelectorState()V
    .locals 4

    .prologue
    .line 3416
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 3417
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->shouldShowSelector()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3418
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isHovered()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoveredByMouse:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    if-lt v2, v3, :cond_3

    .line 3419
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3420
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v1

    .line 3421
    .local v1, "ellipsized":Z
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsPenHovered:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAlwaysDisableHoverHighlight:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3422
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3423
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 3434
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "ellipsized":Z
    :cond_1
    :goto_0
    return-void

    .line 3425
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "ellipsized":Z
    :cond_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 3428
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "ellipsized":Z
    :cond_3
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 3431
    :cond_4
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3478
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
