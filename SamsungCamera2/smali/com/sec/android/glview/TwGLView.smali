.class public abstract Lcom/sec/android/glview/TwGLView;
.super Ljava/lang/Object;
.source "TwGLView.java"

# interfaces
.implements Landroid/view/IGLView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;,
        Lcom/sec/android/glview/TwGLView$OnLongClickListener;,
        Lcom/sec/android/glview/TwGLView$OnClickListener;,
        Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;,
        Lcom/sec/android/glview/TwGLView$OnFocusListener;,
        Lcom/sec/android/glview/TwGLView$OnKeyListener;,
        Lcom/sec/android/glview/TwGLView$OnTouchListener;,
        Lcom/sec/android/glview/TwGLView$OnDragListener;
    }
.end annotation


# static fields
.field public static final CLICKABLE:I = 0x4000

.field private static final DEFAULT_REPEAT_CLICK_INTERVAL:I = 0x64

.field public static final DIM_ALPHA_VALUE:F = 0.45f

.field public static final DISABLED:I = 0x20

.field private static final DRAG_HOLD_TIME_ABSOLUTE:I = 0x0

.field private static final DRAG_HOLD_TIME_HIGH:I = 0x12c

.field private static final DRAG_HOLD_TIME_NORMAL:I = 0x1f4

.field public static final DRAG_SENSITIVITY_ABSOLUTE:I = 0x0

.field public static final DRAG_SENSITIVITY_HIGH:I = 0x1

.field public static final DRAG_SENSITIVITY_NORMAL:I = 0x2

.field public static final FOCUSABLE:I = 0x1

.field private static final FOCUSABLE_MASK:I = 0x1

.field public static final FOCUS_BACKWARD:I = 0x1

.field public static final FOCUS_DOWN:I = 0x82

.field public static final FOCUS_FORWARD:I = 0x2

.field public static final FOCUS_LEFT:I = 0x11

.field public static final FOCUS_RIGHT:I = 0x42

.field public static final FOCUS_UP:I = 0x21

.field public static final GONE:I = 0x8

.field public static final H_ALIGN_CENTER:I = 0x2

.field public static final H_ALIGN_LEFT:I = 0x1

.field public static final H_ALIGN_NONE:I = 0x0

.field public static final H_ALIGN_RIGHT:I = 0x3

.field public static final INVISIBLE:I = 0x4

.field private static final LONG_CLICK_TIME:I = 0x1f4

.field public static final NOT_FOCUSABLE:I = 0x0

.field private static final NO_ID:I = -0x1

.field public static final ORIENTATION_0:I = 0x0

.field public static final ORIENTATION_180:I = 0x2

.field public static final ORIENTATION_270:I = 0x3

.field public static final ORIENTATION_90:I = 0x1

.field public static final VISIBLE:I = 0x0

.field public static final V_ALIGN_BOTTOM:I = 0x3

.field public static final V_ALIGN_MIDDLE:I = 0x2

.field public static final V_ALIGN_NONE:I = 0x0

.field public static final V_ALIGN_TOP:I = 0x1


# instance fields
.field private glCoordinate:[F

.field private glTransformedCoordinate:[F

.field protected mAlpha:F

.field protected mAlphaChanged:Z

.field private mAnimGLMatrix:[F

.field private mAnimMatrix:[F

.field private mAnimation:Landroid/view/animation/Animation;

.field private mAnimationFinished:Z

.field private mAnimationPending:Z

.field private mAnimationStarted:Z

.field private mAnimationStartedEvent:Z

.field private mAnimationTimeSet:Z

.field protected mAsyncLoad:Z

.field private mBackground:Lcom/sec/android/glview/TwGLView;

.field private mBackgroundResId:I

.field private mBackgroundRotatable:Z

.field protected mBaseDepth:F

.field protected mBaseLeft:F

.field protected mBaseTop:F

.field private mBound:Landroid/graphics/RectF;

.field private mBypassTouch:Z

.field private mCenterPivot:Z

.field private mClipRect:Landroid/graphics/Rect;

.field private mClipping:Z

.field private mCombinedMatrix:[F

.field private mCombinedMatrixWithoutRotate:[F

.field private mContinuousDrawMode:Z

.field private mDefaultOrientation:I

.field protected mDepthChanged:Z

.field private mDimmed:Z

.field private mDragSensitivity:I

.field private mDragVibration:Z

.field private mDraggable:Z

.field protected mDragging:Z

.field protected mDrawFirstTime:Z

.field private mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

.field private mFocused:Z

.field protected final mGLContext:Lcom/sec/android/glview/TwGLContext;

.field protected mHasExtraDescription:Z

.field private mHideAfterAnimation:Z

.field private mHoverFocused:Z

.field private mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

.field protected mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

.field protected mHoverPopupGravity:I

.field protected mHoverPopupOffsetX:I

.field protected mHoverPopupOffsetY:I

.field private final mID:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        resolveId = true
    .end annotation
.end field

.field protected mInScreen:Z

.field private mInternalFocus:Z

.field protected mIsClipped:Z

.field private mLastOrientation:I

.field protected mLayoutUpdated:Z

.field private mLeft:F

.field private mLeftBottom:[F

.field private mLeftTop:[F

.field private mLeftTopCoordinates:[Landroid/graphics/RectF;

.field private mLoaded:Z

.field private mLoading:Z

.field private mLongClickVibration:Z

.field private mLongClickable:Z

.field protected mManualClip:Z

.field private mMatrix:[F

.field private mMatrixNotRotate:[F

.field private mNextFocusDownId:I

.field private mNextFocusLeftId:I

.field private mNextFocusRightId:I

.field private mNextFocusUpId:I

.field private mNonTransparent:Z

.field private mObjectTag:Ljava/lang/String;

.field private mOldAlpha:F

.field private mOldClipRect:Landroid/graphics/Rect;

.field protected mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

.field protected mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

.field protected mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

.field protected mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

.field protected mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

.field protected mOnLongClickListener:Lcom/sec/android/glview/TwGLView$OnLongClickListener;

.field private mOnOrientationChangedListener:Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;

.field protected mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

.field private mOrientation:I

.field private mOriginalClipRect:Landroid/graphics/Rect;

.field protected mOriginalDepth:F

.field protected mOriginalLeft:F

.field protected mOriginalTop:F

.field protected mPaddings:Landroid/graphics/Rect;

.field public mParent:Lcom/sec/android/glview/TwGLView;

.field protected mParentClipRect:Landroid/graphics/Rect;

.field private mParentHAlign:I

.field private mParentVAlign:I

.field protected mPositionChanged:Z

.field private mPreviousDragX:F

.field private mPreviousDragY:F

.field private mRepeatClickInterval:I

.field private mRepeatClickWhenLongClicked:Z

.field private mRightBottom:[F

.field private mRightTop:[F

.field private mRotatable:Z

.field private mRotateAnimation:Z

.field private mRotateAnimationDuration:I

.field private mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mRotationAnimatedOnFirstDraw:Z

.field private mRotationMatrix:[F

.field protected mScaleChanged:Z

.field private mScaleMatrix:[F

.field private mScaleX:F

.field private mScaleY:F

.field protected mSizeGiven:Z

.field protected mSizeSpecified:Z

.field public mSubTitle:Ljava/lang/String;

.field private mTempMatrix:[F

.field private mTempOrientation:I

.field protected mThis:Lcom/sec/android/glview/TwGLView;

.field public mTitle:Ljava/lang/String;

.field private mToggleButton:Z

.field private mTop:F

.field private mTransformation:Landroid/view/animation/Transformation;

.field protected mTransformedScreenCoordinate:[F

.field private mTranslateX:F

.field private mTranslateY:F

.field private mTranslateZ:F

.field private mTranslationMatrix:[F

.field public mUseHover2Res:Z

.field protected mViewFlags:I

.field private mViewId:I

.field private mViewTag:I

.field private mVisibility:I

.field private mZCoordinate:F

.field private repeatClick:Ljava/lang/Runnable;

.field private setDragging:Ljava/lang/Runnable;

.field private setLongClick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 7
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    const/16 v2, 0x10

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    .line 70
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mID:I

    .line 78
    const-string v1, "NONE"

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mObjectTag:Ljava/lang/String;

    .line 93
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 96
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    .line 99
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    .line 102
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    .line 105
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    .line 108
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    .line 111
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    .line 114
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    .line 117
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 119
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    .line 122
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mRotationAnimatedOnFirstDraw:Z

    .line 142
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 152
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mDimmed:Z

    .line 155
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mNonTransparent:Z

    .line 157
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    .line 159
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundRotatable:Z

    .line 161
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    .line 163
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mUseHover2Res:Z

    .line 198
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    .line 201
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    .line 204
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    .line 207
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTempMatrix:[F

    .line 210
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    .line 213
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrixWithoutRotate:[F

    .line 216
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    .line 219
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    .line 222
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    .line 225
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrixNotRotate:[F

    .line 228
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    .line 231
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    .line 234
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    .line 237
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    .line 240
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    .line 243
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F

    .line 246
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 249
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    .line 251
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F

    .line 254
    iput-object v6, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    .line 257
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mContinuousDrawMode:Z

    .line 272
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    .line 275
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    .line 278
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    .line 281
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    .line 284
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    .line 287
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z

    .line 289
    iput-object v6, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 291
    const/16 v1, 0x12c

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationDuration:I

    .line 318
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mParentHAlign:I

    .line 321
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mParentVAlign:I

    .line 324
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 326
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 336
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    .line 338
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDepthChanged:Z

    .line 340
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 342
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mScaleChanged:Z

    .line 354
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 357
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    .line 360
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    .line 362
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mOldAlpha:F

    .line 368
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mAlphaChanged:Z

    .line 371
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    .line 374
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    .line 377
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    .line 380
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    .line 383
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    .line 386
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    .line 388
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalDepth:F

    .line 390
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 392
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 394
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    .line 400
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    .line 403
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    .line 415
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    .line 418
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    .line 421
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    .line 424
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDragVibration:Z

    .line 426
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAsyncLoad:Z

    .line 428
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z

    .line 430
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mTempOrientation:I

    .line 437
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    .line 439
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    .line 441
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    .line 443
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    .line 445
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    .line 447
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mToggleButton:Z

    .line 451
    iput-object v6, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 453
    iput-object v6, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 457
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mLongClickable:Z

    .line 459
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mLongClickVibration:Z

    .line 461
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickWhenLongClicked:Z

    .line 465
    const/16 v1, 0x64

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickInterval:I

    .line 469
    iput-object v6, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    .line 470
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetX:I

    .line 471
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetY:I

    .line 472
    const/16 v1, 0x5053

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupGravity:I

    .line 473
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mHasExtraDescription:Z

    .line 476
    new-instance v1, Lcom/sec/android/glview/TwGLView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$1;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    .line 494
    new-instance v1, Lcom/sec/android/glview/TwGLView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$2;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->setLongClick:Ljava/lang/Runnable;

    .line 515
    new-instance v1, Lcom/sec/android/glview/TwGLView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$3;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->repeatClick:Ljava/lang/Runnable;

    .line 554
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    .line 619
    iput-object v6, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    .line 647
    iput-object v6, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 666
    iput-object v6, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    .line 672
    iput-object v6, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .line 703
    iput-object v6, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 729
    iput-object v6, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    .line 749
    iput-object v6, p0, Lcom/sec/android/glview/TwGLView;->mOnLongClickListener:Lcom/sec/android/glview/TwGLView$OnLongClickListener;

    .line 806
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    .line 807
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iput p2, v1, Landroid/graphics/RectF;->left:F

    .line 808
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iput p3, v1, Landroid/graphics/RectF;->top:F

    .line 809
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    .line 811
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    .line 812
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    .line 813
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalDepth:F

    .line 815
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 816
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 817
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    .line 819
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 820
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetTransformMatrix()V

    .line 822
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    .line 823
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 825
    invoke-virtual {p0, v3, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 826
    invoke-virtual {p0, v5, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 827
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 828
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 830
    iput-object p0, p0, Lcom/sec/android/glview/TwGLView;->mThis:Lcom/sec/android/glview/TwGLView;

    .line 832
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    .line 833
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFF)V
    .locals 7
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "depth"    # F

    .prologue
    const/4 v6, 0x0

    const/16 v2, 0x10

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    .line 70
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mID:I

    .line 78
    const-string v1, "NONE"

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mObjectTag:Ljava/lang/String;

    .line 93
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 96
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    .line 99
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    .line 102
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    .line 105
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    .line 108
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    .line 111
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    .line 114
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    .line 117
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 119
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    .line 122
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mRotationAnimatedOnFirstDraw:Z

    .line 142
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 152
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mDimmed:Z

    .line 155
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mNonTransparent:Z

    .line 157
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    .line 159
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundRotatable:Z

    .line 161
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    .line 163
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mUseHover2Res:Z

    .line 198
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    .line 201
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    .line 204
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    .line 207
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTempMatrix:[F

    .line 210
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    .line 213
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrixWithoutRotate:[F

    .line 216
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    .line 219
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    .line 222
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    .line 225
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrixNotRotate:[F

    .line 228
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    .line 231
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    .line 234
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    .line 237
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    .line 240
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    .line 243
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F

    .line 246
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 249
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    .line 251
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F

    .line 254
    iput-object v5, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    .line 257
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mContinuousDrawMode:Z

    .line 272
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    .line 275
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    .line 278
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    .line 281
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    .line 284
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    .line 287
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z

    .line 289
    iput-object v5, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 291
    const/16 v1, 0x12c

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationDuration:I

    .line 318
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mParentHAlign:I

    .line 321
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mParentVAlign:I

    .line 324
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 326
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 336
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    .line 338
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mDepthChanged:Z

    .line 340
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 342
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mScaleChanged:Z

    .line 354
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 357
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    .line 360
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    .line 362
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mOldAlpha:F

    .line 368
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAlphaChanged:Z

    .line 371
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    .line 374
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    .line 377
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    .line 380
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    .line 383
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    .line 386
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    .line 388
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mOriginalDepth:F

    .line 390
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 392
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 394
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    .line 400
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    .line 403
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    .line 415
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    .line 418
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    .line 421
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    .line 424
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mDragVibration:Z

    .line 426
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAsyncLoad:Z

    .line 428
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z

    .line 430
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mTempOrientation:I

    .line 437
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    .line 439
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    .line 441
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    .line 443
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    .line 445
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    .line 447
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mToggleButton:Z

    .line 451
    iput-object v5, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 453
    iput-object v5, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 457
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mLongClickable:Z

    .line 459
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mLongClickVibration:Z

    .line 461
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickWhenLongClicked:Z

    .line 465
    const/16 v1, 0x64

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickInterval:I

    .line 469
    iput-object v5, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    .line 470
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetX:I

    .line 471
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetY:I

    .line 472
    const/16 v1, 0x5053

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupGravity:I

    .line 473
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mHasExtraDescription:Z

    .line 476
    new-instance v1, Lcom/sec/android/glview/TwGLView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$1;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    .line 494
    new-instance v1, Lcom/sec/android/glview/TwGLView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$2;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->setLongClick:Ljava/lang/Runnable;

    .line 515
    new-instance v1, Lcom/sec/android/glview/TwGLView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$3;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->repeatClick:Ljava/lang/Runnable;

    .line 554
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    .line 619
    iput-object v5, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    .line 647
    iput-object v5, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 666
    iput-object v5, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    .line 672
    iput-object v5, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .line 703
    iput-object v5, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 729
    iput-object v5, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    .line 749
    iput-object v5, p0, Lcom/sec/android/glview/TwGLView;->mOnLongClickListener:Lcom/sec/android/glview/TwGLView$OnLongClickListener;

    .line 848
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    .line 849
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iput p2, v1, Landroid/graphics/RectF;->left:F

    .line 850
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iput p3, v1, Landroid/graphics/RectF;->top:F

    .line 851
    iput p4, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    .line 853
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    .line 854
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    .line 855
    iput p4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalDepth:F

    .line 857
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 858
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 859
    iput p4, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    .line 861
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 862
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetTransformMatrix()V

    .line 864
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    .line 865
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 867
    invoke-virtual {p0, v3, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 868
    invoke-virtual {p0, v4, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 869
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 870
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 872
    iput-object p0, p0, Lcom/sec/android/glview/TwGLView;->mThis:Lcom/sec/android/glview/TwGLView;

    .line 874
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    .line 875
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 7
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    .line 70
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mID:I

    .line 78
    const-string v1, "NONE"

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mObjectTag:Ljava/lang/String;

    .line 93
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 96
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    .line 99
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    .line 102
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    .line 105
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    .line 108
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    .line 111
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    .line 114
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    .line 117
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 119
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    .line 122
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mRotationAnimatedOnFirstDraw:Z

    .line 142
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 152
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mDimmed:Z

    .line 155
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mNonTransparent:Z

    .line 157
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    .line 159
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundRotatable:Z

    .line 161
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    .line 163
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mUseHover2Res:Z

    .line 198
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    .line 201
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    .line 204
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    .line 207
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTempMatrix:[F

    .line 210
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    .line 213
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrixWithoutRotate:[F

    .line 216
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    .line 219
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    .line 222
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    .line 225
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrixNotRotate:[F

    .line 228
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    .line 231
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    .line 234
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    .line 237
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    .line 240
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    .line 243
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F

    .line 246
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 249
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    .line 251
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F

    .line 254
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    .line 257
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mContinuousDrawMode:Z

    .line 272
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    .line 275
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    .line 278
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    .line 281
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    .line 284
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    .line 287
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z

    .line 289
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 291
    const/16 v1, 0x12c

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationDuration:I

    .line 318
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mParentHAlign:I

    .line 321
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mParentVAlign:I

    .line 324
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 326
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_0
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 336
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    .line 338
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDepthChanged:Z

    .line 340
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 342
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mScaleChanged:Z

    .line 354
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 357
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    .line 360
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    .line 362
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mOldAlpha:F

    .line 368
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mAlphaChanged:Z

    .line 371
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    .line 374
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    .line 377
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    .line 380
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    .line 383
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    .line 386
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    .line 388
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mOriginalDepth:F

    .line 390
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 392
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 394
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    .line 400
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    .line 403
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    .line 415
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    .line 418
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    .line 421
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    .line 424
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDragVibration:Z

    .line 426
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAsyncLoad:Z

    .line 428
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z

    .line 430
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mTempOrientation:I

    .line 437
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    .line 439
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    .line 441
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    .line 443
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    .line 445
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    .line 447
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mToggleButton:Z

    .line 451
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 453
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 457
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mLongClickable:Z

    .line 459
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mLongClickVibration:Z

    .line 461
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickWhenLongClicked:Z

    .line 465
    const/16 v1, 0x64

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickInterval:I

    .line 469
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    .line 470
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetX:I

    .line 471
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetY:I

    .line 472
    const/16 v1, 0x5053

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupGravity:I

    .line 473
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mHasExtraDescription:Z

    .line 476
    new-instance v1, Lcom/sec/android/glview/TwGLView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$1;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    .line 494
    new-instance v1, Lcom/sec/android/glview/TwGLView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$2;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->setLongClick:Ljava/lang/Runnable;

    .line 515
    new-instance v1, Lcom/sec/android/glview/TwGLView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$3;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->repeatClick:Ljava/lang/Runnable;

    .line 554
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    .line 619
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    .line 647
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 666
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    .line 672
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .line 703
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 729
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    .line 749
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnLongClickListener:Lcom/sec/android/glview/TwGLView$OnLongClickListener;

    .line 892
    new-instance v1, Landroid/graphics/RectF;

    add-float v2, p2, p4

    add-float v3, p3, p5

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    .line 893
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    .line 895
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 896
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetTransformMatrix()V

    .line 898
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    .line 899
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    .line 900
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mOriginalDepth:F

    .line 902
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 903
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 904
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    .line 906
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    .line 907
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 909
    invoke-virtual {p0, v4, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 910
    invoke-virtual {p0, v5, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 911
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 912
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 914
    iput-object p0, p0, Lcom/sec/android/glview/TwGLView;->mThis:Lcom/sec/android/glview/TwGLView;

    .line 915
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    .line 916
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFF)V
    .locals 7
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "depth"    # F

    .prologue
    const/4 v6, 0x0

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    .line 70
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mID:I

    .line 78
    const-string v1, "NONE"

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mObjectTag:Ljava/lang/String;

    .line 93
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 96
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    .line 99
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    .line 102
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    .line 105
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    .line 108
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    .line 111
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    .line 114
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    .line 117
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 119
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    .line 122
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mRotationAnimatedOnFirstDraw:Z

    .line 142
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 152
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mDimmed:Z

    .line 155
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mNonTransparent:Z

    .line 157
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    .line 159
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundRotatable:Z

    .line 161
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    .line 163
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mUseHover2Res:Z

    .line 198
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    .line 201
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    .line 204
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    .line 207
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTempMatrix:[F

    .line 210
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    .line 213
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrixWithoutRotate:[F

    .line 216
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    .line 219
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    .line 222
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    .line 225
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrixNotRotate:[F

    .line 228
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    .line 231
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    .line 234
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    .line 237
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    .line 240
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    .line 243
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F

    .line 246
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 249
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    .line 251
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F

    .line 254
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    .line 257
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mContinuousDrawMode:Z

    .line 272
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    .line 275
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    .line 278
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    .line 281
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    .line 284
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    .line 287
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z

    .line 289
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 291
    const/16 v1, 0x12c

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationDuration:I

    .line 318
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mParentHAlign:I

    .line 321
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mParentVAlign:I

    .line 324
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 326
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_0
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 336
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    .line 338
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDepthChanged:Z

    .line 340
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 342
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mScaleChanged:Z

    .line 354
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 357
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    .line 360
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    .line 362
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mOldAlpha:F

    .line 368
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mAlphaChanged:Z

    .line 371
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    .line 374
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    .line 377
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    .line 380
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    .line 383
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    .line 386
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    .line 388
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mOriginalDepth:F

    .line 390
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 392
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 394
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    .line 400
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    .line 403
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    .line 415
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    .line 418
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    .line 421
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    .line 424
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDragVibration:Z

    .line 426
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAsyncLoad:Z

    .line 428
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z

    .line 430
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mTempOrientation:I

    .line 437
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    .line 439
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    .line 441
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    .line 443
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    .line 445
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    .line 447
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mToggleButton:Z

    .line 451
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 453
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 457
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mLongClickable:Z

    .line 459
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mLongClickVibration:Z

    .line 461
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickWhenLongClicked:Z

    .line 465
    const/16 v1, 0x64

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickInterval:I

    .line 469
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    .line 470
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetX:I

    .line 471
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetY:I

    .line 472
    const/16 v1, 0x5053

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupGravity:I

    .line 473
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mHasExtraDescription:Z

    .line 476
    new-instance v1, Lcom/sec/android/glview/TwGLView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$1;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    .line 494
    new-instance v1, Lcom/sec/android/glview/TwGLView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$2;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->setLongClick:Ljava/lang/Runnable;

    .line 515
    new-instance v1, Lcom/sec/android/glview/TwGLView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$3;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->repeatClick:Ljava/lang/Runnable;

    .line 554
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    .line 619
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    .line 647
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 666
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    .line 672
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .line 703
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 729
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    .line 749
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnLongClickListener:Lcom/sec/android/glview/TwGLView$OnLongClickListener;

    .line 935
    new-instance v1, Landroid/graphics/RectF;

    add-float v2, p2, p4

    add-float v3, p3, p5

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    .line 937
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 938
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetTransformMatrix()V

    .line 940
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    .line 941
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    .line 943
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 944
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 946
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    .line 947
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 949
    iput p6, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    .line 951
    invoke-virtual {p0, v4, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 952
    invoke-virtual {p0, v5, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 953
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 954
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 956
    iput-object p0, p0, Lcom/sec/android/glview/TwGLView;->mThis:Lcom/sec/android/glview/TwGLView;

    .line 957
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    .line 958
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/glview/TwGLView;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 46
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragX:F

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/glview/TwGLView;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 46
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragY:F

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragVibration:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLongClickable:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLongClickVibration:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickWhenLongClicked:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/glview/TwGLView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->repeatClick:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/glview/TwGLView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 46
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickInterval:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/glview/TwGLView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private declared-synchronized combineMatrices()V
    .locals 3

    .prologue
    .line 2793
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTempMatrix:[F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/Util;->multiplyMM([F[F[F)V

    .line 2794
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mTempMatrix:[F

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/Util;->multiplyMM([F[F[F)V

    .line 2795
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrixWithoutRotate:[F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/Util;->multiplyMM([F[F[F)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2799
    :goto_0
    monitor-exit p0

    return-void

    .line 2793
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2796
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private transformScreenCoordinates(IIII)V
    .locals 9
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/16 v8, 0xc

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3195
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v1, v1, v4

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v2, v2, v6

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v2, v2, v8

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 3196
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v1, v1, v5

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v2, v2, v7

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 3197
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v1, v1, v4

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v2, v2, v6

    int-to-float v3, p4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v2, v2, v8

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 3198
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v1, v1, v5

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v2, v2, v7

    int-to-float v3, p4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 3199
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v1, v1, v4

    int-to-float v2, p3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v2, v2, v6

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v2, v2, v8

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 3200
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v1, v1, v5

    int-to-float v2, p3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v2, v2, v7

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 3201
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v1, v1, v4

    int-to-float v2, p3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v2, v2, v6

    int-to-float v3, p4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v2, v2, v8

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 3202
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v1, v1, v5

    int-to-float v2, p3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v2, v2, v7

    int-to-float v3, p4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 3203
    return-void
.end method


# virtual methods
.method public addView(ILcom/sec/android/glview/TwGLView;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 3917
    return-void
.end method

.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 3914
    return-void
.end method

.method public final bringToFront()V
    .locals 1

    .prologue
    .line 2312
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 2313
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 2314
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 2316
    :cond_0
    return-void
.end method

.method public final declared-synchronized cancelAnimation()V
    .locals 2

    .prologue
    .line 2395
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2403
    :goto_0
    monitor-exit p0

    return-void

    .line 2398
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 2399
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 2400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    .line 2401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    .line 2402
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2395
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 3

    .prologue
    .line 2223
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    .line 2224
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    .line 2225
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    .line 2227
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_0

    .line 2228
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 2229
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 2231
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_1

    .line 2232
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatch;->clear()V

    .line 2233
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 2235
    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_2

    .line 2236
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatch;->clear()V

    .line 2237
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 2239
    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-eqz v1, :cond_3

    .line 2240
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-virtual {v1}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V

    .line 2241
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    .line 2243
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 2245
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v1, :cond_4

    .line 2246
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    .line 2250
    :cond_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    if-eqz v1, :cond_5

    .line 2251
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .line 2255
    :cond_5
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v1, :cond_7

    .line 2256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_6

    .line 2257
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 2256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2258
    :cond_6
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2260
    .end local v0    # "i":I
    :cond_7
    monitor-exit p0

    return-void

    .line 2223
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected final clearClip()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3324
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v1

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 3325
    return-void
.end method

.method protected final declared-synchronized clip()V
    .locals 5

    .prologue
    .line 3308
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    if-nez v0, :cond_0

    .line 3309
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->clearClip()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3315
    :goto_0
    monitor-exit p0

    return-void

    .line 3314
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glScissor(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3308
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public contains(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x0

    .line 1806
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOldClipRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 1807
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOldClipRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 1818
    :cond_0
    :goto_0
    return v0

    .line 1810
    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 1814
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    if-eqz v1, :cond_0

    .line 1818
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected dispatchDraw()V
    .locals 0

    .prologue
    .line 3906
    return-void
.end method

.method public final declared-synchronized draw([FLandroid/graphics/Rect;)V
    .locals 8
    .param p1, "parentMatrix"    # [F
    .param p2, "parentClipRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x4

    .line 2619
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    if-nez v1, :cond_1

    .line 2620
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->load()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2621
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2773
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2628
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    if-eq v1, v4, :cond_0

    .line 2632
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    if-eqz v1, :cond_2

    .line 2633
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 2636
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mContinuousDrawMode:Z

    if-eqz v1, :cond_3

    .line 2637
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 2643
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    .line 2645
    .local v0, "currentMatrix":[F
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_8

    .line 2646
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    if-nez v1, :cond_6

    .line 2648
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 2649
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long v2, v4, v6

    .line 2650
    .local v2, "timeMillis":J
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    if-eqz v1, :cond_4

    .line 2651
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2619
    .end local v0    # "currentMatrix":[F
    .end local v2    # "timeMillis":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2655
    .restart local v0    # "currentMatrix":[F
    .restart local v2    # "timeMillis":J
    :cond_4
    :try_start_2
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    if-eqz v1, :cond_9

    .line 2656
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    .line 2657
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    .line 2658
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    .line 2659
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 2668
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2669
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2675
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    invoke-static {v1}, Lcom/sec/android/glview/TwGLUtil;->toGLMatrix([F)[F

    .line 2676
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    invoke-static {v1, v4, v5}, Lcom/sec/android/app/camera/Util;->multiplyMM([F[F[F)V

    .line 2678
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    .line 2684
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    .line 2703
    .end local v2    # "timeMillis":J
    :cond_6
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    if-eqz v1, :cond_7

    .line 2704
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    .line 2705
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2706
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    invoke-static {v1, v4, v5}, Lcom/sec/android/app/camera/Util;->multiplyMM([F[F[F)V

    .line 2707
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    .line 2714
    :cond_7
    :goto_2
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    if-eqz v1, :cond_8

    .line 2715
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    .line 2716
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    if-eqz v1, :cond_8

    .line 2717
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v4, Lcom/sec/android/glview/TwGLView$5;

    invoke-direct {v4, p0}, Lcom/sec/android/glview/TwGLView$5;-><init>(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2726
    :cond_8
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    invoke-static {v1, p1, v0}, Lcom/sec/android/app/camera/Util;->multiplyMM([F[F[F)V

    .line 2727
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrixNotRotate:[F

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrixWithoutRotate:[F

    invoke-static {v1, p1, v4}, Lcom/sec/android/app/camera/Util;->multiplyMM([F[F[F)V

    .line 2729
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    if-eqz v1, :cond_f

    .line 2731
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->refreshClipRect()V

    .line 2732
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalClipRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenGeometry()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 2733
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    if-eqz v1, :cond_d

    .line 2734
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 2735
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    .line 2736
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->onOutOfScreen()V

    goto/16 :goto_0

    .line 2660
    .restart local v2    # "timeMillis":J
    :cond_9
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    if-eqz v1, :cond_5

    .line 2661
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    .line 2662
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    .line 2663
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 2665
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    goto/16 :goto_1

    .line 2686
    :cond_a
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    if-eqz v1, :cond_b

    .line 2687
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v4, Lcom/sec/android/glview/TwGLView$4;

    invoke-direct {v4, p0}, Lcom/sec/android/glview/TwGLView$4;-><init>(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2694
    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    .line 2696
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    if-eqz v1, :cond_6

    .line 2697
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2709
    .end local v2    # "timeMillis":J
    :cond_c
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mOldAlpha:F

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    goto/16 :goto_2

    .line 2740
    :cond_d
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    if-nez v1, :cond_e

    .line 2741
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOriginalClipRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2742
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    .line 2750
    :cond_e
    :goto_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 2754
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->dispatchDraw()V

    .line 2756
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_10

    .line 2757
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    .line 2759
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->onDraw()V

    .line 2760
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    .line 2761
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->isFocusIndicatorVisible()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_11

    .line 2762
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundRotatable:Z

    if-eqz v1, :cond_14

    .line 2763
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/glview/TwGLNinePatch;->draw([FLandroid/graphics/Rect;)V

    .line 2767
    :cond_11
    :goto_4
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_0

    .line 2768
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundRotatable:Z

    if-eqz v1, :cond_15

    .line 2769
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/glview/TwGLNinePatch;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 2743
    :cond_12
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, p2}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2744
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    goto :goto_3

    .line 2746
    :cond_13
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2747
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    goto :goto_3

    .line 2765
    :cond_14
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mMatrixNotRotate:[F

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/glview/TwGLNinePatch;->draw([FLandroid/graphics/Rect;)V

    goto :goto_4

    .line 2771
    :cond_15
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mMatrixNotRotate:[F

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/glview/TwGLNinePatch;->draw([FLandroid/graphics/Rect;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public dumpViewHierarchy(I)V
    .locals 5
    .param p1, "level"    # I

    .prologue
    .line 3988
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3989
    .local v1, "s":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 3990
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3989
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3992
    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    .line 3993
    const-string v2, "DUMP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Clip(Manual:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3997
    :goto_1
    return-void

    .line 3996
    :cond_1
    const-string v2, "DUMP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;
    .locals 8
    .param p1, "focusedView"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "direction"    # I

    .prologue
    .line 3571
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez p1, :cond_2

    .line 3572
    :cond_0
    const/4 v4, 0x0

    .line 3616
    :cond_1
    :goto_0
    return-object v4

    .line 3574
    :cond_2
    const/4 v4, 0x0

    .line 3577
    .local v4, "resultView":Lcom/sec/android/glview/TwGLView;
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v3

    .line 3578
    .local v3, "left":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v5

    .line 3579
    .local v5, "top":F
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v0

    .line 3580
    .local v0, "focusedViewLeft":F
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v1

    .line 3581
    .local v1, "focusedViewTop":F
    sub-float v7, v0, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 3582
    .local v2, "horizontalOffset":F
    sub-float v7, v1, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 3584
    .local v6, "verticalOffset":F
    sparse-switch p2, :sswitch_data_0

    .line 3614
    const/4 v4, 0x0

    goto :goto_0

    .line 3586
    :sswitch_0
    cmpl-float v7, v0, v3

    if-lez v7, :cond_1

    .line 3587
    cmpl-float v7, v2, v6

    if-lez v7, :cond_1

    .line 3588
    move-object v4, p0

    goto :goto_0

    .line 3593
    :sswitch_1
    cmpg-float v7, v0, v3

    if-gez v7, :cond_1

    .line 3594
    cmpl-float v7, v2, v6

    if-lez v7, :cond_1

    .line 3595
    move-object v4, p0

    goto :goto_0

    .line 3600
    :sswitch_2
    cmpl-float v7, v1, v5

    if-lez v7, :cond_1

    .line 3601
    cmpg-float v7, v2, v6

    if-gez v7, :cond_1

    .line 3602
    move-object v4, p0

    goto :goto_0

    .line 3607
    :sswitch_3
    cmpg-float v7, v1, v5

    if-gez v7, :cond_1

    .line 3608
    cmpg-float v7, v2, v6

    if-gez v7, :cond_1

    .line 3609
    move-object v4, p0

    goto :goto_0

    .line 3584
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x0

    .line 3631
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    if-eqz v1, :cond_1

    move-object p0, v0

    .line 3641
    .end local p0    # "this":Lcom/sec/android/glview/TwGLView;
    :cond_0
    :goto_0
    return-object p0

    .line 3634
    .restart local p0    # "this":Lcom/sec/android/glview/TwGLView;
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z

    if-eqz v1, :cond_2

    move-object p0, v0

    .line 3635
    goto :goto_0

    .line 3638
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 3641
    goto :goto_0
.end method

.method public findViewById(I)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 3550
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    if-ne v0, p1, :cond_0

    .line 3553
    .end local p0    # "this":Lcom/sec/android/glview/TwGLView;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/sec/android/glview/TwGLView;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewByTag(I)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 3564
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewTag:I

    if-ne v0, p1, :cond_0

    .line 3567
    .end local p0    # "this":Lcom/sec/android/glview/TwGLView;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/sec/android/glview/TwGLView;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 2

    .prologue
    .line 1080
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDimmed:Z

    if-eqz v0, :cond_1

    .line 1082
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mNonTransparent:Z

    if-eqz v0, :cond_0

    .line 1083
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1090
    :goto_0
    return v0

    .line 1085
    :cond_0
    const v0, 0x3ee66666    # 0.45f

    goto :goto_0

    .line 1087
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_2

    .line 1088
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getAlpha()F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_0

    .line 1090
    :cond_2
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    goto :goto_0
.end method

.method public getArea()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 1772
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public final getBottom()F
    .locals 2

    .prologue
    .line 1604
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1605
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->initSize()V

    .line 1607
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 1608
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    add-float/2addr v0, v1

    .line 1610
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public getBypassTouch()Z
    .locals 1

    .prologue
    .line 2502
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z

    return v0
.end method

.method public final getCenterPivot()Z
    .locals 1

    .prologue
    .line 1146
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    return v0
.end method

.method public getClipRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 2554
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2555
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->refreshClipRect()V

    .line 2557
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getClipRectArea()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 2561
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getContentArea()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 1748
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaLeft()F

    move-result v0

    .line 1749
    .local v0, "left":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaTop()F

    move-result v1

    .line 1750
    .local v1, "top":F
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v4

    add-float/2addr v4, v1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method public getContentAreaHeight()F
    .locals 2

    .prologue
    .line 1768
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getContentAreaLeft()F
    .locals 2

    .prologue
    .line 1740
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getContentAreaTop()F
    .locals 2

    .prologue
    .line 1744
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getContentAreaWidth()F
    .locals 2

    .prologue
    .line 1759
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getContext()Lcom/sec/android/glview/TwGLContext;
    .locals 1

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    return-object v0
.end method

.method public getCurrentArea()Landroid/graphics/RectF;
    .locals 7

    .prologue
    .line 1781
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v4

    .line 1782
    .local v4, "offsetX":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v5

    .line 1783
    .local v5, "offsetY":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v6

    add-float v1, v6, v4

    .line 1784
    .local v1, "currentLeft":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v6

    add-float v3, v6, v5

    .line 1785
    .local v3, "currentTop":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v6

    add-float v2, v1, v6

    .line 1786
    .local v2, "currentRight":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    add-float v0, v3, v6

    .line 1788
    .local v0, "currentBottom":F
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v1, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v6
.end method

.method public getCurrentBottom()F
    .locals 2

    .prologue
    .line 1727
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentContentArea()Landroid/graphics/RectF;
    .locals 7

    .prologue
    .line 1792
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getCurrentArea()Landroid/graphics/RectF;

    move-result-object v0

    .line 1793
    .local v0, "current":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public getCurrentDepth()F
    .locals 2

    .prologue
    .line 1736
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getDepth()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateZ()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentLeft()F
    .locals 2

    .prologue
    .line 1700
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentRight()F
    .locals 2

    .prologue
    .line 1709
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentTop()F
    .locals 2

    .prologue
    .line 1718
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public final getDepth()F
    .locals 2

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1615
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getDepth()F

    move-result v1

    add-float/2addr v0, v1

    .line 1617
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    goto :goto_0
.end method

.method protected getDimState()Z
    .locals 1

    .prologue
    .line 2348
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDimmed:Z

    return v0
.end method

.method public getDraggable()Z
    .locals 1

    .prologue
    .line 1022
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    return v0
.end method

.method public final getHeight()F
    .locals 2

    .prologue
    .line 1638
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1639
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->initSize()V

    .line 1641
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    return v0
.end method

.method protected getHoverPopupWindow()Lcom/sec/android/glview/HoverPopupWindow;
    .locals 1

    .prologue
    .line 4008
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .prologue
    .line 1379
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    return v0
.end method

.method public getInternalFocus()Z
    .locals 2

    .prologue
    .line 3649
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    .line 3650
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_0

    .line 3651
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getInternalFocus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 3653
    :cond_0
    return v0
.end method

.method public getInternalFocusParent()Lcom/sec/android/glview/TwGLView;
    .locals 1

    .prologue
    .line 3657
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    if-eqz v0, :cond_0

    .line 3662
    .end local p0    # "this":Lcom/sec/android/glview/TwGLView;
    :goto_0
    return-object p0

    .line 3659
    .restart local p0    # "this":Lcom/sec/android/glview/TwGLView;
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 3660
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getInternalFocusParent()Lcom/sec/android/glview/TwGLView;

    move-result-object p0

    goto :goto_0

    .line 3662
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getLayoutX()F
    .locals 1

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public getLayoutY()F
    .locals 1

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public getLayoutZ()F
    .locals 1

    .prologue
    .line 1529
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    return v0
.end method

.method public final getLeft()F
    .locals 2

    .prologue
    .line 1542
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    if-eqz v0, :cond_1

    .line 1543
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1544
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    .line 1545
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    .line 1550
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 1551
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    .line 1553
    :goto_1
    return v0

    .line 1547
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    .line 1548
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    goto :goto_0

    .line 1553
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    goto :goto_1
.end method

.method public final getLeftTop(I)[F
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 1277
    const/4 v2, 0x3

    if-gt p1, v2, :cond_0

    if-gez p1, :cond_1

    .line 1278
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1280
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    if-eqz v2, :cond_3

    .line 1281
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v3

    add-float/2addr v2, v3

    div-float v0, v2, v4

    .line 1282
    .local v0, "centerX":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v3

    add-float/2addr v2, v3

    div-float v1, v2, v4

    .line 1284
    .local v1, "centerY":F
    packed-switch p1, :pswitch_data_0

    .line 1312
    .end local v0    # "centerX":F
    .end local v1    # "centerY":F
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    return-object v2

    .line 1286
    .restart local v0    # "centerX":F
    .restart local v1    # "centerY":F
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    aput v3, v2, v5

    .line 1287
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    aput v3, v2, v6

    goto :goto_0

    .line 1290
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    aput v3, v2, v5

    .line 1291
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    div-float/2addr v3, v4

    sub-float v3, v1, v3

    aput v3, v2, v6

    goto :goto_0

    .line 1294
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v2, v5

    .line 1295
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v2, v6

    goto :goto_0

    .line 1298
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    div-float/2addr v3, v4

    sub-float v3, v0, v3

    aput v3, v2, v5

    .line 1299
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    aput v3, v2, v6

    goto :goto_0

    .line 1306
    .end local v0    # "centerX":F
    .end local v1    # "centerY":F
    :cond_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v2, :cond_2

    .line 1307
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v3, v3, p1

    iget v3, v3, Landroid/graphics/RectF;->left:F

    aput v3, v2, v5

    .line 1308
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v3, v3, p1

    iget v3, v3, Landroid/graphics/RectF;->top:F

    aput v3, v2, v6

    goto :goto_0

    .line 1284
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getLoaded()Z
    .locals 1

    .prologue
    .line 2605
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    return v0
.end method

.method protected getMatrix()[F
    .locals 1

    .prologue
    .line 2536
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    return-object v0
.end method

.method protected getMatrixWithoutRotate()[F
    .locals 1

    .prologue
    .line 2545
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mMatrixNotRotate:[F

    return-object v0
.end method

.method public final getMoveLayoutX()F
    .locals 2

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1888
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v1

    add-float/2addr v0, v1

    .line 1890
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getMoveLayoutY()F
    .locals 2

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1895
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v1

    add-float/2addr v0, v1

    .line 1897
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getMoveLayoutZ()F
    .locals 2

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1902
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutZ()F

    move-result v1

    add-float/2addr v0, v1

    .line 1904
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getNextFocusDownId()I
    .locals 1

    .prologue
    .line 1418
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    return v0
.end method

.method public final getNextFocusLeftId()I
    .locals 1

    .prologue
    .line 1406
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    return v0
.end method

.method public final getNextFocusRightId()I
    .locals 1

    .prologue
    .line 1410
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    return v0
.end method

.method public final getNextFocusUpId()I
    .locals 1

    .prologue
    .line 1414
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    return v0
.end method

.method public final getObjectTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mObjectTag:Ljava/lang/String;

    return-object v0
.end method

.method public getOnClickListener()Lcom/sec/android/glview/TwGLView$OnClickListener;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    return-object v0
.end method

.method public getOnFocusListener()Lcom/sec/android/glview/TwGLView$OnFocusListener;
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    return-object v0
.end method

.method public getOnLongClickListener()Lcom/sec/android/glview/TwGLView$OnLongClickListener;
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnLongClickListener:Lcom/sec/android/glview/TwGLView$OnLongClickListener;

    return-object v0
.end method

.method public getOnTouchListener()Lcom/sec/android/glview/TwGLView$OnTouchListener;
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    return-object v0
.end method

.method public final getOrientation()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "GLAbsoluteLayout"
    .end annotation

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1486
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4

    .line 1489
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    goto :goto_0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 2527
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getParentHAlign()I
    .locals 1

    .prologue
    .line 1212
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mParentHAlign:I

    return v0
.end method

.method public final getParentVAlign()I
    .locals 1

    .prologue
    .line 1221
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mParentVAlign:I

    return v0
.end method

.method public getRepeatClickInterval()I
    .locals 1

    .prologue
    .line 1030
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickInterval:I

    return v0
.end method

.method public final getRight()F
    .locals 2

    .prologue
    .line 1589
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1590
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->initSize()V

    .line 1592
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 1593
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    add-float/2addr v0, v1

    .line 1595
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0
.end method

.method public final getRotatable()Z
    .locals 1

    .prologue
    .line 1183
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    return v0
.end method

.method public final getRotateAnimation()Z
    .locals 1

    .prologue
    .line 1165
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z

    return v0
.end method

.method public getScrollHint()Z
    .locals 1

    .prologue
    .line 3882
    const/4 v0, 0x0

    return v0
.end method

.method public final getSizeGiven()Z
    .locals 1

    .prologue
    .line 1502
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    return v0
.end method

.method protected final getSizeSpecified()Z
    .locals 1

    .prologue
    .line 1498
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    return v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getTag()I
    .locals 1

    .prologue
    .line 1375
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewTag:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getToggleButton()Z
    .locals 1

    .prologue
    .line 4004
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mToggleButton:Z

    return v0
.end method

.method public final getTop()F
    .locals 2

    .prologue
    .line 1568
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    if-eqz v0, :cond_1

    .line 1569
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1570
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    .line 1571
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    .line 1576
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 1577
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    .line 1579
    :goto_1
    return v0

    .line 1573
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    .line 1574
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    goto :goto_0

    .line 1579
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    goto :goto_1
.end method

.method public final getTranslateX()F
    .locals 2

    .prologue
    .line 3015
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 3016
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    add-float/2addr v0, v1

    .line 3018
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    goto :goto_0
.end method

.method public final getTranslateY()F
    .locals 2

    .prologue
    .line 3027
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 3028
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v1

    add-float/2addr v0, v1

    .line 3030
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    goto :goto_0
.end method

.method public final getTranslateZ()F
    .locals 2

    .prologue
    .line 3039
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 3040
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateZ()F

    move-result v1

    add-float/2addr v0, v1

    .line 3042
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F

    goto :goto_0
.end method

.method public final getVisibility()I
    .locals 1

    .prologue
    .line 2271
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    return v0
.end method

.method public final getWidth()F
    .locals 2

    .prologue
    .line 1626
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1627
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->initSize()V

    .line 1629
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public abstract initSize()V
.end method

.method public isAnimationFinished()Z
    .locals 1

    .prologue
    .line 2406
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    return v0
.end method

.method public final isClickable()Z
    .locals 2

    .prologue
    .line 3687
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClipped()Z
    .locals 1

    .prologue
    .line 3936
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    return v0
.end method

.method public isDim()Z
    .locals 2

    .prologue
    .line 2341
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 2342
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->isDim()Z

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mDimmed:Z

    or-int/2addr v0, v1

    .line 2344
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDimmed:Z

    goto :goto_0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 3480
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    return v0
.end method

.method public final isFocusable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3683
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->isVisible()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFocused()Z
    .locals 1

    .prologue
    .line 3678
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    return v0
.end method

.method public isInScreen()Z
    .locals 1

    .prologue
    .line 3932
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    return v0
.end method

.method public isLongClickable()Z
    .locals 1

    .prologue
    .line 1049
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLongClickable:Z

    return v0
.end method

.method public isParentRotatable()Z
    .locals 1

    .prologue
    .line 3667
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 3668
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getRotatable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3669
    const/4 v0, 0x1

    .line 3674
    :goto_0
    return v0

    .line 3671
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->isParentRotatable()Z

    move-result v0

    goto :goto_0

    .line 3674
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRepeatClickWhenLongClicked()Z
    .locals 1

    .prologue
    .line 1041
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickWhenLongClicked:Z

    return v0
.end method

.method public isRotationAnimatedOnFirstDraw()Z
    .locals 1

    .prologue
    .line 4025
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationAnimatedOnFirstDraw:Z

    return v0
.end method

.method public final isVisible()I
    .locals 1

    .prologue
    .line 2275
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 2276
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 2278
    :goto_0
    return v0

    .line 2276
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 2278
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    goto :goto_0
.end method

.method public keyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3445
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    if-eqz v0, :cond_0

    .line 3446
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v0, p0, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3447
    const/4 v0, 0x1

    .line 3449
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public keyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3453
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    if-eqz v0, :cond_0

    .line 3454
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v0, p0, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3455
    const/4 v0, 0x1

    .line 3457
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final declared-synchronized load()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2572
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    if-eqz v2, :cond_2

    .line 2573
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLoaded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2574
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 2575
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2594
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    move v0, v1

    .line 2578
    goto :goto_0

    .line 2581
    :cond_2
    :try_start_1
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    if-nez v2, :cond_0

    .line 2584
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->onLoad()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2585
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 2586
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    .line 2588
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_3

    .line 2589
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->load()Z

    .line 2594
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    goto :goto_0

    .line 2591
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 2592
    goto :goto_0

    .line 2572
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public mBottom()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "GLAbsoluteLayout"
    .end annotation

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    return v0
.end method

.method protected mClipRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public mLeft()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "GLAbsoluteLayout"
    .end annotation

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    return v0
.end method

.method public mRight()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "GLAbsoluteLayout"
    .end annotation

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    return v0
.end method

.method public mTop()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "GLAbsoluteLayout"
    .end annotation

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    return v0
.end method

.method public final mapPoint([FFF)V
    .locals 7
    .param p1, "transformedScreenCoordinate"    # [F
    .param p2, "screenX"    # F
    .param p3, "screenY"    # F

    .prologue
    const/4 v3, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 3182
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    aput p2, v0, v1

    .line 3183
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    aput p3, v0, v6

    .line 3184
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    aput v2, v0, v3

    .line 3185
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    aput v2, v0, v3

    .line 3186
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 3188
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    aget v0, v0, v1

    aput v0, p1, v1

    .line 3189
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    aget v0, v0, v6

    aput v0, p1, v6

    .line 3191
    return-void
.end method

.method protected final mapPointReverse([FFF)V
    .locals 11
    .param p1, "transformedScreenCoordinate"    # [F
    .param p2, "screenX"    # F
    .param p3, "screenY"    # F

    .prologue
    .line 3117
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    add-int/2addr v2, v3

    rem-int/lit8 v10, v2, 0x4

    .line 3118
    .local v10, "orientation":I
    if-nez v10, :cond_0

    .line 3119
    const/4 v2, 0x0

    aput p2, p1, v2

    .line 3120
    const/4 v2, 0x1

    aput p3, p1, v2

    .line 3160
    :goto_0
    return-void

    .line 3124
    :cond_0
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 3128
    .local v0, "coordinateTransformMatrix":[F
    invoke-virtual {p0, v10}, Lcom/sec/android/glview/TwGLView;->getLeftTop(I)[F

    move-result-object v9

    .line 3129
    .local v9, "leftTop":[F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v2, :cond_1

    .line 3130
    const/4 v2, 0x0

    aget v3, v9, v2

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v9, v2

    .line 3131
    const/4 v2, 0x1

    aget v3, v9, v2

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v9, v2

    .line 3134
    :cond_1
    const/4 v2, 0x4

    new-array v7, v2, [F

    .line 3135
    .local v7, "glLeftTopCoordinate":[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v7, v2

    .line 3136
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    invoke-static {v2, v7, v3, v4}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 3138
    const/4 v2, 0x4

    new-array v8, v2, [F

    .line 3139
    .local v8, "glRotatedLeftTopCoordinate":[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v8, v2

    .line 3140
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v3, 0x0

    aget v3, v9, v3

    const/4 v4, 0x1

    aget v4, v9, v4

    invoke-static {v2, v8, v3, v4}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 3142
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3143
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v7, v3

    const/4 v4, 0x1

    aget v4, v7, v4

    const/4 v6, 0x0

    invoke-static {v0, v2, v3, v4, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3144
    const/4 v1, 0x0

    mul-int/lit8 v2, v10, 0x5a

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 3145
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v8, v3

    neg-float v3, v3

    const/4 v4, 0x1

    aget v4, v8, v4

    neg-float v4, v4

    const/4 v6, 0x0

    invoke-static {v0, v2, v3, v4, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3150
    const/4 v2, 0x4

    new-array v5, v2, [F

    .line 3151
    .local v5, "glCoordinate":[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v5, v2

    .line 3152
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v2, v5, p2, p3}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 3154
    const/4 v2, 0x4

    new-array v1, v2, [F

    .line 3155
    .local v1, "glTransformedCoordinate":[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    .line 3156
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 3158
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-static {v2, p1, v3, v4}, Lcom/sec/android/glview/TwGLUtil;->getScreenCoordinateFromGLCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    goto/16 :goto_0
.end method

.method public final declared-synchronized moveBaseDepthLayout(F)V
    .locals 1
    .param p1, "z"    # F

    .prologue
    .line 2013
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    .line 2014
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    .line 2021
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2022
    monitor-exit p0

    return-void

    .line 2013
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized moveBaseDepthLayout(FZ)V
    .locals 1
    .param p1, "z"    # F
    .param p2, "update"    # Z

    .prologue
    .line 2025
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    .line 2026
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    .line 2033
    if-eqz p2, :cond_0

    .line 2034
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2036
    :cond_0
    monitor-exit p0

    return-void

    .line 2025
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized moveBaseDepthLayoutAbsolute(F)V
    .locals 2
    .param p1, "z"    # F

    .prologue
    .line 2056
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutZ()F

    move-result v0

    .line 2058
    .local v0, "moveZ":F
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mOriginalDepth:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    .line 2059
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    .line 2066
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2067
    monitor-exit p0

    return-void

    .line 2056
    .end local v0    # "moveZ":F
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized moveBaseDepthLayoutAbsolute(FZ)V
    .locals 2
    .param p1, "z"    # F
    .param p2, "update"    # Z

    .prologue
    .line 2070
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutZ()F

    move-result v0

    .line 2072
    .local v0, "moveZ":F
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mOriginalDepth:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    .line 2073
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    .line 2080
    if-eqz p2, :cond_0

    .line 2081
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2083
    :cond_0
    monitor-exit p0

    return-void

    .line 2070
    .end local v0    # "moveZ":F
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized moveBaseLayout(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1998
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 1999
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 2001
    .local v0, "height":F
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 2002
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 2004
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 2005
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 2006
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 2007
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 2009
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2010
    monitor-exit p0

    return-void

    .line 1998
    .end local v0    # "height":F
    .end local v1    # "width":F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized moveBaseLayoutAbsolute(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2039
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    .line 2040
    .local v3, "width":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 2041
    .local v0, "height":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v1

    .line 2042
    .local v1, "moveX":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutY()F

    move-result v2

    .line 2044
    .local v2, "moveY":F
    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 2045
    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    add-float/2addr v4, p2

    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 2047
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    add-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 2048
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    add-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 2049
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v3

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 2050
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v0

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 2052
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2053
    monitor-exit p0

    return-void

    .line 2039
    .end local v0    # "height":F
    .end local v1    # "moveX":F
    .end local v2    # "moveY":F
    .end local v3    # "width":F
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public final declared-synchronized moveBaseLayoutAbsolute(FFZ)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "update"    # Z

    .prologue
    .line 2086
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    .line 2087
    .local v3, "width":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 2088
    .local v0, "height":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v1

    .line 2089
    .local v1, "moveX":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutY()F

    move-result v2

    .line 2091
    .local v2, "moveY":F
    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 2092
    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    add-float/2addr v4, p2

    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 2094
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    add-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 2095
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    add-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 2096
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v3

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 2097
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v0

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 2099
    if-eqz p3, :cond_0

    .line 2100
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2102
    :cond_0
    monitor-exit p0

    return-void

    .line 2086
    .end local v0    # "height":F
    .end local v1    # "moveX":F
    .end local v2    # "moveY":F
    .end local v3    # "width":F
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized moveDepthLayout(F)V
    .locals 1
    .param p1, "z"    # F

    .prologue
    .line 1925
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    .line 1929
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1930
    monitor-exit p0

    return-void

    .line 1925
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized moveDepthLayoutAbsolute(F)V
    .locals 1
    .param p1, "z"    # F

    .prologue
    .line 1987
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    .line 1994
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1995
    monitor-exit p0

    return-void

    .line 1987
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized moveLayout(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1916
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 1917
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 1918
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1919
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1921
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1922
    monitor-exit p0

    return-void

    .line 1916
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized moveLayoutAbsolute(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1961
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 1962
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 1964
    .local v0, "height":F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    add-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1965
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1966
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1967
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1969
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1970
    monitor-exit p0

    return-void

    .line 1961
    .end local v0    # "height":F
    .end local v1    # "width":F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized moveLayoutAbsolute(FFZ)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "update"    # Z

    .prologue
    .line 1973
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 1974
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 1976
    .local v0, "height":F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    add-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1977
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1978
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1979
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1981
    if-eqz p3, :cond_0

    .line 1982
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1984
    :cond_0
    monitor-exit p0

    return-void

    .line 1973
    .end local v0    # "height":F
    .end local v1    # "width":F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected onAlphaUpdated()V
    .locals 1

    .prologue
    .line 3893
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAlphaChanged:Z

    .line 3894
    return-void
.end method

.method protected onDepthUpdated()V
    .locals 1

    .prologue
    .line 3897
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDepthChanged:Z

    .line 3898
    return-void
.end method

.method protected abstract onDraw()V
.end method

.method public onFocusStatusChanged(I)V
    .locals 9
    .param p1, "focusStatus"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3827
    if-ne p1, v7, :cond_3

    .line 3828
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    .line 3829
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isFocusIndicatorRefesh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3835
    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getFocusResourceId()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 3837
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLNinePatch;->setBypassTouch(Z)V

    .line 3838
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLNinePatch;->setClipping(Z)V

    .line 3839
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLNinePatch;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 3844
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    if-eqz v0, :cond_2

    .line 3845
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/glview/TwGLView$OnFocusListener;->onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z

    .line 3847
    :cond_2
    return-void

    .line 3842
    :cond_3
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    goto :goto_0
.end method

.method public onHoverStatusChanged(I)V
    .locals 10
    .param p1, "hoverStatus"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3850
    if-nez p1, :cond_3

    .line 3851
    iput-boolean v9, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    .line 3852
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isFocusIndicatorRefesh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3854
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mUseHover2Res:Z

    if-eqz v0, :cond_2

    .line 3855
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getHover2ResourceId()I

    move-result v6

    .line 3859
    .local v6, "hoverResId":I
    :goto_0
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 3861
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLNinePatch;->setBypassTouch(Z)V

    .line 3862
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLNinePatch;->setClipping(Z)V

    .line 3863
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLNinePatch;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 3874
    .end local v6    # "hoverResId":I
    :cond_1
    :goto_1
    return-void

    .line 3857
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getHoverResourceId()I

    move-result v6

    .restart local v6    # "hoverResId":I
    goto :goto_0

    .line 3866
    .end local v6    # "hoverResId":I
    :cond_3
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    .line 3868
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isHoveringEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3869
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-eqz v0, :cond_1

    .line 3870
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-virtual {v0}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V

    goto :goto_1
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3472
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3476
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayoutUpdated()V
    .locals 1

    .prologue
    .line 3889
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 3890
    return-void
.end method

.method protected abstract onLoad()Z
.end method

.method protected onOrientationChanged(I)V
    .locals 10
    .param p1, "orientation"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 3498
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    if-eqz v1, :cond_5

    .line 3499
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    .line 3500
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    if-ne v1, p1, :cond_0

    .line 3540
    :goto_0
    return-void

    .line 3504
    :cond_0
    move v8, p1

    .line 3505
    .local v8, "tempOrientation":I
    if-nez v8, :cond_7

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    if-ne v1, v2, :cond_7

    .line 3506
    const/4 v8, 0x4

    .line 3511
    :cond_1
    :goto_1
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    sub-int/2addr v1, v8

    mul-int/lit8 v7, v1, 0x5a

    .line 3512
    .local v7, "degree":I
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 3514
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->isVisible()I

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mRotationAnimatedOnFirstDraw:Z

    if-eqz v1, :cond_5

    .line 3515
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z

    if-nez v1, :cond_8

    .line 3516
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    if-eqz v1, :cond_3

    .line 3517
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 3518
    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    if-eqz v1, :cond_4

    .line 3519
    invoke-virtual {p0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 3521
    :cond_4
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    invoke-static {v1}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation(F)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3522
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 3535
    .end local v7    # "degree":I
    .end local v8    # "tempOrientation":I
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-eqz v1, :cond_6

    .line 3536
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    mul-int/lit8 v2, p1, 0x5a

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/HoverPopupWindow;->setRotation(I)V

    .line 3539
    :cond_6
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->setLongClick:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3507
    .restart local v8    # "tempOrientation":I
    :cond_7
    if-ne v8, v2, :cond_1

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    if-nez v1, :cond_1

    .line 3508
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    goto :goto_1

    .line 3524
    .restart local v7    # "degree":I
    :cond_8
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, v7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    div-float/2addr v5, v9

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    div-float/2addr v6, v9

    add-float/2addr v6, v5

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 3525
    .local v0, "anim":Landroid/view/animation/RotateAnimation;
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    .line 3526
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 3527
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_9

    .line 3528
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3529
    :cond_9
    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3530
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    goto :goto_2
.end method

.method protected onOutOfScreen()V
    .locals 1

    .prologue
    .line 3928
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 3929
    return-void
.end method

.method protected abstract onReset()V
.end method

.method protected onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 3468
    const/4 v0, 0x0

    return v0
.end method

.method protected parentClipRect()Landroid/graphics/Rect;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "ClipRect"
    .end annotation

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1650
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->mClipRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1652
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized refreshClipRect()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 3240
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 3299
    :goto_0
    monitor-exit p0

    return-void

    .line 3244
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v1, v4, v5

    .line 3245
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v3, v4, v5

    .line 3246
    .local v3, "top":I
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .line 3247
    .local v2, "right":I
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    .line 3249
    .local v0, "bottom":I
    invoke-direct {p0, v1, v3, v2, v0}, Lcom/sec/android/glview/TwGLView;->transformScreenCoordinates(IIII)V

    .line 3251
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v1, v4

    .line 3252
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v3, v4

    .line 3253
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v2, v4

    .line 3254
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v0, v4

    .line 3256
    iget-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundRotatable:Z

    if-nez v4, :cond_6

    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    if-eq v4, v6, :cond_1

    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 3284
    :cond_1
    :goto_1
    if-gt v1, v2, :cond_2

    if-le v3, v0, :cond_3

    .line 3285
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v1, v4, v5

    .line 3286
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v3, v4, v5

    .line 3287
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .line 3288
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    .line 3291
    :cond_3
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v4, :cond_4

    .line 3292
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    .line 3294
    :cond_4
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 3295
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalClipRect:Landroid/graphics/Rect;

    if-nez v4, :cond_5

    .line 3296
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalClipRect:Landroid/graphics/Rect;

    .line 3298
    :cond_5
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 3240
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 3259
    .restart local v0    # "bottom":I
    .restart local v1    # "left":I
    .restart local v2    # "right":I
    .restart local v3    # "top":I
    :cond_6
    :try_start_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v4

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    add-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x4

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 3267
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v1, v4

    .line 3268
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v3, v4

    .line 3269
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v2, v4

    .line 3270
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v0, v4

    .line 3271
    goto :goto_1

    .line 3261
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v1, v4

    .line 3262
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v3, v4

    .line 3263
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v2, v4

    .line 3264
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v0, v4

    .line 3265
    goto/16 :goto_1

    .line 3273
    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v1, v4

    .line 3274
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v3, v4

    .line 3275
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v2, v4

    .line 3276
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v5, 0x1

    aget v4, v4, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    float-to-int v0, v4

    .line 3277
    goto/16 :goto_1

    .line 3259
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeView(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 3925
    return-void
.end method

.method public final requestFocus()Z
    .locals 1

    .prologue
    .line 3703
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->requestFocus(I)Z

    move-result v0

    return v0
.end method

.method public final requestFocus(I)Z
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 3707
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILcom/sec/android/glview/TwGLView;)Z
    .locals 7
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedView"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v5, -0x1

    .line 3711
    if-nez p2, :cond_0

    .line 3712
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_6

    .line 3713
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLContext;->onFocusChanged(Lcom/sec/android/glview/TwGLView;)V

    move v2, v3

    .line 3823
    :goto_0
    return v2

    .line 3717
    :cond_0
    const/4 v0, 0x0

    .line 3718
    .local v0, "nextViewToFocus":Lcom/sec/android/glview/TwGLView;
    move v1, p1

    .line 3722
    .local v1, "revisedDirection":I
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->isParentRotatable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getInternalFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3723
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 3774
    move v1, p1

    .line 3780
    :cond_1
    :goto_1
    sparse-switch v1, :sswitch_data_0

    .line 3805
    :cond_2
    :goto_2
    if-nez v0, :cond_4

    .line 3806
    invoke-virtual {p2}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v5

    if-ne v2, v5, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    if-eqz v2, :cond_3

    move v2, v4

    .line 3807
    goto :goto_0

    .line 3725
    :pswitch_0
    sparse-switch p1, :sswitch_data_1

    goto :goto_1

    .line 3727
    :sswitch_0
    const/16 v1, 0x82

    .line 3728
    goto :goto_1

    .line 3730
    :sswitch_1
    const/16 v1, 0x21

    .line 3731
    goto :goto_1

    .line 3733
    :sswitch_2
    const/16 v1, 0x11

    .line 3734
    goto :goto_1

    .line 3736
    :sswitch_3
    const/16 v1, 0x42

    goto :goto_1

    .line 3741
    :pswitch_1
    sparse-switch p1, :sswitch_data_2

    goto :goto_1

    .line 3743
    :sswitch_4
    const/16 v1, 0x42

    .line 3744
    goto :goto_1

    .line 3746
    :sswitch_5
    const/16 v1, 0x11

    .line 3747
    goto :goto_1

    .line 3749
    :sswitch_6
    const/16 v1, 0x82

    .line 3750
    goto :goto_1

    .line 3752
    :sswitch_7
    const/16 v1, 0x21

    goto :goto_1

    .line 3757
    :pswitch_2
    sparse-switch p1, :sswitch_data_3

    goto :goto_1

    .line 3759
    :sswitch_8
    const/16 v1, 0x21

    .line 3760
    goto :goto_1

    .line 3762
    :sswitch_9
    const/16 v1, 0x82

    .line 3763
    goto :goto_1

    .line 3765
    :sswitch_a
    const/16 v1, 0x42

    .line 3766
    goto :goto_1

    .line 3768
    :sswitch_b
    const/16 v1, 0x11

    goto :goto_1

    .line 3782
    :sswitch_c
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    if-eq v2, v5, :cond_2

    .line 3783
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLContext;->findViewById(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_2

    .line 3787
    :sswitch_d
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    if-eq v2, v5, :cond_2

    .line 3788
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLContext;->findViewById(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_2

    .line 3792
    :sswitch_e
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    if-eq v2, v5, :cond_2

    .line 3793
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLContext;->findViewById(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_2

    .line 3797
    :sswitch_f
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    if-eq v2, v5, :cond_2

    .line 3798
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLContext;->findViewById(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_2

    .line 3809
    :cond_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getInternalFocus()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3810
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getInternalFocusParent()Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5, v2, p2, v1}, Lcom/sec/android/glview/TwGLContext;->findNextFocusFromView(Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 3816
    :cond_4
    :goto_3
    if-eqz v0, :cond_6

    .line 3817
    invoke-virtual {v0, p1, v6}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move v2, v3

    .line 3819
    goto/16 :goto_0

    .line 3812
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2, v6, p2, v1}, Lcom/sec/android/glview/TwGLContext;->findNextFocusFromView(Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_3

    .end local v0    # "nextViewToFocus":Lcom/sec/android/glview/TwGLView;
    .end local v1    # "revisedDirection":I
    :cond_6
    move v2, v4

    .line 3823
    goto/16 :goto_0

    .line 3723
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 3780
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_c
        0x21 -> :sswitch_e
        0x42 -> :sswitch_d
        0x82 -> :sswitch_f
    .end sparse-switch

    .line 3725
    :sswitch_data_1
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch

    .line 3741
    :sswitch_data_2
    .sparse-switch
        0x11 -> :sswitch_4
        0x21 -> :sswitch_6
        0x42 -> :sswitch_5
        0x82 -> :sswitch_7
    .end sparse-switch

    .line 3757
    :sswitch_data_3
    .sparse-switch
        0x11 -> :sswitch_8
        0x21 -> :sswitch_a
        0x42 -> :sswitch_9
        0x82 -> :sswitch_b
    .end sparse-switch
.end method

.method public final declared-synchronized reset()V
    .locals 1

    .prologue
    .line 3943
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 3944
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    .line 3945
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 3946
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 3948
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 3949
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->reset()V

    .line 3951
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 3952
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->reset()V

    .line 3954
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->onReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3955
    monitor-exit p0

    return-void

    .line 3943
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resetBaseDepth()V
    .locals 1

    .prologue
    .line 2215
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mOriginalDepth:F

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    .line 2216
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2217
    monitor-exit p0

    return-void

    .line 2215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resetBaseLayout()V
    .locals 4

    .prologue
    .line 2197
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 2198
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 2200
    .local v0, "height":F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 2201
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 2202
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 2203
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 2205
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2206
    monitor-exit p0

    return-void

    .line 2197
    .end local v0    # "height":F
    .end local v1    # "width":F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized resetClipRect()V
    .locals 1

    .prologue
    .line 3229
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    .line 3230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOldClipRect:Landroid/graphics/Rect;

    .line 3231
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->refreshClipRect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3232
    monitor-exit p0

    return-void

    .line 3229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resetDepth()V
    .locals 1

    .prologue
    .line 2209
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    .line 2211
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2212
    monitor-exit p0

    return-void

    .line 2209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected resetDrag()V
    .locals 2

    .prologue
    .line 3487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    .line 3488
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3489
    return-void
.end method

.method public final declared-synchronized resetLayout()V
    .locals 4

    .prologue
    .line 2185
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 2186
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 2188
    .local v0, "height":F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 2189
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 2190
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 2191
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 2193
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2194
    monitor-exit p0

    return-void

    .line 2185
    .end local v0    # "height":F
    .end local v1    # "width":F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized resetScale()V
    .locals 2

    .prologue
    .line 2805
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mScaleChanged:Z

    .line 2807
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2809
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2811
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    .line 2812
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2813
    monitor-exit p0

    return-void

    .line 2805
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resetTransformMatrix()V
    .locals 2

    .prologue
    .line 2779
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2786
    :goto_0
    monitor-exit p0

    return-void

    .line 2782
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2783
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2784
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2785
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2779
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resetTranslate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2844
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2856
    :goto_0
    monitor-exit p0

    return-void

    .line 2847
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2849
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2851
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2852
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    .line 2853
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F

    .line 2855
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2844
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized rotateDegree(I)V
    .locals 7
    .param p1, "degree"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 3090
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3104
    :goto_0
    monitor-exit p0

    return-void

    .line 3093
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3095
    const/4 v0, 0x2

    new-array v6, v0, [F

    .line 3097
    .local v6, "currentPivot":[F
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-static {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 3099
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3100
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    int-to-float v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 3101
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    neg-float v2, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3103
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3090
    .end local v6    # "currentPivot":[F
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized scale(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 2824
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    aput v3, v1, v2

    .line 2825
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    aput v3, v1, v2

    .line 2827
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 2828
    .local v0, "currentPivot":[F
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2830
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2831
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, p1, p2, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 2832
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    neg-float v3, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    neg-float v4, v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2834
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    mul-float/2addr v1, p1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    .line 2835
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F

    mul-float/2addr v1, p2

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F

    .line 2837
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2838
    monitor-exit p0

    return-void

    .line 2824
    .end local v0    # "currentPivot":[F
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 1067
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1068
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    .line 1069
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mOldAlpha:F

    .line 1070
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->updateAlpha()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    :cond_0
    monitor-exit p0

    return-void

    .line 1067
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2358
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2359
    monitor-exit p0

    return-void

    .line 2358
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setAnimation(Landroid/view/animation/Animation;Z)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "hideAfterAnimation"    # Z

    .prologue
    .line 2370
    monitor-enter p0

    :try_start_0
    iput-boolean p2, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    .line 2371
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2372
    monitor-exit p0

    return-void

    .line 2370
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAsyncLoad(Z)V
    .locals 0
    .param p1, "async"    # Z

    .prologue
    .line 1057
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mAsyncLoad:Z

    .line 1058
    return-void
.end method

.method public declared-synchronized setBackground(I)Z
    .locals 7
    .param p1, "resId"    # I

    .prologue
    .line 2426
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 2427
    const/4 v0, 0x0

    .line 2436
    :goto_0
    monitor-exit p0

    return v0

    .line 2429
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 2430
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 2431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 2433
    :cond_1
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 2434
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 2435
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2436
    const/4 v0, 0x1

    goto :goto_0

    .line 2426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBackgroundAlpha(I)Z
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 2490
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2491
    const/4 v0, 0x0

    .line 2494
    :goto_0
    monitor-exit p0

    return v0

    .line 2493
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2494
    const/4 v0, 0x1

    goto :goto_0

    .line 2490
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBackgroundRotatable(Z)V
    .locals 0
    .param p1, "bgRotatable"    # Z

    .prologue
    .line 3695
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundRotatable:Z

    .line 3696
    return-void
.end method

.method public declared-synchronized setBypassTouch(Z)V
    .locals 1
    .param p1, "bypass"    # Z

    .prologue
    .line 2498
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2499
    monitor-exit p0

    return-void

    .line 2498
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCenterPivot(Z)V
    .locals 1
    .param p1, "centerPivot"    # Z

    .prologue
    .line 1137
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1138
    monitor-exit p0

    return-void

    .line 1137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setClickable(Z)V
    .locals 2
    .param p1, "clickable"    # Z

    .prologue
    .line 3699
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    and-int/lit16 v1, v0, -0x4001

    if-eqz p1, :cond_0

    const/16 v0, 0x4000

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    .line 3700
    return-void

    .line 3699
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setClipRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "clipRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3219
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 3220
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->refreshClipRect()V

    .line 3222
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOldClipRect:Landroid/graphics/Rect;

    .line 3223
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOldClipRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3224
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3226
    monitor-exit p0

    return-void

    .line 3219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setClipping(Z)V
    .locals 1
    .param p1, "clipping"    # Z

    .prologue
    .line 3212
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    .line 3213
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    if-eqz v0, :cond_0

    .line 3214
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->refreshClipRect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3216
    :cond_0
    monitor-exit p0

    return-void

    .line 3212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setContinuousDrawMode(Z)V
    .locals 1
    .param p1, "continuousDrawMode"    # Z

    .prologue
    .line 2416
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mContinuousDrawMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2417
    monitor-exit p0

    return-void

    .line 2416
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setDefaultOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 3052
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    .line 3053
    rsub-int/lit8 v0, p1, 0x4

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    .line 3054
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3055
    monitor-exit p0

    return-void

    .line 3052
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDim(Z)V
    .locals 1
    .param p1, "dimmed"    # Z

    .prologue
    .line 2325
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 2326
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDimmed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2332
    :goto_0
    monitor-exit p0

    return-void

    .line 2328
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDimmed:Z

    .line 2330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mNonTransparent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDimNonTransparent()V
    .locals 1

    .prologue
    .line 2336
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDimmed:Z

    .line 2337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mNonTransparent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2338
    monitor-exit p0

    return-void

    .line 2336
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDragSensitivity(I)V
    .locals 1
    .param p1, "sensitivity"    # I

    .prologue
    .line 563
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 564
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 567
    :cond_0
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    .line 568
    return-void
.end method

.method public setDragVibration(Z)V
    .locals 0
    .param p1, "vibration"    # Z

    .prologue
    .line 537
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mDragVibration:Z

    .line 538
    return-void
.end method

.method public setDraggable(Z)V
    .locals 0
    .param p1, "draggable"    # Z

    .prologue
    .line 1018
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    .line 1019
    return-void
.end method

.method public setExtraDescription(Z)V
    .locals 0
    .param p1, "hasExtraDescription"    # Z

    .prologue
    .line 4012
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mHasExtraDescription:Z

    .line 4013
    return-void
.end method

.method public setFocusable(Z)V
    .locals 2
    .param p1, "focusable"    # Z

    .prologue
    .line 3691
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    and-int/lit8 v1, v0, -0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    .line 3692
    return-void

    .line 3691
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setHeight(F)V
    .locals 3
    .param p1, "height"    # F

    .prologue
    .line 1869
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1884
    :goto_0
    monitor-exit p0

    return-void

    .line 1872
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1873
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 1874
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setHeight(F)V

    .line 1876
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 1877
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setHeight(F)V

    .line 1880
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_3

    .line 1881
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setHeight(F)V

    .line 1883
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1869
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHoverPopupGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 4021
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupGravity:I

    .line 4022
    return-void
.end method

.method public setHoverPopupOffset(II)V
    .locals 0
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    .line 4016
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetX:I

    .line 4017
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetY:I

    .line 4018
    return-void
.end method

.method public setInternalFocus(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 3645
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    .line 3646
    return-void
.end method

.method public final setLeftTop(IFF)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    .line 1235
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 1236
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1238
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    .line 1239
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/RectF;->left:F

    .line 1240
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p3, v0, Landroid/graphics/RectF;->top:F

    .line 1242
    :cond_2
    return-void
.end method

.method public final setLeftTop(IFFZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "update"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1255
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 1256
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1258
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    .line 1259
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/RectF;->left:F

    .line 1260
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p3, v0, Landroid/graphics/RectF;->top:F

    .line 1263
    :cond_2
    if-eqz p4, :cond_3

    .line 1264
    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 1265
    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    .line 1267
    :cond_3
    return-void
.end method

.method public final setLeftTop(I[F)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "leftTops"    # [F

    .prologue
    .line 1324
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 1325
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1327
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    aget v1, p2, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 1328
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget v1, p2, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 1329
    return-void
.end method

.method public setLongClickVibration(Z)V
    .locals 0
    .param p1, "vibration"    # Z

    .prologue
    .line 1053
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mLongClickVibration:Z

    .line 1054
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 0
    .param p1, "longClickable"    # Z

    .prologue
    .line 1045
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mLongClickable:Z

    .line 1046
    return-void
.end method

.method public setNextFocusDownId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1434
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    .line 1435
    return-void
.end method

.method public setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 1462
    if-eqz p1, :cond_0

    .line 1463
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    .line 1464
    const/4 v0, 0x1

    .line 1466
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNextFocusLeftId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1422
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    .line 1423
    return-void
.end method

.method public setNextFocusLeftView(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 1438
    if-eqz p1, :cond_0

    .line 1439
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    .line 1440
    const/4 v0, 0x1

    .line 1442
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNextFocusRightId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1426
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    .line 1427
    return-void
.end method

.method public setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 1446
    if-eqz p1, :cond_0

    .line 1447
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    .line 1448
    const/4 v0, 0x1

    .line 1450
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNextFocusUpId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1430
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    .line 1431
    return-void
.end method

.method public setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 1454
    if-eqz p1, :cond_0

    .line 1455
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    .line 1456
    const/4 v0, 0x1

    .line 1458
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setNinePatchBackground(I)Z
    .locals 7
    .param p1, "resId"    # I

    .prologue
    .line 2446
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 2447
    const/4 v0, 0x0

    .line 2457
    :goto_0
    monitor-exit p0

    return v0

    .line 2449
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 2450
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 2451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 2453
    :cond_1
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 2454
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 2455
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 2456
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2457
    const/4 v0, 0x1

    goto :goto_0

    .line 2446
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNinePatchBackground(II)Z
    .locals 8
    .param p1, "resId"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 2469
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 2470
    const/4 v0, 0x0

    .line 2480
    :goto_0
    monitor-exit p0

    return v0

    .line 2472
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 2473
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 2474
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 2476
    :cond_1
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 2477
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    int-to-float v7, p2

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 2478
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 2479
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2480
    const/4 v0, 0x1

    goto :goto_0

    .line 2469
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setObjectTag(I)V
    .locals 1
    .param p1, "objectId"    # I

    .prologue
    .line 1337
    invoke-static {p1}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mObjectTag:Ljava/lang/String;

    .line 1338
    return-void
.end method

.method public final setObjectTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "commandString"    # Ljava/lang/String;

    .prologue
    .line 1346
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mObjectTag:Ljava/lang/String;

    .line 1347
    return-void
.end method

.method public setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .prologue
    .line 998
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 999
    return-void
.end method

.method public setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnClickListener;

    .prologue
    .line 738
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    .line 739
    return-void
.end method

.method public setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnDragListener;

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    .line 1009
    return-void
.end method

.method public setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .prologue
    .line 984
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .line 985
    return-void
.end method

.method public setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnKeyListener;

    .prologue
    .line 980
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    .line 981
    return-void
.end method

.method public setOnLongClickListener(Lcom/sec/android/glview/TwGLView$OnLongClickListener;)V
    .locals 1
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnLongClickListener;

    .prologue
    .line 752
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLongClickable:Z

    .line 753
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnLongClickListener:Lcom/sec/android/glview/TwGLView$OnLongClickListener;

    .line 754
    return-void
.end method

.method public setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;

    .prologue
    .line 792
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnOrientationChangedListener:Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;

    .line 793
    return-void
.end method

.method public setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .prologue
    .line 967
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 968
    return-void
.end method

.method public final declared-synchronized setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 3064
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 3065
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3064
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3068
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 3081
    :goto_0
    monitor-exit p0

    return-void

    .line 3072
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    .line 3073
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    .line 3075
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->updateRotationMatrix()V

    .line 3077
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnOrientationChangedListener:Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;

    if-eqz v0, :cond_2

    .line 3078
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnOrientationChangedListener:Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;->onOrientationChanged(I)V

    .line 3080
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized setPaddings(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "paddings"    # Landroid/graphics/Rect;

    .prologue
    .line 2512
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    .line 2513
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_0

    .line 2514
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 2516
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 2517
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2519
    :cond_1
    monitor-exit p0

    return-void

    .line 2512
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setParentHAlign(I)V
    .locals 0
    .param p1, "halign"    # I

    .prologue
    .line 1193
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mParentHAlign:I

    .line 1194
    return-void
.end method

.method public final setParentVAlign(I)V
    .locals 0
    .param p1, "valign"    # I

    .prologue
    .line 1203
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mParentVAlign:I

    .line 1204
    return-void
.end method

.method public setRepeatClickInterval(I)V
    .locals 0
    .param p1, "milliSeconds"    # I

    .prologue
    .line 1026
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickInterval:I

    .line 1027
    return-void
.end method

.method public setRepeatClickWhenLongClicked(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1034
    if-eqz p1, :cond_0

    .line 1035
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mLongClickable:Z

    .line 1037
    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickWhenLongClicked:Z

    .line 1038
    return-void
.end method

.method public declared-synchronized setRotatable(Z)V
    .locals 1
    .param p1, "rotatable"    # Z

    .prologue
    .line 1127
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1128
    monitor-exit p0

    return-void

    .line 1127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRotateAnimation(Z)V
    .locals 1
    .param p1, "rotateAnimation"    # Z

    .prologue
    .line 1156
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1157
    monitor-exit p0

    return-void

    .line 1156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRotateAnimationDuration(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 1174
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationDuration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    monitor-exit p0

    return-void

    .line 1174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRotateAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 1169
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1170
    :try_start_0
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1171
    :cond_0
    monitor-exit p0

    return-void

    .line 1169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRotationAnimatedOnFirstDraw(Z)V
    .locals 0
    .param p1, "rotationAnimatedOnFirstDraw"    # Z

    .prologue
    .line 4029
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mRotationAnimatedOnFirstDraw:Z

    .line 4030
    return-void
.end method

.method public declared-synchronized setSize(FF)V
    .locals 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 1830
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1831
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1833
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    .line 1834
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 1836
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1837
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 1839
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 1840
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1843
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 1844
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1847
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1848
    monitor-exit p0

    return-void

    .line 1830
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1394
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mSubTitle:Ljava/lang/String;

    .line 1395
    return-void
.end method

.method public final setTag(I)V
    .locals 1
    .param p1, "viewId"    # I

    .prologue
    .line 1365
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mViewTag:I

    .line 1366
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewTag:I

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setObjectTag(I)V

    .line 1367
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1383
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-eqz v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-virtual {v0}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V

    .line 1386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    .line 1390
    :cond_0
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mTitle:Ljava/lang/String;

    .line 1391
    return-void
.end method

.method public setToggleButton()V
    .locals 1

    .prologue
    .line 4000
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mToggleButton:Z

    .line 4001
    return-void
.end method

.method public final declared-synchronized setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 2288
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    if-eq v0, p1, :cond_0

    .line 2289
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 2290
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v0, :cond_0

    .line 2291
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 2295
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 2296
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-virtual {v0}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2298
    :cond_1
    monitor-exit p0

    return-void

    .line 2288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setVisibility(IZ)V
    .locals 2
    .param p1, "visibility"    # I
    .param p2, "update"    # Z

    .prologue
    .line 2301
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 2302
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v0, :cond_0

    .line 2303
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 2306
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 2307
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-virtual {v0}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2309
    :cond_1
    monitor-exit p0

    return-void

    .line 2301
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWidth(F)V
    .locals 3
    .param p1, "width"    # F

    .prologue
    .line 1851
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1866
    :goto_0
    monitor-exit p0

    return-void

    .line 1854
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1855
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 1856
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setWidth(F)V

    .line 1858
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 1859
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setWidth(F)V

    .line 1862
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_3

    .line 1863
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setWidth(F)V

    .line 1865
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1851
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized startAnimation()V
    .locals 2

    .prologue
    .line 2378
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2392
    :goto_0
    monitor-exit p0

    return-void

    .line 2381
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    if-eqz v0, :cond_1

    .line 2382
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 2383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    .line 2384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    .line 2389
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    .line 2391
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2378
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2386
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    .line 2387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public touchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 3336
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    packed-switch v0, :pswitch_data_0

    .line 3345
    const/16 v6, 0x1f4

    .line 3348
    .local v6, "dragHoldTime":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 3349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragX:F

    .line 3350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragY:F

    .line 3351
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    .line 3352
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    if-eqz v0, :cond_0

    .line 3353
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTempOrientation:I

    .line 3354
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    if-nez v0, :cond_2

    .line 3355
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3360
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLongClickable:Z

    if-eqz v0, :cond_1

    .line 3361
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->setLongClick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3433
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-eqz v0, :cond_11

    .line 3434
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v7

    .line 3441
    :goto_3
    return v0

    .line 3338
    .end local v6    # "dragHoldTime":I
    :pswitch_0
    const/4 v6, 0x0

    .line 3339
    .restart local v6    # "dragHoldTime":I
    goto :goto_0

    .line 3341
    .end local v6    # "dragHoldTime":I
    :pswitch_1
    const/16 v6, 0x12c

    .line 3342
    .restart local v6    # "dragHoldTime":I
    goto :goto_0

    .line 3357
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    int-to-long v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 3363
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 3364
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    if-eqz v0, :cond_8

    .line 3365
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    if-eqz v0, :cond_7

    .line 3366
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTempOrientation:I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 3367
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_4

    .line 3368
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V

    .line 3370
    :cond_4
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3371
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    move v0, v7

    .line 3372
    goto :goto_3

    .line 3374
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_6

    .line 3375
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragX:F

    sub-float v4, v1, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragY:F

    sub-float v5, v1, v5

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V

    .line 3377
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragX:F

    .line 3378
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragY:F

    .line 3379
    if-eqz v6, :cond_8

    move v0, v7

    .line 3380
    goto :goto_3

    .line 3381
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_8

    .line 3382
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    .line 3385
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3387
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLongClickable:Z

    if-eqz v0, :cond_1

    .line 3388
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->setLongClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3389
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickWhenLongClicked:Z

    if-eqz v0, :cond_1

    .line 3390
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->repeatClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 3394
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_e

    .line 3395
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    if-eqz v0, :cond_d

    .line 3396
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    if-eqz v0, :cond_b

    .line 3397
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_a

    .line 3398
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V

    .line 3400
    :cond_a
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3405
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    .line 3410
    :cond_c
    :goto_4
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLongClickable:Z

    if-eqz v0, :cond_1

    .line 3411
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->setLongClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3412
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickWhenLongClicked:Z

    if-eqz v0, :cond_1

    .line 3413
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->repeatClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 3407
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_c

    .line 3408
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_4

    .line 3416
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_1

    .line 3417
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    if-eqz v0, :cond_10

    .line 3418
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    if-eqz v0, :cond_f

    .line 3419
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_f

    .line 3420
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V

    .line 3423
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    .line 3425
    :cond_10
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLongClickable:Z

    if-eqz v0, :cond_1

    .line 3426
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->setLongClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3427
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickWhenLongClicked:Z

    if-eqz v0, :cond_1

    .line 3428
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->repeatClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 3438
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3439
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3441
    :cond_12
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_3

    .line 3336
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final declared-synchronized translate(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v5, 0x0

    .line 2954
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v2, p1}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v3, p2}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2956
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2958
    cmpl-float v0, p1, v5

    if-nez v0, :cond_0

    cmpl-float v0, p2, v5

    if-eqz v0, :cond_1

    .line 2959
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    .line 2961
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2962
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2963
    monitor-exit p0

    return-void

    .line 2954
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized translate(FFF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    const/4 v2, 0x0

    .line 2978
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2979
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2981
    cmpl-float v0, p1, v2

    if-nez v0, :cond_0

    cmpl-float v0, p2, v2

    if-eqz v0, :cond_1

    .line 2982
    :cond_0
    cmpl-float v0, p3, v2

    if-eqz v0, :cond_2

    .line 2983
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    .line 2988
    :cond_1
    :goto_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2989
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    .line 2990
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2991
    monitor-exit p0

    return-void

    .line 2985
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2978
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized translate(FFFZ)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "update"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2994
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2995
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2997
    cmpl-float v0, p1, v2

    if-nez v0, :cond_0

    cmpl-float v0, p2, v2

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p4, :cond_1

    .line 2998
    cmpl-float v0, p3, v2

    if-eqz v0, :cond_2

    .line 2999
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    .line 3004
    :cond_1
    :goto_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 3005
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    .line 3006
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3007
    monitor-exit p0

    return-void

    .line 3001
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2994
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized translate(FFZ)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "update"    # Z

    .prologue
    const/4 v5, 0x0

    .line 2966
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v2, p1}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v3, p2}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2968
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2970
    cmpl-float v0, p1, v5

    if-nez v0, :cond_0

    cmpl-float v0, p2, v5

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_1

    .line 2971
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    .line 2973
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2974
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2975
    monitor-exit p0

    return-void

    .line 2966
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized translateAbsolute(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2860
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2861
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2864
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v2, p1}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v3, p2}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2866
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2868
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    float-to-double v0, v0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    float-to-double v0, v0

    float-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2869
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    .line 2871
    :cond_1
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2872
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2873
    monitor-exit p0

    return-void

    .line 2860
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized translateAbsolute(FFF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 2877
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2878
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2882
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v2, p1}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v3, p2}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v4, p3}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2884
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2886
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    float-to-double v0, v0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    float-to-double v0, v0

    float-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2887
    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F

    float-to-double v0, v0

    float-to-double v2, p3

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2888
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    .line 2893
    :cond_1
    :goto_0
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2894
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    .line 2895
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2896
    monitor-exit p0

    return-void

    .line 2890
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2877
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized translateAbsolute(FFFZ)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "update"    # Z

    .prologue
    .line 2920
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    float-to-double v0, v0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    float-to-double v0, v0

    float-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F

    float-to-double v0, v0

    float-to-double v2, p3

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 2943
    :goto_0
    monitor-exit p0

    return-void

    .line 2925
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2926
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2929
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v2, p1}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v3, p2}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v4, p3}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2931
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2933
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    float-to-double v0, v0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    float-to-double v0, v0

    float-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p4, :cond_2

    .line 2934
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F

    float-to-double v0, v0

    float-to-double v2, p3

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2935
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    .line 2940
    :cond_2
    :goto_1
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2941
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    .line 2942
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2920
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2937
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized translateAbsolute(FFZ)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "update"    # Z

    .prologue
    .line 2899
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    float-to-double v0, v0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    float-to-double v0, v0

    float-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 2917
    :goto_0
    monitor-exit p0

    return-void

    .line 2904
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2905
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2908
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v2, p1}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v3, p2}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2910
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2912
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    float-to-double v0, v0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    float-to-double v0, v0

    float-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-eqz p3, :cond_2

    .line 2913
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    .line 2915
    :cond_2
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2916
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2899
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateAlpha()V
    .locals 2

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1114
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 1115
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 1118
    :cond_0
    return-void
.end method

.method public updateLayout(Z)V
    .locals 2
    .param p1, "depthUpdated"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2105
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    .line 2106
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 2107
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 2108
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 2110
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 2111
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->onLayoutUpdated()V

    .line 2113
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 2114
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->onLayoutUpdated()V

    .line 2116
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_3

    .line 2117
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->onDepthUpdated()V

    .line 2119
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 2121
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    if-eqz v0, :cond_4

    .line 2122
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->updateRotationMatrix()V

    .line 2125
    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mScaleChanged:Z

    if-eqz v0, :cond_5

    .line 2126
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->updateScaleMatrix()V

    .line 2128
    :cond_5
    return-void
.end method

.method public final declared-synchronized updateRotationMatrix()V
    .locals 9

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 2131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2133
    const/4 v0, 0x2

    new-array v6, v0, [F

    .line 2134
    .local v6, "currentPivot":[F
    const/4 v0, 0x2

    new-array v8, v0, [F

    .line 2135
    .local v8, "rotationPivot":[F
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->getLeftTop(I)[F

    move-result-object v7

    .line 2137
    .local v7, "leftTop":[F
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    if-eqz v0, :cond_0

    .line 2138
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    aput v1, v7, v0

    .line 2139
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    aput v1, v7, v0

    .line 2141
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    invoke-static {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2143
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2144
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x4

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x5a

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 2145
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    neg-float v2, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2160
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2161
    monitor-exit p0

    return-void

    .line 2147
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 2148
    const/4 v0, 0x0

    aget v1, v7, v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    add-float/2addr v1, v2

    aput v1, v7, v0

    .line 2149
    const/4 v0, 0x1

    aget v1, v7, v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    add-float/2addr v1, v2

    aput v1, v7, v0

    .line 2152
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-static {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2153
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    invoke-static {v0, v8, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2155
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2156
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x4

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x5a

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 2157
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    neg-float v2, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2131
    .end local v6    # "currentPivot":[F
    .end local v7    # "leftTop":[F
    .end local v8    # "rotationPivot":[F
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized updateScaleMatrix()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 2164
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleChanged:Z

    .line 2166
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 2169
    .local v0, "currentPivot":[F
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    aput v3, v1, v2

    .line 2170
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    aput v3, v1, v2

    .line 2172
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2174
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2175
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 2176
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    neg-float v3, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    neg-float v4, v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2178
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2179
    monitor-exit p0

    return-void

    .line 2164
    .end local v0    # "currentPivot":[F
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
