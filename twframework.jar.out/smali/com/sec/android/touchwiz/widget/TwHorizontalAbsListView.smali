.class public abstract Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
.super Lcom/sec/android/touchwiz/widget/TwAdapterView;
.source "TwHorizontalAbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PenSelectVibrator;,
        Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;,
        Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;,
        Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;,
        Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;,
        Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecyclerListener;,
        Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;,
        Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;,
        Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeListener;,
        Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;,
        Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$InputConnectionWrapper;,
        Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$TwSmoothScrollByMove;,
        Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;,
        Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;,
        Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForKeyLongPress;,
        Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;,
        Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PerformClick;,
        Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$WindowRunnnable;,
        Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$ListItemAccessibilityDelegate;,
        Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;,
        Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SelectionBoundsAdjuster;,
        Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;
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

.field private static final DRAGSCROLL_WORKING_ZONE_DP:I = 0x19

.field private static final HOVERSCROLL_LEFT:I = 0x1

.field private static final HOVERSCROLL_RIGHT:I = 0x2

.field private static final HOVERSCROLL_SPEED_FASTER:F = 30.0f

.field private static final HOVERSCROLL_WIDTH_LEFT_DP:I = 0x19

.field private static final HOVERSCROLL_WIDTH_RIGHT_DP:I = 0x19

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

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final QC_BOTTOM:I = 0x4

.field private static final QC_LEFT:I = 0x1

.field private static final QC_RIGHT:I = 0x3

.field private static final QC_STATE_NONE:I = 0x0

.field private static final QC_STATE_PRESSED:I = 0x2

.field private static final QC_STATE_SHOWN:I = 0x1

.field private static final QC_TOP:I = 0x2

.field private static final SAVED_STATE_KEY_FOR_BUNDLE:Ljava/lang/String; = "com.sec.android.touchwiz.widget.TwHorizontalAbsListView.SavedState"

.field private static final TAG:Ljava/lang/String; = "TwHorizontalAbsListView"

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
.field protected AIR_VIEW_WINSET:Z

.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:F

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mAccessibilityDelegate:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

.field private mAlwaysDisableHoverHighlight:Z

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

.field mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDensityScale:F

.field private mDirection:I

.field private mDragScrollWorkingZonePx:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

.field private mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

.field private mExtraPaddingInLeftHoverArea:I

.field private mExtraPaddingInRightHoverArea:I

.field private mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

.field mFastScrollAlwaysVisible:Z

.field mFastScrollEnabled:Z

.field private mFastScrollStyle:I

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFirstPressedPoint:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mForcedClick:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mGlowPaddingBottom:I

.field private mGlowPaddingTop:I

.field private mHapticOverScroll:Z

.field private mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

.field private mHasWindowFocusForMotion:Z

.field mHeightMeasureSpec:I

.field public mHoverAreaEnter:Z

.field private mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

.field private mHoverLeftAreaWidth:I

.field private mHoverPosition:I

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverRightAreaWidth:I

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollStateForListener:I

.field private mHoverScrollTimeInterval:J

.field private mHoveredOnEllipsizedText:Z

.field mHoveringEnabled:Z

.field private mIsChildViewEnabled:Z

.field private mIsCloseChildSetted:Z

.field private mIsCtrlkeyPressed:Z

.field private mIsDetaching:Z

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

.field private mLastHandledItemCount:I

.field private mLastPosition:I

.field private mLastPositionDistanceGuess:I

.field mLastScrollState:I

.field private mLastTouchMode:I

.field mLastX:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field private mMotionEnable:Z

.field mMotionPosition:I

.field private mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

.field mMotionViewNewLeft:I

.field mMotionViewOriginalLeft:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;

.field private mMultiFocusImage:Landroid/graphics/drawable/Drawable;

.field public mMultiSelectionStart:Z

.field private mNeedsHoverScroll:Z

.field private mNestedXOffset:I

.field private mNewTextViewHoverState:Z

.field private mOldAdapterItemCount:I

.field private mOldHoverScrollDirection:I

.field private mOldKeyCode:I

.field private mOldTextViewHoverState:Z

.field private mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPenDragScrollTimeInterval:J

.field private mPenSelectVibrator:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PenSelectVibrator;

.field private mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;

.field private mPendingSync:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;

.field private mPerformClick:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PerformClick;

.field private mPointerCount:I

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

.field private mPreviousTextViewScroll:Z

.field private mPublicInputConnection:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$InputConnectionWrapper;

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

.field final mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

.field private mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field mResurrectToPosition:I

.field private final mScrollConsumed:[I

.field private mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field mScrollLeft:Landroid/view/View;

.field private final mScrollOffset:[I

.field private mScrollProfilingStarted:Z

.field mScrollRight:Landroid/view/View;

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollingCacheEnabled:Z

.field private mSecondPressedPoint:I

.field mSelectedLeft:I

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

.field private mTwCloseChildByLeft:Landroid/view/View;

.field private mTwCloseChildByRight:Landroid/view/View;

.field private mTwCloseChildPositionByLeft:I

.field private mTwCloseChildPositionByRight:I

.field public mTwCurrentFocusPosition:I

.field private mTwCustomMultiChoiceMode:Z

.field private mTwDistanceFromCloseChildLeft:I

.field private mTwDistanceFromCloseChildRight:I

.field private mTwDistanceFromTrackedChildLeft:I

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

.field private mTwSmoothScrollByMove:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$TwSmoothScrollByMove;

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

.field private methodPauseGc:Ljava/lang/reflect/Method;

.field private methodResumeGc:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    sput-boolean v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->DEBUG_VELOCITY_TRACKER_TRACE:Z

    .line 877
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 5905
    sput v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    .line 5906
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    .line 5907
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I

    .line 6916
    const/16 v0, 0x1f4

    sput v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwScrollAmount:I

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

    .line 1154
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;-><init>(Landroid/content/Context;)V

    .line 161
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 163
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionEnable:Z

    .line 165
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHasWindowFocusForMotion:Z

    .line 167
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 311
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    .line 344
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    .line 369
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 374
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDrawSelectorOnTop:Z

    .line 384
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorPosition:I

    .line 389
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 395
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    .line 400
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectionLeftPadding:I

    .line 405
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectionTopPadding:I

    .line 410
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectionRightPadding:I

    .line 415
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectionBottomPadding:I

    .line 420
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 425
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHeightMeasureSpec:I

    .line 473
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 504
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedLeft:I

    .line 547
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    .line 567
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mResurrectToPosition:I

    .line 569
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 595
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastTouchMode:I

    .line 598
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollProfilingStarted:Z

    .line 601
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingProfilingStarted:Z

    .line 609
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 610
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 658
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastScrollState:I

    .line 683
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mVelocityScale:F

    .line 685
    new-array v1, v7, [Z

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsScrap:[Z

    .line 687
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollOffset:[I

    .line 688
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollConsumed:[I

    .line 694
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNestedXOffset:I

    .line 704
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mActivePointerId:I

    .line 709
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPointerCount:I

    .line 716
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHapticOverScroll:Z

    .line 767
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDirection:I

    .line 803
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverLeftAreaWidth:I

    .line 805
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRightAreaWidth:I

    .line 815
    iput-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    .line 817
    iput-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    .line 819
    iput-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 821
    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollTimeInterval:J

    .line 823
    const-wide/16 v2, 0x1f4

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPenDragScrollTimeInterval:J

    .line 825
    iput-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 827
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollDirection:I

    .line 832
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 837
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollEnable:Z

    .line 843
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 845
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsSendHoverScrollState:Z

    .line 850
    const/high16 v1, 0x40c00000    # 6.0f

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->HOVERSCROLL_SPEED:F

    .line 860
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    .line 862
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNeedsHoverScroll:Z

    .line 864
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollStateForListener:I

    .line 866
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 869
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoveringEnabled:Z

    .line 871
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    .line 872
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    .line 895
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCustomMultiChoiceMode:Z

    .line 900
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    .line 901
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsShiftkeyPressed:Z

    .line 902
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsPenHovered:Z

    .line 903
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsPenPressed:Z

    .line 904
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsfirstMoveEvent:Z

    .line 906
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    .line 910
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPressedPoint:I

    .line 911
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSecondPressedPoint:I

    .line 912
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOldAdapterItemCount:I

    .line 913
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOldKeyCode:I

    .line 914
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCurrentKeyCode:I

    .line 915
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCurrentFocusPosition:I

    .line 918
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMultiSelectionStart:Z

    .line 919
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsTextSelectionStarted:Z

    .line 920
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsNeedPenSelection:Z

    .line 922
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedItemSize:I

    .line 923
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedViewPosition:I

    .line 924
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    .line 925
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    .line 926
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOldTextViewHoverState:Z

    .line 927
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNewTextViewHoverState:Z

    .line 928
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPreviousTextViewScroll:Z

    .line 931
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDragBlockEnabled:Z

    .line 932
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartX:I

    .line 933
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartY:I

    .line 934
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragEndX:I

    .line 935
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragEndY:I

    .line 937
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockLeft:I

    .line 938
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockTop:I

    .line 939
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockRight:I

    .line 940
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockBottom:I

    .line 942
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 943
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTrackedChildPosition:I

    .line 944
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDistanceFromTrackedChildLeft:I

    .line 946
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsCloseChildSetted:Z

    .line 947
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOldHoverScrollDirection:I

    .line 948
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildByLeft:Landroid/view/View;

    .line 949
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildPositionByLeft:I

    .line 950
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDistanceFromCloseChildLeft:I

    .line 951
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildByRight:Landroid/view/View;

    .line 952
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildPositionByRight:I

    .line 953
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDistanceFromCloseChildRight:I

    .line 956
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockRect:Landroid/graphics/Rect;

    .line 958
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsTwOnClickEnabled:Z

    .line 1027
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDVFSLockAcquired:Z

    .line 1028
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDVFSCookie:I

    .line 1029
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->methodPauseGc:Ljava/lang/reflect/Method;

    .line 1030
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    .line 1127
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->AIR_VIEW_WINSET:Z

    .line 3781
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mForcedClick:Z

    .line 4898
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    .line 4899
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDragScrolled:Z

    .line 5908
    sget v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mJumpScrollToTopState:I

    .line 5965
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverPosition:I

    .line 5967
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    .line 5968
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsHoveredByMouse:Z

    .line 5969
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAlwaysDisableHoverHighlight:Z

    .line 6914
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwSmoothScrollByMove:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$TwSmoothScrollByMove;

    .line 6915
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 9904
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollSpeed:I

    .line 10366
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPenSelectVibrator:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PenSelectVibrator;

    .line 10414
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCLocation:I

    .line 10415
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    .line 10416
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsQCShown:Z

    .line 10421
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollingCount:I

    .line 10576
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$6;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$6;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    .line 1156
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->initAbsListView()V

    .line 1158
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 1160
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setHorizontalScrollBarEnabled(Z)V

    .line 1161
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1162
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    .line 1163
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1168
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v1, :cond_0

    .line 1169
    const-string v1, "TwHorizontalAbsListView"

    const-string v2, "Get MotionRecognitionManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    const-string v1, "motion_recognition"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1174
    :cond_0
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PenSelectVibrator;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PenSelectVibrator;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPenSelectVibrator:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PenSelectVibrator;

    .line 1176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1195
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 1216
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1217
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 1253
    invoke-direct/range {p0 .. p4}, Lcom/sec/android/touchwiz/widget/TwAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 161
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v14

    const-string v15, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 163
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionEnable:Z

    .line 165
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHasWindowFocusForMotion:Z

    .line 167
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 311
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    .line 344
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    .line 369
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 374
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDrawSelectorOnTop:Z

    .line 384
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorPosition:I

    .line 389
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 395
    new-instance v14, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    .line 400
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectionLeftPadding:I

    .line 405
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectionTopPadding:I

    .line 410
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectionRightPadding:I

    .line 415
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectionBottomPadding:I

    .line 420
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 425
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHeightMeasureSpec:I

    .line 473
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 504
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedLeft:I

    .line 547
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    .line 567
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mResurrectToPosition:I

    .line 569
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 595
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastTouchMode:I

    .line 598
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollProfilingStarted:Z

    .line 601
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingProfilingStarted:Z

    .line 609
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 610
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 658
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastScrollState:I

    .line 683
    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mVelocityScale:F

    .line 685
    const/4 v14, 0x1

    new-array v14, v14, [Z

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsScrap:[Z

    .line 687
    const/4 v14, 0x2

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollOffset:[I

    .line 688
    const/4 v14, 0x2

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollConsumed:[I

    .line 694
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNestedXOffset:I

    .line 704
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mActivePointerId:I

    .line 709
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPointerCount:I

    .line 716
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHapticOverScroll:Z

    .line 767
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDirection:I

    .line 803
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverLeftAreaWidth:I

    .line 805
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRightAreaWidth:I

    .line 815
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    .line 817
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    .line 819
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 821
    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollTimeInterval:J

    .line 823
    const-wide/16 v14, 0x1f4

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPenDragScrollTimeInterval:J

    .line 825
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 827
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollDirection:I

    .line 832
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 837
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollEnable:Z

    .line 843
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 845
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsSendHoverScrollState:Z

    .line 850
    const/high16 v14, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->HOVERSCROLL_SPEED:F

    .line 860
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    .line 862
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNeedsHoverScroll:Z

    .line 864
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollStateForListener:I

    .line 866
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 869
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoveringEnabled:Z

    .line 871
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    .line 872
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    .line 895
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCustomMultiChoiceMode:Z

    .line 900
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    .line 901
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsShiftkeyPressed:Z

    .line 902
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsPenHovered:Z

    .line 903
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsPenPressed:Z

    .line 904
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsfirstMoveEvent:Z

    .line 906
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    .line 910
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPressedPoint:I

    .line 911
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSecondPressedPoint:I

    .line 912
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOldAdapterItemCount:I

    .line 913
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOldKeyCode:I

    .line 914
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCurrentKeyCode:I

    .line 915
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCurrentFocusPosition:I

    .line 918
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMultiSelectionStart:Z

    .line 919
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsTextSelectionStarted:Z

    .line 920
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsNeedPenSelection:Z

    .line 922
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedItemSize:I

    .line 923
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedViewPosition:I

    .line 924
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    .line 925
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    .line 926
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOldTextViewHoverState:Z

    .line 927
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNewTextViewHoverState:Z

    .line 928
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPreviousTextViewScroll:Z

    .line 931
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDragBlockEnabled:Z

    .line 932
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartX:I

    .line 933
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartY:I

    .line 934
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragEndX:I

    .line 935
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragEndY:I

    .line 937
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockLeft:I

    .line 938
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockTop:I

    .line 939
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockRight:I

    .line 940
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockBottom:I

    .line 942
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 943
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTrackedChildPosition:I

    .line 944
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDistanceFromTrackedChildLeft:I

    .line 946
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsCloseChildSetted:Z

    .line 947
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOldHoverScrollDirection:I

    .line 948
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildByLeft:Landroid/view/View;

    .line 949
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildPositionByLeft:I

    .line 950
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDistanceFromCloseChildLeft:I

    .line 951
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildByRight:Landroid/view/View;

    .line 952
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildPositionByRight:I

    .line 953
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDistanceFromCloseChildRight:I

    .line 956
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockRect:Landroid/graphics/Rect;

    .line 958
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsTwOnClickEnabled:Z

    .line 1027
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDVFSLockAcquired:Z

    .line 1028
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDVFSCookie:I

    .line 1029
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->methodPauseGc:Ljava/lang/reflect/Method;

    .line 1030
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    .line 1127
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->AIR_VIEW_WINSET:Z

    .line 3781
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mForcedClick:Z

    .line 4898
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    .line 4899
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDragScrolled:Z

    .line 5908
    sget v14, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mJumpScrollToTopState:I

    .line 5965
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverPosition:I

    .line 5967
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    .line 5968
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsHoveredByMouse:Z

    .line 5969
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAlwaysDisableHoverHighlight:Z

    .line 6914
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwSmoothScrollByMove:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$TwSmoothScrollByMove;

    .line 6915
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 9904
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollSpeed:I

    .line 10366
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPenSelectVibrator:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PenSelectVibrator;

    .line 10414
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCLocation:I

    .line 10415
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    .line 10416
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsQCShown:Z

    .line 10421
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollingCount:I

    .line 10576
    new-instance v14, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$6;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    .line 1255
    if-nez p1, :cond_0

    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "No context is provided"

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1257
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->initAbsListView()V

    .line 1259
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 1261
    sget-object v14, Lcom/android/internal/R$styleable;->AbsListView:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1264
    .local v4, "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1265
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    .line 1266
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1269
    :cond_1
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDrawSelectorOnTop:Z

    .line 1272
    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 1273
    .local v11, "stackFromBottom":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setStackFromBottom(Z)V

    .line 1275
    const/4 v14, 0x3

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 1276
    .local v9, "scrollingCacheEnabled":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setScrollingCacheEnabled(Z)V

    .line 1278
    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 1279
    .local v13, "useTextFilter":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setTextFilterEnabled(Z)V

    .line 1281
    const/4 v14, 0x5

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 1283
    .local v12, "transcriptMode":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setTranscriptMode(I)V

    .line 1285
    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 1286
    .local v5, "color":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setCacheColorHint(I)V

    .line 1288
    const/16 v14, 0x8

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 1289
    .local v7, "enableFastScroll":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setFastScrollEnabled(Z)V

    .line 1291
    const/16 v14, 0xb

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 1292
    .local v8, "fastScrollStyle":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setFastScrollStyle(I)V

    .line 1294
    const/16 v14, 0x9

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 1295
    .local v10, "smoothScrollbar":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 1297
    const/4 v14, 0x7

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setChoiceMode(I)V

    .line 1298
    const/16 v14, 0xa

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 1301
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1306
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v14, :cond_2

    .line 1307
    const-string v14, "TwHorizontalAbsListView"

    const-string v15, "Get MotionRecognitionManager"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    const-string v14, "motion_recognition"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/motion/MotionRecognitionManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1312
    :cond_2
    new-instance v14, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PenSelectVibrator;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PenSelectVibrator;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPenSelectVibrator:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PenSelectVibrator;

    .line 1314
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 2526
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

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

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->addToPressItemListArray(II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPressedPoint:I

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
    .param p1, "x1"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPressedPoint:I

    return p1
.end method

.method static synthetic access$1202(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsChildViewEnabled:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;)Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
    .param p1, "x1"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDetaching:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Landroid/view/VelocityTracker;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Landroid/os/StrictMode$Span;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
    .param p1, "x1"    # Landroid/os/StrictMode$Span;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    return v0
.end method

.method static synthetic access$2800(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$3200(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$3300(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$3400(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$3600(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    return v0
.end method

.method static synthetic access$3700(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
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
    .line 153
    invoke-virtual/range {p0 .. p9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mJumpScrollToTopState:I

    return v0
.end method

.method static synthetic access$3802(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
    .param p1, "x1"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mJumpScrollToTopState:I

    return p1
.end method

.method static synthetic access$3900()I
    .locals 1

    .prologue
    .line 153
    sget v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$4000()I
    .locals 1

    .prologue
    .line 153
    sget v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    return v0
.end method

.method static synthetic access$4100(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnJumpScrollToFinished()V

    return-void
.end method

.method static synthetic access$4200(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    return v0
.end method

.method static synthetic access$4300(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
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
    .line 153
    invoke-virtual/range {p0 .. p9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$4900(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCustomMultiChoiceMode:Z

    return v0
.end method

.method static synthetic access$5500(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5600(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5700()I
    .locals 1

    .prologue
    .line 153
    sget v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    return v0
.end method

.method static synthetic access$5800(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollTo:I

    return v0
.end method

.method static synthetic access$6400(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollNext:I

    return v0
.end method

.method static synthetic access$6402(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
    .param p1, "x1"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollNext:I

    return p1
.end method

.method static synthetic access$6500(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollFrom:I

    return v0
.end method

.method static synthetic access$6600(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollingCount:I

    return v0
.end method

.method static synthetic access$6608(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollingCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollingCount:I

    return v0
.end method

.method static synthetic access$6700(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Landroid/view/animation/DecelerateInterpolator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollDirection:I

    return v0
.end method

.method static synthetic access$6900(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mForcedClick:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsShiftkeyPressed:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    return v0
.end method

.method private addToPressItemListArray(II)V
    .locals 4
    .param p1, "firstpoint"    # I
    .param p2, "secondpoint"    # I

    .prologue
    .line 10293
    const/4 v0, 0x0

    .line 10295
    .local v0, "checkCount":I
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    if-nez v2, :cond_0

    .line 10336
    :goto_0
    return-void

    .line 10299
    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 10300
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10301
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10335
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate()V

    goto :goto_0

    .line 10303
    :cond_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10306
    :cond_3
    if-ge p1, p2, :cond_5

    .line 10307
    sub-int v2, p2, p1

    add-int/lit8 v0, v2, 0x1

    .line 10308
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_1

    .line 10309
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10310
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10314
    :goto_3
    add-int/lit8 p1, p1, 0x1

    .line 10308
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10312
    :cond_4
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 10316
    .end local v1    # "i":I
    :cond_5
    if-le p1, p2, :cond_7

    .line 10317
    sub-int v2, p1, p2

    add-int/lit8 v0, v2, 0x1

    .line 10318
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v0, :cond_1

    .line 10319
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 10320
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10324
    :goto_5
    add-int/lit8 p1, p1, -0x1

    .line 10318
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 10322
    :cond_6
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 10327
    .end local v1    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 10328
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10330
    :cond_8
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 7059
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7060
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 7061
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 7077
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 7079
    :cond_1
    return-void
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1808
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 1809
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 1812
    :cond_0
    :goto_0
    return v1

    .line 1810
    :cond_1
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    if-eq v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 1812
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

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

    .line 7051
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7052
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 7053
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 7054
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCachingActive:Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCachingStarted:Z

    .line 7056
    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 4
    .param p1, "animateEntrance"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 8127
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 8128
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 8129
    .local v0, "p":Landroid/widget/PopupWindow;
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 8130
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 8131
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 8132
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 8133
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 8134
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 8135
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8136
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 8137
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8138
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 8140
    .end local v0    # "p":Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 8141
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10302d9

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 8145
    :goto_0
    return-void

    .line 8143
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10302da

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 7770
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 7771
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 7773
    :cond_0
    return-void
.end method

.method private doScrollToLeftEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 10549
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollDirection:I

    .line 10550
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollFrom:I

    .line 10551
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollTo:I

    .line 10552
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollNext:I

    .line 10553
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollingCount:I

    .line 10555
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    .line 10556
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 10559
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 10560
    return-void
.end method

.method private doScrollToRightEnd()V
    .locals 1

    .prologue
    .line 10563
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollDirection:I

    .line 10564
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollFrom:I

    .line 10565
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollTo:I

    .line 10566
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollNext:I

    .line 10567
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollingCount:I

    .line 10569
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    .line 10570
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 10573
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 10574
    return-void
.end method

.method private drawQuickController(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 10529
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    if-ne v2, v5, :cond_3

    .line 10530
    :cond_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    .line 10531
    .local v1, "scrollX":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 10532
    .local v0, "restoreCount":I
    int-to-float v2, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10534
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    if-ne v2, v4, :cond_2

    .line 10535
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10540
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 10542
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsQCShown:Z

    .line 10546
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollX":I
    :goto_1
    return-void

    .line 10536
    .restart local v0    # "restoreCount":I
    .restart local v1    # "scrollX":I
    :cond_2
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    if-ne v2, v5, :cond_1

    .line 10537
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 10544
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollX":I
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsQCShown:Z

    goto :goto_1
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3342
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 3343
    .local v4, "tempSelectorRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 3344
    .local v1, "selectedChild":Landroid/view/View;
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3345
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3346
    .local v3, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3347
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3351
    .end local v3    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v5, :cond_2

    .line 3353
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

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

    .line 3354
    .local v2, "selectedPosition":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3356
    if-eqz v1, :cond_1

    .line 3357
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 3358
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3359
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 3364
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "selectedPosition":Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method private finishGlows()V
    .locals 1

    .prologue
    .line 8407
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v0, :cond_0

    .line 8408
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->finish()V

    .line 8409
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->finish()V

    .line 8411
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .prologue
    .line 7816
    sparse-switch p2, :sswitch_data_0

    .line 7849
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 7818
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 7819
    .local v4, "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7820
    .local v5, "sY":I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 7821
    .local v0, "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7853
    .local v1, "dY":I
    :goto_0
    sub-int v2, v0, v4

    .line 7854
    .local v2, "deltaX":I
    sub-int v3, v1, v5

    .line 7855
    .local v3, "deltaY":I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 7824
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

    .line 7825
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 7826
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7827
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 7828
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7830
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 7831
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7832
    .restart local v5    # "sY":I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 7833
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7834
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7836
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

    .line 7837
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 7838
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7839
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 7840
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7843
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

    .line 7844
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7845
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7846
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7847
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7816
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
    .line 8148
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 8149
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 8150
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x1090148

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 8155
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 8157
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 8158
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8160
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    return-object v1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 9923
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 10080
    :cond_0
    :goto_0
    return-void

    .line 9925
    :pswitch_0
    const/4 v5, 0x0

    .line 9927
    .local v5, "offset":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    .line 9928
    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionStartTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iput-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    .line 9930
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsPenHovered:Z

    if-eqz v7, :cond_1

    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollStartTime:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollTimeInterval:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    .line 9932
    :cond_1
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsPenPressed:Z

    if-eqz v7, :cond_2

    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollStartTime:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPenDragScrollTimeInterval:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    .line 9936
    :cond_2
    const/4 v7, 0x1

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->HOVERSCROLL_SPEED:F

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollSpeed:I

    .line 9939
    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x2

    cmp-long v7, v8, v10

    if-lez v7, :cond_8

    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x4

    cmp-long v7, v8, v10

    if-gez v7, :cond_8

    .line 9940
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollSpeed:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollSpeed:I

    .line 9947
    :cond_3
    :goto_1
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_a

    .line 9948
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollSpeed:I

    mul-int/lit8 v5, v7, -0x1

    .line 9949
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTrackedChild:Landroid/view/View;

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildByRight:Landroid/view/View;

    if-nez v7, :cond_5

    :cond_4
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOldHoverScrollDirection:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollDirection:I

    if-eq v7, v8, :cond_6

    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsCloseChildSetted:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 9950
    :cond_5
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildByRight:Landroid/view/View;

    iput-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 9951
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDistanceFromCloseChildRight:I

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDistanceFromTrackedChildLeft:I

    .line 9952
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildPositionByRight:I

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTrackedChildPosition:I

    .line 9953
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollDirection:I

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOldHoverScrollDirection:I

    .line 9954
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsCloseChildSetted:Z

    .line 9967
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 9971
    if-gez v5, :cond_d

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    if-nez v7, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getPaddingLeft()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    if-eq v7, v8, :cond_d

    .line 9972
    :cond_7
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollBy(II)V

    .line 9973
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    const/4 v8, 0x1

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 9941
    :cond_8
    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x4

    cmp-long v7, v8, v10

    if-ltz v7, :cond_9

    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x5

    cmp-long v7, v8, v10

    if-gez v7, :cond_9

    .line 9942
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollSpeed:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollSpeed:I

    goto :goto_1

    .line 9943
    :cond_9
    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x5

    cmp-long v7, v8, v10

    if-ltz v7, :cond_3

    .line 9944
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollSpeed:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollSpeed:I

    goto/16 :goto_1

    .line 9957
    :cond_a
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollSpeed:I

    mul-int/lit8 v5, v7, 0x1

    .line 9958
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTrackedChild:Landroid/view/View;

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildByRight:Landroid/view/View;

    if-nez v7, :cond_c

    :cond_b
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOldHoverScrollDirection:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollDirection:I

    if-eq v7, v8, :cond_6

    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsCloseChildSetted:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 9959
    :cond_c
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildByRight:Landroid/view/View;

    iput-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 9960
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDistanceFromCloseChildRight:I

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDistanceFromTrackedChildLeft:I

    .line 9961
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildPositionByRight:I

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTrackedChildPosition:I

    .line 9962
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollDirection:I

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOldHoverScrollDirection:I

    .line 9963
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsCloseChildSetted:Z

    goto/16 :goto_2

    .line 9975
    :cond_d
    if-lez v5, :cond_f

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getCount()I

    move-result v8

    if-ne v7, v8, :cond_e

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    if-eq v7, v8, :cond_f

    .line 9979
    :cond_e
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollBy(II)V

    .line 9980
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    const/4 v8, 0x1

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 9983
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getOverScrollMode()I

    move-result v6

    .line 9984
    .local v6, "overscrollMode":I
    if-eqz v6, :cond_10

    const/4 v7, 0x1

    if-ne v6, v7, :cond_15

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->contentFits()Z

    move-result v7

    if-nez v7, :cond_15

    :cond_10
    const/4 v0, 0x1

    .line 9987
    .local v0, "canOverscroll":Z
    :goto_3
    if-eqz v0, :cond_14

    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_14

    .line 9988
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_16

    .line 9989
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 9990
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_11

    .line 9991
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 10000
    :cond_11
    :goto_4
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_13

    .line 10001
    :cond_12
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate()V

    .line 10004
    :cond_13
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 10007
    :cond_14
    if-nez v0, :cond_0

    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_0

    .line 10008
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 9984
    .end local v0    # "canOverscroll":Z
    :cond_15
    const/4 v0, 0x0

    goto :goto_3

    .line 9993
    .restart local v0    # "canOverscroll":Z
    :cond_16
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_11

    .line 9994
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 9995
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_11

    .line 9996
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto :goto_4

    .line 10016
    .end local v0    # "canOverscroll":Z
    .end local v5    # "offset":I
    .end local v6    # "overscrollMode":I
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v3

    .line 10018
    .local v3, "childCount":I
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 10023
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getCount()I

    move-result v8

    if-ne v7, v8, :cond_17

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    if-eq v7, v8, :cond_1b

    :cond_17
    const/4 v2, 0x1

    .line 10026
    .local v2, "canScrollRight":Z
    :goto_5
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    if-nez v7, :cond_18

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getPaddingLeft()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    if-eq v7, v8, :cond_1c

    :cond_18
    const/4 v1, 0x1

    .line 10028
    .local v1, "canScrollLeft":Z
    :goto_6
    const/4 v7, 0x1

    const/high16 v8, 0x41f00000    # 30.0f

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollSpeed:I

    .line 10031
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCLocation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1d

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollSpeed:I

    neg-int v4, v7

    .line 10033
    .local v4, "distanceToMove":I
    :goto_7
    if-gez v4, :cond_19

    if-nez v1, :cond_1a

    :cond_19
    if-lez v4, :cond_1e

    if-eqz v2, :cond_1e

    .line 10035
    :cond_1a
    const/4 v7, 0x0

    invoke-virtual {p0, v4, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollBy(II)V

    .line 10036
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    const/4 v8, 0x2

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 10023
    .end local v1    # "canScrollLeft":Z
    .end local v2    # "canScrollRight":Z
    .end local v4    # "distanceToMove":I
    :cond_1b
    const/4 v2, 0x0

    goto :goto_5

    .line 10026
    .restart local v2    # "canScrollRight":Z
    :cond_1c
    const/4 v1, 0x0

    goto :goto_6

    .line 10031
    .restart local v1    # "canScrollLeft":Z
    :cond_1d
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollSpeed:I

    goto :goto_7

    .line 10039
    .restart local v4    # "distanceToMove":I
    :cond_1e
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getOverScrollMode()I

    move-result v6

    .line 10040
    .restart local v6    # "overscrollMode":I
    if-eqz v6, :cond_1f

    const/4 v7, 0x1

    if-ne v6, v7, :cond_24

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->contentFits()Z

    move-result v7

    if-nez v7, :cond_24

    :cond_1f
    const/4 v0, 0x1

    .line 10043
    .restart local v0    # "canOverscroll":Z
    :goto_8
    if-eqz v0, :cond_23

    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_23

    .line 10044
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCLocation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_25

    .line 10045
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 10046
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_20

    .line 10047
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 10056
    :cond_20
    :goto_9
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v7, :cond_22

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_21

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_22

    .line 10057
    :cond_21
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate()V

    .line 10060
    :cond_22
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 10063
    :cond_23
    if-nez v0, :cond_0

    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_0

    .line 10064
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 10040
    .end local v0    # "canOverscroll":Z
    :cond_24
    const/4 v0, 0x0

    goto :goto_8

    .line 10049
    .restart local v0    # "canOverscroll":Z
    :cond_25
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCLocation:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_20

    .line 10050
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 10051
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_20

    .line 10052
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto :goto_9

    .line 10070
    .end local v0    # "canOverscroll":Z
    .end local v1    # "canScrollLeft":Z
    .end local v2    # "canScrollRight":Z
    .end local v3    # "childCount":I
    .end local v4    # "distanceToMove":I
    .end local v6    # "overscrollMode":I
    :pswitch_2
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCLocation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_26

    .line 10071
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->doScrollToLeftEnd()V

    goto/16 :goto_0

    .line 10072
    :cond_26
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCLocation:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 10073
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->doScrollToRightEnd()V

    goto/16 :goto_0

    .line 9923
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initAbsListView()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1318
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setClickable(Z)V

    .line 1319
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setFocusableInTouchMode(Z)V

    .line 1320
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setWillNotDraw(Z)V

    .line 1321
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 1322
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setScrollingCacheEnabled(Z)V

    .line 1323
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->twEnableHorizontalScrollbar()V

    .line 1325
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_2

    .line 1326
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 1327
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchSlop:I

    .line 1328
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMinimumVelocity:I

    .line 1329
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMaximumVelocity:I

    .line 1330
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOverscrollDistance:I

    .line 1331
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOverflingDistance:I

    .line 1332
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDensityScale:F

    .line 1333
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "finger_air_view"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_0

    move v4, v5

    :cond_0
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->AIR_VIEW_WINSET:Z

    .line 1336
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 1337
    .local v3, "value":Landroid/util/TypedValue;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_2

    .line 1338
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v6, 0x10105ae

    invoke-virtual {v4, v6, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    .line 1339
    .local v2, "resolved":Z
    if-eqz v2, :cond_1

    .line 1340
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v6, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    .line 1343
    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v6, 0x10105b2

    invoke-virtual {v4, v6, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    .line 1344
    if-eqz v2, :cond_2

    .line 1345
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockImage:Landroid/graphics/drawable/Drawable;

    .line 1351
    .end local v1    # "configuration":Landroid/view/ViewConfiguration;
    .end local v2    # "resolved":Z
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_2
    new-instance v4, Landroid/view/HapticPreDrawListener;

    invoke-direct {v4}, Landroid/view/HapticPreDrawListener;-><init>()V

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    .line 1355
    const-class v0, Ldalvik/system/VMRuntime;

    .line 1357
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

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->methodPauseGc:Ljava/lang/reflect/Method;

    .line 1358
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

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->methodResumeGc:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1363
    :goto_0
    return-void

    .line 1360
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1359
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 6255
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 6256
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6260
    :goto_0
    return-void

    .line 6258
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 6263
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 6264
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6266
    :cond_0
    return-void
.end method

.method private isLockScreenMode()Z
    .locals 7

    .prologue
    .line 4482
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 4483
    .local v3, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v2, 0x0

    .line 4484
    .local v2, "isLockState":Z
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 4486
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 4487
    .local v4, "windowManager":Landroid/view/IWindowManager;
    const/4 v0, 0x1

    .line 4496
    .local v0, "isCoverOpen":Z
    const/4 v1, 0x0

    .line 4497
    .local v1, "isLockScreenAndCoverOpen":Z
    if-nez v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 4499
    :goto_0
    return v1

    .line 4497
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isOwnerThread()Z
    .locals 2

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOwnerThread:Ljava/lang/Thread;

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
    .line 10427
    sget v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->sSpenUspLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 10428
    const/4 v0, 0x1

    .line 10430
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
    .line 10094
    const-string v0, "TwHorizontalAbsListView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10095
    return-void
.end method

.method private onHoverDrawableState(Landroid/view/MotionEvent;)V
    .locals 17
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5979
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 5980
    .local v1, "action":I
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    .line 5983
    .local v11, "toolType":I
    const/4 v14, 0x7

    if-eq v1, v14, :cond_0

    const/16 v14, 0x9

    if-ne v1, v14, :cond_3

    :cond_0
    const/4 v14, 0x2

    if-ne v11, v14, :cond_3

    .line 5984
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsPenHovered:Z

    .line 5990
    :cond_1
    :goto_0
    const/4 v14, 0x1

    if-eq v11, v14, :cond_5

    .line 5991
    const/4 v14, 0x3

    if-ne v11, v14, :cond_4

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsHoveredByMouse:Z

    .line 6093
    :cond_2
    :goto_2
    return-void

    .line 5985
    :cond_3
    const/16 v14, 0xa

    if-ne v1, v14, :cond_1

    .line 5986
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsPenHovered:Z

    goto :goto_0

    .line 5991
    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    .line 5994
    :cond_5
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsHoveredByMouse:Z

    .line 5997
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAlwaysDisableHoverHighlight:Z

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverAreaEnter:Z

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    .line 6002
    const/16 v14, 0x9

    if-ne v1, v14, :cond_6

    .line 6003
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsPenHovered:Z

    if-nez v14, :cond_2

    .line 6004
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    .line 6010
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isMultiWindows()Z

    move-result v14

    if-nez v14, :cond_2

    .line 6014
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsPenHovered:Z

    if-nez v14, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isInDialog()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 6015
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6016
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    .line 6020
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "finger_air_view"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    const/4 v6, 0x1

    .line 6025
    .local v6, "isFingerAirView":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "finger_air_view_information_preview"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_d

    const/4 v7, 0x1

    .line 6028
    .local v7, "isFingerAirViewPreview":Z
    :goto_4
    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    .line 6031
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isHovered()Z

    move-result v14

    if-nez v14, :cond_9

    .line 6032
    const/4 v14, 0x1

    if-ne v11, v14, :cond_8

    .line 6033
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setFingerHovered(Z)V

    .line 6035
    :cond_8
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setHovered(Z)V

    .line 6037
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    .line 6038
    .local v12, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    .line 6039
    .local v13, "y":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->pointToPosition(II)I

    move-result v9

    .line 6040
    .local v9, "newHoverPosition":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverPosition:I

    if-eq v14, v9, :cond_e

    const/4 v2, 0x1

    .line 6041
    .local v2, "bChanged":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->shouldShowSelectorDefault()Z

    move-result v10

    .line 6043
    .local v10, "shouldShowSelector":Z
    const/4 v3, 0x0

    .line 6045
    .local v3, "child":Landroid/view/View;
    if-gez v9, :cond_f

    .line 6046
    if-nez v10, :cond_a

    .line 6047
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 6050
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_b

    .line 6051
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6052
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postInvalidateOnAnimation()V

    .line 6053
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    .line 6055
    :cond_b
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverPosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 6089
    .end local v2    # "bChanged":Z
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "newHoverPosition":I
    .end local v10    # "shouldShowSelector":Z
    .end local v12    # "x":I
    .end local v13    # "y":I
    :catch_0
    move-exception v4

    .line 6090
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 6020
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "isFingerAirView":Z
    .end local v7    # "isFingerAirViewPreview":Z
    :cond_c
    const/4 v6, 0x0

    goto :goto_3

    .line 6025
    .restart local v6    # "isFingerAirView":Z
    :cond_d
    const/4 v7, 0x0

    goto :goto_4

    .line 6040
    .restart local v7    # "isFingerAirViewPreview":Z
    .restart local v9    # "newHoverPosition":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_e
    const/4 v2, 0x0

    goto :goto_5

    .line 6059
    .restart local v2    # "bChanged":Z
    .restart local v3    # "child":Landroid/view/View;
    .restart local v10    # "shouldShowSelector":Z
    :cond_f
    :try_start_1
    move-object/from16 v0, p0

    iput v9, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverPosition:I

    .line 6061
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6063
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v5

    .line 6065
    .local v5, "foundEllipsizedTextView":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->findSetFingerHovedInAppWidget(Landroid/view/View;)Z

    move-result v8

    .line 6067
    .local v8, "isSetFingerHovedInAppWidget":Z
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_12

    if-eqz v5, :cond_12

    if-eqz v8, :cond_12

    .line 6068
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 6069
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    .line 6076
    :cond_10
    :goto_6
    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_11

    .line 6077
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->refreshDrawableState()V

    .line 6078
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postInvalidateOnAnimation()V

    .line 6081
    :cond_11
    const/16 v14, 0xa

    if-ne v1, v14, :cond_2

    if-nez v10, :cond_2

    .line 6082
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    .line 6083
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverPosition:I

    .line 6084
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorPosition:I

    .line 6085
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6086
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 6087
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postInvalidateOnAnimation()V

    goto/16 :goto_2

    .line 6071
    :cond_12
    if-nez v10, :cond_10

    .line 6072
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

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

    .line 6387
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 6389
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 6390
    .local v1, "pointerId":I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mActivePointerId:I

    if-ne v1, v4, :cond_0

    .line 6394
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 6395
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionX:I

    .line 6396
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionY:I

    .line 6397
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionCorrection:I

    .line 6398
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mActivePointerId:I

    .line 6403
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionX:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastX:I

    .line 6405
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 6394
    goto :goto_0
.end method

.method private onTouchCancel()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 5866
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    packed-switch v1, :pswitch_data_0

    .line 5879
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 5880
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setPressed(Z)V

    .line 5881
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5882
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 5883
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 5885
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->clearScrollingCache()V

    .line 5886
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5887
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->recycleVelocityTracker()V

    .line 5890
    .end local v0    # "motionView":Landroid/view/View;
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v1, :cond_1

    .line 5891
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 5892
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 5894
    :cond_1
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mActivePointerId:I

    .line 5895
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPointerCount:I

    .line 5903
    return-void

    .line 5868
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    if-nez v1, :cond_2

    .line 5869
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    .line 5871
    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->startSpringback()V

    goto :goto_0

    .line 5866
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
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 5568
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    packed-switch v4, :pswitch_data_0

    .line 5584
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mActivePointerId:I

    .line 5585
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 5586
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 5587
    .local v3, "y":I
    invoke-virtual {p0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->pointToPosition(II)I

    move-result v0

    .line 5589
    .local v0, "motionPosition":I
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataChanged:Z

    if-nez v4, :cond_1

    .line 5590
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    if-eq v4, v6, :cond_5

    if-ltz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5595
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 5602
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForTap:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;

    if-nez v4, :cond_0

    .line 5603
    new-instance v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$1;)V

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForTap:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;

    .line 5605
    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForTap:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {p0, v4, v6, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5618
    :cond_1
    :goto_0
    if-ltz v0, :cond_2

    .line 5620
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5621
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionViewOriginalLeft:I

    .line 5623
    .end local v1    # "v":Landroid/view/View;
    :cond_2
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionX:I

    .line 5624
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionY:I

    .line 5625
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    .line 5626
    const/high16 v4, -0x80000000

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastX:I

    .line 5631
    .end local v0    # "motionPosition":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5632
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    if-nez v4, :cond_3

    .line 5633
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForTap:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5640
    :cond_3
    return-void

    .line 5570
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 5571
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    if-eqz v4, :cond_4

    .line 5572
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 5574
    :cond_4
    const/4 v4, 0x5

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 5575
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastX:I

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionX:I

    .line 5576
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionY:I

    .line 5577
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionCorrection:I

    .line 5578
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mActivePointerId:I

    .line 5579
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDirection:I

    goto :goto_1

    .line 5607
    .restart local v0    # "motionPosition":I
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    :cond_5
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    if-ne v4, v6, :cond_1

    .line 5609
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->createScrollingCache()V

    .line 5610
    const/4 v4, 0x3

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 5611
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionCorrection:I

    .line 5612
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->findMotionRow(I)I

    move-result v0

    .line 5613
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->flywheelTouch()V

    goto :goto_0

    .line 5568
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 5643
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 5644
    .local v1, "pointerIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 5645
    const/4 v1, 0x0

    .line 5646
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mActivePointerId:I

    .line 5649
    :cond_0
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataChanged:Z

    if-eqz v4, :cond_1

    .line 5652
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->layoutChildren()V

    .line 5655
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v2, v4

    .line 5657
    .local v2, "x":I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    packed-switch v4, :pswitch_data_0

    .line 5691
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 5663
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v2, v4, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5668
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 5669
    .local v3, "y":F
    int-to-float v4, v2

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchSlop:I

    int-to-float v5, v5

    invoke-virtual {p0, v4, v3, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->pointInView(FFF)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5670
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setPressed(Z)V

    .line 5671
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5672
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 5673
    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 5675
    :cond_3
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForTap:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;

    :goto_1
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5677
    const/4 v4, 0x2

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 5678
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->updateSelectorState()V

    goto :goto_0

    .line 5675
    :cond_4
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;

    goto :goto_1

    .line 5688
    .end local v0    # "motionView":Landroid/view/View;
    .end local v3    # "y":F
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v2, v4, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 5657
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
    .line 5694
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 5837
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setPressed(Z)V

    .line 5839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 5840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 5841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 5845
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate()V

    .line 5846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5847
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->recycleVelocityTracker()V

    .line 5849
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mActivePointerId:I

    .line 5850
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPointerCount:I

    .line 5859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 5860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StrictMode$Span;->finish()V

    .line 5861
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 5863
    :cond_2
    :goto_1
    return-void

    .line 5698
    :pswitch_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    .line 5699
    .local v13, "motionPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5700
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_e

    .line 5701
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 5702
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5705
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    .line 5706
    .local v16, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v16, v17

    if-lez v17, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_9

    const/4 v10, 0x1

    .line 5707
    .local v10, "inList":Z
    :goto_2
    if-eqz v10, :cond_e

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v17

    if-nez v17, :cond_e

    .line 5708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PerformClick;

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    .line 5709
    new-instance v17, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PerformClick;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PerformClick;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$1;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PerformClick;

    .line 5712
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PerformClick;

    .line 5713
    .local v14, "performClick":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PerformClick;
    iput v13, v14, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PerformClick;->mClickMotionPosition:I

    .line 5714
    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 5716
    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mResurrectToPosition:I

    .line 5718
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 5719
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForTap:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;

    move-object/from16 v17, v0

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5721
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    .line 5722
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 5723
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 5724
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setSelectedPositionInt(I)V

    .line 5725
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->layoutChildren()V

    .line 5726
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5727
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 5728
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setPressed(Z)V

    .line 5729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 5730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 5731
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    instance-of v0, v8, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 5732
    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 5734
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 5736
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 5737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5739
    :cond_8
    new-instance v17, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$3;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PerformClick;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 5751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 5706
    .end local v10    # "inList":Z
    .end local v14    # "performClick":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PerformClick;
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 5719
    .restart local v10    # "inList":Z
    .restart local v14    # "performClick":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PerformClick;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;

    move-object/from16 v17, v0

    goto/16 :goto_3

    .line 5754
    :cond_b
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 5755
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->updateSelectorState()V

    .line 5756
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mForcedClick:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 5757
    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PerformClick;->run()V

    goto/16 :goto_1

    .line 5761
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mForcedClick:Z

    move/from16 v17, v0

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 5762
    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PerformClick;->run()V

    .line 5766
    .end local v10    # "inList":Z
    .end local v14    # "performClick":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PerformClick;
    .end local v16    # "y":F
    :cond_e
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 5767
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->updateSelectorState()V

    goto/16 :goto_0

    .line 5770
    .end local v4    # "child":Landroid/view/View;
    .end local v13    # "motionPosition":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v5

    .line 5771
    .local v5, "childCount":I
    if-lez v5, :cond_15

    .line 5772
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 5773
    .local v9, "firstChildLeft":I
    add-int/lit8 v17, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v12

    .line 5774
    .local v12, "lastChildRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 5775
    .local v6, "contentLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v7, v17, v18

    .line 5776
    .local v7, "contentRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_f

    if-lt v9, v6, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v17

    sub-int v17, v17, v7

    move/from16 v0, v17

    if-gt v12, v0, :cond_f

    .line 5779
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 5780
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 5782
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5783
    .local v15, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 5785
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mVelocityScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v11, v0

    .line 5791
    .local v11, "initialVelocity":I
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOverscrollDistance:I

    move/from16 v17, v0

    sub-int v17, v6, v17

    move/from16 v0, v17

    if-eq v9, v0, :cond_13

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOverscrollDistance:I

    move/from16 v17, v0

    add-int v17, v17, v7

    move/from16 v0, v17

    if-eq v12, v0, :cond_13

    .line 5796
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_12

    .line 5797
    new-instance v17, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    .line 5799
    :cond_12
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 5801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    .line 5803
    :cond_13
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 5804
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 5805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_14

    .line 5806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 5808
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 5809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;->stop()V

    goto/16 :goto_0

    .line 5814
    .end local v6    # "contentLeft":I
    .end local v7    # "contentRight":I
    .end local v9    # "firstChildLeft":I
    .end local v11    # "initialVelocity":I
    .end local v12    # "lastChildRight":I
    .end local v15    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_15
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 5815
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 5820
    .end local v5    # "childCount":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_16

    .line 5821
    new-instance v17, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    .line 5823
    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5824
    .restart local v15    # "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 5825
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v11, v0

    .line 5827
    .restart local v11    # "initialVelocity":I
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 5828
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_17

    .line 5829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_0

    .line 5831
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 5694
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

    .line 7789
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 7790
    .local v1, "screenHeight":I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 7791
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getLocationOnScreen([I)V

    .line 7794
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDensityScale:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 7795
    .local v0, "bottomGap":I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7796
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 7801
    :goto_0
    return-void

    .line 7799
    :cond_0
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private postOnJumpScrollToFinished()V
    .locals 1

    .prologue
    .line 5919
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$4;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$4;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5924
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 6269
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 6270
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 6271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6273
    :cond_0
    return-void
.end method

.method private registerMotionListener()V
    .locals 0

    .prologue
    .line 9865
    return-void
.end method

.method private releaseAllBoosters()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1033
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_0

    .line 1034
    invoke-static {v1}, Landroid/os/DVFSHelper;->onScrollEvent(Z)V

    .line 1035
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDVFSLockAcquired:Z

    .line 1037
    :cond_0
    return-void
.end method

.method private scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .locals 36
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4244
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionX:I

    sub-int v33, p1, v3

    .line 4245
    .local v33, "rawDeltaX":I
    const/16 v35, 0x0

    .line 4246
    .local v35, "scrollOffsetCorrection":I
    const/16 v34, 0x0

    .line 4247
    .local v34, "scrollConsumedCorrection":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastX:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 4248
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionCorrection:I

    sub-int v33, v33, v3

    .line 4250
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastX:I

    const/high16 v5, -0x80000000

    if-eq v3, v5, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastX:I

    sub-int v3, v3, p1

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollOffset:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollConsumed:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int v33, v33, v3

    .line 4253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollOffset:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    neg-int v0, v3

    move/from16 v35, v0

    .line 4254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollConsumed:[I

    const/4 v4, 0x0

    aget v34, v3, v4

    .line 4255
    if-eqz p3, :cond_1

    .line 4256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollOffset:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4257
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNestedXOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollOffset:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNestedXOffset:I

    .line 4260
    :cond_1
    move/from16 v20, v33

    .line 4261
    .local v20, "deltaX":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastX:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastX:I

    sub-int v3, p1, v3

    add-int v21, v3, v34

    .line 4263
    .local v21, "incrementalDeltaX":I
    :goto_1
    const/16 v22, 0x0

    .line 4265
    .local v22, "lastXCorrection":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_13

    .line 4273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_2

    .line 4275
    const-string v3, "TwHorizontalAbsListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 4278
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastX:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_8

    .line 4282
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mGroupFlags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-nez v3, :cond_3

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchSlop:I

    if-le v3, v4, :cond_3

    .line 4284
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    .line 4285
    .local v32, "parent":Landroid/view/ViewParent;
    if-eqz v32, :cond_3

    .line 4286
    const/4 v3, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4291
    .end local v32    # "parent":Landroid/view/ViewParent;
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    if-ltz v3, :cond_b

    .line 4292
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    sub-int v23, v3, v4

    .line 4299
    .local v23, "motionIndex":I
    :goto_2
    const/16 v26, 0x0

    .line 4300
    .local v26, "motionViewPrevLeft":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4301
    .local v25, "motionView":Landroid/view/View;
    if-eqz v25, :cond_4

    .line 4302
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v26

    .line 4306
    :cond_4
    const/16 v18, 0x0

    .line 4307
    .local v18, "atEdge":Z
    if-eqz v21, :cond_5

    .line 4308
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v18

    .line 4312
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4313
    if-eqz v25, :cond_7

    .line 4316
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v27

    .line 4317
    .local v27, "motionViewRealLeft":I
    if-eqz v18, :cond_6

    .line 4320
    move/from16 v0, v21

    neg-int v3, v0

    sub-int v4, v27, v26

    sub-int v7, v3, v4

    .line 4322
    .local v7, "overscroll":I
    sub-int v4, v7, v21

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollOffset:[I

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->dispatchNestedScroll(IIII[I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollOffset:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int v22, v22, v3

    .line 4325
    if-eqz p3, :cond_6

    .line 4326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollOffset:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4327
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNestedXOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollOffset:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNestedXOffset:I

    .line 4367
    .end local v7    # "overscroll":I
    :cond_6
    :goto_3
    add-int v3, p1, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionX:I

    .line 4369
    .end local v27    # "motionViewRealLeft":I
    :cond_7
    add-int v3, p1, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastX:I

    .line 4443
    .end local v18    # "atEdge":Z
    .end local v23    # "motionIndex":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v26    # "motionViewPrevLeft":I
    :cond_8
    :goto_4
    return-void

    .line 4250
    .end local v20    # "deltaX":I
    .end local v21    # "incrementalDeltaX":I
    .end local v22    # "lastXCorrection":I
    :cond_9
    move/from16 v0, v33

    neg-int v3, v0

    goto/16 :goto_0

    .restart local v20    # "deltaX":I
    :cond_a
    move/from16 v21, v20

    .line 4261
    goto/16 :goto_1

    .line 4296
    .restart local v21    # "incrementalDeltaX":I
    .restart local v22    # "lastXCorrection":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v3

    div-int/lit8 v23, v3, 0x2

    .restart local v23    # "motionIndex":I
    goto/16 :goto_2

    .line 4330
    .restart local v7    # "overscroll":I
    .restart local v18    # "atEdge":Z
    .restart local v25    # "motionView":Landroid/view/View;
    .restart local v26    # "motionViewPrevLeft":I
    .restart local v27    # "motionViewRealLeft":I
    :cond_c
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOverscrollDistance:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v15}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v19

    .line 4333
    .local v19, "atOverscrollEdge":Z
    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_d

    .line 4335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 4338
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getOverScrollMode()I

    move-result v31

    .line 4339
    .local v31, "overscrollMode":I
    if-eqz v31, :cond_e

    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_6

    .line 4342
    :cond_e
    if-nez v19, :cond_f

    .line 4343
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDirection:I

    .line 4344
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 4346
    :cond_f
    if-lez v21, :cond_11

    .line 4347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    neg-int v4, v7

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, p2

    int-to-float v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(FF)V

    .line 4349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_10

    .line 4350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 4352
    :cond_10
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->getMaxHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate(IIII)V

    goto/16 :goto_3

    .line 4354
    :cond_11
    if-gez v21, :cond_6

    .line 4355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v4, v7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v0, p2

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(FF)V

    .line 4357
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_12

    .line 4358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 4360
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->getMaxHeight()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate(IIII)V

    goto/16 :goto_3

    .line 4371
    .end local v7    # "overscroll":I
    .end local v18    # "atEdge":Z
    .end local v19    # "atOverscrollEdge":Z
    .end local v23    # "motionIndex":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v26    # "motionViewPrevLeft":I
    .end local v27    # "motionViewRealLeft":I
    .end local v31    # "overscrollMode":I
    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    .line 4372
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastX:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_8

    .line 4373
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    move/from16 v30, v0

    .line 4374
    .local v30, "oldScroll":I
    sub-int v29, v30, v21

    .line 4375
    .local v29, "newScroll":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastX:I

    move/from16 v0, p1

    if-le v0, v3, :cond_1c

    const/16 v28, 0x1

    .line 4377
    .local v28, "newDirection":I
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDirection:I

    if-nez v3, :cond_14

    .line 4378
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDirection:I

    .line 4381
    :cond_14
    move/from16 v0, v21

    neg-int v9, v0

    .line 4382
    .local v9, "overScrollDistance":I
    if-gez v29, :cond_15

    if-gez v30, :cond_16

    :cond_15
    if-lez v29, :cond_1d

    if-gtz v30, :cond_1d

    .line 4383
    :cond_16
    move/from16 v0, v30

    neg-int v9, v0

    .line 4384
    add-int v21, v21, v9

    .line 4389
    :goto_6
    if-eqz v9, :cond_19

    .line 4390
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOverscrollDistance:I

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v17}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 4392
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getOverScrollMode()I

    move-result v31

    .line 4393
    .restart local v31    # "overscrollMode":I
    if-eqz v31, :cond_17

    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_19

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_19

    .line 4396
    :cond_17
    if-lez v33, :cond_1e

    .line 4397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v4, v9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, p2

    int-to-float v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(FF)V

    .line 4399
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_18

    .line 4400
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 4402
    :cond_18
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->getMaxHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate(IIII)V

    .line 4418
    .end local v31    # "overscrollMode":I
    :cond_19
    :goto_7
    if-eqz v21, :cond_1b

    .line 4420
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    if-eqz v3, :cond_1a

    .line 4421
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    .line 4422
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidateParentIfNeeded()V

    .line 4425
    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->trackMotionScroll(II)Z

    .line 4427
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 4431
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->findClosestMotionRow(I)I

    move-result v24

    .line 4433
    .local v24, "motionPosition":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionCorrection:I

    .line 4434
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    sub-int v3, v24, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4435
    .restart local v25    # "motionView":Landroid/view/View;
    if-eqz v25, :cond_20

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v3

    :goto_8
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionViewOriginalLeft:I

    .line 4436
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionX:I

    .line 4437
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    .line 4439
    .end local v24    # "motionPosition":I
    .end local v25    # "motionView":Landroid/view/View;
    :cond_1b
    add-int v3, p1, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastX:I

    .line 4440
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDirection:I

    goto/16 :goto_4

    .line 4375
    .end local v9    # "overScrollDistance":I
    .end local v28    # "newDirection":I
    :cond_1c
    const/16 v28, -0x1

    goto/16 :goto_5

    .line 4386
    .restart local v9    # "overScrollDistance":I
    .restart local v28    # "newDirection":I
    :cond_1d
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 4405
    .restart local v31    # "overscrollMode":I
    :cond_1e
    if-gez v33, :cond_19

    .line 4406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v4, v9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHeight()I

    move-result v5

    div-int v5, p2, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(FF)V

    .line 4408
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 4409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 4411
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->getMaxHeight()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate(IIII)V

    goto/16 :goto_7

    .line 4435
    .end local v31    # "overscrollMode":I
    .restart local v24    # "motionPosition":I
    .restart local v25    # "motionView":Landroid/view/View;
    :cond_20
    const/4 v3, 0x0

    goto :goto_8
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 1914
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setAlwaysShow(Z)V

    .line 1916
    :cond_0
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1849
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    if-eqz v0, :cond_2

    .line 1850
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setEnabled(Z)V

    .line 1856
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->resolvePadding()V

    .line 1858
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    if-eqz v0, :cond_1

    .line 1859
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->updateLayout()V

    .line 1861
    :cond_1
    return-void

    .line 1851
    :cond_2
    if-eqz p1, :cond_0

    .line 1852
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;I)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    .line 1853
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setItemViewLayoutParams(Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 3013
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3015
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_1

    .line 3016
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    .line 3023
    .local v0, "lp":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapterHasStableIds:Z

    if-eqz v2, :cond_0

    .line 3024
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->itemId:J

    .line 3026
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->viewType:I

    .line 3027
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3028
    return-void

    .line 3017
    .end local v0    # "lp":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3018
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    .restart local v0    # "lp":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    goto :goto_0

    .end local v0    # "lp":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    :cond_2
    move-object v0, v1

    .line 3020
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    .restart local v0    # "lp":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    goto :goto_0
.end method

.method private setupQuickController(I)V
    .locals 21
    .param p1, "where"    # I

    .prologue
    .line 10434
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v15

    .line 10435
    .local v15, "w":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHeight()I

    move-result v9

    .line 10436
    .local v9, "h":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingTop:I

    move/from16 v16, v0

    sub-int v16, v9, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingBottom:I

    move/from16 v17, v0

    sub-int v7, v16, v17

    .line 10437
    .local v7, "contentH":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingTop:I

    move/from16 v16, v0

    div-int/lit8 v17, v7, 0x2

    add-int v5, v16, v17

    .line 10439
    .local v5, "centerY":I
    const/4 v4, 0x0

    .line 10440
    .local v4, "btnW":I
    const/4 v3, 0x0

    .line 10442
    .local v3, "btnH":I
    const/4 v13, 0x0

    .line 10443
    .local v13, "paddingLeft":I
    const/4 v14, 0x0

    .line 10445
    .local v14, "paddingRight":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCLocation:I

    .line 10446
    .local v11, "oldLocation":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCLocation:I

    .line 10448
    const/4 v6, 0x1

    .line 10449
    .local v6, "checkBoundary":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    .line 10450
    .local v2, "basePkgName":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v16, "cocktailbarservice"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 10453
    const/4 v6, 0x0

    .line 10458
    :cond_0
    if-eqz v6, :cond_2

    .line 10459
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v10, v0, [I

    fill-array-data v10, :array_0

    .line 10460
    .local v10, "locOnScr":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getLocationOnScreen([I)V

    .line 10461
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 10464
    .local v8, "dm":Landroid/util/DisplayMetrics;
    const/16 v16, 0x1

    aget v16, v10, v16

    if-gez v16, :cond_1

    .line 10465
    const/16 v16, 0x1

    aget v16, v10, v16

    move/from16 v0, v16

    neg-int v12, v0

    .line 10466
    .local v12, "overlappedH":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingTop:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v12, v0, :cond_1

    .line 10467
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingTop:I

    move/from16 v16, v0

    sub-int v16, v12, v16

    div-int/lit8 v16, v16, 0x2

    add-int v5, v5, v16

    .line 10472
    .end local v12    # "overlappedH":I
    :cond_1
    const/16 v16, 0x1

    aget v16, v10, v16

    add-int v16, v16, v9

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 10473
    const/16 v16, 0x1

    aget v16, v10, v16

    add-int v16, v16, v9

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    sub-int v12, v16, v17

    .line 10474
    .restart local v12    # "overlappedH":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingBottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v12, v0, :cond_2

    .line 10475
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingBottom:I

    move/from16 v16, v0

    sub-int v16, v12, v16

    div-int/lit8 v16, v16, 0x2

    sub-int v5, v5, v16

    .line 10480
    .end local v8    # "dm":Landroid/util/DisplayMetrics;
    .end local v10    # "locOnScr":[I
    .end local v12    # "overlappedH":I
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 10481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v13, v0, Landroid/graphics/Rect;->left:I

    .line 10482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v14, v0, Landroid/graphics/Rect;->right:I

    .line 10488
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 10524
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10526
    return-void

    .line 10484
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    .line 10485
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    goto :goto_0

    .line 10490
    :pswitch_0
    new-instance v16, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCRect:Landroid/graphics/Rect;

    goto :goto_1

    .line 10494
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCLocation:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v0, v11, :cond_4

    .line 10495
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x10805bb

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 10496
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x10805bc

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 10499
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 10500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 10501
    new-instance v16, Landroid/graphics/Rect;

    add-int/lit8 v17, v13, 0x0

    div-int/lit8 v18, v3, 0x2

    sub-int v18, v5, v18

    add-int v19, v4, v13

    div-int/lit8 v20, v3, 0x2

    add-int v20, v20, v5

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 10505
    :pswitch_2
    new-instance v16, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 10509
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCLocation:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v0, v11, :cond_5

    .line 10510
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x10805b9

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 10511
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x10805ba

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 10514
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 10515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 10516
    new-instance v16, Landroid/graphics/Rect;

    sub-int v17, v15, v3

    sub-int v17, v17, v14

    div-int/lit8 v18, v3, 0x2

    sub-int v18, v5, v18

    sub-int v19, v15, v14

    div-int/lit8 v20, v3, 0x2

    add-int v20, v20, v5

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 10459
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 10488
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private showPointerIcon(I)Z
    .locals 4
    .param p1, "iconId"    # I

    .prologue
    .line 10084
    const/4 v1, -0x1

    :try_start_0
    invoke-static {p1, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10086
    const/4 v1, 0x1

    .line 10089
    :goto_0
    return v1

    .line 10087
    :catch_0
    move-exception v0

    .line 10088
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TwHorizontalAbsListView"

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

    .line 10089
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 7780
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 7781
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->createTextFilter(Z)V

    .line 7782
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->positionPopup()V

    .line 7784
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->checkFocus()V

    .line 7786
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

    .line 4198
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionX:I

    sub-int v1, p1, v7

    .line 4199
    .local v1, "deltaX":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4200
    .local v2, "distance":I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    if-eqz v7, :cond_2

    move v5, v8

    .line 4201
    .local v5, "overscroll":Z
    :goto_0
    if-nez v5, :cond_0

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchSlop:I

    if-le v2, v7, :cond_7

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getNestedScrollAxes()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_7

    .line 4203
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->createScrollingCache()V

    .line 4204
    if-eqz v5, :cond_3

    .line 4205
    const/4 v7, 0x5

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 4206
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionCorrection:I

    .line 4211
    :goto_1
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4212
    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setPressed(Z)V

    .line 4213
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v7, v10

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4214
    .local v4, "motionView":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 4215
    invoke-virtual {v4, v9}, Landroid/view/View;->setPressed(Z)V

    .line 4218
    :cond_1
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPointerCount:I

    if-le v7, v8, :cond_5

    .line 4224
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 4225
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_5

    .line 4226
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setPressed(Z)V

    .line 4225
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "motionView":Landroid/view/View;
    .end local v5    # "overscroll":Z
    :cond_2
    move v5, v9

    .line 4200
    goto :goto_0

    .line 4208
    .restart local v5    # "overscroll":Z
    :cond_3
    const/4 v7, 0x3

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 4209
    if-lez v1, :cond_4

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchSlop:I

    :goto_3
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionCorrection:I

    goto :goto_1

    :cond_4
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchSlop:I

    neg-int v7, v7

    goto :goto_3

    .line 4229
    .restart local v4    # "motionView":Landroid/view/View;
    :cond_5
    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 4232
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 4233
    .local v6, "parent":Landroid/view/ViewParent;
    if-eqz v6, :cond_6

    .line 4234
    invoke-interface {v6, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4236
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    move v7, v8

    .line 4240
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
    .line 1676
    const/4 v0, 0x0

    .line 1677
    .local v0, "handledNotifyMultiSelect":Z
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsShiftkeyPressed:Z

    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsPenPressed:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v8}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->twNotifyMultiSelectedState(Landroid/view/View;IJZZZ)Z

    move-result v0

    .line 1679
    return v0
.end method

.method private unregisterMotionListener()V
    .locals 0

    .prologue
    .line 9875
    return-void
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    .prologue
    .line 1688
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    .line 1689
    .local v2, "firstPos":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v1

    .line 1690
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    const/4 v5, 0x1

    .line 1692
    .local v5, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 1693
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1694
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 1696
    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    .line 1697
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1692
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1690
    .end local v3    # "i":I
    .end local v4    # "position":I
    .end local v5    # "useActivated":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1698
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "position":I
    .restart local v5    # "useActivated":Z
    :cond_2
    if-eqz v5, :cond_0

    .line 1699
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    .line 1702
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "position":I
    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 2230
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2232
    return-void
.end method


# virtual methods
.method public addExtraPaddingInLeftHoverArea(I)V
    .locals 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 4542
    const/4 v0, 0x1

    int-to-float v1, p1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    .line 4545
    return-void
.end method

.method public addExtraPaddingInRightHoverArea(I)V
    .locals 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 4551
    const/4 v0, 0x1

    int-to-float v1, p1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    .line 4554
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
    .line 6412
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v2

    .line 6413
    .local v2, "count":I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    .line 6414
    .local v3, "firstPosition":I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 6416
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 6427
    :cond_0
    return-void

    .line 6420
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 6421
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6422
    .local v1, "child":Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6423
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6425
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 6420
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 8280
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 8215
    return-void
.end method

.method public canScrollList(I)Z
    .locals 10
    .param p1, "direction"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7103
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 7104
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 7116
    :cond_0
    :goto_0
    return v6

    .line 7108
    :cond_1
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    .line 7109
    .local v2, "firstPosition":I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 7110
    .local v5, "listPadding":Landroid/graphics/Rect;
    if-lez p1, :cond_3

    .line 7111
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v4

    .line 7112
    .local v4, "lastRight":I
    add-int v3, v2, v0

    .line 7113
    .local v3, "lastPosition":I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    if-lt v3, v8, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    if-le v4, v8, :cond_0

    :cond_2
    move v6, v7

    goto :goto_0

    .line 7115
    .end local v3    # "lastPosition":I
    .end local v4    # "lastRight":I
    :cond_3
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 7116
    .local v1, "firstLeft":I
    if-gtz v2, :cond_4

    iget v8, v5, Landroid/graphics/Rect;->left:I

    if-ge v1, v8, :cond_0

    :cond_4
    move v6, v7

    goto :goto_0
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 8118
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

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
    .line 8313
    instance-of v0, p1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1508
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1510
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1511
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1513
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedItemCount:I

    .line 1514
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 8167
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 8168
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFiltered:Z

    .line 8170
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8171
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->dismissPopup()V

    .line 8174
    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 2620
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 2621
    .local v0, "count":I
    if-lez v0, :cond_3

    .line 2622
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 2623
    mul-int/lit8 v1, v0, 0x64

    .line 2625
    .local v1, "extent":I
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2626
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 2627
    .local v2, "left":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 2628
    .local v5, "width":I
    if-lez v5, :cond_0

    .line 2629
    mul-int/lit8 v6, v2, 0x64

    div-int/2addr v6, v5

    add-int/2addr v1, v6

    .line 2632
    :cond_0
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2633
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    .line 2634
    .local v3, "right":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 2635
    if-lez v5, :cond_1

    .line 2636
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v6

    sub-int v6, v3, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v5

    sub-int/2addr v1, v6

    .line 2644
    .end local v1    # "extent":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "width":I
    :cond_1
    :goto_0
    return v1

    .line 2641
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v6

    .line 2644
    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 2649
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    .line 2650
    .local v2, "firstPosition":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 2651
    .local v0, "childCount":I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 2652
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 2653
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2654
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 2655
    .local v4, "left":I
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 2656
    .local v6, "width":I
    if-lez v6, :cond_0

    .line 2657
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v4, 0x64

    div-int/2addr v9, v6

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2673
    .end local v4    # "left":I
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "width":I
    :cond_0
    :goto_0
    return v7

    .line 2662
    :cond_1
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    .line 2663
    .local v1, "count":I
    if-nez v2, :cond_2

    .line 2664
    const/4 v3, 0x0

    .line 2670
    .local v3, "index":I
    :goto_1
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v3

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_0

    .line 2665
    .end local v3    # "index":I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 2666
    move v3, v1

    .restart local v3    # "index":I
    goto :goto_1

    .line 2668
    .end local v3    # "index":I
    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v3, v2, v7

    .restart local v3    # "index":I
    goto :goto_1
.end method

.method protected computeHorizontalScrollRange()I
    .locals 3

    .prologue
    .line 2679
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 2680
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2681
    .local v0, "result":I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    if-eqz v1, :cond_0

    .line 2683
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2688
    :cond_0
    :goto_0
    return v0

    .line 2686
    .end local v0    # "result":I
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 18

    .prologue
    .line 7553
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 7555
    const/4 v2, 0x0

    .line 7556
    .local v2, "checkedCountChanged":Z
    const/4 v9, 0x0

    .local v9, "checkedIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v9, v3, :cond_4

    .line 7557
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 7558
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 7560
    .local v5, "lastPos":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    .line 7561
    .local v12, "lastPosId":J
    cmp-long v3, v6, v12

    if-eqz v3, :cond_3

    .line 7563
    const/4 v3, 0x0

    add-int/lit8 v4, v5, -0x14

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 7564
    .local v17, "start":I
    add-int/lit8 v3, v5, 0x14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 7565
    .local v10, "end":I
    const/4 v11, 0x0

    .line 7566
    .local v11, "found":Z
    move/from16 v16, v17

    .local v16, "searchPos":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v10, :cond_0

    .line 7567
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    .line 7568
    .local v14, "searchId":J
    cmp-long v3, v6, v14

    if-nez v3, :cond_2

    .line 7569
    const/4 v11, 0x1

    .line 7570
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 7571
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 7576
    .end local v14    # "searchId":J
    :cond_0
    if-nez v11, :cond_1

    .line 7577
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    .line 7578
    add-int/lit8 v9, v9, -0x1

    .line 7579
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedItemCount:I

    .line 7580
    const/4 v2, 0x1

    .line 7581
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;

    if-eqz v3, :cond_1

    .line 7582
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 7556
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 7566
    .restart local v10    # "end":I
    .restart local v11    # "found":Z
    .restart local v14    # "searchId":J
    .restart local v16    # "searchPos":I
    .restart local v17    # "start":I
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 7587
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v14    # "searchId":J
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 7591
    .end local v5    # "lastPos":I
    .end local v6    # "id":J
    .end local v12    # "lastPosId":J
    :cond_4
    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_5

    .line 7592
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 7594
    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 3744
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method createPositionScroller()Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;
    .locals 1

    .prologue
    .line 6821
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 8458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 8459
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 18
    .param p1, "ev"    # Landroid/view/DragEvent;

    .prologue
    .line 4906
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    .line 4908
    .local v2, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v5

    .line 4909
    .local v5, "cd":Landroid/content/ClipDescription;
    if-eqz v5, :cond_0

    const-string v13, "cropUri"

    invoke-virtual {v5}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 4910
    :cond_0
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    .line 5058
    :goto_0
    return v13

    .line 4914
    :cond_1
    const/4 v13, 0x1

    if-ne v2, v13, :cond_4

    .line 4915
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    if-gtz v13, :cond_2

    .line 4916
    const/4 v13, 0x1

    const/high16 v14, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

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

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    .line 4920
    :cond_2
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    if-nez v13, :cond_3

    :cond_3
    const/4 v13, 0x1

    goto :goto_0

    .line 4923
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    .line 4924
    .local v11, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    .line 4925
    .local v12, "y":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v7

    .line 4926
    .local v7, "childCount":I
    const/4 v8, 0x0

    .line 4927
    .local v8, "contentRight":I
    const/4 v10, 0x0

    .line 4928
    .local v10, "lastChildRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v9

    .line 4932
    .local v9, "count":I
    if-eqz v7, :cond_5

    .line 4933
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v8

    .line 4937
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v13, v9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    if-ge v13, v14, :cond_f

    const/4 v4, 0x1

    .line 4939
    .local v4, "canScrollRight":Z
    :goto_1
    if-nez v4, :cond_7

    if-lez v9, :cond_7

    .line 4940
    add-int/lit8 v13, v9, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4941
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRight:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v15

    if-gt v13, v14, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v15

    if-le v13, v14, :cond_10

    :cond_6
    const/4 v4, 0x1

    .line 4946
    .end local v6    # "child":Landroid/view/View;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    if-lez v13, :cond_11

    const/4 v3, 0x1

    .line 4948
    .local v3, "canScrollLeft":Z
    :goto_3
    if-nez v3, :cond_8

    .line 4949
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v13

    if-lez v13, :cond_8

    .line 4950
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4951
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    if-ge v13, v14, :cond_12

    const/4 v3, 0x1

    .line 4956
    .end local v6    # "child":Landroid/view/View;
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    if-le v11, v13, :cond_9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-lt v11, v13, :cond_a

    :cond_9
    if-lez v12, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getBottom()I

    move-result v13

    if-gt v12, v13, :cond_a

    if-nez v3, :cond_13

    if-nez v4, :cond_13

    .line 4959
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 4960
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4963
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsHoverOverscrolled:Z

    const/4 v14, 0x1

    if-eq v13, v14, :cond_c

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollStartTime:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_d

    .line 4964
    :cond_c
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 4967
    :cond_d
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 4968
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 4969
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 4972
    const/4 v13, 0x2

    if-ne v2, v13, :cond_e

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDragScrolled:Z

    if-eqz v13, :cond_e

    .line 4973
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDragScrolled:Z

    .line 4974
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->resetDragableChildren(Landroid/view/DragEvent;)Z

    .line 4977
    :cond_e
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    goto/16 :goto_0

    .line 4937
    .end local v3    # "canScrollLeft":Z
    .end local v4    # "canScrollRight":Z
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 4941
    .restart local v4    # "canScrollRight":Z
    .restart local v6    # "child":Landroid/view/View;
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 4946
    .end local v6    # "child":Landroid/view/View;
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 4951
    .restart local v3    # "canScrollLeft":Z
    .restart local v6    # "child":Landroid/view/View;
    :cond_12
    const/4 v3, 0x0

    goto :goto_4

    .line 4981
    .end local v6    # "child":Landroid/view/View;
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    if-nez v13, :cond_14

    .line 4982
    new-instance v13, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    .line 4984
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v13, :cond_15

    .line 4985
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 4987
    :cond_15
    packed-switch v2, :pswitch_data_0

    .line 5058
    :cond_16
    :goto_5
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    goto/16 :goto_0

    .line 4989
    :pswitch_0
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 4990
    if-ltz v11, :cond_17

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    if-gt v11, v13, :cond_17

    .line 4992
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_16

    .line 4993
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDragScrolled:Z

    .line 4994
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 4995
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollDirection:I

    .line 4996
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 4998
    :cond_17
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-lt v11, v13, :cond_16

    if-gt v11, v8, :cond_16

    .line 5000
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_16

    .line 5001
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDragScrolled:Z

    .line 5002
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5003
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5004
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 5010
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v13, :cond_18

    .line 5011
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5014
    :cond_18
    if-ltz v11, :cond_19

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    if-gt v11, v13, :cond_19

    .line 5016
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_16

    .line 5017
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDragScrolled:Z

    .line 5018
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5019
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5020
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 5022
    :cond_19
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-lt v11, v13, :cond_16

    if-gt v11, v8, :cond_16

    .line 5024
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_16

    .line 5025
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDragScrolled:Z

    .line 5026
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5027
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5028
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 5035
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDragScrolled:Z

    if-eqz v13, :cond_1a

    .line 5036
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDragScrolled:Z

    .line 5037
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->resetDragableChildren(Landroid/view/DragEvent;)Z

    .line 5043
    :cond_1a
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 5044
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5046
    :cond_1b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDragScrolled:Z

    .line 5048
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5049
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5050
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 5051
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverAreaEnter:Z

    goto/16 :goto_5

    .line 4987
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
    .line 3209
    const/4 v4, 0x0

    .line 3210
    .local v4, "saveCount":I
    const/4 v7, 0x0

    .line 3211
    .local v7, "trackChildLeft":I
    const/4 v2, 0x0

    .line 3212
    .local v2, "firstChildPosition":I
    const/4 v3, 0x0

    .line 3214
    .local v3, "lastChildPosition":I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mGroupFlags:I

    and-int/lit8 v8, v8, 0x22

    const/16 v9, 0x22

    if-ne v8, v9, :cond_5

    const/4 v0, 0x1

    .line 3215
    .local v0, "clipToPadding":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 3216
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3217
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    .line 3218
    .local v5, "scrollX":I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollY:I

    .line 3219
    .local v6, "scrollY":I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingLeft:I

    add-int/2addr v8, v5

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingTop:I

    add-int/2addr v9, v6

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRight:I

    add-int/2addr v10, v5

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingRight:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mBottom:I

    add-int/2addr v11, v6

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTop:I

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingBottom:I

    sub-int/2addr v11, v12

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3222
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mGroupFlags:I

    and-int/lit8 v8, v8, -0x23

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mGroupFlags:I

    .line 3225
    .end local v5    # "scrollX":I
    .end local v6    # "scrollY":I
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDrawSelectorOnTop:Z

    .line 3226
    .local v1, "drawSelectorOnTop":Z
    if-nez v1, :cond_1

    .line 3227
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 3230
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3232
    if-eqz v1, :cond_2

    .line 3233
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 3236
    :cond_2
    if-eqz v0, :cond_3

    .line 3237
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3238
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mGroupFlags:I

    or-int/lit8 v8, v8, 0x22

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mGroupFlags:I

    .line 3241
    :cond_3
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDragBlockEnabled:Z

    if-eqz v8, :cond_4

    .line 3242
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockLeft:I

    if-nez v8, :cond_6

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockTop:I

    if-nez v8, :cond_6

    .line 3263
    :cond_4
    :goto_1
    return-void

    .line 3214
    .end local v0    # "clipToPadding":Z
    .end local v1    # "drawSelectorOnTop":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 3245
    .restart local v0    # "clipToPadding":Z
    .restart local v1    # "drawSelectorOnTop":Z
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 3246
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getLastVisiblePosition()I

    move-result v3

    .line 3248
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTrackedChildPosition:I

    if-lt v8, v2, :cond_8

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTrackedChildPosition:I

    if-gt v8, v3, :cond_8

    .line 3249
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTrackedChildPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 3250
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTrackedChild:Landroid/view/View;

    if-eqz v8, :cond_7

    .line 3251
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTrackedChild:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 3253
    :cond_7
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDistanceFromTrackedChildLeft:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartX:I

    .line 3256
    :cond_8
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartX:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragEndX:I

    if-ge v8, v9, :cond_9

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartX:I

    :goto_2
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockLeft:I

    .line 3257
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragEndX:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartX:I

    if-le v8, v9, :cond_a

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragEndX:I

    :goto_3
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockRight:I

    .line 3259
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockRect:Landroid/graphics/Rect;

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockLeft:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockTop:I

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockRight:I

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockBottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 3260
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockImage:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3261
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 3256
    :cond_9
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragEndX:I

    goto :goto_2

    .line 3257
    :cond_a
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartX:I

    goto :goto_3
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4558
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 4561
    .local v4, "action":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoveringEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsPenPressed:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    .line 4562
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onHoverDrawableState(Landroid/view/MotionEvent;)V

    .line 4569
    :cond_1
    invoke-static {}, Landroid/text/MultiSelection;->isTextViewHovered()Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNewTextViewHoverState:Z

    .line 4571
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNewTextViewHoverState:Z

    move/from16 v23, v0

    if-nez v23, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOldTextViewHoverState:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 4573
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    .line 4579
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNewTextViewHoverState:Z

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOldTextViewHoverState:Z

    .line 4582
    const/16 v23, 0x9

    move/from16 v0, v23

    if-ne v4, v0, :cond_e

    .line 4583
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v20

    .line 4585
    .local v20, "toolType":I
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNeedsHoverScroll:Z

    .line 4588
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isHoveringUIEnabled()Z

    move-result v23

    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollEnable:Z

    move/from16 v23, v0

    if-nez v23, :cond_3

    .line 4589
    :cond_2
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNeedsHoverScroll:Z

    .line 4593
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNeedsHoverScroll:Z

    move/from16 v23, v0

    if-eqz v23, :cond_7

    const/16 v23, 0x2

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 4595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "pen_hovering"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    const/4 v15, 0x1

    .line 4597
    .local v15, "isHoveringOn":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "pen_hovering_list_scroll"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    const/4 v14, 0x1

    .line 4599
    .local v14, "isHoverListScrollOn":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "car_mode_on"

    const/16 v25, 0x0

    const/16 v26, -0x3

    invoke-static/range {v23 .. v26}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    const/4 v13, 0x1

    .line 4602
    .local v13, "isCarModeOn":Z
    :goto_3
    if-eqz v15, :cond_4

    if-eqz v13, :cond_5

    .line 4603
    :cond_4
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNeedsHoverScroll:Z

    .line 4606
    :cond_5
    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v23, v0

    if-nez v23, :cond_6

    const/16 v23, 0x2

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 4608
    const/16 v23, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->showPointerIcon(I)Z

    .line 4609
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    .line 4612
    :cond_6
    if-nez v14, :cond_7

    .line 4613
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNeedsHoverScroll:Z

    .line 4618
    .end local v13    # "isCarModeOn":Z
    .end local v14    # "isHoverListScrollOn":Z
    .end local v15    # "isHoveringOn":Z
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNeedsHoverScroll:Z

    move/from16 v23, v0

    if-eqz v23, :cond_9

    const/16 v23, 0x3

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 4619
    const/16 v17, 0x0

    .line 4620
    .local v17, "isMouseHoveringOn":Z
    const/16 v16, 0x0

    .line 4622
    .local v16, "isMouseHoverListScrollOn":Z
    if-eqz v17, :cond_8

    if-nez v16, :cond_9

    .line 4623
    :cond_8
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNeedsHoverScroll:Z

    .line 4643
    .end local v16    # "isMouseHoverListScrollOn":Z
    .end local v17    # "isMouseHoveringOn":Z
    .end local v20    # "toolType":I
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNeedsHoverScroll:Z

    move/from16 v23, v0

    if-nez v23, :cond_13

    .line 4644
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v23

    .line 4893
    :goto_5
    return v23

    .line 4576
    :cond_a
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    goto/16 :goto_0

    .line 4595
    .restart local v20    # "toolType":I
    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 4597
    .restart local v15    # "isHoveringOn":Z
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 4599
    .restart local v14    # "isHoverListScrollOn":Z
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 4626
    .end local v14    # "isHoverListScrollOn":Z
    .end local v15    # "isHoveringOn":Z
    .end local v20    # "toolType":I
    :cond_e
    const/16 v23, 0x7

    move/from16 v0, v23

    if-ne v4, v0, :cond_12

    .line 4627
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v23, v0

    if-nez v23, :cond_f

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    move/from16 v23, v0

    if-eqz v23, :cond_11

    .line 4629
    :cond_10
    const/16 v23, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->showPointerIcon(I)Z

    .line 4630
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    goto :goto_4

    .line 4631
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v23, v0

    if-eqz v23, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_9

    .line 4632
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->showPointerIcon(I)Z

    .line 4633
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_4

    .line 4635
    :cond_12
    const/16 v23, 0xa

    move/from16 v0, v23

    if-ne v4, v0, :cond_9

    .line 4636
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v23, v0

    if-eqz v23, :cond_9

    .line 4637
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->showPointerIcon(I)Z

    .line 4638
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_4

    .line 4648
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v21, v0

    .line 4649
    .local v21, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v22, v0

    .line 4650
    .local v22, "y":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v8

    .line 4651
    .local v8, "childCount":I
    const/4 v9, 0x0

    .line 4652
    .local v9, "contentLeft":I
    const/4 v10, 0x0

    .line 4653
    .local v10, "contentRight":I
    const/16 v19, 0x0

    .line 4654
    .local v19, "lastChildRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v11

    .line 4659
    .local v11, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    if-nez v23, :cond_14

    .line 4660
    new-instance v23, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    .line 4663
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverLeftAreaWidth:I

    move/from16 v23, v0

    if-lez v23, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRightAreaWidth:I

    move/from16 v23, v0

    if-gtz v23, :cond_16

    .line 4664
    :cond_15
    const/16 v23, 0x1

    const/high16 v24, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v25

    invoke-static/range {v23 .. v25}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v23

    const/high16 v24, 0x3f000000    # 0.5f

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverLeftAreaWidth:I

    .line 4672
    const/16 v23, 0x1

    const/high16 v24, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v25

    invoke-static/range {v23 .. v25}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v23

    const/high16 v24, 0x3f000000    # 0.5f

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRightAreaWidth:I

    .line 4681
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_29

    .line 4682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 4683
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v10, v23, v24

    .line 4690
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    move/from16 v23, v0

    add-int v23, v23, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2a

    const/4 v6, 0x1

    .line 4692
    .local v6, "canScrollRight":Z
    :goto_7
    if-nez v6, :cond_18

    if-lez v11, :cond_18

    .line 4693
    add-int/lit8 v23, v11, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4694
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_17

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_2b

    :cond_17
    const/4 v6, 0x1

    .line 4699
    .end local v7    # "child":Landroid/view/View;
    :cond_18
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    move/from16 v23, v0

    if-lez v23, :cond_2c

    const/4 v5, 0x1

    .line 4701
    .local v5, "canScrollLeft":Z
    :goto_9
    if-nez v5, :cond_19

    .line 4702
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v23

    if-lez v23, :cond_19

    .line 4703
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4704
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2d

    const/4 v5, 0x1

    .line 4708
    .end local v7    # "child":Landroid/view/View;
    :cond_19
    :goto_a
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2e

    const/16 v18, 0x1

    .line 4710
    .local v18, "isPossibleTooltype":Z
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverLeftAreaWidth:I

    move/from16 v23, v0

    add-int v23, v23, v9

    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRightAreaWidth:I

    move/from16 v23, v0

    sub-int v23, v10, v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_1f

    :cond_1a
    if-lez v22, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getBottom()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_1f

    if-nez v5, :cond_1b

    if-eqz v6, :cond_1f

    :cond_1b
    move/from16 v0, v21

    if-lt v0, v9, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverLeftAreaWidth:I

    move/from16 v23, v0

    add-int v23, v23, v9

    move/from16 v0, v21

    move/from16 v1, v23

    if-gt v0, v1, :cond_1c

    if-nez v5, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsHoverOverscrolled:Z

    move/from16 v23, v0

    if-nez v23, :cond_1f

    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRightAreaWidth:I

    move/from16 v23, v0

    sub-int v23, v10, v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_1d

    move/from16 v0, v21

    if-gt v0, v10, :cond_1d

    if-nez v6, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsHoverOverscrolled:Z

    move/from16 v23, v0

    if-nez v23, :cond_1f

    :cond_1d
    if-eqz v18, :cond_1e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1f

    :cond_1e
    if-eqz v18, :cond_1f

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isLockScreenMode()Z

    move-result v23

    if-eqz v23, :cond_2f

    .line 4717
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v23

    if-eqz v23, :cond_20

    .line 4718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4719
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->showPointerIcon(I)Z

    .line 4722
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v23

    if-eqz v23, :cond_21

    .line 4723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4726
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverLeftAreaWidth:I

    move/from16 v23, v0

    add-int v23, v23, v9

    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRightAreaWidth:I

    move/from16 v23, v0

    sub-int v23, v10, v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_23

    :cond_22
    if-lez v22, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getBottom()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_24

    .line 4727
    :cond_23
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 4730
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverAreaEnter:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollStartTime:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-eqz v23, :cond_26

    .line 4731
    :cond_25
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->showPointerIcon(I)Z

    .line 4733
    :cond_26
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 4734
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 4735
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 4736
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsSendHoverScrollState:Z

    .line 4738
    const/16 v23, 0xa

    move/from16 v0, v23

    if-ne v4, v0, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollStateForListener:I

    move/from16 v23, v0

    if-eqz v23, :cond_27

    .line 4739
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollStateForListener:I

    .line 4740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;

    move-object/from16 v23, v0

    if-eqz v23, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_27

    .line 4741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;I)V

    .line 4746
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    move/from16 v23, v0

    if-eqz v23, :cond_28

    .line 4747
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    .line 4748
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postInvalidateOnAnimation()V

    .line 4751
    :cond_28
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v23

    goto/16 :goto_5

    .line 4685
    .end local v5    # "canScrollLeft":Z
    .end local v6    # "canScrollRight":Z
    .end local v18    # "isPossibleTooltype":Z
    :cond_29
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    .line 4686
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    move/from16 v24, v0

    sub-int v10, v23, v24

    goto/16 :goto_6

    .line 4690
    :cond_2a
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 4694
    .restart local v6    # "canScrollRight":Z
    .restart local v7    # "child":Landroid/view/View;
    :cond_2b
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 4699
    .end local v7    # "child":Landroid/view/View;
    :cond_2c
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 4704
    .restart local v5    # "canScrollLeft":Z
    .restart local v7    # "child":Landroid/view/View;
    :cond_2d
    const/4 v5, 0x0

    goto/16 :goto_a

    .line 4708
    .end local v7    # "child":Landroid/view/View;
    :cond_2e
    const/16 v18, 0x0

    goto/16 :goto_b

    .line 4754
    .restart local v18    # "isPossibleTooltype":Z
    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverAreaEnter:Z

    move/from16 v23, v0

    if-nez v23, :cond_30

    .line 4755
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 4758
    :cond_30
    packed-switch v4, :pswitch_data_0

    .line 4893
    :cond_31
    :goto_c
    :pswitch_0
    const/16 v23, 0x1

    goto/16 :goto_5

    .line 4760
    :pswitch_1
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 4762
    move/from16 v0, v21

    if-lt v0, v9, :cond_32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverLeftAreaWidth:I

    move/from16 v23, v0

    add-int v23, v23, v9

    move/from16 v0, v21

    move/from16 v1, v23

    if-gt v0, v1, :cond_32

    .line 4764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v23

    if-nez v23, :cond_31

    .line 4765
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 4766
    const/16 v23, 0x11

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->showPointerIcon(I)Z

    .line 4768
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollDirection:I

    .line 4769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 4772
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isQCSupported()Z

    move-result v23

    if-eqz v23, :cond_31

    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->canScrollVertically(I)Z

    move-result v23

    if-eqz v23, :cond_31

    .line 4773
    const/16 v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setupQuickController(I)V

    .line 4774
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    goto :goto_c

    .line 4777
    :cond_32
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRightAreaWidth:I

    move/from16 v23, v0

    sub-int v23, v10, v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_31

    move/from16 v0, v21

    if-gt v0, v10, :cond_31

    .line 4779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v23

    if-nez v23, :cond_31

    .line 4780
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 4781
    const/16 v23, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->showPointerIcon(I)Z

    .line 4783
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollDirection:I

    .line 4784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 4787
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isQCSupported()Z

    move-result v23

    if-eqz v23, :cond_31

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->canScrollVertically(I)Z

    move-result v23

    if-eqz v23, :cond_31

    .line 4788
    const/16 v23, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setupQuickController(I)V

    .line 4789
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    goto/16 :goto_c

    .line 4797
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverAreaEnter:Z

    move/from16 v23, v0

    if-nez v23, :cond_33

    .line 4798
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 4799
    const/16 v23, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 4800
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v23

    goto/16 :goto_5

    .line 4803
    :cond_33
    move/from16 v0, v21

    if-lt v0, v9, :cond_36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverLeftAreaWidth:I

    move/from16 v23, v0

    add-int v23, v23, v9

    move/from16 v0, v21

    move/from16 v1, v23

    if-gt v0, v1, :cond_36

    .line 4805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v23

    if-nez v23, :cond_31

    .line 4806
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 4809
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsHoverOverscrolled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollDirection:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_35

    .line 4810
    :cond_34
    const/16 v23, 0x11

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->showPointerIcon(I)Z

    .line 4813
    :cond_35
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollDirection:I

    .line 4814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 4817
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isQCSupported()Z

    move-result v23

    if-eqz v23, :cond_31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    move/from16 v23, v0

    if-nez v23, :cond_31

    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->canScrollVertically(I)Z

    move-result v23

    if-eqz v23, :cond_31

    .line 4818
    const/16 v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setupQuickController(I)V

    .line 4819
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    goto/16 :goto_c

    .line 4822
    :cond_36
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRightAreaWidth:I

    move/from16 v23, v0

    sub-int v23, v10, v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_39

    move/from16 v0, v21

    if-gt v0, v10, :cond_39

    .line 4824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v23

    if-nez v23, :cond_31

    .line 4825
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 4828
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsHoverOverscrolled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollDirection:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_38

    .line 4829
    :cond_37
    const/16 v23, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->showPointerIcon(I)Z

    .line 4832
    :cond_38
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollDirection:I

    .line 4833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 4836
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isQCSupported()Z

    move-result v23

    if-eqz v23, :cond_31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    move/from16 v23, v0

    if-nez v23, :cond_31

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->canScrollVertically(I)Z

    move-result v23

    if-eqz v23, :cond_31

    .line 4837
    const/16 v23, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setupQuickController(I)V

    .line 4838
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    goto/16 :goto_c

    .line 4843
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v23

    if-eqz v23, :cond_3a

    .line 4844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4847
    :cond_3a
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->showPointerIcon(I)Z

    .line 4849
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 4850
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 4851
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 4852
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 4853
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsSendHoverScrollState:Z

    goto/16 :goto_c

    .line 4859
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v23

    if-eqz v23, :cond_3b

    .line 4860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4863
    :cond_3b
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->showPointerIcon(I)Z

    .line 4865
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 4866
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 4867
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 4868
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 4869
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsSendHoverScrollState:Z

    .line 4872
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3d

    .line 4874
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v12

    .line 4875
    .local v12, "im":Landroid/hardware/input/InputManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v23

    if-eqz v23, :cond_3c

    if-eqz v12, :cond_3d

    const/16 v23, -0x1

    const/16 v24, -0x100

    const/16 v25, 0x140

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/input/InputManager;->getScanCodeState(III)I

    move-result v23

    if-nez v23, :cond_3d

    .line 4876
    :cond_3c
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    .line 4877
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postInvalidateOnAnimation()V

    .line 4881
    .end local v12    # "im":Landroid/hardware/input/InputManager;
    :cond_3d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollStateForListener:I

    move/from16 v23, v0

    if-eqz v23, :cond_3e

    .line 4882
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollStateForListener:I

    .line 4883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3e

    .line 4884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;I)V

    .line 4888
    :cond_3e
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v23

    goto/16 :goto_5

    .line 4758
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
    .line 4087
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 32
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 5068
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v25, v0

    .line 5069
    .local v25, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v26, v0

    .line 5070
    .local v26, "y":I
    const/4 v12, 0x0

    .line 5071
    .local v12, "contentLeft":I
    const/4 v13, 0x0

    .line 5072
    .local v13, "contentRight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 5073
    .local v6, "action":I
    const/16 v20, 0x0

    .line 5075
    .local v20, "needToScroll":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    if-nez v27, :cond_0

    .line 5076
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    .line 5079
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    if-nez v27, :cond_1

    .line 5080
    new-instance v27, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    .line 5083
    :cond_1
    invoke-static {}, Landroid/text/MultiSelection;->getIsMultiSelectingText()Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsTextSelectionStarted:Z

    .line 5084
    invoke-static {}, Landroid/text/MultiSelection;->isNeedToScroll()Z

    move-result v20

    .line 5086
    const/16 v27, 0xd3

    move/from16 v0, v27

    if-ne v6, v0, :cond_2

    .line 5087
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsNeedPenSelection:Z

    .line 5088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

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

    .line 5091
    .local v18, "isCarModeOn":Z
    :goto_0
    if-eqz v18, :cond_2

    .line 5092
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsNeedPenSelection:Z

    .line 5096
    .end local v18    # "isCarModeOn":Z
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsTextSelectionStarted:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3

    .line 5097
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsNeedPenSelection:Z

    .line 5100
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverLeftAreaWidth:I

    move/from16 v27, v0

    if-lez v27, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRightAreaWidth:I

    move/from16 v27, v0

    if-gtz v27, :cond_5

    .line 5101
    :cond_4
    const/16 v27, 0x1

    const/high16 v28, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

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

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverLeftAreaWidth:I

    .line 5105
    const/16 v27, 0x1

    const/high16 v28, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

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

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRightAreaWidth:I

    .line 5110
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 5111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v12, v0, Landroid/graphics/Rect;->left:I

    .line 5112
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    sub-int v13, v27, v28

    .line 5118
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v27, v0

    if-eqz v27, :cond_9

    move/from16 v0, v25

    if-lt v0, v12, :cond_6

    move/from16 v0, v25

    if-le v0, v13, :cond_9

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

    .line 5120
    const/16 v27, 0x1

    .line 5447
    :goto_2
    return v27

    .line 5088
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 5114
    :cond_8
    const/4 v12, 0x0

    .line 5115
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v13

    goto :goto_1

    .line 5123
    :cond_9
    sparse-switch v6, :sswitch_data_0

    .line 5447
    :cond_a
    :goto_3
    :sswitch_0
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v27

    goto :goto_2

    .line 5126
    :sswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 5127
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsQCShown:Z

    move/from16 v27, v0

    if-eqz v27, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 5128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 5129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5133
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 5135
    const/16 v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    .line 5136
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postInvalidateOnAnimation()V

    .line 5137
    const/16 v27, 0x1

    goto :goto_2

    .line 5140
    :cond_c
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    goto :goto_3

    .line 5148
    :sswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 5150
    const/16 v27, 0x1

    goto/16 :goto_2

    .line 5154
    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsNeedPenSelection:Z

    move/from16 v27, v0

    if-eqz v27, :cond_28

    .line 5155
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v14

    .line 5157
    .local v14, "count":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsfirstMoveEvent:Z

    move/from16 v27, v0

    if-eqz v27, :cond_11

    .line 5158
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartX:I

    .line 5159
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartY:I

    .line 5160
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-super {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->twNotifyMultiSelectedStart(II)V

    .line 5161
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsPenPressed:Z

    .line 5163
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->pointToPosition(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTrackedChildPosition:I

    .line 5165
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTrackedChildPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_20

    .line 5166
    const/16 v23, 0x0

    .line 5167
    .local v23, "oldDistanceFromLeft":I
    const/16 v24, 0x0

    .line 5168
    .local v24, "oldDistanceFromRight":I
    const/16 v21, 0x0

    .line 5169
    .local v21, "newDistanceFromLeft":I
    const/16 v22, 0x0

    .line 5171
    .local v22, "newDistanceFromRight":I
    add-int/lit8 v16, v14, -0x1

    .local v16, "i":I
    :goto_4
    if-ltz v16, :cond_d

    .line 5172
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5173
    .local v7, "child":Landroid/view/View;
    if-eqz v7, :cond_1d

    .line 5174
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 5175
    .local v9, "childLeft":I
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v10

    .line 5178
    .local v10, "childRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartX:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v9, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartX:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v0, v10, :cond_1c

    .line 5179
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 5180
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v27

    add-int v27, v27, v16

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTrackedChildPosition:I

    .line 5207
    .end local v7    # "child":Landroid/view/View;
    .end local v9    # "childLeft":I
    .end local v10    # "childRight":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTrackedChild:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_f

    .line 5208
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildPositionByLeft:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildByLeft:Landroid/view/View;

    .line 5209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildByLeft:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_e

    .line 5210
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildByLeft:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLeft()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDistanceFromCloseChildLeft:I

    .line 5213
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildPositionByRight:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildByRight:Landroid/view/View;

    .line 5214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildByRight:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_f

    .line 5215
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildByRight:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLeft()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDistanceFromCloseChildRight:I

    .line 5222
    .end local v16    # "i":I
    .end local v21    # "newDistanceFromLeft":I
    .end local v22    # "newDistanceFromRight":I
    .end local v23    # "oldDistanceFromLeft":I
    .end local v24    # "oldDistanceFromRight":I
    :cond_f
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTrackedChild:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_10

    .line 5223
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTrackedChild:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLeft()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDistanceFromTrackedChildLeft:I

    .line 5225
    :cond_10
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsfirstMoveEvent:Z

    .line 5228
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartX:I

    move/from16 v27, v0

    if-nez v27, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartY:I

    move/from16 v27, v0

    if-nez v27, :cond_12

    .line 5229
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartX:I

    .line 5230
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartY:I

    .line 5231
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-super {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->twNotifyMultiSelectedStart(II)V

    .line 5232
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsPenPressed:Z

    .line 5235
    :cond_12
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragEndX:I

    .line 5236
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragEndY:I

    .line 5238
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragEndX:I

    move/from16 v27, v0

    if-gez v27, :cond_21

    .line 5239
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragEndX:I

    .line 5244
    :cond_13
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->pointToPosition(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedViewPosition:I

    .line 5246
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartY:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragEndY:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartY:I

    move/from16 v27, v0

    :goto_7
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockTop:I

    .line 5247
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragEndX:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartX:I

    move/from16 v27, v0

    :goto_8
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockLeft:I

    .line 5248
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragEndY:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartY:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragEndY:I

    move/from16 v27, v0

    :goto_9
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockBottom:I

    .line 5249
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragEndX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartX:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragEndX:I

    move/from16 v27, v0

    :goto_a
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockRight:I

    .line 5251
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_b
    move/from16 v0, v16

    if-ge v0, v14, :cond_27

    .line 5252
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5253
    .restart local v7    # "child":Landroid/view/View;
    if-eqz v7, :cond_1b

    .line 5254
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 5255
    .restart local v9    # "childLeft":I
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    .line 5256
    .local v11, "childTop":I
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v10

    .line 5257
    .restart local v10    # "childRight":I
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 5259
    .local v8, "childBottom":I
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v27

    if-nez v27, :cond_1b

    .line 5260
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v11, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockLeft:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v9, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockBottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v8, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockRight:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v10, :cond_1a

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v9, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockBottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v8, :cond_17

    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v11, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockBottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v0, v11, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v8, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockBottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v8, :cond_26

    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockLeft:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v11, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockRight:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v10, :cond_1a

    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockLeft:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v0, v9, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockRight:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v0, v9, :cond_1a

    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockLeft:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v10, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockRight:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v10, :cond_26

    .line 5264
    :cond_1a
    add-int/lit8 v27, v9, 0x1

    add-int/lit8 v28, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->pointToPosition(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedViewPosition:I

    .line 5265
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-interface/range {v27 .. v28}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1b

    .line 5266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5267
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->addToPressItemListArray(II)V

    .line 5268
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getItemIdAtPosition(I)J

    move-result-wide v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->twNotifyMultiSelectState(Landroid/view/View;IJ)Z

    .line 5251
    .end local v8    # "childBottom":I
    .end local v9    # "childLeft":I
    .end local v10    # "childRight":I
    .end local v11    # "childTop":I
    :cond_1b
    :goto_c
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_b

    .line 5185
    .restart local v9    # "childLeft":I
    .restart local v10    # "childRight":I
    .restart local v21    # "newDistanceFromLeft":I
    .restart local v22    # "newDistanceFromRight":I
    .restart local v23    # "oldDistanceFromLeft":I
    .restart local v24    # "oldDistanceFromRight":I
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartX:I

    move/from16 v27, v0

    sub-int v27, v27, v9

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v21

    .line 5186
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartX:I

    move/from16 v27, v0

    sub-int v27, v27, v10

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v22

    .line 5188
    add-int/lit8 v27, v14, -0x1

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_1e

    .line 5189
    add-int/lit8 v27, v14, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildPositionByLeft:I

    .line 5190
    add-int/lit8 v27, v14, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildPositionByRight:I

    .line 5191
    move/from16 v23, v21

    .line 5192
    move/from16 v24, v22

    .line 5171
    .end local v9    # "childLeft":I
    .end local v10    # "childRight":I
    :cond_1d
    :goto_d
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_4

    .line 5194
    .restart local v9    # "childLeft":I
    .restart local v10    # "childRight":I
    :cond_1e
    move/from16 v0, v21

    move/from16 v1, v23

    if-gt v0, v1, :cond_1f

    .line 5195
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v27

    add-int v27, v27, v16

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildPositionByLeft:I

    .line 5196
    move/from16 v23, v21

    .line 5199
    :cond_1f
    move/from16 v0, v22

    move/from16 v1, v24

    if-gt v0, v1, :cond_1d

    .line 5200
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v27

    add-int v27, v27, v16

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildPositionByRight:I

    .line 5201
    move/from16 v24, v22

    goto :goto_d

    .line 5219
    .end local v7    # "child":Landroid/view/View;
    .end local v9    # "childLeft":I
    .end local v10    # "childRight":I
    .end local v16    # "i":I
    .end local v21    # "newDistanceFromLeft":I
    .end local v22    # "newDistanceFromRight":I
    .end local v23    # "oldDistanceFromLeft":I
    .end local v24    # "oldDistanceFromRight":I
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTrackedChildPosition:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTrackedChild:Landroid/view/View;

    goto/16 :goto_5

    .line 5240
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragEndX:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v13, :cond_13

    .line 5241
    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragEndX:I

    goto/16 :goto_6

    .line 5246
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragEndY:I

    move/from16 v27, v0

    goto/16 :goto_7

    .line 5247
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragEndX:I

    move/from16 v27, v0

    goto/16 :goto_8

    .line 5248
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartY:I

    move/from16 v27, v0

    goto/16 :goto_9

    .line 5249
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartX:I

    move/from16 v27, v0

    goto/16 :goto_a

    .line 5271
    .restart local v7    # "child":Landroid/view/View;
    .restart local v8    # "childBottom":I
    .restart local v9    # "childLeft":I
    .restart local v10    # "childRight":I
    .restart local v11    # "childTop":I
    .restart local v16    # "i":I
    :cond_26
    add-int/lit8 v27, v9, 0x1

    add-int/lit8 v28, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->pointToPosition(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedViewPosition:I

    .line 5272
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-interface/range {v27 .. v28}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1b

    .line 5273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5274
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->addToPressItemListArray(II)V

    .line 5275
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getItemIdAtPosition(I)J

    move-result-wide v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->twNotifyMultiSelectState(Landroid/view/View;IJ)Z

    goto/16 :goto_c

    .line 5281
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childBottom":I
    .end local v9    # "childLeft":I
    .end local v10    # "childRight":I
    .end local v11    # "childTop":I
    :cond_27
    const/16 v20, 0x1

    .line 5284
    .end local v14    # "count":I
    .end local v16    # "i":I
    :cond_28
    if-eqz v20, :cond_31

    .line 5285
    add-int/lit8 v27, v12, 0x0

    move/from16 v0, v25

    move/from16 v1, v27

    if-lt v0, v1, :cond_2c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverLeftAreaWidth:I

    move/from16 v27, v0

    add-int v27, v27, v12

    move/from16 v0, v25

    move/from16 v1, v27

    if-gt v0, v1, :cond_2c

    .line 5286
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverAreaEnter:Z

    move/from16 v27, v0

    if-nez v27, :cond_29

    .line 5287
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_29

    .line 5291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;I)V

    .line 5295
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-nez v27, :cond_2a

    .line 5296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5297
    const/16 v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 5332
    :cond_2a
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2b

    .line 5333
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate()V

    .line 5341
    :cond_2b
    :goto_f
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPreviousTextViewScroll:Z

    goto/16 :goto_3

    .line 5300
    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRightAreaWidth:I

    move/from16 v27, v0

    sub-int v27, v13, v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-lt v0, v1, :cond_2e

    move/from16 v0, v25

    if-gt v0, v13, :cond_2e

    .line 5301
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverAreaEnter:Z

    move/from16 v27, v0

    if-nez v27, :cond_2d

    .line 5302
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2d

    .line 5306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;I)V

    .line 5310
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-nez v27, :cond_2a

    .line 5311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5312
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 5316
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverAreaEnter:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2f

    .line 5317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;I)V

    .line 5320
    :cond_2f
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5321
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5322
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_30

    .line 5326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5329
    :cond_30
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_e

    .line 5335
    :cond_31
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPreviousTextViewScroll:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2b

    .line 5337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_2b

    .line 5338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    goto/16 :goto_f

    .line 5346
    :sswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_34

    .line 5348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_32

    .line 5349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5352
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_33

    .line 5353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5356
    :cond_33
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 5359
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    .line 5360
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postInvalidateOnAnimation()V

    .line 5361
    const/16 v27, 0x1

    goto/16 :goto_2

    .line 5366
    :cond_34
    :sswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsTextSelectionStarted:Z

    move/from16 v27, v0

    if-nez v27, :cond_3c

    .line 5367
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverAreaEnter:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_35

    .line 5368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;I)V

    .line 5371
    :cond_35
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5372
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5373
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5374
    const/16 v19, 0x0

    .line 5376
    .local v19, "isNeedActionMode":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedItemSize:I

    .line 5378
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedItemSize:I

    move/from16 v27, v0

    if-eqz v27, :cond_3c

    .line 5379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    move/from16 v27, v0

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3b

    .line 5381
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_37
    :goto_10
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_38

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 5382
    .local v15, "dragSelectedViewPosition":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-interface/range {v27 .. v28}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_37

    .line 5383
    const/16 v19, 0x1

    goto :goto_10

    .line 5387
    .end local v15    # "dragSelectedViewPosition":Ljava/lang/Integer;
    :cond_38
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    move/from16 v27, v0

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_39

    .line 5388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move-object/from16 v27, v0

    if-nez v27, :cond_39

    const/16 v27, 0x1

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_39

    .line 5389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 5393
    :cond_39
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsTwOnClickEnabled:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3b

    .line 5394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3a
    :goto_11
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_3b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 5395
    .restart local v15    # "dragSelectedViewPosition":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-interface/range {v27 .. v28}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_3a

    .line 5396
    const/16 v27, 0x0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getItemIdAtPosition(I)J

    move-result-wide v30

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    move-wide/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_11

    .line 5401
    .end local v15    # "dragSelectedViewPosition":Ljava/lang/Integer;
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_3b
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-super {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->twNotifyMultiSelectedStop(II)V

    .line 5405
    .end local v19    # "isNeedActionMode":Z
    :cond_3c
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsPenPressed:Z

    .line 5406
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsfirstMoveEvent:Z

    .line 5407
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedViewPosition:I

    .line 5409
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartX:I

    .line 5410
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragStartY:I

    .line 5411
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragEndX:I

    .line 5412
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragEndY:I

    .line 5414
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockLeft:I

    .line 5415
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockTop:I

    .line 5416
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockRight:I

    .line 5417
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragBlockBottom:I

    .line 5419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 5420
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDragSelectedItemSize:I

    .line 5421
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 5422
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDistanceFromTrackedChildLeft:I

    .line 5424
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsCloseChildSetted:Z

    .line 5425
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOldHoverScrollDirection:I

    .line 5426
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildByLeft:Landroid/view/View;

    .line 5427
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildPositionByLeft:I

    .line 5428
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDistanceFromCloseChildLeft:I

    .line 5429
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildByRight:Landroid/view/View;

    .line 5430
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCloseChildPositionByRight:I

    .line 5431
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwDistanceFromCloseChildRight:I

    .line 5433
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3d

    .line 5434
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate()V

    .line 5438
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 5439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    goto/16 :goto_3

    .line 5123
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
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 6205
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 6206
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v5, :cond_3

    .line 6207
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    .line 6208
    .local v3, "scrollX":I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 6209
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 6210
    .local v2, "restoreCount":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHeight()I

    move-result v1

    .line 6212
    .local v1, "height":I
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v5, v3

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6213
    .local v0, "edgeX":I
    int-to-float v5, v0

    int-to-float v6, v1

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6214
    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 6215
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v6

    invoke-virtual {v5, v1, v6}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setSize(II)V

    .line 6216
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v5, p1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6217
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->getMaxHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHeight()I

    move-result v6

    invoke-virtual {p0, v8, v8, v5, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate(IIII)V

    .line 6220
    :cond_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6222
    .end local v0    # "edgeX":I
    .end local v1    # "height":I
    .end local v2    # "restoreCount":I
    :cond_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_3

    .line 6223
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 6224
    .restart local v2    # "restoreCount":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v4

    .line 6225
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHeight()I

    move-result v1

    .line 6227
    .restart local v1    # "height":I
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6228
    .restart local v0    # "edgeX":I
    int-to-float v5, v0

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6229
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 6230
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v5, v1, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setSize(II)V

    .line 6231
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v5, p1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6232
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->getMaxHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHeight()I

    move-result v7

    invoke-virtual {p0, v5, v8, v6, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate(IIII)V

    .line 6236
    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6241
    .end local v0    # "edgeX":I
    .end local v1    # "height":I
    .end local v2    # "restoreCount":I
    .end local v3    # "scrollX":I
    .end local v4    # "width":I
    :cond_3
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    if-eqz v5, :cond_4

    .line 6242
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->drawQuickController(Landroid/graphics/Canvas;)V

    .line 6244
    :cond_4
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 3499
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->drawableStateChanged()V

    .line 3500
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->updateSelectorState()V

    .line 3501
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 9889
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 9890
    return-void
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    const/4 v2, -0x1

    .line 7406
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 7407
    .local v0, "childCount":I
    if-nez v0, :cond_1

    move v1, v2

    .line 7412
    :cond_0
    :goto_0
    return v1

    .line 7411
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->findMotionRow(I)I

    move-result v1

    .line 7412
    .local v1, "motionRow":I
    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

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
    .line 2141
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getAccessibilityViewId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2151
    .end local p0    # "this":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
    :goto_0
    return-object p0

    .line 2148
    .restart local p0    # "this":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 2149
    const/4 p0, 0x0

    goto :goto_0

    .line 2151
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0
.end method

.method public fling(I)V
    .locals 1
    .param p1, "velocityX"    # I

    .prologue
    .line 6142
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 6143
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    .line 6145
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 6146
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->start(I)V

    .line 6147
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 8292
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 8298
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 8303
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "focusedView"    # Landroid/view/View;

    .prologue
    .line 2810
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2811
    .local v0, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    if-eq v0, p0, :cond_0

    move-object p1, v0

    .line 2812
    check-cast p1, Landroid/view/View;

    .line 2813
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 2816
    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 2817
    const/4 p1, 0x0

    .line 2820
    .end local p1    # "focusedView":Landroid/view/View;
    :cond_1
    return-object p1
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    .prologue
    .line 3287
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingBottom:I

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 8374
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 1424
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 1488
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    .line 1489
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 1500
    :cond_1
    return-object v3

    .line 1492
    :cond_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1493
    .local v2, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1494
    .local v0, "count":I
    new-array v3, v0, [J

    .line 1496
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1497
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1496
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1456
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1457
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 1460
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 1473
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 1474
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1476
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 1710
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 3931
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 2217
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2218
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 2221
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2222
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2227
    :goto_0
    return-void

    .line 2225
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 7349
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 7339
    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontalScrollbarHeight()I
    .locals 2

    .prologue
    .line 1942
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1943
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getHorizontalScrollbarHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1945
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getHorizontalScrollbarHeight()I

    move-result v0

    goto :goto_0
.end method

.method protected getHoveringDrawable()Landroid/graphics/drawable/TransitionDrawable;
    .locals 1

    .prologue
    .line 6097
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 2693
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 2694
    .local v0, "count":I
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getLeftFadingEdgeStrength()F

    move-result v1

    .line 2695
    .local v1, "fadeEdge":F
    if-nez v0, :cond_1

    .line 2704
    .end local v1    # "fadeEdge":F
    :cond_0
    :goto_0
    return v1

    .line 2698
    .restart local v1    # "fadeEdge":F
    :cond_1
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 2699
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2702
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 2703
    .local v3, "left":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 2704
    .local v2, "fadeLength":F
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingLeft:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingLeft:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

    .prologue
    .line 3272
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingLeft:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 2888
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 2900
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 2912
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 2876
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 2710
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 2711
    .local v0, "count":I
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getRightFadingEdgeStrength()F

    move-result v1

    .line 2712
    .local v1, "fadeEdge":F
    if-nez v0, :cond_1

    .line 2722
    .end local v1    # "fadeEdge":F
    :cond_0
    :goto_0
    return v1

    .line 2715
    .restart local v1    # "fadeEdge":F
    :cond_1
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 2716
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2719
    :cond_2
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 2720
    .local v3, "right":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v4

    .line 2721
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v2, v5

    .line 2722
    .local v2, "fadeLength":F
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingRight:I

    sub-int v5, v4, v5

    if-le v3, v5, :cond_0

    sub-int v5, v3, v4

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingRight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v1, v5, v2

    goto :goto_0
.end method

.method protected getRightPaddingOffset()I
    .locals 2

    .prologue
    .line 3282
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingRight:I

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2860
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 2861
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2863
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

    .line 2100
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChoiceMode()I

    move-result v0

    .line 2101
    .local v0, "choiceMode":I
    packed-switch v0, :pswitch_data_0

    .line 2110
    :goto_0
    :pswitch_0
    return v1

    .line 2105
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 2108
    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 2101
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
    .line 3418
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 8342
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2563
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2564
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2566
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopPaddingOffset()I
    .locals 2

    .prologue
    .line 3277
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingTop:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 1116
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchSlop:I

    return v0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 8337
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTranscriptMode:I

    return v0
.end method

.method getWidthForPosition(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 9285
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v1

    .line 9286
    .local v1, "firstVisiblePosition":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 9287
    .local v0, "childCount":I
    sub-int v2, p1, v1

    .line 9288
    .local v2, "index":I
    if-ltz v2, :cond_0

    if-ge v2, v0, :cond_0

    .line 9290
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9291
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 9298
    :goto_0
    return v4

    .line 9294
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 9295
    .restart local v3    # "view":Landroid/view/View;
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHeightMeasureSpec:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/View;->measure(II)V

    .line 9296
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 9297
    .local v4, "width":I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    invoke-virtual {v5, v3, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

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

    .line 7601
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    .line 7602
    .local v1, "count":I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastHandledItemCount:I

    .line 7603
    .local v3, "lastHandledItemCount":I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastHandledItemCount:I

    .line 7606
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    if-ne v10, v9, :cond_0

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOldAdapterItemCount:I

    if-eq v10, v11, :cond_0

    .line 7607
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    .line 7608
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->resetPressItemListArray()V

    .line 7609
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOldAdapterItemCount:I

    .line 7612
    :cond_0
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 7613
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->confirmCheckedPositionsById()V

    .line 7617
    :cond_1
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->clearTransientStateViews()V

    .line 7619
    if-lez v1, :cond_f

    .line 7624
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNeedSync:Z

    if-eqz v10, :cond_8

    .line 7626
    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNeedSync:Z

    .line 7627
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;

    .line 7629
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 7630
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    .line 7746
    :cond_2
    :goto_0
    return-void

    .line 7632
    :cond_3
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_7

    .line 7633
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_4

    .line 7634
    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mForceTranscriptScroll:Z

    .line 7635
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    goto :goto_0

    .line 7638
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 7639
    .local v0, "childCount":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getPaddingRight()I

    move-result v11

    sub-int v5, v10, v11

    .line 7640
    .local v5, "listRight":I
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7641
    .local v2, "lastChild":Landroid/view/View;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    .line 7642
    .local v4, "lastRight":I
    :goto_1
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v3, :cond_6

    if-gt v4, v5, :cond_6

    .line 7644
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    goto :goto_0

    .end local v4    # "lastRight":I
    :cond_5
    move v4, v5

    .line 7641
    goto :goto_1

    .line 7649
    .restart local v4    # "lastRight":I
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->awakenScrollBars()Z

    .line 7652
    .end local v0    # "childCount":I
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v4    # "lastRight":I
    .end local v5    # "listRight":I
    :cond_7
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSyncMode:I

    packed-switch v10, :pswitch_data_0

    .line 7700
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_e

    .line 7702
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getSelectedItemPosition()I

    move-result v6

    .line 7705
    .local v6, "newPos":I
    if-lt v6, v1, :cond_9

    .line 7706
    add-int/lit8 v6, v1, -0x1

    .line 7708
    :cond_9
    if-gez v6, :cond_a

    .line 7709
    const/4 v6, 0x0

    .line 7713
    :cond_a
    invoke-virtual {p0, v6, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7715
    .local v7, "selectablePos":I
    if-ltz v7, :cond_d

    .line 7716
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 7654
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 7659
    iput v14, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    .line 7660
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSyncPosition:I

    goto :goto_0

    .line 7666
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->findSyncPosition()I

    move-result v6

    .line 7667
    .restart local v6    # "newPos":I
    if-ltz v6, :cond_8

    .line 7669
    invoke-virtual {p0, v6, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7670
    .restart local v7    # "selectablePos":I
    if-ne v7, v6, :cond_8

    .line 7672
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSyncPosition:I

    .line 7674
    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_c

    .line 7677
    iput v14, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    .line 7685
    :goto_2
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 7681
    :cond_c
    const/4 v8, 0x2

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    goto :goto_2

    .line 7693
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_1
    iput v14, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    .line 7694
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSyncPosition:I

    goto/16 :goto_0

    .line 7720
    .restart local v6    # "newPos":I
    .restart local v7    # "selectablePos":I
    :cond_d
    invoke-virtual {p0, v6, v12}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7721
    if-ltz v7, :cond_f

    .line 7722
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 7729
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_e
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mResurrectToPosition:I

    if-gez v10, :cond_2

    .line 7737
    :cond_f
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_10

    :goto_3
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    .line 7738
    iput v13, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedPosition:I

    .line 7739
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedRowId:J

    .line 7740
    iput v13, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNextSelectedPosition:I

    .line 7741
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNextSelectedRowId:J

    .line 7742
    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNeedSync:Z

    .line 7743
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;

    .line 7744
    iput v13, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorPosition:I

    .line 7745
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_10
    move v8, v9

    .line 7737
    goto :goto_3

    .line 7652
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 8180
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 7363
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 7364
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 7365
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedPosition:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mResurrectToPosition:I

    .line 7367
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 7368
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mResurrectToPosition:I

    .line 7370
    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setSelectedPositionInt(I)V

    .line 7371
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setNextSelectedPositionInt(I)V

    .line 7372
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedLeft:I

    .line 7374
    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 7419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataChanged:Z

    .line 7420
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->rememberSyncState()V

    .line 7421
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->requestLayout()V

    .line 7422
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate()V

    .line 7423
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2049
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 2050
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->onScroll(III)V

    .line 2052
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 2053
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;->onScroll(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;III)V

    .line 2055
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onScrollChanged(IIII)V

    .line 2056
    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1933
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    if-nez v2, :cond_2

    .line 1934
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScrollEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScrollAlwaysVisible:Z

    if-eqz v2, :cond_1

    .line 1936
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1934
    goto :goto_0

    .line 1936
    :cond_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->isAlwaysShowEnabled()Z

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
    .line 1956
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    if-nez v0, :cond_0

    .line 1957
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScrollEnabled:Z

    .line 1959
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 7860
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1439
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1440
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1443
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiFocusEnabled()Z
    .locals 1

    .prologue
    .line 10282
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    return v0
.end method

.method public isMultiWindows()Z
    .locals 2

    .prologue
    .line 2020
    const-string v0, "1"

    const-string v1, "sys.multiwindow.running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    .line 3267
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mGroupFlags:I

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
    .line 2165
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2032
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2242
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2212
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isTwHorizontalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 1990
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method protected isTwShowingScrollbar()Z
    .locals 1

    .prologue
    .line 6924
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->isTwShowingScrollbar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScrollEnabled:Z

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
    .line 6943
    const/4 v0, 0x1

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 3544
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->jumpDrawablesToCurrentState()V

    .line 3545
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3546
    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 3426
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3463
    :cond_0
    :goto_0
    return-void

    .line 3430
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3431
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3432
    .local v3, "selectorRect":Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3435
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedPosition:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3437
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 3438
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3439
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3441
    :cond_3
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setPressed(Z)V

    .line 3443
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isLongClickable()Z

    move-result v1

    .line 3444
    .local v1, "longClickable":Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3445
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 3446
    if-eqz v1, :cond_5

    .line 3447
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 3453
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataChanged:Z

    if-nez v5, :cond_0

    .line 3454
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_6

    .line 3455
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForKeyLongPress;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$1;)V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForKeyLongPress;

    .line 3459
    :goto_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 3460
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3450
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1

    .line 3457
    :cond_6
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 2802
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .prologue
    const-wide/16 v8, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2928
    const-string v7, "obtainView"

    invoke-static {v8, v9, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2930
    aput-boolean v10, p2, v10

    .line 2934
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    invoke-virtual {v7, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v4

    .line 2935
    .local v4, "transientView":Landroid/view/View;
    if-eqz v4, :cond_4

    .line 2936
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    .line 2939
    .local v2, "params":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    iget v7, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->viewType:I

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 2940
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2942
    .local v5, "updatedView":Landroid/view/View;
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapterHasStableIds:Z

    if-eqz v7, :cond_0

    .line 2943
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 2945
    .local v6, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v6, :cond_2

    .line 2946
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    .line 2952
    .local v1, "lp":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    :goto_0
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->itemId:J

    .line 2953
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2957
    .end local v1    # "lp":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    .end local v6    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    if-eq v5, v4, :cond_1

    .line 2958
    invoke-direct {p0, v5, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2959
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    invoke-virtual {v7, v5, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2964
    .end local v5    # "updatedView":Landroid/view/View;
    :cond_1
    aput-boolean v11, p2, v10

    .line 3009
    .end local v2    # "params":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    .end local v4    # "transientView":Landroid/view/View;
    :goto_1
    return-object v4

    .line 2947
    .restart local v2    # "params":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    .restart local v4    # "transientView":Landroid/view/View;
    .restart local v5    # "updatedView":Landroid/view/View;
    .restart local v6    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2948
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    .restart local v1    # "lp":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    goto :goto_0

    .end local v1    # "lp":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    :cond_3
    move-object v1, v6

    .line 2950
    check-cast v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    .restart local v1    # "lp":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    goto :goto_0

    .line 2968
    .end local v1    # "lp":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    .end local v2    # "params":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    .end local v5    # "updatedView":Landroid/view/View;
    .end local v6    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    invoke-virtual {v7, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v3

    .line 2969
    .local v3, "scrapView":Landroid/view/View;
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2970
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_5

    .line 2971
    const/4 v4, 0x0

    goto :goto_1

    .line 2973
    :cond_5
    if-eqz v3, :cond_7

    .line 2974
    if-eq v0, v3, :cond_c

    .line 2975
    invoke-virtual {v3}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2976
    invoke-virtual {v3}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 2977
    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 2980
    :cond_6
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    invoke-virtual {v7, v3, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2988
    :cond_7
    :goto_2
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCacheColorHint:I

    if-eqz v7, :cond_8

    .line 2989
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v7}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2992
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v7

    if-nez v7, :cond_9

    .line 2993
    invoke-virtual {v0, v11}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2996
    :cond_9
    invoke-direct {p0, v0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2998
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2999
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAccessibilityDelegate:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$ListItemAccessibilityDelegate;

    if-nez v7, :cond_a

    .line 3000
    new-instance v7, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$ListItemAccessibilityDelegate;

    invoke-direct {v7, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$ListItemAccessibilityDelegate;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    iput-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAccessibilityDelegate:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$ListItemAccessibilityDelegate;

    .line 3002
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v7

    if-nez v7, :cond_b

    .line 3003
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAccessibilityDelegate:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v0, v7}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 3007
    :cond_b
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    move-object v4, v0

    .line 3009
    goto :goto_1

    .line 2982
    :cond_c
    aput-boolean v11, p2, v10

    .line 2984
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_2
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 3550
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onAttachedToWindow()V

    .line 3552
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3553
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3556
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_0

    .line 3557
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3561
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_1

    .line 3562
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3565
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_2

    .line 3566
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    .line 3567
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3570
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataChanged:Z

    .line 3571
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOldItemCount:I

    .line 3572
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    .line 3575
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    if-eqz v1, :cond_3

    .line 3576
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getVerticalScrollbarPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setScrollbarPosition(I)V

    .line 3579
    :cond_3
    return-void
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    .prologue
    .line 3749
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onCancelPendingInputEvents()V

    .line 3750
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PerformClick;

    if-eqz v0, :cond_0

    .line 3751
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PerformClick;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3753
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForTap:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;

    if-eqz v0, :cond_1

    .line 3754
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForTap:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3756
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;

    if-eqz v0, :cond_2

    .line 3757
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3759
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForKeyLongPress;

    if-eqz v0, :cond_3

    .line 3760
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3762
    :cond_3
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .param p1, "extraSpace"    # I

    .prologue
    .line 3506
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 3508
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3534
    :cond_0
    :goto_0
    return-object v3

    .line 3514
    :cond_1
    sget-object v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 3519
    .local v1, "enabledState":I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3520
    .local v3, "state":[I
    const/4 v0, -0x1

    .line 3521
    .local v0, "enabledPos":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 3522
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 3523
    move v0, v2

    .line 3529
    :cond_2
    if-ltz v0, :cond_0

    .line 3530
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_0

    .line 3521
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 7955
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7956
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPublicInputConnection:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 7957
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 7958
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$InputConnectionWrapper;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPublicInputConnection:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$InputConnectionWrapper;

    .line 7960
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 7961
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7962
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPublicInputConnection:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$InputConnectionWrapper;

    .line 7964
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

    .line 3583
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onDetachedFromWindow()V

    .line 3585
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDetaching:Z

    .line 3588
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->dismissPopup()V

    .line 3591
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->clear()V

    .line 3593
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3594
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3595
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 3596
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3597
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3600
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 3601
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3602
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    .line 3605
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    .line 3606
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3607
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3610
    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    .line 3611
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3612
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 3615
    :cond_3
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 3616
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3619
    :cond_4
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    .line 3620
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 3623
    :cond_5
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 3624
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3627
    :cond_6
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PerformClick;

    if-eqz v1, :cond_7

    .line 3628
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PerformClick;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3631
    :cond_7
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 3632
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3633
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3636
    :cond_8
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    if-eq v1, v5, :cond_9

    .line 3637
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 3641
    :cond_9
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_a

    .line 3642
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3647
    :cond_a
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    if-eqz v1, :cond_b

    .line 3648
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    .line 3651
    :cond_b
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->releaseAllBoosters()V

    .line 3652
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDetaching:Z

    .line 3653
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    .prologue
    .line 7750
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onDisplayHint(I)V

    .line 7751
    sparse-switch p1, :sswitch_data_0

    .line 7763
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopupHidden:Z

    .line 7764
    return-void

    .line 7753
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7754
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->dismissPopup()V

    goto :goto_0

    .line 7758
    :sswitch_1
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7759
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->showPopup()V

    goto :goto_0

    .line 7763
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 7751
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
    .line 8284
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 8285
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mResurrectToPosition:I

    .line 8286
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->resurrectSelection()Z

    .line 8288
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2571
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2572
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2573
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataChanged:Z

    .line 2577
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOldItemCount:I

    .line 2578
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    .line 2580
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->resurrectSelection()Z

    .line 2582
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 6114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 6128
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 6116
    :pswitch_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 6117
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 6118
    .local v1, "hscroll":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 6119
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHorizontalScrollFactor()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 6120
    .local v0, "delta":I
    invoke-virtual {p0, v0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6121
    const/4 v2, 0x1

    goto :goto_0

    .line 6114
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 8185
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8187
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    .line 8188
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->showPopup()V

    .line 8197
    :cond_0
    :goto_0
    return-void

    .line 8192
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8193
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2079
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2080
    const-class v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2081
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x1

    .line 2085
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2086
    const-class v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2087
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2088
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 2089
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2090
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2092
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 2093
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2094
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2097
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

    .line 3111
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 3112
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    if-nez v0, :cond_1

    .line 3138
    :cond_0
    :goto_0
    return-void

    .line 3117
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3118
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    goto :goto_0

    .line 3122
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getSelectedItemPosition()I

    move-result v1

    if-ne p2, v1, :cond_5

    .line 3123
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 3124
    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3129
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3130
    const/16 v1, 0x10

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3131
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 3134
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3135
    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3136
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    goto :goto_0

    .line 3126
    :cond_5
    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6285
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6286
    const/4 v0, 0x1

    .line 6289
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

    .line 6294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 6297
    .local v0, "actionMasked":I
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    if-eqz v9, :cond_0

    .line 6298
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 6301
    :cond_0
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDetaching:Z

    if-nez v9, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isAttachedToWindow()Z

    move-result v9

    if-nez v9, :cond_3

    :cond_1
    move v7, v8

    .line 6383
    :cond_2
    :goto_0
    return v7

    .line 6309
    :cond_3
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    invoke-virtual {v9, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 6313
    :cond_4
    packed-switch v0, :pswitch_data_0

    :cond_5
    :goto_1
    :pswitch_0
    move v7, v8

    .line 6383
    goto :goto_0

    .line 6315
    :pswitch_1
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 6316
    .local v3, "touchMode":I
    const/4 v9, 0x6

    if-eq v3, v9, :cond_6

    const/4 v9, 0x5

    if-ne v3, v9, :cond_7

    .line 6317
    :cond_6
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionCorrection:I

    goto :goto_0

    .line 6321
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 6322
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 6323
    .local v6, "y":I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mActivePointerId:I

    .line 6325
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->findMotionRow(I)I

    move-result v1

    .line 6326
    .local v1, "motionPosition":I
    if-eq v3, v11, :cond_8

    if-ltz v1, :cond_8

    .line 6329
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    sub-int v9, v1, v9

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6330
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionViewOriginalLeft:I

    .line 6331
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionX:I

    .line 6332
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionY:I

    .line 6333
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    .line 6334
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 6335
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->clearScrollingCache()V

    .line 6337
    .end local v4    # "v":Landroid/view/View;
    :cond_8
    const/high16 v9, -0x80000000

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastX:I

    .line 6338
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->initOrResetVelocityTracker()V

    .line 6339
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6340
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNestedXOffset:I

    .line 6341
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->startNestedScroll(I)Z

    .line 6342
    if-ne v3, v11, :cond_5

    goto :goto_0

    .line 6349
    .end local v1    # "motionPosition":I
    .end local v3    # "touchMode":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_2
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    packed-switch v9, :pswitch_data_1

    goto :goto_1

    .line 6351
    :pswitch_3
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 6352
    .local v2, "pointerIndex":I
    if-ne v2, v10, :cond_9

    .line 6353
    const/4 v2, 0x0

    .line 6354
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mActivePointerId:I

    .line 6356
    :cond_9
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v5, v9

    .line 6357
    .restart local v5    # "x":I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->initVelocityTrackerIfNotExists()V

    .line 6358
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6359
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    const/4 v10, 0x0

    invoke-direct {p0, v5, v9, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto/16 :goto_0

    .line 6369
    .end local v2    # "pointerIndex":I
    .end local v5    # "x":I
    :pswitch_4
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 6370
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mActivePointerId:I

    .line 6371
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->recycleVelocityTracker()V

    .line 6372
    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 6373
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->stopNestedScroll()V

    goto/16 :goto_1

    .line 6378
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 6313
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

    .line 6349
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method onJumpScrollToTopFinished()V
    .locals 2

    .prologue
    .line 5930
    const-string v0, "TwHorizontalAbsListView"

    const-string v1, "onJumpScrollToTopFinished()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5931
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 3976
    sparse-switch p1, :sswitch_data_0

    .line 3991
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 3979
    :sswitch_0
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_0

    .line 3983
    :sswitch_1
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    .line 3986
    :sswitch_2
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    if-ne v0, v1, :cond_0

    .line 3987
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->resetPressItemListArray()V

    goto :goto_0

    .line 3976
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

    .line 3996
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedPosition:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3997
    .local v1, "selectedview":Landroid/view/View;
    const/4 v0, 0x0

    .line 3999
    .local v0, "currentview":Landroid/view/View;
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4000
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4080
    :goto_0
    return v3

    .line 4003
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedPosition:I

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedPosition:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 4007
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedPosition:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4008
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 4009
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedPosition:I

    iget-wide v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v2, v4, v6, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 4010
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 4012
    :cond_1
    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setPressed(Z)V

    goto :goto_0

    .line 4017
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 4080
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 4023
    :sswitch_0
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsShiftkeyPressed:Z

    if-ne v4, v3, :cond_4

    .line 4024
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOldKeyCode:I

    if-nez v4, :cond_6

    .line 4025
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOldKeyCode:I

    .line 4031
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedPosition:I

    if-ltz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedPosition:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 4035
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCurrentFocusPosition:I

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4037
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsShiftkeyPressed:Z

    if-ne v4, v3, :cond_5

    if-eqz v1, :cond_5

    .line 4038
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCurrentKeyCode:I

    if-nez v3, :cond_7

    .line 4039
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->resetPressItemListArray()V

    .line 4040
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCurrentFocusPosition:I

    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 4041
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedPosition:I

    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 4044
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCurrentFocusPosition:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedPosition:I

    invoke-direct {p0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->addToPressItemListArray(II)V

    .line 4045
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCurrentFocusPosition:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPressedPoint:I

    .line 4054
    :cond_5
    :goto_3
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCurrentKeyCode:I

    if-eqz v3, :cond_3

    .line 4055
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCurrentKeyCode:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOldKeyCode:I

    goto :goto_1

    .line 4027
    :cond_6
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCurrentKeyCode:I

    goto :goto_2

    .line 4047
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->resetPressItemListArray()V

    .line 4048
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedPosition:I

    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 4050
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPressedPoint:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedPosition:I

    invoke-direct {p0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->addToPressItemListArray(II)V

    goto :goto_3

    .line 4062
    :sswitch_1
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_1

    .line 4066
    :sswitch_2
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsShiftkeyPressed:Z

    .line 4067
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOldKeyCode:I

    .line 4068
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCurrentKeyCode:I

    .line 4069
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPressedPoint:I

    .line 4070
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSecondPressedPoint:I

    goto :goto_1

    .line 4073
    :sswitch_3
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    if-ne v4, v3, :cond_3

    .line 4074
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->resetPressItemListArray()V

    goto/16 :goto_1

    .line 4017
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1f -> :sswitch_3
        0x3b -> :sswitch_2
        0x3c -> :sswitch_2
        0x71 -> :sswitch_1
        0x72 -> :sswitch_1
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
    .line 2755
    invoke-super/range {p0 .. p5}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onLayout(ZIIII)V

    .line 2757
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mInLayout:Z

    .line 2759
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 2760
    .local v0, "childCount":I
    if-eqz p1, :cond_1

    .line 2761
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2762
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 2761
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2764
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->markChildrenDirty()V

    .line 2767
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->layoutChildren()V

    .line 2768
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mInLayout:Z

    .line 2770
    sub-int v2, p4, p2

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOverscrollMax:I

    .line 2773
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    if-eqz v2, :cond_2

    .line 2774
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->onItemCountChanged(II)V

    .line 2776
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x1

    .line 2729
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 2730
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->useDefaultSelector()V

    .line 2732
    :cond_0
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 2733
    .local v3, "listPadding":Landroid/graphics/Rect;
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectionLeftPadding:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->left:I

    .line 2734
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectionTopPadding:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingTop:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->top:I

    .line 2735
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectionRightPadding:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingRight:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->right:I

    .line 2736
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectionBottomPadding:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingBottom:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 2739
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTranscriptMode:I

    if-ne v6, v5, :cond_1

    .line 2740
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 2741
    .local v0, "childCount":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getPaddingRight()I

    move-result v7

    sub-int v4, v6, v7

    .line 2742
    .local v4, "listRight":I
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2743
    .local v1, "lastChild":Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 2744
    .local v2, "lastRight":I
    :goto_0
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v6, v0

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastHandledItemCount:I

    if-lt v6, v7, :cond_3

    if-gt v2, v4, :cond_3

    :goto_1
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mForceTranscriptScroll:Z

    .line 2747
    .end local v0    # "childCount":I
    .end local v1    # "lastChild":Landroid/view/View;
    .end local v2    # "lastRight":I
    .end local v4    # "listRight":I
    :cond_1
    return-void

    .restart local v0    # "childCount":I
    .restart local v1    # "lastChild":Landroid/view/View;
    .restart local v4    # "listRight":I
    :cond_2
    move v2, v4

    .line 2743
    goto :goto_0

    .line 2744
    .restart local v2    # "lastRight":I
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
    .line 6188
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 6189
    .local v0, "childCount":I
    if-nez p4, :cond_2

    if-lez v0, :cond_2

    float-to-int v1, p2

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMinimumVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 6191
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 6192
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 6193
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    .line 6195
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6196
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    float-to-int v2, p2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->start(I)V

    .line 6198
    :cond_1
    const/4 v1, 0x1

    .line 6200
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->dispatchNestedFling(FFZ)Z

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
    const/4 v2, 0x0

    .line 6172
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 6173
    .local v6, "motionIndex":I
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 6174
    .local v7, "motionView":Landroid/view/View;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 6175
    .local v8, "oldLeft":I
    :goto_0
    if-eqz v7, :cond_0

    neg-int v0, p4

    neg-int v4, p4

    invoke-virtual {p0, v0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6176
    :cond_0
    move v3, p4

    .line 6177
    .local v3, "myUnconsumed":I
    const/4 v1, 0x0

    .line 6178
    .local v1, "myConsumed":I
    if-eqz v7, :cond_1

    .line 6179
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v1, v0, v8

    .line 6180
    sub-int/2addr v3, v1

    .line 6182
    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->dispatchNestedScroll(IIII[I)Z

    .line 6184
    .end local v1    # "myConsumed":I
    .end local v3    # "myUnconsumed":I
    :cond_2
    return-void

    .end local v8    # "oldLeft":I
    :cond_3
    move v8, v2

    .line 6174
    goto :goto_0
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 6162
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 6163
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->startNestedScroll(I)Z

    .line 6164
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 6102
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    if-eq v0, p1, :cond_0

    .line 6103
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollY:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollY:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onScrollChanged(IIII)V

    .line 6104
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    .line 6105
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidateParentIfNeeded()V

    .line 6107
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->awakenScrollBars()Z

    .line 6109
    :cond_0
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 8467
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eq v1, v2, :cond_1

    .line 8468
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8469
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v1, :cond_0

    .line 8470
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 8471
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 8478
    :cond_0
    :goto_0
    return v0

    .line 8474
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_0

    .line 8475
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->twSuperNotifyDataSetChanged()V

    .line 8476
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .prologue
    .line 8491
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 2467
    instance-of v2, p1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;

    if-eqz v2, :cond_4

    move-object v0, p1

    .line 2468
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;

    .line 2480
    .local v0, "ss":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;
    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2481
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataChanged:Z

    .line 2483
    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->width:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSyncHeight:J

    .line 2485
    iget-wide v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->selectedId:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_6

    .line 2486
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNeedSync:Z

    .line 2487
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;

    .line 2488
    iget-wide v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->selectedId:J

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSyncRowId:J

    .line 2489
    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->position:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSyncPosition:I

    .line 2490
    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->viewLeft:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSpecificTop:I

    .line 2491
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSyncMode:I

    .line 2505
    :cond_0
    :goto_1
    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setFilterText(Ljava/lang/String;)V

    .line 2507
    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_1

    .line 2508
    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2511
    :cond_1
    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_2

    .line 2512
    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2515
    :cond_2
    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->checkedItemCount:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedItemCount:I

    .line 2517
    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->inActionMode:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;

    if-eqz v2, :cond_3

    .line 2519
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2522
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->requestLayout()V

    .line 2523
    .end local v0    # "ss":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;
    :goto_2
    return-void

    .line 2469
    :cond_4
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_5

    move-object v1, p1

    .line 2470
    check-cast v1, Landroid/os/Bundle;

    .line 2471
    .local v1, "wrappedSavedState":Landroid/os/Bundle;
    const-class v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2472
    const-string v2, "com.sec.android.touchwiz.widget.TwHorizontalAbsListView.SavedState"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;

    .line 2473
    .restart local v0    # "ss":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;
    goto :goto_0

    .line 2475
    .end local v0    # "ss":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;
    .end local v1    # "wrappedSavedState":Landroid/os/Bundle;
    :cond_5
    const-string v2, "TwHorizontalAbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TwHorizontalAbsListView.onRestoreInstanceState() is of neither SavedState type nor Bundle type, but of "

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

    .line 2476
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_2

    .line 2492
    .restart local v0    # "ss":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;
    :cond_6
    iget-wide v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->firstId:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    .line 2493
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setSelectedPositionInt(I)V

    .line 2495
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setNextSelectedPositionInt(I)V

    .line 2496
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorPosition:I

    .line 2497
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNeedSync:Z

    .line 2498
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;

    .line 2499
    iget-wide v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSyncRowId:J

    .line 2500
    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->position:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSyncPosition:I

    .line 2501
    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->viewLeft:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSpecificTop:I

    .line 2502
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSyncMode:I

    goto/16 :goto_1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 3726
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onRtlPropertiesChanged(I)V

    .line 3727
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 3728
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getTwHorizontalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setScrollbarPosition(I)V

    .line 3730
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 18

    .prologue
    .line 2366
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->dismissPopup()V

    .line 2368
    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v11

    .line 2370
    .local v11, "superState":Landroid/os/Parcelable;
    new-instance v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;

    invoke-direct {v10, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2372
    .local v10, "ss":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;

    if-eqz v15, :cond_0

    .line 2374
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;

    iget-wide v0, v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->selectedId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->selectedId:J

    .line 2375
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;

    iget-wide v0, v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->firstId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->firstId:J

    .line 2376
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;

    iget v15, v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->viewLeft:I

    iput v15, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->viewLeft:I

    .line 2377
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;

    iget v15, v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->position:I

    iput v15, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->position:I

    .line 2378
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;

    iget v15, v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->width:I

    iput v15, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->width:I

    .line 2379
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v15, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2380
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;

    iget-boolean v15, v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->inActionMode:Z

    iput-boolean v15, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->inActionMode:Z

    .line 2381
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;

    iget v15, v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->checkedItemCount:I

    iput v15, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->checkedItemCount:I

    .line 2382
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v15, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2383
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v15, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2460
    .end local v10    # "ss":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;
    :goto_0
    return-object v10

    .line 2387
    .restart local v10    # "ss":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v15

    if-lez v15, :cond_3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    if-lez v15, :cond_3

    const/4 v5, 0x1

    .line 2388
    .local v5, "haveChildren":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getSelectedItemId()J

    move-result-wide v8

    .line 2389
    .local v8, "selectedId":J
    iput-wide v8, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->selectedId:J

    .line 2390
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v15

    iput v15, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->width:I

    .line 2392
    const-wide/16 v16, 0x0

    cmp-long v15, v8, v16

    if-ltz v15, :cond_4

    .line 2394
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedLeft:I

    iput v15, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->viewLeft:I

    .line 2395
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getSelectedItemPosition()I

    move-result v15

    iput v15, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->position:I

    .line 2396
    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->firstId:J

    .line 2423
    :goto_2
    const/4 v15, 0x0

    iput-object v15, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2424
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFiltered:Z

    if-eqz v15, :cond_1

    .line 2425
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 2426
    .local v12, "textFilter":Landroid/widget/EditText;
    if-eqz v12, :cond_1

    .line 2427
    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 2428
    .local v3, "filterText":Landroid/text/Editable;
    if-eqz v3, :cond_1

    .line 2429
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2434
    .end local v3    # "filterText":Landroid/text/Editable;
    .end local v12    # "textFilter":Landroid/widget/EditText;
    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v15, :cond_7

    const/4 v15, 0x1

    :goto_3
    iput-boolean v15, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->inActionMode:Z

    .line 2436
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v15, :cond_2

    .line 2437
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v15

    iput-object v15, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2439
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v15, :cond_9

    .line 2440
    new-instance v7, Landroid/util/LongSparseArray;

    invoke-direct {v7}, Landroid/util/LongSparseArray;-><init>()V

    .line 2441
    .local v7, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v15}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .line 2442
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    if-ge v6, v2, :cond_8

    .line 2443
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v15, v6}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v15, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2442
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 2387
    .end local v2    # "count":I
    .end local v5    # "haveChildren":Z
    .end local v6    # "i":I
    .end local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v8    # "selectedId":J
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2398
    .restart local v5    # "haveChildren":Z
    .restart local v8    # "selectedId":J
    :cond_4
    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    if-lez v15, :cond_6

    .line 2408
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 2409
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v15

    iput v15, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->viewLeft:I

    .line 2410
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    .line 2411
    .local v4, "firstPos":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    if-lt v4, v15, :cond_5

    .line 2412
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    add-int/lit8 v4, v15, -0x1

    .line 2414
    :cond_5
    iput v4, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->position:I

    .line 2415
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->firstId:J

    goto/16 :goto_2

    .line 2417
    .end local v4    # "firstPos":I
    .end local v13    # "v":Landroid/view/View;
    :cond_6
    const/4 v15, 0x0

    iput v15, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->viewLeft:I

    .line 2418
    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->firstId:J

    .line 2419
    const/4 v15, 0x0

    iput v15, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->position:I

    goto/16 :goto_2

    .line 2434
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2445
    .restart local v2    # "count":I
    .restart local v6    # "i":I
    .restart local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_8
    iput-object v7, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2447
    .end local v2    # "count":I
    .end local v6    # "i":I
    .end local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedItemCount:I

    iput v15, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->checkedItemCount:I

    .line 2449
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v15, :cond_a

    .line 2450
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v15}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    .line 2457
    :cond_a
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 2458
    .local v14, "wrappedSavedState":Landroid/os/Bundle;
    const-string v15, "com.sec.android.touchwiz.widget.TwHorizontalAbsListView.SavedState"

    invoke-virtual {v14, v15, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object v10, v14

    .line 2460
    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 3292
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataChanged:Z

    .line 3294
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->rememberSyncState()V

    .line 3297
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    if-eqz v0, :cond_1

    .line 3298
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->onSizeChanged(IIII)V

    .line 3300
    :cond_1
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 6154
    and-int/lit8 v0, p3, 0x1

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

    .line 8234
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8235
    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->createTextFilter(Z)V

    .line 8236
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 8237
    .local v1, "length":I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 8238
    .local v2, "showing":Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 8240
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->showPopup()V

    .line 8241
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFiltered:Z

    .line 8247
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 8248
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 8250
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 8251
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 8258
    .end local v0    # "f":Landroid/widget/Filter;
    .end local v1    # "length":I
    .end local v2    # "showing":Z
    :cond_1
    return-void

    .line 8242
    .restart local v1    # "length":I
    .restart local v2    # "showing":Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 8244
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->dismissPopup()V

    .line 8245
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFiltered:Z

    goto :goto_0

    .line 8253
    .restart local v0    # "f":Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 5462
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_2

    .line 5465
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isClickable()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isLongClickable()Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    move v9, v10

    .line 5564
    :cond_1
    :goto_0
    return v9

    .line 5468
    :cond_2
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    if-eqz v11, :cond_3

    .line 5469
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 5472
    :cond_3
    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDetaching:Z

    if-nez v11, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isAttachedToWindow()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 5480
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->startNestedScroll(I)Z

    .line 5482
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    if-eqz v11, :cond_4

    .line 5483
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    invoke-virtual {v11, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 5484
    .local v4, "intercepted":Z
    if-eqz v4, :cond_4

    move v9, v10

    .line 5485
    goto :goto_0

    .line 5489
    .end local v4    # "intercepted":Z
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->initVelocityTrackerIfNotExists()V

    .line 5490
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 5492
    .local v6, "vtev":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 5493
    .local v0, "actionMasked":I
    if-nez v0, :cond_5

    .line 5494
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNestedXOffset:I

    .line 5496
    :cond_5
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNestedXOffset:I

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 5497
    packed-switch v0, :pswitch_data_0

    .line 5560
    :cond_6
    :goto_1
    :pswitch_0
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_7

    .line 5561
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5563
    :cond_7
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    move v9, v10

    .line 5564
    goto :goto_0

    .line 5499
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 5504
    :pswitch_2
    invoke-direct {p0, p1, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 5509
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 5514
    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onTouchCancel()V

    goto :goto_1

    .line 5519
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 5520
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionX:I

    .line 5521
    .local v7, "x":I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionY:I

    .line 5522
    .local v8, "y":I
    invoke-virtual {p0, v7, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->pointToPosition(II)I

    move-result v5

    .line 5523
    .local v5, "motionPosition":I
    if-ltz v5, :cond_8

    .line 5525
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5526
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionViewOriginalLeft:I

    .line 5527
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    .line 5528
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v9

    if-nez v9, :cond_6

    .line 5529
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->layoutChildren()V

    goto :goto_1

    .line 5532
    .end local v1    # "child":Landroid/view/View;
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->layoutChildren()V

    goto :goto_1

    .line 5540
    .end local v5    # "motionPosition":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 5541
    .local v3, "index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 5542
    .local v2, "id":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    float-to-int v7, v11

    .line 5543
    .restart local v7    # "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    float-to-int v8, v11

    .line 5544
    .restart local v8    # "y":I
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionCorrection:I

    .line 5545
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mActivePointerId:I

    .line 5546
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionX:I

    .line 5547
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionY:I

    .line 5548
    invoke-virtual {p0, v7, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->pointToPosition(II)I

    move-result v5

    .line 5549
    .restart local v5    # "motionPosition":I
    if-ltz v5, :cond_9

    .line 5551
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5552
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionViewOriginalLeft:I

    .line 5553
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    .line 5555
    .end local v1    # "child":Landroid/view/View;
    :cond_9
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastX:I

    goto/16 :goto_1

    .line 5497
    nop

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
    .line 4447
    if-eqz p1, :cond_2

    .line 4449
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->hideSelector()V

    .line 4453
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 4456
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->layoutChildren()V

    .line 4458
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->updateSelectorState()V

    .line 4477
    :cond_1
    :goto_0
    return-void

    .line 4460
    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 4461
    .local v0, "touchMode":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 4462
    :cond_3
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 4463
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 4465
    :cond_4
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    .line 4466
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 4469
    :cond_5
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    if-eqz v1, :cond_1

    .line 4470
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    .line 4471
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidateParentCaches()V

    .line 4472
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->finishGlows()V

    .line 4473
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate()V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 9879
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 9880
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverPosition:I

    .line 9882
    if-nez p2, :cond_0

    .line 9886
    :goto_0
    return-void

    .line 9884
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->releaseAllBoosters()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3657
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onWindowFocusChanged(Z)V

    .line 3662
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHasWindowFocusForMotion:Z

    .line 3664
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 3666
    .local v0, "touchMode":I
    :goto_0
    if-nez p1, :cond_6

    .line 3667
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 3668
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    if-eqz v3, :cond_1

    .line 3669
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3672
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 3673
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    if-eqz v3, :cond_0

    .line 3674
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 3676
    :cond_0
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollY:I

    if-eqz v3, :cond_1

    .line 3677
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollY:I

    .line 3678
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidateParentCaches()V

    .line 3679
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->finishGlows()V

    .line 3680
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate()V

    .line 3684
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->dismissPopup()V

    .line 3686
    if-ne v0, v2, :cond_2

    .line 3688
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedPosition:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mResurrectToPosition:I

    .line 3692
    :cond_2
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    if-eqz v2, :cond_3

    .line 3693
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    .line 3717
    :cond_3
    :goto_1
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastTouchMode:I

    .line 3719
    if-nez p1, :cond_4

    .line 3720
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->releaseAllBoosters()V

    .line 3722
    :cond_4
    return-void

    .end local v0    # "touchMode":I
    :cond_5
    move v0, v2

    .line 3664
    goto :goto_0

    .line 3696
    .restart local v0    # "touchMode":I
    :cond_6
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFiltered:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopupHidden:Z

    if-nez v3, :cond_7

    .line 3698
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->showPopup()V

    .line 3702
    :cond_7
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_3

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 3704
    if-ne v0, v2, :cond_8

    .line 3706
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->resurrectSelection()Z

    goto :goto_1

    .line 3710
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->hideSelector()V

    .line 3711
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    .line 3712
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->layoutChildren()V

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

    .line 2116
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2135
    :goto_0
    return v1

    .line 2119
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v1, v2

    .line 2135
    goto :goto_0

    .line 2121
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 2122
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    .line 2123
    .local v0, "viewportWidth":I
    invoke-virtual {p0, v0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v0    # "viewportWidth":I
    :cond_1
    move v1, v2

    .line 2126
    goto :goto_0

    .line 2128
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    if-lez v3, :cond_2

    .line 2129
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    .line 2130
    .restart local v0    # "viewportWidth":I
    neg-int v2, v0

    invoke-virtual {p0, v2, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v0    # "viewportWidth":I
    :cond_2
    move v1, v2

    .line 2133
    goto :goto_0

    .line 2119
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

    .line 1596
    const/4 v8, 0x0

    .line 1597
    .local v8, "handled":Z
    const/4 v9, 0x0

    .line 1598
    .local v9, "handledNotifykeyPress":Z
    const/4 v7, 0x1

    .line 1600
    .local v7, "dispatchItemClick":Z
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    if-eqz v3, :cond_f

    .line 1601
    const/4 v8, 0x1

    .line 1602
    const/4 v0, 0x0

    .line 1604
    .local v0, "checkedStateChanged":Z
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_9

    .line 1606
    :cond_0
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_6

    move v6, v1

    .line 1607
    .local v6, "checked":Z
    :goto_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1608
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1609
    if-eqz v6, :cond_7

    .line 1610
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1615
    :cond_1
    :goto_1
    if-eqz v6, :cond_8

    .line 1616
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedItemCount:I

    .line 1620
    :goto_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 1621
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1623
    const/4 v7, 0x0

    .line 1625
    :cond_2
    const/4 v0, 0x1

    .line 1642
    .end local v6    # "checked":Z
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 1643
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->updateOnScreenCheckedViews()V

    .line 1653
    .end local v0    # "checkedStateChanged":Z
    :cond_4
    :goto_4
    if-eqz v7, :cond_5

    .line 1654
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    or-int/2addr v8, v1

    .line 1657
    :cond_5
    return v8

    .restart local v0    # "checkedStateChanged":Z
    :cond_6
    move v6, v2

    .line 1606
    goto :goto_0

    .line 1612
    .restart local v6    # "checked":Z
    :cond_7
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1618
    :cond_8
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1626
    .end local v6    # "checked":Z
    :cond_9
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    if-ne v3, v1, :cond_3

    .line 1627
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_c

    move v6, v1

    .line 1628
    .restart local v6    # "checked":Z
    :goto_5
    if-eqz v6, :cond_d

    .line 1629
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1630
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1631
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1632
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1633
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1635
    :cond_a
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedItemCount:I

    .line 1639
    :cond_b
    :goto_6
    const/4 v0, 0x1

    goto :goto_3

    .end local v6    # "checked":Z
    :cond_c
    move v6, v2

    .line 1627
    goto :goto_5

    .line 1636
    .restart local v6    # "checked":Z
    :cond_d
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1637
    :cond_e
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_6

    .line 1645
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

    .line 3901
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_2

    .line 3902
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 3905
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    .line 3906
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDragBlockEnabled:Z

    .line 3908
    :cond_0
    invoke-virtual {p0, p2, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setItemChecked(IZ)V

    .line 3909
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->performHapticFeedback(I)Z

    .line 3926
    :cond_1
    :goto_0
    return v6

    .line 3914
    :cond_2
    const/4 v6, 0x0

    .line 3915
    .local v6, "handled":Z
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_3

    .line 3916
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3919
    :cond_3
    if-nez v6, :cond_4

    .line 3920
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3921
    invoke-super {p0, p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3923
    :cond_4
    if-eqz v6, :cond_1

    .line 3924
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 4098
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4099
    .local v4, "frame":Landroid/graphics/Rect;
    if-nez v4, :cond_0

    .line 4100
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4101
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4103
    :cond_0
    instance-of v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    if-eqz v6, :cond_3

    move-object v6, p0

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    iget v2, v6, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    .line 4104
    .local v2, "dividerHeight":I
    :goto_0
    if-lez v2, :cond_1

    move-object v6, p0

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    .line 4106
    .local v3, "drawDividers":Z
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v1

    .line 4107
    .local v1, "count":I
    add-int/lit8 v5, v1, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_5

    .line 4108
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4109
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    .line 4110
    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 4111
    if-eqz v3, :cond_2

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 4113
    :cond_2
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4114
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v6, v5

    .line 4118
    .end local v0    # "child":Landroid/view/View;
    :goto_2
    return v6

    .end local v1    # "count":I
    .end local v2    # "dividerHeight":I
    .end local v3    # "drawDividers":Z
    .end local v5    # "i":I
    :cond_3
    move v2, v3

    .line 4103
    goto :goto_0

    .line 4107
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "count":I
    .restart local v2    # "dividerHeight":I
    .restart local v3    # "drawDividers":Z
    .restart local v5    # "i":I
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 4118
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
    .line 4131
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->pointToPosition(II)I

    move-result v0

    .line 4132
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 4133
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 4135
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

    .line 3176
    if-eq p1, v7, :cond_0

    .line 3177
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorPosition:I

    .line 3180
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3181
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

    .line 3182
    instance-of v3, p2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SelectionBoundsAdjuster;

    if-eqz v3, :cond_1

    move-object v3, p2

    .line 3183
    check-cast v3, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SelectionBoundsAdjuster;

    invoke-interface {v3, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 3187
    :cond_1
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectionLeftPadding:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 3188
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectionTopPadding:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 3189
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 3190
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectionBottomPadding:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 3193
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3194
    .local v1, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 3195
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3198
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsChildViewEnabled:Z

    .line 3199
    .local v0, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eq v3, v0, :cond_3

    .line 3200
    if-nez v0, :cond_4

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsChildViewEnabled:Z

    .line 3201
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getSelectedItemPosition()I

    move-result v3

    if-eq v3, v7, :cond_3

    .line 3202
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->refreshDrawableState()V

    .line 3205
    :cond_3
    return-void

    .line 3200
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

    .line 3157
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3158
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorPosition:I

    if-eq v7, p1, :cond_2

    const/4 v7, -0x1

    if-eq p1, v7, :cond_2

    move v1, v5

    .line 3160
    .local v1, "manageState":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 3161
    invoke-virtual {v2, v6, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3164
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 3166
    if-eqz v1, :cond_1

    .line 3167
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3168
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    .line 3169
    .local v3, "x":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    .line 3170
    .local v4, "y":F
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    :goto_1
    invoke-virtual {v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3171
    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3173
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_1
    return-void

    .end local v1    # "manageState":Z
    :cond_2
    move v1, v6

    .line 3158
    goto :goto_0

    .restart local v0    # "bounds":Landroid/graphics/Rect;
    .restart local v1    # "manageState":Z
    .restart local v3    # "x":F
    .restart local v4    # "y":F
    :cond_3
    move v5, v6

    .line 3170
    goto :goto_1
.end method

.method positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 3144
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    .line 3146
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3147
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3149
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
    .line 8385
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v1

    .line 8386
    .local v1, "childCount":I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecyclerListener;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->access$5200(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;)Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecyclerListener;

    move-result-object v3

    .line 8389
    .local v3, "listener":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8390
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8391
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    .line 8393
    .local v4, "lp":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    iget v6, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8394
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8395
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 8396
    if-eqz v3, :cond_0

    .line 8398
    invoke-interface {v3, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 8389
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8402
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 8403
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeAllViewsInLayout()V

    .line 8404
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 7382
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedPosition:I

    .line 7383
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 7384
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mResurrectToPosition:I

    .line 7386
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7387
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 7388
    return v0
.end method

.method public registerDoubleTapMotion()V
    .locals 1

    .prologue
    .line 1045
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->registerMotionListener()V

    .line 1046
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setMotionEvent(Z)V

    .line 1047
    return-void
.end method

.method public registerTiltMotion()V
    .locals 0

    .prologue
    .line 1081
    return-void
.end method

.method rememberSyncState()V
    .locals 0

    .prologue
    .line 10602
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->rememberSyncStateHorizontal()V

    .line 10603
    return-void
.end method

.method removePendingCallbacks()V
    .locals 2

    .prologue
    .line 5957
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 5958
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 5959
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForTap:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5960
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5962
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 5963
    return-void
.end method

.method reportScrollStateChange(I)V
    .locals 8
    .param p1, "newState"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 6437
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_8

    .line 6439
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    if-ne v0, v7, :cond_2

    .line 6440
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDVFSCookie:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 6442
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDVFSCookie:I

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

    .line 6446
    :goto_0
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDVFSCookie:I

    .line 6448
    :cond_1
    invoke-static {v5}, Landroid/os/DVFSHelper;->onScrollEvent(Z)V

    .line 6449
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDVFSLockAcquired:Z

    .line 6451
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    if-eq v0, v7, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwScrollingByScrollbar:Z

    if-nez v0, :cond_7

    .line 6452
    if-eqz p1, :cond_5

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastScrollState:I

    if-nez v0, :cond_5

    .line 6454
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDVFSCookie:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    .line 6456
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDVFSCookie:I

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

    .line 6460
    :goto_1
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDVFSCookie:I

    .line 6462
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->methodPauseGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    .line 6464
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->methodPauseGc:Ljava/lang/reflect/Method;

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

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDVFSCookie:I
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    .line 6469
    :cond_4
    :goto_2
    invoke-static {v6}, Landroid/os/DVFSHelper;->onScrollEvent(Z)V

    .line 6470
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDVFSLockAcquired:Z

    .line 6472
    :cond_5
    if-nez p1, :cond_7

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastScrollState:I

    if-eqz v0, :cond_7

    .line 6474
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_7

    .line 6475
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDVFSCookie:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    .line 6477
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDVFSCookie:I

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

    .line 6481
    :goto_3
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDVFSCookie:I

    .line 6483
    :cond_6
    invoke-static {v5}, Landroid/os/DVFSHelper;->onScrollEvent(Z)V

    .line 6484
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDVFSLockAcquired:Z

    .line 6489
    :cond_7
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastScrollState:I

    .line 6490
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCstate:I

    if-eq v0, v7, :cond_8

    .line 6492
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;I)V

    .line 6495
    :cond_8
    return-void

    .line 6479
    :catch_0
    move-exception v0

    goto :goto_3

    .line 6478
    :catch_1
    move-exception v0

    goto :goto_3

    .line 6466
    :catch_2
    move-exception v0

    goto :goto_2

    .line 6465
    :catch_3
    move-exception v0

    goto :goto_2

    .line 6458
    :catch_4
    move-exception v0

    goto :goto_1

    .line 6457
    :catch_5
    move-exception v0

    goto :goto_1

    .line 6444
    :catch_6
    move-exception v0

    goto/16 :goto_0

    .line 6443
    :catch_7
    move-exception v0

    goto/16 :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 6277
    if-eqz p1, :cond_0

    .line 6278
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->recycleVelocityTracker()V

    .line 6280
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 6281
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2586
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 2587
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->requestLayout()V

    .line 2589
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 2260
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2261
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->resetList()V

    .line 2262
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->requestLayout()V

    .line 2263
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate()V

    .line 2265
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2595
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeAllViewsInLayout()V

    .line 2596
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    .line 2599
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 2600
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastPosition:I

    .line 2604
    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataChanged:Z

    .line 2605
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2606
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNeedSync:Z

    .line 2607
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingSync:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;

    .line 2608
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOldSelectedPosition:I

    .line 2609
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOldSelectedRowId:J

    .line 2610
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setSelectedPositionInt(I)V

    .line 2611
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setNextSelectedPositionInt(I)V

    .line 2612
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedLeft:I

    .line 2613
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorPosition:I

    .line 2614
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2615
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate()V

    .line 2616
    return-void
.end method

.method public resetPressItemListArray()V
    .locals 2

    .prologue
    .line 10342
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_1

    .line 10352
    :cond_0
    :goto_0
    return-void

    .line 10345
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 10347
    .local v0, "checkCount":I
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 10350
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 10351
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate()V

    goto :goto_0
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 7450
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v2

    .line 7452
    .local v2, "childCount":I
    if-gtz v2, :cond_0

    .line 7453
    const/16 v17, 0x0

    .line 7548
    :goto_0
    return v17

    .line 7456
    :cond_0
    const/4 v12, 0x0

    .line 7458
    .local v12, "selectedLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 7459
    .local v3, "childrenLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLeft:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 7460
    .local v4, "childrenRight":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    .line 7461
    .local v5, "firstPosition":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mResurrectToPosition:I

    .line 7462
    .local v15, "toPosition":I
    const/4 v10, 0x1

    .line 7464
    .local v10, "rightSide":Z
    if-lt v15, v5, :cond_4

    add-int v17, v5, v2

    move/from16 v0, v17

    if-ge v15, v0, :cond_4

    .line 7465
    move v13, v15

    .line 7467
    .local v13, "selectedPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 7468
    .local v11, "selected":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 7469
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v14

    .line 7472
    .local v14, "selectedRight":I
    if-ge v12, v3, :cond_3

    .line 7473
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v17

    add-int v12, v3, v17

    .line 7529
    .end local v11    # "selected":Landroid/view/View;
    .end local v14    # "selectedRight":I
    :cond_1
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mResurrectToPosition:I

    .line 7530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 7532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 7534
    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 7535
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->clearScrollingCache()V

    .line 7536
    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSpecificTop:I

    .line 7537
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->lookForSelectablePosition(IZ)I

    move-result v13

    .line 7538
    if-lt v13, v5, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v13, v0, :cond_c

    .line 7539
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    .line 7540
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->updateSelectorState()V

    .line 7541
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setSelectionInt(I)V

    .line 7542
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invokeOnItemScrollListener()V

    .line 7546
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 7548
    if-ltz v13, :cond_d

    const/16 v17, 0x1

    goto/16 :goto_0

    .line 7474
    .restart local v11    # "selected":Landroid/view/View;
    .restart local v14    # "selectedRight":I
    :cond_3
    if-le v14, v4, :cond_1

    .line 7475
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v18

    sub-int v12, v17, v18

    goto :goto_1

    .line 7479
    .end local v11    # "selected":Landroid/view/View;
    .end local v13    # "selectedPos":I
    .end local v14    # "selectedRight":I
    :cond_4
    if-ge v15, v5, :cond_8

    .line 7481
    move v13, v5

    .line 7482
    .restart local v13    # "selectedPos":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v2, :cond_1

    .line 7483
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 7484
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 7486
    .local v8, "left":I
    if-nez v6, :cond_6

    .line 7488
    move v12, v8

    .line 7490
    if-gtz v5, :cond_5

    if-ge v8, v3, :cond_6

    .line 7493
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v17

    add-int v3, v3, v17

    .line 7496
    :cond_6
    if-lt v8, v3, :cond_7

    .line 7498
    add-int v13, v5, v6

    .line 7499
    move v12, v8

    .line 7500
    goto/16 :goto_1

    .line 7482
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 7504
    .end local v6    # "i":I
    .end local v8    # "left":I
    .end local v13    # "selectedPos":I
    .end local v16    # "v":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    .line 7505
    .local v7, "itemCount":I
    const/4 v10, 0x0

    .line 7506
    add-int v17, v5, v2

    add-int/lit8 v13, v17, -0x1

    .line 7508
    .restart local v13    # "selectedPos":I
    add-int/lit8 v6, v2, -0x1

    .restart local v6    # "i":I
    :goto_4
    if-ltz v6, :cond_1

    .line 7509
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 7510
    .restart local v16    # "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 7511
    .restart local v8    # "left":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v9

    .line 7513
    .local v9, "right":I
    add-int/lit8 v17, v2, -0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_a

    .line 7514
    move v12, v8

    .line 7515
    add-int v17, v5, v2

    move/from16 v0, v17

    if-lt v0, v7, :cond_9

    if-le v9, v4, :cond_a

    .line 7516
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 7520
    :cond_a
    if-gt v9, v4, :cond_b

    .line 7521
    add-int v13, v5, v6

    .line 7522
    move v12, v8

    .line 7523
    goto/16 :goto_1

    .line 7508
    :cond_b
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 7544
    .end local v6    # "i":I
    .end local v7    # "itemCount":I
    .end local v8    # "left":I
    .end local v9    # "right":I
    .end local v16    # "v":Landroid/view/View;
    :cond_c
    const/4 v13, -0x1

    goto :goto_2

    .line 7548
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 1

    .prologue
    .line 7430
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7431
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->updateSelectorState()V

    .line 7432
    const/4 v0, 0x1

    .line 7434
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollListBy(I)V
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 7089
    neg-int v0, p1

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->trackMotionScroll(II)Z

    .line 7090
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    .line 2063
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_1

    .line 2064
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 2065
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getLastVisiblePosition()I

    move-result v1

    .line 2066
    .local v1, "lastVisiblePosition":I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    .line 2075
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :goto_0
    return-void

    .line 2070
    .restart local v0    # "firstVisiblePosition":I
    .restart local v1    # "lastVisiblePosition":I
    :cond_0
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 2071
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastAccessibilityScrollEventToIndex:I

    .line 2074
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

    .line 7872
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->acceptFilter()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v5

    .line 7947
    :cond_0
    :goto_0
    return v2

    .line 7876
    :cond_1
    const/4 v2, 0x0

    .line 7877
    .local v2, "handled":Z
    const/4 v3, 0x1

    .line 7878
    .local v3, "okToSend":Z
    sparse-switch p1, :sswitch_data_0

    .line 7910
    :goto_1
    if-eqz v3, :cond_0

    .line 7911
    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->createTextFilter(Z)V

    .line 7913
    move-object v1, p3

    .line 7914
    .local v1, "forwardEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 7915
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 7918
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 7919
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7921
    :pswitch_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7922
    if-eq p1, v10, :cond_3

    if-ne p1, v11, :cond_7

    .line 7923
    :cond_3
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    .line 7885
    .end local v0    # "action":I
    .end local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :sswitch_0
    const/4 v3, 0x0

    .line 7886
    goto :goto_1

    .line 7888
    :sswitch_1
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFiltered:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 7889
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_6

    .line 7891
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 7892
    .local v4, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_4

    .line 7893
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 7895
    :cond_4
    const/4 v2, 0x1

    .line 7902
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_5
    :goto_2
    const/4 v3, 0x0

    .line 7903
    goto :goto_1

    .line 7896
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

    .line 7898
    const/4 v2, 0x1

    .line 7899
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 7906
    :sswitch_2
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFiltered:Z

    goto :goto_1

    .line 7924
    .restart local v0    # "action":I
    .restart local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :cond_7
    const/16 v5, 0x71

    if-eq p1, v5, :cond_8

    const/16 v5, 0x72

    if-ne p1, v5, :cond_0

    .line 7925
    :cond_8
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_0

    .line 7930
    :pswitch_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v6, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7931
    if-eq p1, v10, :cond_9

    if-ne p1, v11, :cond_a

    .line 7932
    :cond_9
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsShiftkeyPressed:Z

    .line 7933
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOldKeyCode:I

    .line 7934
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCurrentKeyCode:I

    .line 7935
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPressedPoint:I

    .line 7936
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSecondPressedPoint:I

    goto/16 :goto_0

    .line 7937
    :cond_a
    const/16 v6, 0x71

    if-eq p1, v6, :cond_b

    const/16 v6, 0x72

    if-ne p1, v6, :cond_0

    .line 7938
    :cond_b
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_0

    .line 7943
    :pswitch_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 7878
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

    .line 7919
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
    .line 153
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 1385
    if-eqz p1, :cond_0

    .line 1386
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapterHasStableIds:Z

    .line 1387
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 1389
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1393
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 1394
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1397
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 1398
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1402
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    .line 1403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    .line 1404
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->resetPressItemListArray()V

    .line 1405
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOldAdapterItemCount:I

    .line 1408
    :cond_3
    return-void
.end method

.method public setAlwaysDisableHoverHighlight(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .prologue
    .line 5975
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAlwaysDisableHoverHighlight:Z

    .line 5976
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 8356
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 8357
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCacheColorHint:I

    .line 8358
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 8359
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8360
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 8359
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8362
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 8364
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

    .line 1723
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    .line 1724
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1725
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1726
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1728
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 1729
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 1730
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v3}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1732
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1733
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v3}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1736
    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v4, :cond_3

    .line 1737
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->clearChoices()V

    .line 1738
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setLongClickable(Z)V

    .line 1742
    :cond_3
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 1743
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDragBlockEnabled:Z

    .line 1750
    :cond_4
    :goto_0
    return-void

    .line 1744
    :cond_5
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v4, :cond_6

    .line 1745
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDragBlockEnabled:Z

    goto :goto_0

    .line 1746
    :cond_6
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v2, :cond_4

    .line 1747
    :cond_7
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDragBlockEnabled:Z

    goto :goto_0
.end method

.method public setCurrentOrientationModeForTiltMotion(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 1074
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "onTop"    # Z

    .prologue
    .line 3376
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDrawSelectorOnTop:Z

    .line 3377
    return-void
.end method

.method public setEnableDragBlock(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 10275
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDragBlockEnabled:Z

    .line 10276
    return-void
.end method

.method public setEnableHoverDrawable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1137
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoveringEnabled:Z

    .line 1138
    return-void
.end method

.method public setEnableMultiFocus(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 10268
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    .line 10269
    return-void
.end method

.method public setEnableOnclickInMultiSelectMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 10289
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsTwOnClickEnabled:Z

    .line 10290
    return-void
.end method

.method public setEnablePaddingInHoverScroll(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 4535
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 4536
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1892
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_1

    .line 1893
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    .line 1894
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setFastScrollEnabled(Z)V

    .line 1897
    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScrollAlwaysVisible:Z

    .line 1899
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1900
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    .line 1910
    :cond_1
    :goto_0
    return-void

    .line 1902
    :cond_2
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$2;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$2;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1832
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1833
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScrollEnabled:Z

    .line 1835
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1836
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setFastScrollerEnabledUiThread(Z)V

    .line 1846
    :cond_0
    :goto_0
    return-void

    .line 1838
    :cond_1
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollStyle(I)V
    .locals 1
    .param p1, "styleResId"    # I

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    if-nez v0, :cond_0

    .line 1871
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScrollStyle:I

    .line 1875
    :goto_0
    return-void

    .line 1873
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setStyle(I)V

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .param p1, "filterText"    # Ljava/lang/String;

    .prologue
    .line 2538
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2539
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->createTextFilter(Z)V

    .line 2542
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2543
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 2544
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 2546
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 2547
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2548
    .local v0, "f":Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2552
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFiltered:Z

    .line 2553
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;->clearSavedState()V

    .line 2556
    :cond_1
    return-void
.end method

.method public setForcedClick(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 3791
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mForcedClick:Z

    .line 3792
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2783
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setFrame(IIII)Z

    move-result v0

    .line 2785
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 2789
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 2790
    .local v1, "visible":Z
    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2791
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->positionPopup()V

    .line 2795
    .end local v1    # "visible":Z
    :cond_0
    return v0

    .line 2789
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 6785
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 6786
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    .line 6788
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->access$2100(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;)Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->setFriction(F)V

    .line 6789
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .locals 0
    .param p1, "hoverdelay"    # I

    .prologue
    .line 4528
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    .line 4529
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 4508
    if-eqz p1, :cond_0

    .line 4509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollEnable:Z

    .line 4513
    :goto_0
    return-void

    .line 4511
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public setHoverScrollSpeed(I)V
    .locals 1
    .param p1, "hoverspeed"    # I

    .prologue
    .line 4520
    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->HOVERSCROLL_SPEED:F

    .line 4521
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

    .line 1525
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    if-nez v2, :cond_1

    .line 1592
    :cond_0
    :goto_0
    return-void

    .line 1530
    :cond_1
    if-eqz p2, :cond_4

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    if-ne v2, v6, :cond_4

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_4

    .line 1531
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1533
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "TwHorizontalAbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1537
    :cond_3
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1540
    :cond_4
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    if-ne v2, v6, :cond_c

    .line 1541
    :cond_5
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1542
    .local v0, "oldValue":Z
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1543
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1544
    if-eqz p2, :cond_a

    .line 1545
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1550
    :cond_6
    :goto_1
    if-eq v0, p2, :cond_7

    .line 1551
    if-eqz p2, :cond_b

    .line 1552
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedItemCount:I

    .line 1557
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_8

    .line 1558
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1559
    .local v4, "id":J
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1586
    .end local v0    # "oldValue":Z
    .end local v4    # "id":J
    :cond_8
    :goto_3
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mInLayout:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mBlockLayoutRequests:Z

    if-nez v1, :cond_0

    .line 1587
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mForcedClick:Z

    if-nez v1, :cond_9

    .line 1588
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataChanged:Z

    .line 1589
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->rememberSyncState()V

    .line 1590
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->requestLayout()V

    goto/16 :goto_0

    .line 1547
    .restart local v0    # "oldValue":Z
    :cond_a
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1554
    :cond_b
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1563
    .end local v0    # "oldValue":Z
    :cond_c
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_10

    move v7, v8

    .line 1566
    .local v7, "updateIds":Z
    :goto_4
    if-nez p2, :cond_d

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1567
    :cond_d
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1568
    if-eqz v7, :cond_e

    .line 1569
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1574
    :cond_e
    if-eqz p2, :cond_11

    .line 1575
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1576
    if-eqz v7, :cond_f

    .line 1577
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1579
    :cond_f
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v7    # "updateIds":Z
    :cond_10
    move v7, v1

    .line 1563
    goto :goto_4

    .line 1580
    .restart local v7    # "updateIds":Z
    :cond_11
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1581
    :cond_12
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setMotionEvent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1064
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionEnable:Z

    .line 1065
    return-void
.end method

.method public setMultiChoiceModeListener(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeListener;

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1763
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;

    .line 1765
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;->setWrapped(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeListener;)V

    .line 1766
    return-void
.end method

.method public setMultiFocusListItem(II)V
    .locals 1
    .param p1, "startitem"    # I
    .param p2, "enditem"    # I

    .prologue
    .line 10359
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 10364
    :goto_0
    return-void

    .line 10362
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->resetPressItemListArray()V

    .line 10363
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->addToPressItemListArray(II)V

    goto :goto_0
.end method

.method public setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;

    .prologue
    .line 2041
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$OnScrollListener;

    .line 2042
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invokeOnItemScrollListener()V

    .line 2043
    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .locals 0
    .param p1, "topPadding"    # I
    .param p2, "bottomPadding"    # I

    .prologue
    .line 6250
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mGlowPaddingTop:I

    .line 6251
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mGlowPaddingBottom:I

    .line 6252
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 1367
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 1368
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-nez v1, :cond_0

    .line 1369
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1370
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 1371
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 1377
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setOverScrollMode(I)V

    .line 1378
    return-void

    .line 1374
    :cond_1
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 1375
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    goto :goto_0
.end method

.method public setRecyclerListener(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecyclerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecyclerListener;

    .prologue
    .line 8515
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    # setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecyclerListener;
    invoke-static {v0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->access$5202(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecyclerListener;)Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecyclerListener;

    .line 8516
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 8421
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_1

    .line 8422
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 8423
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 8425
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8435
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_0
    :goto_0
    return-void

    .line 8429
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 8431
    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 8432
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8433
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 8447
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 8448
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 8450
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 1978
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setScrollBarStyle(I)V

    .line 1979
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 1980
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setScrollBarStyle(I)V

    .line 1982
    :cond_0
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "left"    # Landroid/view/View;
    .param p2, "right"    # Landroid/view/View;

    .prologue
    .line 3472
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollLeft:Landroid/view/View;

    .line 3473
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollRight:Landroid/view/View;

    .line 3474
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2182
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 2183
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->clearScrollingCache()V

    .line 2185
    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollingCacheEnabled:Z

    .line 2186
    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "x"    # I

    .prologue
    .line 9313
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 9340
    :cond_0
    :goto_0
    return-void

    .line 9317
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 9318
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 9319
    if-ltz p1, :cond_2

    .line 9320
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setNextSelectedPositionInt(I)V

    .line 9326
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 9327
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    .line 9328
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSpecificTop:I

    .line 9330
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 9331
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSyncPosition:I

    .line 9332
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSyncRowId:J

    .line 9335
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    if-eqz v0, :cond_4

    .line 9336
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 9338
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->requestLayout()V

    goto :goto_0

    .line 9323
    :cond_5
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 3387
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3388
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3396
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 3397
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3398
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3400
    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3401
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3402
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3403
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectionLeftPadding:I

    .line 3404
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectionTopPadding:I

    .line 3405
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectionRightPadding:I

    .line 3406
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectionBottomPadding:I

    .line 3407
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3408
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->updateSelectorState()V

    .line 3409
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2012
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    .line 2013
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .param p1, "stackFromBottom"    # Z

    .prologue
    .line 2253
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 2254
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mStackFromBottom:Z

    .line 2255
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->requestLayoutIfNecessary()V

    .line 2257
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .param p1, "textFilterEnabled"    # Z

    .prologue
    .line 2199
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTextFilterEnabled:Z

    .line 2200
    return-void
.end method

.method public setTiltMotionEvent(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1096
    return-void
.end method

.method public setTiltMotionScrollSpeed(III)V
    .locals 0
    .param p1, "step1"    # I
    .param p2, "step2"    # I
    .param p3, "step3"    # I

    .prologue
    .line 1109
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 1124
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchSlop:I

    .line 1125
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 8327
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTranscriptMode:I

    .line 8328
    return-void
.end method

.method public setTwHorizontalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1970
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setTwHorizontalScrollbarPosition(I)V

    .line 1971
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 1972
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setScrollbarPosition(I)V

    .line 1974
    :cond_0
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 6798
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mVelocityScale:F

    .line 6799
    return-void
.end method

.method setVisibleRangeHint(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 8498
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 8499
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 8501
    :cond_0
    return-void
.end method

.method shouldShowSelector()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3325
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4

    move v0, v2

    .line 3326
    .local v0, "isFingerAirView":Z
    :goto_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view_information_preview"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_5

    move v1, v2

    .line 3331
    .local v1, "isFingerAirViewPreview":Z
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->touchModeDrawsInPressedState()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isPressed()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isHovered()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isFingerHovered()Z

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

    .line 3325
    goto :goto_0

    .restart local v0    # "isFingerAirView":Z
    :cond_5
    move v1, v3

    .line 3326
    goto :goto_1
.end method

.method shouldShowSelectorDefault()Z
    .locals 1

    .prologue
    .line 3337
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isPressed()Z

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

.method public showContextMenu(FFI)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "metaState"    # I

    .prologue
    .line 3937
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->pointToPosition(II)I

    move-result v1

    .line 3938
    .local v1, "position":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 3939
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3940
    .local v2, "id":J
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3941
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3942
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3943
    invoke-super {p0, p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    .line 3948
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "id":J
    :goto_0
    return v4

    .line 3946
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3948
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->showContextMenu(FFI)Z

    move-result v4

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 3953
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 3954
    .local v3, "longPressPosition":I
    if-ltz v3, :cond_2

    .line 3955
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 3956
    .local v4, "longPressId":J
    const/4 v6, 0x0

    .line 3958
    .local v6, "handled":Z
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 3959
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3962
    :cond_0
    if-nez v6, :cond_1

    .line 3963
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3966
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3971
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
    .line 6896
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollBy(IIZ)V

    .line 6897
    return-void
.end method

.method smoothScrollBy(IIZ)V
    .locals 7
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    .line 6989
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    if-nez v5, :cond_0

    .line 6990
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    invoke-direct {v5, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    .line 6994
    :cond_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    .line 6995
    .local v1, "firstPos":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 6996
    .local v0, "childCount":I
    add-int v2, v1, v0

    .line 6997
    .local v2, "lastPos":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getPaddingLeft()I

    move-result v3

    .line 6998
    .local v3, "leftLimit":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getPaddingRight()I

    move-result v6

    sub-int v4, v5, v6

    .line 7000
    .local v4, "rightLimit":I
    if-eqz p1, :cond_2

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ne v5, v3, :cond_1

    if-ltz p1, :cond_2

    :cond_1
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    if-ne v2, v5, :cond_4

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    if-ne v5, v4, :cond_4

    if-lez p1, :cond_4

    .line 7004
    :cond_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 7005
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    if-eqz v5, :cond_3

    .line 7006
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 7012
    :cond_3
    :goto_0
    return-void

    .line 7009
    :cond_4
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 7010
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v5, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->startScroll(IIZ)V

    goto :goto_0
.end method

.method smoothScrollByOffset(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/high16 v9, 0x3f400000    # 0.75f

    .line 7018
    const/4 v2, -0x1

    .line 7019
    .local v2, "index":I
    if-gez p1, :cond_3

    .line 7020
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 7025
    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    .line 7026
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7027
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 7028
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 7029
    .local v4, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 7031
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 7032
    .local v1, "childRectArea":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 7033
    .local v5, "visibleRectArea":I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 7034
    .local v3, "visibleArea":F
    const/high16 v6, 0x3f400000    # 0.75f

    .line 7035
    .local v6, "visibleThreshold":F
    if-gez p1, :cond_4

    cmpg-float v7, v3, v9

    if-gez v7, :cond_4

    .line 7038
    add-int/lit8 v2, v2, 0x1

    .line 7045
    .end local v1    # "childRectArea":I
    .end local v3    # "visibleArea":F
    .end local v5    # "visibleRectArea":I
    .end local v6    # "visibleThreshold":F
    :cond_1
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getCount()I

    move-result v8

    add-int v9, v2, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollToPosition(I)V

    .line 7048
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "visibleRect":Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 7021
    :cond_3
    if-lez p1, :cond_0

    .line 7022
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_0

    .line 7039
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

    .line 7042
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 6830
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 6831
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    .line 6833
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;->start(I)V

    .line 6834
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 6884
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 6885
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    .line 6887
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;->start(II)V

    .line 6888
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 6867
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 6868
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    .line 6870
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;->startWithOffset(II)V

    .line 6871
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    .line 6849
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 6850
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    .line 6852
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;->startWithOffset(III)V

    .line 6853
    return-void
.end method

.method public smoothScrollToPositionWithDuration(II)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "duration"    # I

    .prologue
    .line 6813
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollToPosition(I)V

    .line 6814
    return-void
.end method

.method public stopTiltScrolling()V
    .locals 0

    .prologue
    .line 1103
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 3308
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 3313
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3311
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 32
    .param p1, "deltaX"    # I
    .param p2, "incrementalDeltaX"    # I

    .prologue
    .line 7129
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v7

    .line 7130
    .local v7, "childCount":I
    if-nez v7, :cond_0

    .line 7131
    const/16 v30, 0x1

    .line 7329
    :goto_0
    return v30

    .line 7134
    :cond_0
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getLeft()I

    move-result v13

    .line 7135
    .local v13, "firstLeft":I
    add-int/lit8 v30, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getRight()I

    move-result v19

    .line 7137
    .local v19, "lastRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .line 7142
    .local v21, "listPadding":Landroid/graphics/Rect;
    const/4 v10, 0x0

    .line 7143
    .local v10, "effectivePaddingLeft":I
    const/4 v11, 0x0

    .line 7144
    .local v11, "effectivePaddingRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    .line 7145
    move-object/from16 v0, v21

    iget v10, v0, Landroid/graphics/Rect;->left:I

    .line 7146
    move-object/from16 v0, v21

    iget v11, v0, Landroid/graphics/Rect;->right:I

    .line 7150
    :cond_1
    sub-int v26, v10, v13

    .line 7151
    .local v26, "spaceAbove":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v30

    sub-int v12, v30, v11

    .line 7152
    .local v12, "end":I
    sub-int v27, v19, v12

    .line 7154
    .local v27, "spaceBelow":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingRight:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingLeft:I

    move/from16 v31, v0

    sub-int v29, v30, v31

    .line 7155
    .local v29, "width":I
    if-gez p1, :cond_3

    .line 7156
    add-int/lit8 v30, v29, -0x1

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 7161
    :goto_1
    if-gez p2, :cond_4

    .line 7162
    add-int/lit8 v30, v29, -0x1

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 7167
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    .line 7170
    .local v14, "firstPosition":I
    if-nez v14, :cond_5

    .line 7171
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    sub-int v30, v13, v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    .line 7175
    :goto_3
    add-int v30, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    .line 7176
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    add-int v30, v30, v19

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastPositionDistanceGuess:I

    .line 7181
    :goto_4
    if-nez v14, :cond_7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-lt v13, v0, :cond_7

    if-ltz p2, :cond_7

    const/4 v5, 0x1

    .line 7183
    .local v5, "cannotScrollRight":Z
    :goto_5
    add-int v30, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v30

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v0, v19

    move/from16 v1, v30

    if-gt v0, v1, :cond_8

    if-gtz p2, :cond_8

    const/4 v4, 0x1

    .line 7186
    .local v4, "cannotScrollLeft":Z
    :goto_6
    if-nez v5, :cond_2

    if-eqz v4, :cond_a

    .line 7187
    :cond_2
    if-eqz p2, :cond_9

    const/16 v30, 0x1

    goto/16 :goto_0

    .line 7158
    .end local v4    # "cannotScrollLeft":Z
    .end local v5    # "cannotScrollRight":Z
    .end local v14    # "firstPosition":I
    :cond_3
    add-int/lit8 v30, v29, -0x1

    move/from16 v0, v30

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_1

    .line 7164
    :cond_4
    add-int/lit8 v30, v29, -0x1

    move/from16 v0, v30

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    .line 7173
    .restart local v14    # "firstPosition":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v30, v0

    add-int v30, v30, p2

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_3

    .line 7178
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastPositionDistanceGuess:I

    move/from16 v30, v0

    add-int v30, v30, p2

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLastPositionDistanceGuess:I

    goto :goto_4

    .line 7181
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 7183
    .restart local v5    # "cannotScrollRight":Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_6

    .line 7187
    .restart local v4    # "cannotScrollLeft":Z
    :cond_9
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 7189
    :cond_a
    if-gez p2, :cond_14

    const/16 v25, 0x1

    .line 7191
    .local v25, "rightSide":Z
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isInTouchMode()Z

    move-result v18

    .line 7192
    .local v18, "inTouchMode":Z
    if-eqz v18, :cond_b

    .line 7193
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->hideSelector()V

    .line 7196
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHeaderViewsCount()I

    move-result v16

    .line 7197
    .local v16, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    move/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getFooterViewsCount()I

    move-result v31

    sub-int v15, v30, v31

    .line 7199
    .local v15, "footerViewsStart":I
    const/16 v28, 0x0

    .line 7200
    .local v28, "start":I
    const/4 v9, 0x0

    .line 7203
    .local v9, "count":I
    const/16 v22, 0x1

    .line 7206
    .local v22, "performHaptic":Z
    if-eqz v25, :cond_18

    .line 7207
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v20, v0

    .line 7208
    .local v20, "left":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_c

    .line 7209
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    add-int v20, v20, v30

    .line 7211
    :cond_c
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_8
    move/from16 v0, v17

    if-ge v0, v7, :cond_d

    .line 7212
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7213
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v20

    if-lt v0, v1, :cond_15

    .line 7285
    .end local v6    # "child":Landroid/view/View;
    .end local v20    # "left":I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionViewOriginalLeft:I

    move/from16 v30, v0

    add-int v30, v30, p1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionViewNewLeft:I

    .line 7287
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mBlockLayoutRequests:Z

    .line 7289
    if-lez v9, :cond_e

    .line 7290
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->detachViewsFromParent(II)V

    .line 7291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->removeSkippedScrap()V

    .line 7296
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->awakenScrollBars()Z

    move-result v30

    if-nez v30, :cond_f

    .line 7297
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate()V

    .line 7300
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->twOffsetChildrenLeftAndRight(I)V

    .line 7302
    if-eqz v25, :cond_10

    .line 7303
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    move/from16 v30, v0

    add-int v30, v30, v9

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    .line 7306
    :cond_10
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 7307
    .local v3, "absIncrementalDeltaX":I
    move/from16 v0, v26

    if-lt v0, v3, :cond_11

    move/from16 v0, v27

    if-ge v0, v3, :cond_12

    .line 7308
    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->fillGap(Z)V

    .line 7311
    :cond_12
    if-nez v18, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedPosition:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1c

    .line 7312
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    move/from16 v31, v0

    sub-int v8, v30, v31

    .line 7313
    .local v8, "childIndex":I
    if-ltz v8, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v30

    move/from16 v0, v30

    if-ge v8, v0, :cond_13

    .line 7314
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 7325
    .end local v8    # "childIndex":I
    :cond_13
    :goto_9
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mBlockLayoutRequests:Z

    .line 7327
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invokeOnItemScrollListener()V

    .line 7329
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 7189
    .end local v3    # "absIncrementalDeltaX":I
    .end local v9    # "count":I
    .end local v15    # "footerViewsStart":I
    .end local v16    # "headerViewsCount":I
    .end local v17    # "i":I
    .end local v18    # "inTouchMode":Z
    .end local v22    # "performHaptic":Z
    .end local v25    # "rightSide":Z
    .end local v28    # "start":I
    :cond_14
    const/16 v25, 0x0

    goto/16 :goto_7

    .line 7216
    .restart local v6    # "child":Landroid/view/View;
    .restart local v9    # "count":I
    .restart local v15    # "footerViewsStart":I
    .restart local v16    # "headerViewsCount":I
    .restart local v17    # "i":I
    .restart local v18    # "inTouchMode":Z
    .restart local v20    # "left":I
    .restart local v22    # "performHaptic":Z
    .restart local v25    # "rightSide":Z
    .restart local v28    # "start":I
    :cond_15
    add-int/lit8 v9, v9, 0x1

    .line 7217
    add-int v23, v14, v17

    .line 7218
    .local v23, "position":I
    move/from16 v0, v23

    move/from16 v1, v16

    if-lt v0, v1, :cond_17

    move/from16 v0, v23

    if-ge v0, v15, :cond_17

    .line 7237
    invoke-virtual {v6}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v30

    if-eqz v30, :cond_16

    .line 7238
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7240
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7211
    :cond_17
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_8

    .line 7245
    .end local v6    # "child":Landroid/view/View;
    .end local v17    # "i":I
    .end local v20    # "left":I
    .end local v23    # "position":I
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v30

    sub-int v24, v30, p2

    .line 7246
    .local v24, "right":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_19

    .line 7247
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    sub-int v24, v24, v30

    .line 7249
    :cond_19
    add-int/lit8 v17, v7, -0x1

    .restart local v17    # "i":I
    :goto_a
    if-ltz v17, :cond_d

    .line 7250
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7251
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v24

    if-le v0, v1, :cond_d

    .line 7254
    move/from16 v28, v17

    .line 7255
    add-int/lit8 v9, v9, 0x1

    .line 7256
    add-int v23, v14, v17

    .line 7257
    .restart local v23    # "position":I
    move/from16 v0, v23

    move/from16 v1, v16

    if-lt v0, v1, :cond_1b

    move/from16 v0, v23

    if-ge v0, v15, :cond_1b

    .line 7276
    invoke-virtual {v6}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v30

    if-eqz v30, :cond_1a

    .line 7277
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7279
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7249
    :cond_1b
    add-int/lit8 v17, v17, -0x1

    goto :goto_a

    .line 7316
    .end local v6    # "child":Landroid/view/View;
    .end local v23    # "position":I
    .end local v24    # "right":I
    .restart local v3    # "absIncrementalDeltaX":I
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorPosition:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1d

    .line 7317
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    move/from16 v31, v0

    sub-int v8, v30, v31

    .line 7318
    .restart local v8    # "childIndex":I
    if-ltz v8, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v30

    move/from16 v0, v30

    if-ge v8, v0, :cond_13

    .line 7319
    const/16 v30, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_9

    .line 7322
    .end local v8    # "childIndex":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_9
.end method

.method triggerDoubleFling(I)V
    .locals 4
    .param p1, "initialVelocity"    # I

    .prologue
    .line 5937
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 5938
    .local v0, "adapterCount":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v1

    .line 5940
    .local v1, "visibleItemsCount":I
    if-lez p1, :cond_2

    .line 5941
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getLastVisiblePosition()I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    if-le v2, v3, :cond_0

    .line 5942
    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setSelection(I)V

    .line 5944
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollToPosition(I)V

    .line 5951
    :cond_1
    :goto_0
    return-void

    .line 5945
    :cond_2
    if-gez p1, :cond_1

    .line 5946
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x3

    if-le v2, v3, :cond_3

    .line 5947
    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v3, v1, 0x3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setSelection(I)V

    .line 5949
    :cond_3
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method

.method triggerJumpScrollToTop()V
    .locals 1

    .prologue
    .line 5914
    sget v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mJumpScrollToTopState:I

    .line 5915
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->triggerDoubleFling(I)V

    .line 5916
    return-void
.end method

.method protected twGetItemCount()I
    .locals 2

    .prologue
    .line 6933
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 6934
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
    .line 1801
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCustomMultiChoiceMode:Z

    return v0
.end method

.method public twNotifyKeyPressState(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1666
    const/4 v0, 0x0

    .line 1668
    .local v0, "handledNotifyKeyPress":Z
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsShiftkeyPressed:Z

    if-eqz v1, :cond_0

    .line 1669
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsShiftkeyPressed:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v6}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->twNotifyKeyPress(Landroid/view/View;IJZ)Z

    move-result v0

    .line 1671
    :cond_0
    return v0
.end method

.method public twSetCustomMultiChoiceMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1793
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCustomMultiChoiceMode:Z

    .line 1794
    return-void
.end method

.method public twSetSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 6952
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setSelection(I)V

    .line 6953
    return-void
.end method

.method public twShowMultiChoiceMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1776
    if-eqz p1, :cond_1

    .line 1777
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_0

    .line 1778
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1786
    :cond_0
    :goto_0
    return-void

    .line 1781
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1782
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1783
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public twSmoothScrollBy(I)V
    .locals 3
    .param p1, "distance"    # I

    .prologue
    .line 6961
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 6962
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    .line 6965
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 6966
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 6967
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$TwSmoothScrollByMove;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$TwSmoothScrollByMove;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$1;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwSmoothScrollByMove:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$TwSmoothScrollByMove;

    .line 6968
    const/high16 v1, 0x43160000    # 150.0f

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDensityScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwScrollAmount:I

    .line 6971
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    .line 6972
    .local v0, "isEmpty":Z
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwScrollAmount:I

    if-le v1, v2, :cond_3

    .line 6973
    if-lez p1, :cond_2

    .line 6974
    :goto_0
    sget v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwScrollAmount:I

    if-le p1, v1, :cond_3

    .line 6975
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    sget v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwScrollAmount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6974
    sget v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwScrollAmount:I

    sub-int/2addr p1, v1

    goto :goto_0

    .line 6978
    :cond_2
    :goto_1
    sget v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwScrollAmount:I

    neg-int v1, v1

    if-ge p1, v1, :cond_3

    .line 6979
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    sget v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwScrollAmount:I

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6978
    sget v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwScrollAmount:I

    add-int/2addr p1, v1

    goto :goto_1

    .line 6983
    :cond_3
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6984
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwSmoothScrollByMove:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$TwSmoothScrollByMove;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 6985
    :cond_4
    return-void
.end method

.method public unregisterDoubleTapMotion()V
    .locals 1

    .prologue
    .line 1054
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->unregisterMotionListener()V

    .line 1055
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setMotionEvent(Z)V

    .line 1056
    return-void
.end method

.method public unregisterTiltMotion()V
    .locals 0

    .prologue
    .line 1088
    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1144
    return-void
.end method

.method updateScrollIndicators()V
    .locals 10

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2824
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollLeft:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 2827
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    if-lez v6, :cond_4

    move v0, v4

    .line 2830
    .local v0, "canScrollLeft":Z
    :goto_0
    if-nez v0, :cond_0

    .line 2831
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 2832
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2833
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-ge v6, v8, :cond_5

    move v0, v4

    .line 2837
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollLeft:Landroid/view/View;

    if-eqz v0, :cond_6

    move v6, v5

    :goto_2
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2840
    .end local v0    # "canScrollLeft":Z
    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollRight:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 2842
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v3

    .line 2845
    .local v3, "count":I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v6, v3

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    if-ge v6, v8, :cond_7

    move v1, v4

    .line 2848
    .local v1, "canScrollRight":Z
    :goto_3
    if-nez v1, :cond_2

    if-lez v3, :cond_2

    .line 2849
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2850
    .restart local v2    # "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRight:I

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_8

    move v1, v4

    .line 2853
    .end local v2    # "child":Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollRight:Landroid/view/View;

    if-eqz v1, :cond_9

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2855
    .end local v1    # "canScrollRight":Z
    .end local v3    # "count":I
    :cond_3
    return-void

    :cond_4
    move v0, v5

    .line 2827
    goto :goto_0

    .restart local v0    # "canScrollLeft":Z
    .restart local v2    # "child":Landroid/view/View;
    :cond_5
    move v0, v5

    .line 2833
    goto :goto_1

    .end local v2    # "child":Landroid/view/View;
    :cond_6
    move v6, v7

    .line 2837
    goto :goto_2

    .end local v0    # "canScrollLeft":Z
    .restart local v3    # "count":I
    :cond_7
    move v1, v5

    .line 2845
    goto :goto_3

    .restart local v1    # "canScrollRight":Z
    .restart local v2    # "child":Landroid/view/View;
    :cond_8
    move v1, v5

    .line 2850
    goto :goto_4

    .end local v2    # "child":Landroid/view/View;
    :cond_9
    move v5, v7

    .line 2853
    goto :goto_5
.end method

.method updateSelectorState()V
    .locals 4

    .prologue
    .line 3477
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 3478
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->shouldShowSelector()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3479
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isHovered()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsHoveredByMouse:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorPosition:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    if-lt v2, v3, :cond_3

    .line 3480
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorPosition:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3481
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v1

    .line 3482
    .local v1, "ellipsized":Z
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsPenHovered:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAlwaysDisableHoverHighlight:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3483
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3484
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 3495
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "ellipsized":Z
    :cond_1
    :goto_0
    return-void

    .line 3486
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "ellipsized":Z
    :cond_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 3489
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "ellipsized":Z
    :cond_3
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 3492
    :cond_4
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3539
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

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
