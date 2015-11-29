.class public Landroid/widget/HoverPopupWindow;
.super Ljava/lang/Object;
.source "HoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/HoverPopupWindow$Gravity;,
        Landroid/widget/HoverPopupWindow$HoverPopupContainer;,
        Landroid/widget/HoverPopupWindow$TouchablePopupContainer;,
        Landroid/widget/HoverPopupWindow$QuintEaseOut;,
        Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;,
        Landroid/widget/HoverPopupWindow$HoverPopupListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final HOVER_DETECT_TIME_MS:I = 0x12c

.field private static final MSG_DISMISS_POPUP:I = 0x2

.field private static final MSG_SHOW_POPUP:I = 0x1

.field private static final MSG_TIMEOUT:I = 0x1

.field private static final POPUP_TIMEOUT_MS:I = 0x2710

.field static final TAG:Ljava/lang/String; = "HoverPopupWindow"

.field private static final TIMEOUT_DELAY:I = 0x1f4

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_TOOLTIP:I = 0x1

.field public static final TYPE_USER_CUSTOM:I = 0x3

.field public static final TYPE_WIDGET_DEFAULT:I = 0x2

.field private static final UI_THREAD_BUSY_TIME_MS:I = 0x3e8


# instance fields
.field private final ANCHORVIEW_COORDINATES_TYPE_NONE:I

.field private final ANCHORVIEW_COORDINATES_TYPE_SCREEN:I

.field private final ANCHORVIEW_COORDINATES_TYPE_WINDOW:I

.field private H:F

.field private final ID_TOOLTIP_VIEW:I

.field private final MARGIN_FOR_HOVER_RING:I

.field private MOVE_CENTER:I

.field private MOVE_LEFT:I

.field private MOVE_LEFT_TO_CENTER:I

.field private MOVE_RIGHT:I

.field private MOVE_RIGHT_TO_CENTER:I

.field private final SHOW_ANIMATION_DURATION:I

.field private TW:F

.field private W:F

.field private mAnchorRect:Landroid/graphics/Rect;

.field private mAnchorView:Landroid/view/View;

.field protected mAnimationStyle:I

.field private mCenterPoint:Landroid/graphics/PointF;

.field private mContainerLeftOnWindow:I

.field private mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

.field private mContentHeight:I

.field private mContentLP:Landroid/view/ViewGroup$LayoutParams;

.field private mContentResId:I

.field protected mContentText:Ljava/lang/CharSequence;

.field protected mContentView:Landroid/view/View;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mCoordinatesOfAnchorView:I

.field private mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field private mDirection:I

.field protected mDismissHandler:Landroid/os/Handler;

.field private mDismissPopupRunnable:Ljava/lang/Runnable;

.field private mDismissTouchableHPWOnActionUp:Z

.field private mDisplayFrame:Landroid/graphics/Rect;

.field private mDisplayFrameLeft:I

.field private mDisplayFrameRight:I

.field private mDisplayWidthToComputeAniWidth:I

.field private mEnabled:Z

.field private mGuideLineColor:I

.field protected mGuideLineFadeOffset:I

.field private mGuideRingDrawableId:I

.field private mHandler:Landroid/os/Handler;

.field private mHashCodeForViewState:I

.field protected mHoverDetectTimeMS:I

.field private mHoverPaddingBottom:I

.field private mHoverPaddingLeft:I

.field private mHoverPaddingRight:I

.field private mHoverPaddingTop:I

.field private mHoveringPointX:I

.field private mHoveringPointY:I

.field private mIsFHAnimationEnabled:Z

.field private mIsFHAnimationEnabledByApp:Z

.field private mIsFHGuideLineEnabled:Z

.field private mIsFHGuideLineEnabledByApp:Z

.field private mIsFHSoundAndHapticEnabled:Z

.field protected mIsGuideLineEnabled:Z

.field private mIsHoverPaddingEnabled:Z

.field private mIsInfoPickerMoveEabled:Z

.field private mIsInfoPickerMoveEabledByApp:Z

.field private mIsPopupTouchable:Z

.field private mIsProgressBar:Z

.field private mIsSPenPointChanged:Z

.field private mIsSetInfoPickerColorToAndMoreBottomImg:Z

.field private mIsShowMessageSent:Z

.field private mIsTryingShowPopup:Z

.field private mLeftPoint:Landroid/graphics/PointF;

.field private mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

.field private mNeedToMeasureContentView:Z

.field private mOverTopBoundary:Z

.field protected final mParentView:Landroid/view/View;

.field private mPickerPadding:F

.field private mPickerXoffset:I

.field private mPopup:Landroid/widget/PopupWindow;

.field protected mPopupGravity:I

.field private mPopupOffsetX:I

.field private mPopupOffsetY:I

.field protected mPopupPosX:I

.field protected mPopupPosY:I

.field protected mPopupType:I

.field private mPreShowListener:Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

.field private mReferncedAnchorRect:Landroid/graphics/Rect;

.field private mRightPoint:Landroid/graphics/PointF;

.field protected mShowPopupAlways:Z

.field private mShowPopupRunnable:Ljava/lang/Runnable;

.field private mToolType:I

.field private mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

.field private mWindowGapX:I

.field private mWindowGapY:I

.field private misDialer:Z

.field private misGravityBottomUnder:Z

.field private objAnimationValue:F

.field private objAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "parentView"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/HoverPopupWindow;-><init>(Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 5
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7010001

    iput v0, p0, Landroid/widget/HoverPopupWindow;->ID_TOOLTIP_VIEW:I

    const/16 v0, 0x8

    iput v0, p0, Landroid/widget/HoverPopupWindow;->MARGIN_FOR_HOVER_RING:I

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    iput v1, p0, Landroid/widget/HoverPopupWindow;->ANCHORVIEW_COORDINATES_TYPE_NONE:I

    iput v3, p0, Landroid/widget/HoverPopupWindow;->ANCHORVIEW_COORDINATES_TYPE_WINDOW:I

    iput v4, p0, Landroid/widget/HoverPopupWindow;->ANCHORVIEW_COORDINATES_TYPE_SCREEN:I

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/HoverPopupWindow;->W:F

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Landroid/widget/HoverPopupWindow;->H:F

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Landroid/widget/HoverPopupWindow;->TW:F

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    const/high16 v0, 0x42580000    # 54.0f

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mPickerPadding:F

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x1f4

    iput v0, p0, Landroid/widget/HoverPopupWindow;->SHOW_ANIMATION_DURATION:I

    iput v1, p0, Landroid/widget/HoverPopupWindow;->MOVE_RIGHT:I

    iput v3, p0, Landroid/widget/HoverPopupWindow;->MOVE_LEFT:I

    iput v4, p0, Landroid/widget/HoverPopupWindow;->MOVE_CENTER:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_CENTER:I

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mDirection:I

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrameLeft:I

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrameRight:I

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mContainerLeftOnWindow:I

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mPickerXoffset:I

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    iput p2, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->initInstance()V

    invoke-virtual {p0, p2}, Landroid/widget/HoverPopupWindow;->setInstanceByType(I)V

    new-instance v0, Landroid/widget/HoverPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/HoverPopupWindow$1;-><init>(Landroid/widget/HoverPopupWindow;)V

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/widget/HoverPopupWindow$2;

    invoke-direct {v0, p0}, Landroid/widget/HoverPopupWindow$2;-><init>(Landroid/widget/HoverPopupWindow;)V

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/widget/HoverPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/HoverPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_LEFT:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/HoverPopupWindow;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->objAnimationValue:F

    return v0
.end method

.method static synthetic access$1302(Landroid/widget/HoverPopupWindow;F)F
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Landroid/widget/HoverPopupWindow;->objAnimationValue:F

    return p1
.end method

.method static synthetic access$1400(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrameLeft:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrameRight:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/HoverPopupWindow;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->dismissPopup()V

    return-void
.end method

.method static synthetic access$1700(Landroid/widget/HoverPopupWindow;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->showPopup()V

    return-void
.end method

.method static synthetic access$1800(Landroid/widget/HoverPopupWindow;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/HoverPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return v0
.end method

.method static synthetic access$200(Landroid/widget/HoverPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/HoverPopupWindow;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->TW:F

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/HoverPopupWindow;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->H:F

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/HoverPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/HoverPopupWindow;)Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/widget/HoverPopupWindow;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->W:F

    return v0
.end method

.method static synthetic access$2502(Landroid/widget/HoverPopupWindow;F)F
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Landroid/widget/HoverPopupWindow;->W:F

    return p1
.end method

.method static synthetic access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$2602(Landroid/widget/HoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$2702(Landroid/widget/HoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$2802(Landroid/widget/HoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$2900(Landroid/widget/HoverPopupWindow;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPickerPadding:F

    return v0
.end method

.method static synthetic access$300(Landroid/widget/HoverPopupWindow;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/widget/HoverPopupWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/widget/HoverPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/HoverPopupWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mContainerLeftOnWindow:I

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPickerXoffset:I

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/HoverPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z

    return v0
.end method

.method static synthetic access$400(Landroid/widget/HoverPopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mDirection:I

    return v0
.end method

.method static synthetic access$602(Landroid/widget/HoverPopupWindow;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mDirection:I

    return p1
.end method

.method static synthetic access$700(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_RIGHT:I

    return v0
.end method

.method static synthetic access$800(Landroid/widget/HoverPopupWindow;II)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/HoverPopupWindow;->setAnimator(II)V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/HoverPopupWindow;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 23
    .param p1, "anchorRect"    # Landroid/graphics/Rect;
    .param p2, "displayFrame"    # Landroid/graphics/Rect;
    .param p3, "contentWidth"    # I
    .param p4, "contentHeight"    # I

    .prologue
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .local v7, "posX":I
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .local v8, "posY":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v5, v0, 0xf0f

    .local v5, "hGravity":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    move/from16 v20, v0

    const v21, 0xf0f0

    and-int v14, v20, v21

    .local v14, "vGravity":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10501fb

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .local v13, "tooltipShiftX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    move/from16 v20, v0

    if-nez v20, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v7, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v8, v20, v21

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .local v4, "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    .local v10, "root":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .local v16, "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v17, v16

    check-cast v17, Landroid/view/WindowManager$LayoutParams;

    .local v17, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v21, v0

    or-int v20, v20, v21

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x404

    move/from16 v20, v0

    if-nez v20, :cond_9

    const/4 v6, 0x1

    .local v6, "isSystemUiVisible":Z
    :goto_1
    const/4 v12, 0x0

    .local v12, "statusBarHeight":I
    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1050010

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    :cond_1
    add-int v20, v8, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    const/16 v20, 0x5050

    move/from16 v0, v20

    if-ne v14, v0, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v20

    div-int/lit8 v21, p3, 0x2

    sub-int v7, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    move/from16 v20, v0

    add-int v7, v7, v20

    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v6    # "isSystemUiVisible":Z
    .end local v10    # "root":Landroid/view/View;
    .end local v12    # "statusBarHeight":I
    .end local v16    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v17    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    :goto_2
    const-string v20, "HoverPopupWindow"

    const-string v21, "computePopupPositionInternal: check window boundary "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->isScaleWindow()Z

    move-result v20

    if-nez v20, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    if-gez v7, :cond_c

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    const/high16 v20, 0x41000000    # 8.0f

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v20

    add-int v7, v7, v20

    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    .restart local v10    # "root":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .restart local v16    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v17, v16

    check-cast v17, Landroid/view/WindowManager$LayoutParams;

    .restart local v17    # "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v21, v0

    or-int v20, v20, v21

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x404

    move/from16 v20, v0

    if-nez v20, :cond_18

    const/4 v6, 0x1

    .restart local v6    # "isSystemUiVisible":Z
    :goto_4
    const/4 v12, 0x0

    .restart local v12    # "statusBarHeight":I
    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1050010

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    :cond_4
    if-ge v8, v12, :cond_1c

    const/16 v20, 0x3030

    move/from16 v0, v20

    if-ne v14, v0, :cond_1b

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    move/from16 v1, p4

    if-lt v0, v1, :cond_19

    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v20, v0

    add-int v8, v8, v20

    const-string v20, "HoverPopupWindow"

    const-string v21, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v6    # "isSystemUiVisible":Z
    .end local v10    # "root":Landroid/view/View;
    .end local v12    # "statusBarHeight":I
    .end local v16    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v17    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iput v7, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    move-object/from16 v0, p0

    iput v8, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->isScaleWindow()Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "window"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/WindowManager;

    .local v18, "wm":Landroid/view/WindowManager;
    if-eqz v18, :cond_6

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I

    move-result v20

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    sub-int v19, v20, v21

    .local v19, "yOffset":I
    if-lez v19, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    move/from16 v20, v0

    sub-int v20, v20, v19

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v18    # "wm":Landroid/view/WindowManager;
    .end local v19    # "yOffset":I
    :cond_6
    return-void

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    goto/16 :goto_0

    :cond_8
    sparse-switch v5, :sswitch_data_0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    move/from16 v20, v0

    add-int v7, v7, v20

    sparse-switch v14, :sswitch_data_1

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v20, v0

    add-int v8, v8, v20

    goto/16 :goto_0

    :sswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v7, v20, p3

    goto :goto_6

    :sswitch_1
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/Rect;->left:I

    goto :goto_6

    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v20

    sub-int v20, v20, p3

    add-int v7, v20, v13

    goto :goto_6

    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v20

    div-int/lit8 v21, p3, 0x2

    sub-int v7, v20, v21

    goto :goto_6

    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    goto :goto_6

    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    sub-int v7, v20, p3

    goto :goto_6

    :sswitch_6
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/Rect;->right:I

    goto :goto_6

    :sswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v20

    div-int/lit8 v21, p3, 0x2

    sub-int v7, v20, v21

    goto :goto_6

    :sswitch_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    move/from16 v20, v0

    div-int/lit8 v21, p3, 0x2

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    move/from16 v21, v0

    sub-int v7, v20, v21

    goto :goto_6

    :sswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v8, v20, p4

    goto :goto_7

    :sswitch_a
    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->top:I

    goto :goto_7

    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v20

    div-int/lit8 v21, p4, 0x2

    sub-int v8, v20, v21

    goto :goto_7

    :sswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v8, v20, p4

    goto :goto_7

    :sswitch_d
    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    goto/16 :goto_7

    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v10    # "root":Landroid/view/View;
    .restart local v16    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v17    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_1

    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v10    # "root":Landroid/view/View;
    .end local v16    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v17    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    add-int v20, v8, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    const/16 v20, 0x5050

    move/from16 v0, v20

    if-ne v14, v0, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p4

    if-lt v0, v1, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v20

    div-int/lit8 v21, p3, 0x2

    sub-int v7, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    move/from16 v20, v0

    add-int v7, v7, v20

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    add-int v20, v20, v8

    add-int v20, v20, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v20

    div-int/lit8 v21, p3, 0x2

    sub-int v7, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    move/from16 v20, v0

    add-int v7, v7, v20

    goto/16 :goto_2

    :cond_c
    add-int v20, v7, p3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    sub-int v20, v20, p3

    move/from16 v0, v20

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto/16 :goto_3

    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v20, v20, v7

    if-gtz v20, :cond_e

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, p3

    move/from16 v0, v20

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, p3

    const/high16 v21, 0x41000000    # 8.0f

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    const/high16 v20, 0x41000000    # 8.0f

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v20

    add-int v7, v7, v20

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v20, v20, v7

    add-int v20, v20, p3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_f

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, p3

    move/from16 v0, v20

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    if-lez v20, :cond_3

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, p3

    move/from16 v0, v20

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto/16 :goto_3

    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .local v3, "anchorView":Landroid/view/View;
    :goto_8
    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v15

    .local v15, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v11

    .local v11, "scaleFactor":Landroid/graphics/PointF;
    if-gez v7, :cond_12

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    const/high16 v20, 0x41000000    # 8.0f

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v20

    add-int v7, v7, v20

    goto/16 :goto_3

    .end local v3    # "anchorView":Landroid/view/View;
    .end local v11    # "scaleFactor":Landroid/graphics/PointF;
    .end local v15    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_8

    .restart local v3    # "anchorView":Landroid/view/View;
    .restart local v11    # "scaleFactor":Landroid/graphics/PointF;
    .restart local v15    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_12
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v21, v7, p3

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto/16 :goto_3

    .end local v3    # "anchorView":Landroid/view/View;
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v11    # "scaleFactor":Landroid/graphics/PointF;
    .end local v15    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .restart local v3    # "anchorView":Landroid/view/View;
    :goto_9
    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v15

    .restart local v15    # "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v11

    .restart local v11    # "scaleFactor":Landroid/graphics/PointF;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    int-to-float v0, v7

    move/from16 v21, v0

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    if-gez v20, :cond_15

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, p3

    const/high16 v21, 0x41000000    # 8.0f

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    const/high16 v20, 0x41000000    # 8.0f

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v20

    add-int v7, v7, v20

    goto/16 :goto_3

    .end local v3    # "anchorView":Landroid/view/View;
    .end local v11    # "scaleFactor":Landroid/graphics/PointF;
    .end local v15    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_9

    .restart local v3    # "anchorView":Landroid/view/View;
    .restart local v11    # "scaleFactor":Landroid/graphics/PointF;
    .restart local v15    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_15
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v21, v7, p3

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_16

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    sub-int v20, v20, p3

    move/from16 v0, v20

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto/16 :goto_3

    :cond_16
    if-gez v7, :cond_17

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, p3

    const/high16 v21, 0x41000000    # 8.0f

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    const/high16 v20, 0x41000000    # 8.0f

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v20

    add-int v7, v7, v20

    goto/16 :goto_3

    :cond_17
    add-int v20, v7, p3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    sub-int v7, v20, p3

    goto/16 :goto_3

    .end local v3    # "anchorView":Landroid/view/View;
    .end local v11    # "scaleFactor":Landroid/graphics/PointF;
    .end local v15    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v10    # "root":Landroid/view/View;
    .restart local v16    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v17    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_18
    const/4 v6, 0x0

    goto/16 :goto_4

    .restart local v6    # "isSystemUiVisible":Z
    .restart local v12    # "statusBarHeight":I
    :cond_19
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v21, v21, v12

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1a

    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    const-string v20, "HoverPopupWindow"

    const-string v21, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_5

    :cond_1a
    move v8, v12

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: #2: mOverTopBoundary = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_1b
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal #2-1: mOverTopBoundary = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto/16 :goto_5

    :cond_1c
    add-int v20, v8, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1e

    const/16 v20, 0x5050

    move/from16 v0, v20

    if-ne v14, v0, :cond_1d

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p4

    if-lt v0, v1, :cond_5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v8, v20, p4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v20, v0

    sub-int v8, v8, v20

    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3: misGravityBottomUnder = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_1d
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: #5 set misGravityBottomUnder = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v8, v20, p4

    goto/16 :goto_5

    :cond_1e
    const/16 v20, 0x3030

    move/from16 v0, v20

    if-ne v14, v0, :cond_5

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: #6 set mOverTopBoundary = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v6    # "isSystemUiVisible":Z
    .end local v10    # "root":Landroid/view/View;
    .end local v12    # "statusBarHeight":I
    .end local v16    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v17    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    .restart local v10    # "root":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .restart local v16    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v17, v16

    check-cast v17, Landroid/view/WindowManager$LayoutParams;

    .restart local v17    # "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v21, v0

    or-int v20, v20, v21

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x404

    move/from16 v20, v0

    if-nez v20, :cond_23

    const/4 v6, 0x1

    .restart local v6    # "isSystemUiVisible":Z
    :goto_a
    const/4 v12, 0x0

    .restart local v12    # "statusBarHeight":I
    if-eqz v6, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1050010

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    :cond_20
    move v9, v12

    .local v9, "realStatusBarHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v12, :cond_21

    const/4 v12, 0x0

    :cond_21
    if-gez v8, :cond_29

    const/16 v20, 0x3030

    move/from16 v0, v20

    if-ne v14, v0, :cond_28

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, v12

    move/from16 v0, v20

    move/from16 v1, p4

    if-lt v0, v1, :cond_24

    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, v12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    move/from16 v1, p4

    if-lt v0, v1, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v20, v0

    add-int v8, v8, v20

    :cond_22
    const-string v20, "HoverPopupWindow"

    const-string v21, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_5

    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v6    # "isSystemUiVisible":Z
    .end local v9    # "realStatusBarHeight":I
    .end local v12    # "statusBarHeight":I
    :cond_23
    const/4 v6, 0x0

    goto/16 :goto_a

    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v6    # "isSystemUiVisible":Z
    .restart local v9    # "realStatusBarHeight":I
    .restart local v12    # "statusBarHeight":I
    :cond_24
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, v12

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_25

    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    const-string v20, "HoverPopupWindow"

    const-string v21, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_5

    :cond_25
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v20, v20, v21

    sub-int v20, v20, p4

    sub-int v20, v20, v9

    if-lez v20, :cond_26

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_5

    :cond_26
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    add-int v21, v21, v22

    sub-int v20, v20, v21

    sub-int v20, v20, p4

    if-lez v20, :cond_27

    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    const-string v20, "HoverPopupWindow"

    const-string v21, "computePopupPositionInternal: Set mOverTopBoundary = true #1-2"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_5

    :cond_27
    move v8, v12

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: #2: mOverTopBoundary = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_28
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal #2-1: mOverTopBoundary = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto/16 :goto_5

    :cond_29
    add-int v20, v8, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_2c

    const/16 v20, 0x5050

    move/from16 v0, v20

    if-ne v14, v0, :cond_2b

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p4

    if-lt v0, v1, :cond_2a

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v8, v20, p4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v20, v0

    sub-int v8, v8, v20

    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3: misGravityBottomUnder = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_2a
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    add-int v20, v20, v8

    add-int v20, v20, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_5

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x8ac

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v8, v20, p4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v20, v0

    sub-int v8, v8, v20

    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3-2: misGravityBottomUnder = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_2b
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: #5 set misGravityBottomUnder = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, p4

    move/from16 v0, v20

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto/16 :goto_5

    :cond_2c
    const/16 v20, 0x3030

    move/from16 v0, v20

    if-ne v14, v0, :cond_5

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    if-ge v8, v12, :cond_2d

    add-int v20, v8, p4

    add-int v20, v20, v12

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_2d

    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    :cond_2d
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: #6 set mOverTopBoundary = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_1
        0x5 -> :sswitch_5
        0x101 -> :sswitch_7
        0x103 -> :sswitch_2
        0x105 -> :sswitch_4
        0x201 -> :sswitch_8
        0x303 -> :sswitch_0
        0x505 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_b
        0x30 -> :sswitch_a
        0x50 -> :sswitch_c
        0x3030 -> :sswitch_9
        0x5050 -> :sswitch_d
    .end sparse-switch
.end method

.method private dismissPopup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    :cond_1
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    :cond_2
    return-void
.end method

.method private getStateHashCode()I
    .locals 4

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    .local v0, "hashCode":I
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    const/4 v2, 0x2

    new-array v1, v2, [I

    .local v1, "location":[I
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    shl-int/lit8 v2, v2, 0x14

    const/4 v3, 0x1

    aget v3, v1, v3

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    .end local v1    # "location":[I
    :cond_0
    return v0
.end method

.method private getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initCoverManager()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string v0, "HoverPopupWindow"

    const-string v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private isViewCoverClose()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .local v1, "isCoverOpen":Z
    :try_start_0
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    invoke-interface {v2}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "HoverPopupWindow"

    const-string v3, "RemoteException in getCoverState: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private makeToolTipContentView()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const v4, 0x7010001

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v4, :cond_2

    :cond_1
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x1090061

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private playSoundAndHapticFeedback()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, "audioManager":Landroid/media/AudioManager;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method private pointInValidHoverArea(FF)Z
    .locals 2
    .param p1, "localX"    # F
    .param p2, "localY"    # F

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingLeft:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingRight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingTop:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingBottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetTimeout()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method private setAnimator(II)V
    .locals 5
    .param p1, "movelength"    # I
    .param p2, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x2

    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_LEFT:I

    if-eq p2, v0, :cond_0

    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_RIGHT:I

    if-ne p2, v0, :cond_1

    :cond_0
    new-array v0, v1, [F

    aput v2, v0, v3

    int-to-float v1, p1

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    :goto_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/HoverPopupWindow$QuintEaseOut;

    invoke-direct {v1}, Landroid/widget/HoverPopupWindow$QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/HoverPopupWindow$3;

    invoke-direct {v1, p0}, Landroid/widget/HoverPopupWindow$3;-><init>(Landroid/widget/HoverPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :cond_1
    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    if-eq p2, v0, :cond_2

    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    if-ne p2, v0, :cond_3

    :cond_2
    new-array v0, v1, [F

    int-to-float v1, p1

    aput v1, v0, v3

    aput v2, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_3
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private setPopupContent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    packed-switch v3, :pswitch_data_0

    iput-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-interface {v3, v4, p0}, Landroid/widget/HoverPopupWindow$HoverPopupListener;->onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z

    :cond_1
    return-void

    :pswitch_0
    iput-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->makeToolTipContentView()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->makeDefaultContentView()V

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v3, :cond_0

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mContentResId:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .local v1, "inflater":Landroid/view/LayoutInflater;
    :try_start_0
    iget v3, p0, Landroid/widget/HoverPopupWindow;->mContentResId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .local v2, "v":Landroid/view/View;
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2    # "v":Landroid/view/View;
    :catch_0
    move-exception v0

    .local v0, "ie":Landroid/view/InflateException;
    iput-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPopup()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHashCodeForViewState:I

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getStateHashCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getIsDetachedFromWindow()Z

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/HoverPopupWindow;->showPenPointEffect(Z)V

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->createPopupWindow()Landroid/widget/PopupWindow;

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->setPopupContent()V

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->updateHoverPopup()V

    goto :goto_0
.end method

.method private updateHoverPopup(Landroid/view/View;III)V
    .locals 6
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I

    .prologue
    const/4 v5, 0x0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/HoverPopupWindow;->computePopupPosition(Landroid/view/View;III)V

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    if-nez v1, :cond_2

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    if-eqz v1, :cond_0

    :cond_2
    iget-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    :goto_1
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    iget v4, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    iget v5, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "oldParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_5

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "oldParent":Landroid/view/ViewParent;
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v4, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v1, p1, v5, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected computePopupPosition(Landroid/view/View;III)V
    .locals 51
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "offX"    # I
    .param p4, "offY"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    if-eqz p1, :cond_14

    move-object/from16 v14, p1

    .local v14, "anchorView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    .local v26, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v13, 0x0

    .local v13, "anchorRect":Landroid/graphics/Rect;
    const/4 v4, 0x2

    new-array v12, v4, [I

    .local v12, "anchorLocOnScr":[I
    const/4 v4, 0x2

    new-array v11, v4, [I

    .local v11, "anchorLocInWindow":[I
    invoke-virtual {v14, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v14, v11}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    .local v25, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/view/View;->getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v40

    .local v40, "rootview":Landroid/view/View;
    const/16 v34, 0x0

    .local v34, "isRootViewFullScreen":Z
    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getWidth()I

    move-result v42

    .local v42, "rootviewWidth":I
    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getHeight()I

    move-result v41

    .local v41, "rootviewHeight":I
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v0, v42

    if-ne v0, v4, :cond_2

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v0, v41

    if-ne v0, v4, :cond_2

    const/16 v34, 0x1

    :cond_2
    invoke-virtual {v14}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_15

    const/4 v4, 0x0

    aget v4, v12, v4

    const/4 v5, 0x0

    aget v5, v11, v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    const/4 v4, 0x1

    aget v4, v12, v4

    const/4 v5, 0x1

    aget v5, v11, v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    new-instance v13, Landroid/graphics/Rect;

    .end local v13    # "anchorRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    aget v4, v11, v4

    const/4 v5, 0x1

    aget v5, v11, v5

    const/4 v6, 0x0

    aget v6, v11, v6

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x1

    aget v7, v11, v7

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v13, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v13    # "anchorRect":Landroid/graphics/Rect;
    :cond_3
    :goto_2
    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_5

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v39

    .local v39, "root":Landroid/view/View;
    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v48

    .local v48, "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v48

    instance-of v4, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_5

    move-object/from16 v50, v48

    check-cast v50, Landroid/view/WindowManager$LayoutParams;

    .local v50, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v50

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move-object/from16 v0, v50

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v4, v5

    and-int/lit16 v4, v4, 0x404

    if-nez v4, :cond_16

    const/16 v35, 0x1

    .local v35, "isSystemUiVisible":Z
    :goto_3
    const/16 v46, 0x0

    .local v46, "statusBarHeight":I
    move-object/from16 v0, v50

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x200

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    if-eqz v35, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v46

    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->left:I

    move/from16 v0, v46

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .end local v35    # "isSystemUiVisible":Z
    .end local v39    # "root":Landroid/view/View;
    .end local v46    # "statusBarHeight":I
    .end local v48    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v50    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x0

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mDisplayFrameLeft:I

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mDisplayFrameRight:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    if-nez v4, :cond_17

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v49

    .local v49, "widthMeasureSpec":I
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    .local v30, "heightMeasureSpec":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    move/from16 v0, v49

    move/from16 v1, v30

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    .local v24, "contentWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    .local v22, "contentHeight":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v24

    move/from16 v3, v22

    invoke-direct {v0, v13, v1, v2, v3}, Landroid/widget/HoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v13, Landroid/graphics/Rect;->left:I

    iget v6, v13, Landroid/graphics/Rect;->top:I

    iget v7, v13, Landroid/graphics/Rect;->right:I

    iget v8, v13, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    move/from16 v37, v0

    .local v37, "posX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    move/from16 v38, v0

    .local v38, "posY":I
    const/4 v15, 0x0

    .local v15, "canDraw":Z
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1a

    add-int v4, v38, v22

    iget v5, v13, Landroid/graphics/Rect;->top:I

    if-le v4, v5, :cond_6

    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v38

    if-ge v0, v4, :cond_6

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int v4, v4, v38

    iget v5, v13, Landroid/graphics/Rect;->bottom:I

    if-lt v4, v5, :cond_7

    :cond_6
    const/4 v15, 0x1

    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v4, :cond_34

    :cond_8
    if-eqz v15, :cond_34

    const/16 v33, 0x1

    .local v33, "isPopupAboveHorizontal":Z
    const/high16 v4, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v36

    .local v36, "marginForHoverRing":I
    const/16 v16, 0x0

    .local v16, "containerLeftOnWindow":I
    const/16 v21, 0x0

    .local v21, "containerRightOnWindow":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1c

    iget v4, v13, Landroid/graphics/Rect;->left:I

    move/from16 v0, v37

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v16

    add-int v4, v37, v24

    iget v5, v13, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v26

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v21

    :cond_9
    :goto_6
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mContainerLeftOnWindow:I

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    move/from16 v0, v38

    if-le v0, v4, :cond_1d

    const/16 v33, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-nez v4, :cond_a

    new-instance v4, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setBackgroundColor(I)V

    const-string v4, "HoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: kdhpoint2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(II)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    if-eqz v4, :cond_1e

    :cond_b
    const-string v4, "HoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: Call setOverTopForCotainer(true)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setOverTopForCotainer(Z)V

    :cond_c
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .local v23, "contentLP":Landroid/view/ViewGroup$LayoutParams;
    if-nez v23, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, v24

    move/from16 v1, v22

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->removeAllViews()V

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildCount()I

    move-result v4

    if-nez v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->addView(Landroid/view/View;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    sub-int v4, v16, v37

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v18

    .local v18, "containerPaddingLeft":I
    add-int v4, v37, v24

    sub-int v4, v21, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v19

    .local v19, "containerPaddingRight":I
    const/16 v20, 0x0

    .local v20, "containerPaddingTop":I
    const/16 v17, 0x0

    .local v17, "containerPaddingBottom":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v4, :cond_21

    if-eqz v33, :cond_20

    move/from16 v17, v36

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    :goto_a
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_28

    if-eqz v33, :cond_27

    move/from16 v37, v16

    :cond_f
    :goto_b
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    sub-int v4, v4, v37

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    sub-int v31, v4, v5

    .local v31, "hoverPointXonContainer":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    sub-int v4, v4, v38

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    sub-int v32, v4, v5

    .local v32, "hoverPointYonContainer":I
    if-eqz v33, :cond_2e

    invoke-virtual {v14}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v47

    .local v47, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v47, :cond_11

    invoke-virtual/range {v47 .. v47}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v43

    .local v43, "scaleFactor":Landroid/graphics/PointF;
    new-instance v29, Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .local v29, "fPos":Landroid/graphics/PointF;
    move-object/from16 v0, v43

    iget v4, v0, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_10

    move-object/from16 v0, v43

    iget v4, v0, Landroid/graphics/PointF;->y:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2c

    :cond_10
    invoke-virtual {v14}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_2a

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    int-to-float v4, v4

    move/from16 v0, v37

    int-to-float v5, v0

    move-object/from16 v0, v43

    iget v6, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v43

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    int-to-float v4, v4

    move/from16 v0, v38

    int-to-float v5, v0

    move-object/from16 v0, v43

    iget v6, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v43

    iget v5, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->y:F

    :goto_c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v6, v22, v6

    move-object/from16 v0, v29

    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    move-object/from16 v0, v29

    iget v8, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    .end local v29    # "fPos":Landroid/graphics/PointF;
    .end local v43    # "scaleFactor":Landroid/graphics/PointF;
    :cond_11
    :goto_d
    div-int/lit8 v4, v24, 0x2

    add-int v44, v18, v4

    .local v44, "startx":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v45, v22, v4

    .local v45, "starty":I
    move/from16 v27, v31

    .local v27, "endx":I
    move/from16 v28, v32

    .local v28, "endy":I
    add-int/lit8 v4, v18, 0xa

    move/from16 v0, v27

    if-ge v0, v4, :cond_12

    .end local v16    # "containerLeftOnWindow":I
    .end local v17    # "containerPaddingBottom":I
    .end local v18    # "containerPaddingLeft":I
    .end local v19    # "containerPaddingRight":I
    .end local v20    # "containerPaddingTop":I
    .end local v21    # "containerRightOnWindow":I
    .end local v23    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    .end local v27    # "endx":I
    .end local v28    # "endy":I
    .end local v31    # "hoverPointXonContainer":I
    .end local v32    # "hoverPointYonContainer":I
    .end local v33    # "isPopupAboveHorizontal":Z
    .end local v36    # "marginForHoverRing":I
    .end local v44    # "startx":I
    .end local v45    # "starty":I
    .end local v47    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_12
    :goto_e
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    if-nez v4, :cond_13

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    if-eqz v4, :cond_39

    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const v5, 0x10304e7

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :goto_f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_0

    const-string v4, "HoverPopupWindow"

    const-string v5, "HoverPopupWindow.computePopupPosition() : Call setFHmoveAnimationOffset(0)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setFHmoveAnimationOffset(I)V

    goto/16 :goto_0

    .end local v11    # "anchorLocInWindow":[I
    .end local v12    # "anchorLocOnScr":[I
    .end local v13    # "anchorRect":Landroid/graphics/Rect;
    .end local v14    # "anchorView":Landroid/view/View;
    .end local v15    # "canDraw":Z
    .end local v22    # "contentHeight":I
    .end local v24    # "contentWidth":I
    .end local v25    # "displayFrame":Landroid/graphics/Rect;
    .end local v26    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v30    # "heightMeasureSpec":I
    .end local v34    # "isRootViewFullScreen":Z
    .end local v37    # "posX":I
    .end local v38    # "posY":I
    .end local v40    # "rootview":Landroid/view/View;
    .end local v41    # "rootviewHeight":I
    .end local v42    # "rootviewWidth":I
    .end local v49    # "widthMeasureSpec":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto/16 :goto_1

    .restart local v11    # "anchorLocInWindow":[I
    .restart local v12    # "anchorLocOnScr":[I
    .restart local v13    # "anchorRect":Landroid/graphics/Rect;
    .restart local v14    # "anchorView":Landroid/view/View;
    .restart local v25    # "displayFrame":Landroid/graphics/Rect;
    .restart local v26    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v34    # "isRootViewFullScreen":Z
    .restart local v40    # "rootview":Landroid/view/View;
    .restart local v41    # "rootviewHeight":I
    .restart local v42    # "rootviewWidth":I
    :cond_15
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    new-instance v13, Landroid/graphics/Rect;

    .end local v13    # "anchorRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    aget v4, v12, v4

    const/4 v5, 0x1

    aget v5, v12, v5

    const/4 v6, 0x0

    aget v6, v12, v6

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x1

    aget v7, v12, v7

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v13, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v13    # "anchorRect":Landroid/graphics/Rect;
    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_3

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_3

    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->right:I

    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .restart local v39    # "root":Landroid/view/View;
    .restart local v48    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v50    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_16
    const/16 v35, 0x0

    goto/16 :goto_3

    .end local v39    # "root":Landroid/view/View;
    .end local v48    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v50    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v49

    .restart local v49    # "widthMeasureSpec":I
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    .restart local v30    # "heightMeasureSpec":I
    goto/16 :goto_4

    .end local v30    # "heightMeasureSpec":I
    .end local v49    # "widthMeasureSpec":I
    :cond_18
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v49

    .restart local v49    # "widthMeasureSpec":I
    goto :goto_10

    :cond_19
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    .restart local v30    # "heightMeasureSpec":I
    goto/16 :goto_4

    .restart local v15    # "canDraw":Z
    .restart local v22    # "contentHeight":I
    .restart local v24    # "contentWidth":I
    .restart local v37    # "posX":I
    .restart local v38    # "posY":I
    :cond_1a
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    add-int v4, v38, v22

    iget v5, v13, Landroid/graphics/Rect;->top:I

    if-le v4, v5, :cond_1b

    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v38

    if-lt v0, v4, :cond_7

    :cond_1b
    const/4 v15, 0x1

    goto/16 :goto_5

    .restart local v16    # "containerLeftOnWindow":I
    .restart local v21    # "containerRightOnWindow":I
    .restart local v33    # "isPopupAboveHorizontal":Z
    .restart local v36    # "marginForHoverRing":I
    :cond_1c
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    iget v4, v13, Landroid/graphics/Rect;->left:I

    move/from16 v0, v37

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v16

    add-int v4, v37, v24

    iget v5, v13, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v25

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v21

    goto/16 :goto_6

    :cond_1d
    const/16 v33, 0x1

    goto/16 :goto_7

    :cond_1e
    const-string v4, "HoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: Call setOverTopForCotainer(false)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setOverTopForCotainer(Z)V

    goto/16 :goto_8

    .restart local v23    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    :cond_1f
    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v0, v22

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_9

    .restart local v17    # "containerPaddingBottom":I
    .restart local v18    # "containerPaddingLeft":I
    .restart local v19    # "containerPaddingRight":I
    .restart local v20    # "containerPaddingTop":I
    :cond_20
    move/from16 v20, v36

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    goto/16 :goto_a

    :cond_21
    if-eqz v33, :cond_24

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_23

    move/from16 v17, v36

    :cond_22
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    goto/16 :goto_a

    :cond_23
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_22

    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    add-int v4, v4, v36

    add-int v5, v38, v22

    sub-int v17, v4, v5

    goto :goto_11

    :cond_24
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_26

    move/from16 v20, v36

    :cond_25
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    goto/16 :goto_a

    :cond_26
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_25

    iget v4, v13, Landroid/graphics/Rect;->top:I

    sub-int v4, v4, v36

    sub-int v20, v38, v4

    goto :goto_12

    :cond_27
    move/from16 v37, v16

    goto/16 :goto_b

    :cond_28
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    if-eqz v33, :cond_29

    move/from16 v37, v16

    goto/16 :goto_b

    :cond_29
    move/from16 v37, v16

    sub-int v38, v38, v20

    goto/16 :goto_b

    .restart local v29    # "fPos":Landroid/graphics/PointF;
    .restart local v31    # "hoverPointXonContainer":I
    .restart local v32    # "hoverPointYonContainer":I
    .restart local v43    # "scaleFactor":Landroid/graphics/PointF;
    .restart local v47    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_2a
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    int-to-float v4, v4

    move/from16 v0, v37

    int-to-float v5, v0

    move-object/from16 v0, v43

    iget v6, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v43

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    int-to-float v4, v4

    move/from16 v0, v38

    int-to-float v5, v0

    move-object/from16 v0, v43

    iget v6, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v43

    iget v5, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_c

    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v6, v22, v6

    move-object/from16 v0, v29

    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    move-object/from16 v0, v29

    iget v8, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_d

    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v6, v22, v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    move/from16 v7, v31

    move/from16 v8, v32

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_d

    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v6, v22, v6

    const/4 v9, 0x1

    const/4 v10, 0x0

    move/from16 v7, v31

    move/from16 v8, v32

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_d

    .end local v29    # "fPos":Landroid/graphics/PointF;
    .end local v43    # "scaleFactor":Landroid/graphics/PointF;
    .end local v47    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_2e
    invoke-virtual {v14}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v47

    .restart local v47    # "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v47, :cond_12

    invoke-virtual/range {v47 .. v47}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v43

    .restart local v43    # "scaleFactor":Landroid/graphics/PointF;
    new-instance v29, Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .restart local v29    # "fPos":Landroid/graphics/PointF;
    move-object/from16 v0, v43

    iget v4, v0, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2f

    move-object/from16 v0, v43

    iget v4, v0, Landroid/graphics/PointF;->y:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_32

    :cond_2f
    invoke-virtual {v14}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_30

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    int-to-float v4, v4

    move/from16 v0, v37

    int-to-float v5, v0

    move-object/from16 v0, v43

    iget v6, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v43

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    int-to-float v4, v4

    move/from16 v0, v38

    int-to-float v5, v0

    move-object/from16 v0, v43

    iget v6, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v43

    iget v5, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->y:F

    :goto_13
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v6, v6, v20

    move-object/from16 v0, v29

    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    move-object/from16 v0, v29

    iget v8, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_e

    :cond_30
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    int-to-float v4, v4

    move/from16 v0, v37

    int-to-float v5, v0

    move-object/from16 v0, v43

    iget v6, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v43

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    int-to-float v4, v4

    move/from16 v0, v38

    int-to-float v5, v0

    move-object/from16 v0, v43

    iget v6, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v43

    iget v5, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->y:F

    goto :goto_13

    :cond_31
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v6, v6, v20

    move-object/from16 v0, v29

    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    move-object/from16 v0, v29

    iget v8, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_e

    :cond_32
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_33

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v6, v6, v20

    const/4 v9, 0x0

    const/4 v10, 0x1

    move/from16 v7, v31

    move/from16 v8, v32

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_e

    :cond_33
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v6, v6, v20

    const/4 v9, 0x1

    const/4 v10, 0x0

    move/from16 v7, v31

    move/from16 v8, v32

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_e

    .end local v16    # "containerLeftOnWindow":I
    .end local v17    # "containerPaddingBottom":I
    .end local v18    # "containerPaddingLeft":I
    .end local v19    # "containerPaddingRight":I
    .end local v20    # "containerPaddingTop":I
    .end local v21    # "containerRightOnWindow":I
    .end local v23    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    .end local v29    # "fPos":Landroid/graphics/PointF;
    .end local v31    # "hoverPointXonContainer":I
    .end local v32    # "hoverPointYonContainer":I
    .end local v33    # "isPopupAboveHorizontal":Z
    .end local v36    # "marginForHoverRing":I
    .end local v43    # "scaleFactor":Landroid/graphics/PointF;
    .end local v47    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_34
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v4, :cond_38

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-nez v4, :cond_38

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-nez v4, :cond_35

    new-instance v4, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->getChildCount()I

    move-result v4

    if-nez v4, :cond_37

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->addView(Landroid/view/View;)V

    :cond_36
    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_12

    const-string v4, "HoverPopupWindow"

    const-string v5, "computePopupPosition: Call resetTimeout()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->resetTimeout()V

    goto/16 :goto_e

    :cond_37
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->addView(Landroid/view/View;)V

    goto :goto_14

    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->removeAllViews()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    goto/16 :goto_e

    :cond_39
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const v5, 0x10304e6

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto/16 :goto_f
.end method

.method protected convertDPtoPX(FLandroid/util/DisplayMetrics;)I
    .locals 2
    .param p1, "dp"    # F
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected createPopupWindow()Landroid/widget/PopupWindow;
    .locals 4

    .prologue
    const/4 v3, -0x2

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isScaleWindow()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    :cond_0
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .end local v0    # "anchorView":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v1

    :cond_2
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HoverPopupWindow;->showPenPointEffect(Z)V

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->dismissPopup()V

    iput-object v1, p0, Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    iput-object v1, p0, Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    iput-object v1, p0, Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    return-void
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    return v0
.end method

.method public getFHAnimationEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    return v0
.end method

.method public getFHGuideLineEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    return v0
.end method

.method public getInfoPickerMoveEabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    return v0
.end method

.method public getIsDismissTouchableHPWOnActionUp()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method protected getPriorityContentText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initInstance()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iput-boolean v4, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    const/16 v1, 0x12c

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    const/16 v1, 0x3031

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    iput v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iput v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    iput v2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    iput v2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    iput v2, p0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    iput v2, p0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingLeft:I

    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingRight:I

    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingTop:I

    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingBottom:I

    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    const v1, 0x10304e5

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->misDialer:Z

    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsProgressBar:Z

    iput-boolean v4, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    iput-boolean v4, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabledByApp:Z

    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabledByApp:Z

    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabledByApp:Z

    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z

    iput-boolean v4, p0, Landroid/widget/HoverPopupWindow;->mIsFHSoundAndHapticEnabled:Z

    iput v2, p0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    iput v2, p0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsSPenPointChanged:Z

    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mShowPopupAlways:Z

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x182

    const v2, 0x10803fd

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    const/16 v1, 0x181

    const v2, -0x866e57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->initCoverManager()V

    return-void
.end method

.method public isDialer()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->misDialer:Z

    return v0
.end method

.method protected isFingerHoveringSettingsEnabled(I)Z
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, -0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v0, v2

    .local v0, "isFingerHoveringOn":Z
    :goto_0
    if-eqz v0, :cond_0

    if-eq p1, v2, :cond_0

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_information_preview"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_4

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_pregress_bar_preview"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isProgressBar()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    :goto_1
    return v1

    .end local v0    # "isFingerHoveringOn":Z
    :cond_1
    move v0, v1

    goto :goto_0

    .restart local v0    # "isFingerHoveringOn":Z
    :cond_2
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_speed_dial_tip"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isDialer()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_4
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_speed_dial_tip"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_5

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isDialer()Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_pregress_bar_preview"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isProgressBar()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_1
.end method

.method public isHoverPopupPossible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .local v0, "ret":Z
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isHoveringSettingEnabled(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "ret":Z
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->isSPenHoveringSettingsEnabled(I)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->isFingerHoveringSettingsEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isLockScreenMode()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    iget-object v9, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    const-string v9, "keyguard"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .local v4, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v3, 0x0

    .local v3, "isLockState":Z
    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    iget-object v8, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    const-string v8, "window"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    .local v5, "windowManager":Landroid/view/IWindowManager;
    const/4 v0, 0x1

    .local v0, "isCoverOpen":Z
    if-eqz v5, :cond_0

    :cond_0
    const/4 v1, 0x0

    .local v1, "isDayNoteRunning":Z
    iget-object v8, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "is_cover_note_running"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_1

    const/4 v1, 0x1

    :cond_1
    const/4 v2, 0x0

    .local v2, "isLockScreenAndExceptionalCase":Z
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    move v2, v6

    :goto_0
    return v2

    :cond_2
    move v2, v7

    goto :goto_0
.end method

.method protected isMouseHoveringSettingsEnabled(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isProgressBar()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsProgressBar:Z

    return v0
.end method

.method protected isSPenHoveringSettingsEnabled(I)Z
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, -0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .local v0, "isSPenHoveringOn":Z
    :goto_0
    if-eqz v0, :cond_4

    if-ne p1, v1, :cond_2

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_icon_label"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_4

    :cond_0
    :goto_1
    return v1

    .end local v0    # "isSPenHoveringOn":Z
    :cond_1
    move v0, v2

    goto :goto_0

    .restart local v0    # "isSPenHoveringOn":Z
    :cond_2
    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    :cond_3
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_information_preview"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eq v3, v1, :cond_0

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeDefaultContentView()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->makeToolTipContentView()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .local v4, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    .local v19, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    .local v20, "y":F
    const/16 v21, 0x9

    move/from16 v0, v21

    if-ne v4, v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    sub-long v16, v22, v24

    .local v16, "timeDealy":J
    const-wide/16 v22, 0x3e8

    cmp-long v21, v16, v22

    if-lez v21, :cond_0

    const/16 v21, 0x1

    .end local v16    # "timeDealy":J
    :goto_0
    return v21

    .restart local v16    # "timeDealy":J
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v11

    .local v11, "isPointInValidHoverArea":Z
    if-eqz v11, :cond_2

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    .end local v11    # "isPointInValidHoverArea":Z
    .end local v16    # "timeDealy":J
    :cond_1
    :goto_1
    const/16 v21, 0x0

    goto :goto_0

    .restart local v11    # "isPointInValidHoverArea":Z
    .restart local v16    # "timeDealy":J
    :cond_2
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    goto :goto_1

    .end local v11    # "isPointInValidHoverArea":Z
    .end local v16    # "timeDealy":J
    :cond_3
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v21

    move/from16 v0, v21

    float-to-int v13, v0

    .local v13, "rawX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v21

    move/from16 v0, v21

    float-to-int v14, v0

    .local v14, "rawY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v21

    move/from16 v0, v21

    float-to-int v13, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v21

    move/from16 v0, v21

    float-to-int v14, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/widget/HoverPopupWindow;->setHoveringPoint(II)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v11

    .restart local v11    # "isPointInValidHoverArea":Z
    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    move/from16 v21, v0

    if-nez v21, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    sub-long v16, v22, v24

    .restart local v16    # "timeDealy":J
    const-wide/16 v22, 0x3e8

    cmp-long v21, v16, v22

    if-lez v21, :cond_4

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_4
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow;->show()V

    const/16 v21, 0x1

    goto/16 :goto_0

    .end local v16    # "timeDealy":J
    :cond_5
    if-nez v11, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    move/from16 v21, v0

    if-nez v21, :cond_6

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    const/16 v21, 0x1

    goto/16 :goto_0

    .end local v11    # "isPointInValidHoverArea":Z
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    move/from16 v21, v0

    if-nez v21, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v12

    .local v12, "popupView":Landroid/view/View;
    instance-of v0, v12, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move/from16 v21, v0

    if-eqz v21, :cond_b

    move-object v6, v12

    check-cast v6, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    .local v6, "containerView":Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getPaddingLeft()I

    move-result v9

    .local v9, "infopickerLeftLimit":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWidth()I

    move-result v21

    add-int v10, v21, v9

    .local v10, "infopickerRightLimit":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPickerLimit(II)V

    .end local v9    # "infopickerLeftLimit":I
    .end local v10    # "infopickerRightLimit":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .local v5, "anchorView":Landroid/view/View;
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v18

    .local v18, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v18, :cond_a

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v15

    .local v15, "scaleFactor":Landroid/graphics/PointF;
    new-instance v8, Landroid/graphics/PointF;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v8, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .local v8, "fPos":Landroid/graphics/PointF;
    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    cmpl-float v21, v21, v22

    if-nez v21, :cond_9

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    cmpl-float v21, v21, v22

    if-eqz v21, :cond_f

    :cond_9
    invoke-virtual {v5}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v21

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_e

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .local v7, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {v5, v7}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    int-to-float v0, v13

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    sub-float v21, v21, v22

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v8, Landroid/graphics/PointF;->x:F

    int-to-float v0, v14

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    sub-float v21, v21, v22

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v8, Landroid/graphics/PointF;->y:F

    .end local v7    # "displayFrame":Landroid/graphics/Rect;
    :goto_3
    iget v0, v8, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    iget v0, v8, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLineEndPoint(II)V

    .end local v8    # "fPos":Landroid/graphics/PointF;
    .end local v15    # "scaleFactor":Landroid/graphics/PointF;
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-nez v21, :cond_10

    invoke-virtual {v6}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->updateDecoration()V

    .end local v5    # "anchorView":Landroid/view/View;
    .end local v6    # "containerView":Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    .end local v12    # "popupView":Landroid/view/View;
    .end local v18    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mToolType:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_c

    invoke-direct/range {p0 .. p0}, Landroid/widget/HoverPopupWindow;->resetTimeout()V

    :cond_c
    const/16 v21, 0x1

    goto/16 :goto_0

    .restart local v6    # "containerView":Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    .restart local v12    # "popupView":Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto/16 :goto_2

    .restart local v5    # "anchorView":Landroid/view/View;
    .restart local v8    # "fPos":Landroid/graphics/PointF;
    .restart local v15    # "scaleFactor":Landroid/graphics/PointF;
    .restart local v18    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_e
    int-to-float v0, v13

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    sub-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v8, Landroid/graphics/PointF;->x:F

    int-to-float v0, v14

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    sub-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v8, Landroid/graphics/PointF;->y:F

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    move/from16 v21, v0

    sub-int v21, v13, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    move/from16 v22, v0

    sub-int v22, v14, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLineEndPoint(II)V

    goto/16 :goto_4

    .end local v8    # "fPos":Landroid/graphics/PointF;
    .end local v15    # "scaleFactor":Landroid/graphics/PointF;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    move/from16 v21, v0

    if-nez v21, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_12

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setFHGuideLineForCotainer(Z)V

    :cond_12
    invoke-virtual {v6}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->updateDecoration()V

    goto/16 :goto_5

    .end local v5    # "anchorView":Landroid/view/View;
    .end local v6    # "containerView":Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    .end local v12    # "popupView":Landroid/view/View;
    .end local v13    # "rawX":I
    .end local v14    # "rawY":I
    .end local v18    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_13
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v4, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v21, v0

    if-eqz v21, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPopupState(I)V

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    if-eqz v21, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v21

    if-eqz v21, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeMessages(I)V

    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v21, 0x1

    goto/16 :goto_0
.end method

.method protected postDismiss(I)V
    .locals 4
    .param p1, "ms"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    new-instance v1, Landroid/widget/HoverPopupWindow$6;

    invoke-direct {v1, p0}, Landroid/widget/HoverPopupWindow$6;-><init>(Landroid/widget/HoverPopupWindow;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 2
    .param p1, "aniStyle"    # I

    .prologue
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_0
    return-void
.end method

.method public setContent(I)V
    .locals 1
    .param p1, "resId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mContentResId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    iput-object p2, p0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    return-void
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    return-void
.end method

.method public setDismissTouchableHPWOnActionUp(Z)V
    .locals 0
    .param p1, "bDismissTouchableHPWOnActionUp"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    return-void
.end method

.method public setFHAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabledByApp:Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabledByApp(ZZ)V

    return-void
.end method

.method public setFHAnimationEnabledByApp(ZZ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "calledByApp"    # Z

    .prologue
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabledByApp:Z

    if-eq v0, v1, :cond_0

    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    goto :goto_0
.end method

.method public setFHGuideLineEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabledByApp:Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabledByApp(ZZ)V

    return-void
.end method

.method public setFHGuideLineEnabledByApp(ZZ)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "calledByApp"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-ne v0, v1, :cond_1

    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabledByApp:Z

    if-eq v0, v1, :cond_0

    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-ne v0, v1, :cond_3

    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    goto :goto_0
.end method

.method public setFHSoundAndHapticEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHSoundAndHapticEnabled:Z

    return-void
.end method

.method public setGuideLineEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    return-void
.end method

.method public setGuideLineFadeOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    int-to-float v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    return-void
.end method

.method public setGuideLineStyle(II)V
    .locals 0
    .param p1, "ringDrawable"    # I
    .param p2, "lineColor"    # I

    .prologue
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    iput p2, p0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    return-void
.end method

.method public setHoverDetectTime(I)V
    .locals 0
    .param p1, "ms"    # I

    .prologue
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    return-void
.end method

.method public setHoverPaddingArea(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingLeft:I

    iput p3, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingRight:I

    iput p2, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingTop:I

    iput p4, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingBottom:I

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingLeft:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingRight:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingTop:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingBottom:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    :cond_1
    return-void
.end method

.method public setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/HoverPopupWindow$HoverPopupListener;

    .prologue
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    return-void
.end method

.method public setHoverPopupPreShowListener(Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

    .prologue
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mPreShowListener:Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

    return-void
.end method

.method public setHoverPopupToolType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    return-void
.end method

.method public setHoveringPoint(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    iput p2, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    return-void
.end method

.method public setInfoPickerColorToAndMoreBottomImg(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z

    return-void
.end method

.method public setInfoPickerMoveEabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabledByApp:Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->setInfoPickerMoveEabledByApp(ZZ)V

    return-void
.end method

.method public setInfoPickerMoveEabledByApp(ZZ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "calledByApp"    # Z

    .prologue
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabledByApp:Z

    if-eq v0, v1, :cond_0

    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    goto :goto_0
.end method

.method protected setInstanceByType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 v0, 0x12c

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    const/16 v0, 0x5153

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    const v0, 0x10304e5

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    :cond_0
    return-void
.end method

.method public setInstanceOfDialer(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->misDialer:Z

    return-void
.end method

.method public setInstanceOfProgressBar(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsProgressBar:Z

    return-void
.end method

.method public setOverTopPickerOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v0, p1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setOverTopPickerOffset(I)V

    :cond_0
    return-void
.end method

.method public setPickerXOffset(I)V
    .locals 0
    .param p1, "xOffset"    # I

    .prologue
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPickerXoffset:I

    return-void
.end method

.method public setPopupGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    return-void
.end method

.method public setPopupPosOffset(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    iput p2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    return-void
.end method

.method public setShowPopupAlways(Z)V
    .locals 0
    .param p1, "always"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mShowPopupAlways:Z

    return-void
.end method

.method public setTouchablePopup(Z)V
    .locals 2
    .param p1, "isTouchable"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    invoke-virtual {p0, v0}, Landroid/widget/HoverPopupWindow;->show(I)V

    return-void
.end method

.method public show(I)V
    .locals 7
    .param p1, "type"    # I

    .prologue
    const/4 v6, 0x1

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    if-eq p1, v2, :cond_0

    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->setInstanceByType(I)V

    :cond_0
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mPreShowListener:Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mPreShowListener:Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

    invoke-interface {v2}, Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;->onHoverPopupPreShow()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz v2, :cond_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isHoverPopupPossible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->isHoveringSettingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->isViewCoverClose()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isLockScreenMode()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .local v0, "root":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_4

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .end local v1    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getStateHashCode()I

    move-result v2

    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHashCodeForViewState:I

    invoke-virtual {p0, v6}, Landroid/widget/HoverPopupWindow;->showPenPointEffect(Z)V

    iget-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsFHSoundAndHapticEnabled:Z

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    if-ne v2, v6, :cond_5

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view_sound_and_haptic_feedback"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_5

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->playSoundAndHapticFeedback()V

    :cond_5
    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    if-ne v2, v6, :cond_6

    new-instance v2, Landroid/widget/HoverPopupWindow$4;

    invoke-direct {v2, p0}, Landroid/widget/HoverPopupWindow$4;-><init>(Landroid/widget/HoverPopupWindow;)V

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    :cond_6
    new-instance v2, Landroid/widget/HoverPopupWindow$5;

    invoke-direct {v2, p0}, Landroid/widget/HoverPopupWindow$5;-><init>(Landroid/widget/HoverPopupWindow;)V

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iget v4, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v6, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    goto/16 :goto_0
.end method

.method protected showPenPointEffect(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x1

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-ne p1, v2, :cond_1

    const/16 v0, 0xa

    const/4 v1, -0x1

    :try_start_0
    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsSPenPointChanged:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsSPenPointChanged:Z

    if-ne v0, v2, :cond_0

    const/16 v0, 0x14

    const/4 v1, -0x1

    :try_start_1
    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsSPenPointChanged:Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public updateHoverPopup()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/HoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    :goto_1
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/HoverPopupWindow;->updateHoverPopup(Landroid/view/View;III)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_1
.end method
